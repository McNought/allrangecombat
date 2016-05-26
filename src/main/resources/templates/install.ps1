# =====================================================================
# OBSIDIAN - TEST SERVER SETUP
# =====================================================================

param(
[string]$sourceServerParam
)

Cls
Write-Host ""
Write-Host "OBSIDIAN - DEVELOPMENT ENVIRONMENT SETUP."
Write-Host ""



# ---------------------------------------------------------------------
# Configuration
# - Set up globals
# ---------------------------------------------------------------------
function initScript {

	$Global:prompt = new-object -comobject wscript.shell
	
	$Global:installFolder = "OBSIDIAN"
	$Global:sourceServer = "172.17.125.11"
	if ( $sourceServerParam -ne "" ){
	    $Global:sourceServer = $sourceServerParam
	} 
	$contextURI = ""
	$Global:sourceBaseURI = $contextURI + "dependencies"
	$Global:configBaseURI = $contextURI + "scripts"
	$tempFolderName = "temp" + $Global:installFolder 
	
	# Install Dir
	if ($env:TEMP -eq $null) {
	  $env:TEMP = Join-Path $env:SystemDrive 'temp'
	}
	$Global:tmpInstallDir = Join-Path $env:TEMP $tempFolderName
	If (Test-Path $Global:tmpInstallDir){
	    Remove-Item $Global:tmpInstallDir -recurse
	}
	new-item $Global:tmpInstallDir -itemtype directory  | Out-Null
	$Global:installDir = Join-Path "C:" $installFolder
	

    Write-Host "--- CLEAR HOME PATH ---"
    [Environment]::SetEnvironmentVariable("PATH", "" , "User")


}

# ---------------------------------------------------------------------
# selectVersion
# - Set up globals
# ---------------------------------------------------------------------
function selectVersion {

# OBSIDIAN
# Version selection
$versionObsidianArray =  "0.00.1-CR2", "0.00.1-CR1" # Array of versions, most recent first
$versionObsidian = $versionObsidianArray[0]
# Prompt with timeout which defaults to latest version
$promptResponse = $Global:prompt.popup("Use latest version: $versionObsidian", 5, "Version selection", 0x24)
if ($promptResponse -eq 7) {
    # No selected, propmt the user to select a version manually
    WRITE-HOST "Select the version from below:"
    [int]$i = 1;
    foreach($version in $versionObsidianArray) {
        WRITE-HOST "$i for $version"
        $i++
        }
    do { 
    $i = READ-HOST -prompt "Version"
        } while ($i -lt 1 -or $i -gt $versionObsidianArray.length)
    $versionObsidian = $versionObsidianArray[$i -1]
    }
WRITE-HOST "Selected Obsidian version: $versionObsidian"

$serverURLObsidian = "http://buzzcut.iplbath.com:8081/nexus/service/local/repositories/releases-i1284007/content/com/ipl/inspire"
# IMP variables
    # IP Address of this machine
    $ip=get-WmiObject Win32_NetworkAdapterConfiguration|Where {$_.Ipaddress.length -gt 0}
    $IMPIP = $ip.ipaddress[0]
    # Default database details
    $IMPDBURL = "jdbc:mysql://localhost:3306/"
    $IMPDBName = "imp"
    $IMPDBUser = "root"
    $IMPDBPassword = "475000Obsidian"
    # Default log file
    $IMPLog = "imp-logs/imp.log"
}

# ---------------------------------------------------------------------
# Welcome
# ---------------------------------------------------------------------
function askCleanInstall {



If (Test-Path $Global:installDir){

    $clean = $Global:prompt.popup("Clean install to '$Global:installDir'?", 5, "Directory selection", 0x24)
    
    if ($clean -eq 6)
        {
        # YES
        
	    Try {
	        Remove-Item $Global:installDir -recurse
	        new-item $Global:installDir -itemtype directory  | Out-Null
	        }
	    Catch
	        {
	        Write-Host "--- FAILED ---"
	        Exit
	        }
        }
}
else
    {
    new-item $Global:installDir -itemtype directory | Out-Null
    }
}


    

# ---------------------------------------------------------------------
# FUNCTION: UNZIP
# ---------------------------------------------------------------------

function unzipFile($file, $destination)
{
Write-Host "Unzip $file to $destination"
# Only create folder if it doesn't exist, enables unzipping into existing folder structures
if (-Not (Test-Path $destination)) {
    Write-Host "Unzipping to $destination..."
    new-item $destination -itemtype directory | Out-Null
}
$shell = new-object -com shell.application
$zip = $shell.NameSpace($file)
foreach($item in $zip.items())
  {
  $shell.Namespace($destination).copyhere($item)
  }
}

# ---------------------------------------------------------------------
# FUNCTION: DOWNLOAD
# ---------------------------------------------------------------------

function downloadFile {
param (
  [string]$url,
  [string]$targetFile
 )
 
 $uri = New-Object "System.Uri" "$url"

   $request = [System.Net.HttpWebRequest]::Create($uri)

   $request.set_Timeout(15000) #15 second timeout

   $response = $request.GetResponse()

   $totalLength = [System.Math]::Floor($response.get_ContentLength()/1024)

   $responseStream = $response.GetResponseStream()

   $targetStream = New-Object -TypeName System.IO.FileStream -ArgumentList $targetFile, Create

   $buffer = new-object byte[] 10KB

   $count = $responseStream.Read($buffer,0,$buffer.length)

   $downloadedBytes = $count

   while ($count -gt 0)

   {

       $targetStream.Write($buffer, 0, $count)

       $count = $responseStream.Read($buffer,0,$buffer.length)

       $downloadedBytes = $downloadedBytes + $count

       Write-Progress -activity "Downloading file '$($url.split('/') | Select -Last 1)'" -status "Downloaded ($([System.Math]::Floor($downloadedBytes/1024))K of $($totalLength)K): " -PercentComplete ((([System.Math]::Floor($downloadedBytes/1024)) / $totalLength)  * 100)

   }

   Write-Progress -activity "Finished downloading file '$($url.split('/') | Select -Last 1)'"

   $targetStream.Flush()

   $targetStream.Close()

   $targetStream.Dispose()

   $responseStream.Dispose()
 
 
}
# ---------------------------------------------------------------------
# FUNCTION: DOWNLOAD
# ---------------------------------------------------------------------

function downloadFile-Proxy {
param (
  [string]$url,
  [string]$file
 )
  Write-Host "Downloading '$url' to '$file'"
  $downloader = new-object System.Net.WebClient

  $defaultCreds = [System.Net.CredentialCache]::DefaultCredentials
  if ($defaultCreds -ne $null) {
    $downloader.Credentials = $defaultCreds
  }

  # check if a proxy is required
  $explicitProxy = $env:chocolateyProxyLocation
  $explicitProxyUser = $env:chocolateyProxyUser
  $explicitProxyPassword = $env:chocolateyProxyPassword
  if ($explicitProxy -ne $null) {
    # explicit proxy
  $proxy = New-Object System.Net.WebProxy($explicitProxy, $true)
  if ($explicitProxyPassword -ne $null) {
    $passwd = ConvertTo-SecureString $explicitProxyPassword -AsPlainText -Force
    $proxy.Credentials = New-Object System.Management.Automation.PSCredential ($explicitProxyUser, $passwd)
  }

  Write-Host "Using explicit proxy server '$explicitProxy'."
    $downloader.Proxy = $proxy

  } elseif (!$downloader.Proxy.IsBypassed($url))
  {
  # system proxy (pass through)
    $creds = $defaultCreds
    if ($creds -eq $null) {
      Write-Debug "Default credentials were null. Attempting backup method"
      $cred = get-credential
      $creds = $cred.GetNetworkCredential();
    }
    $proxyaddress = $downloader.Proxy.GetProxy($url).Authority
    Write-Output "Using system proxy server '$proxyaddress'."
    $proxy = New-Object System.Net.WebProxy($proxyaddress)
    $proxy.Credentials = $creds
    $downloader.Proxy = $proxy
  }

  $downloader.DownloadFile($url, $file)
}
# ---------------------------------------------------------------------
# FUNCTION: INSTALL
# ---------------------------------------------------------------------
function runComponentInstaller {
param (
    [string]    $componentName,
    [string]    $componentInstaller
    )
    
    
    Write-Host "---------------------------------------------------------------------------------"        
    Write-Host "Running set-up $componentName"
    
    $folderComponentBase = Join-Path $Global:installDir "$componentName"
    $folderComponentInstaller = Join-Path $folderComponentBase "$componentInstaller"
    Write-Host "Running " + $folderComponentInstaller
    Start-Process $folderComponentInstaller -Wait
    
    Write-Host "---------------------------------------------------------------------------------"        
    Write-Host ""
    
}


# ---------------------------------------------------------------------
# FUNCTION: INSTALL
# ---------------------------------------------------------------------
function downloadComponent {
param (
    [string]    $componentName,
    [string]    $subfolderName,
    [string]    $versionComponent,
    [string]    $zipComponentName,
    [Parameter(Mandatory=$false)]   [string]    $componentSubPath,
    [Parameter(Mandatory=$false)]   [string]    $componentPathName
 )

    $downloaded  = $false

	Write-Host "---------------------------------------------------------------------------------"        
	Write-Host "Setting-up $componentName"
	Write-Host ""
	
	# Use optional parameter to determine the PATH variable.
	if ($componentPathName)
	    {
	    $componentNameUpper = $componentPathName.ToUpper()
	    }
	else
	    {
	    $componentNameUpper = $componentName.ToUpper()
	    }
	
	    
	# Set constants
	$fileComponent = Join-Path $Global:tmpInstallDir "$componentName.zip"
	$folderComponentBase = Join-Path $Global:installDir "$componentName"
	$batchfileComponentName = "set" + $componentName + "HomePath.bat"
	$batchfileComponentSetHome = Join-Path $folderComponentBase $batchfileComponentName
	$urlComponent = "http://" + $sourceServer + "/" + $sourceBaseURI + "/" + $zipComponentName + ".zip"
	
	
	if (-Not (Test-Path $folderComponentBase)) {
	    
	    Try {
	        Write-Host "Downloading $componentName-$versionComponent from $urlComponent ...."
	        
	        # Download the Component package
	        downloadFile $urlComponent $fileComponent
	        unzipFile $fileComponent $folderComponentBase
	        Remove-Item $fileComponent
	        $downloaded = $true
	        }
	    Catch [Exception]
	        {
	        Write-Host "--- DOWNLOAD FAILED --- $_.Exception.Message"
	        If (Test-Path $fileComponent){ Remove-Item $fileComponent }
	        If (Test-Path $folderComponentBase){ Remove-Item $folderComponentBase -recurse }
	        
	        Exit
	        }
	    }
	else
	    {
	    Write-Host "Skipping download of $componentName-$versionComponent"
	    }

    # -------------------------------------
    # Create Environment variable & batch    
    # Add the Environment variable
    Write-Host "Setting shortcuts for $componentName-$versionComponent...."
    $envVarName = $componentNameUpper + "_HOME"
    # Which subfolder is it in
    if ( $subfolderName -eq "" )
       {
       # default
       $envHomeVarValue = $folderComponentBase + "\" + $componentName + "-" + $versionComponent 
       }
    else
       {
       # Not default
       $envHomeVarValue = $folderComponentBase + "\" + $subfolderName 
       }
    Write-Host "Add the Environment variable $envVarName=$envHomeVarValue"
    [Environment]::SetEnvironmentVariable($envVarName, $envHomeVarValue, "User")
    $userPath = [Environment]::GetEnvironmentVariable("PATH", "User")
    #Write-Host $Env:Path
    if ($userPath -notcontains $envHomeVarValue) 
        { 
        Write-Host "Add to the Environment variable USER:PATH ...."
        
        if ( !$componentSubPath )
            {
            $componentSubPath = "";
            }
        
        Write-Host "Add to Path $envHomeVarValue$componentSubPath"
        
        [Environment]::SetEnvironmentVariable("PATH", "$envHomeVarValue$componentSubPath;$userPath" , "User")
        }
    
    # Set the SET HOME batch file     
    "@ECHO OFF" | out-file -filepath $batchfileComponentSetHome -encoding ASCII
    "@ECHO SETTING $componentName path" | out-file -filepath $batchfileComponentSetHome -append -encoding ASCII
    $tmp = "SETX /m " + $envVarName + "=" + $envVarValue 
    $tmp | out-file -filepath $batchfileComponentSetHome -append -encoding ASCII
    $tmp = "SET PATH=%" + $envVarName + "%;%PATH%" 
    $tmp | out-file -filepath $batchfileComponentSetHome -append -encoding ASCII

    Write-Host "---------------------------------------------------------------------------------"        
    Write-Host ""
 
    return $downloaded
}

# ---------------------------------------------------------------------
# Firewall
# ---------------------------------------------------------------------
function setupTomcatFirewall {

# Firewall rule for Tomcat, only needs adding once
if (-Not (Get-NetFirewallRule -DisplayName Tomcat -ErrorAction SilentlyContinue)) {
    # Firewall rule does not exist, add it
    Write-Host ""
    Write-Host "Adding Firewall rule for Tomcat."
    Start-Process powershell -verb runAs -ArgumentList 'New-NetFirewallRule -DisplayName Tomcat -Action Allow -Enabled True -Direction Inbound -LocalPort 8080 -Protocol TCP'
    } else {
    Write-Host ""
    Write-Host "Firewall rule for Tomcat already exists, continuing."
    }
}

# ---------------------------------------------------------------------
# Firewall
# ---------------------------------------------------------------------
function setupDDSFirewall {

    
# Firewall rule for DDS, may need removing and re-adding if the DDS domain has changed
# Currently UDP only, TCP transport yet to be implimented (OBSIDIAN-574)
# Number from https://community.rti.com/howto/statically-configure-firewall-let-omg-dds-traffic-through
$startDDSFirewall = 7400 + (250 * $DDSDomain)
$endDDSFirewall = $startDDSFirewall + 29 # 30 values a safe range for 10 domain participants
$portsDDSFirewall = "$startDDSFirewall-$endDDSFirewall"
if ($currentDDSFirewall = Get-NetFirewallRule -DisplayName DDS_UDP -ErrorAction SilentlyContinue) {
    # Rule exists, see whether it is valid for the current DDS domain
    $currentDDSFilter = Get-NetFirewallPortFilter -AssociatedNetFirewallRule $currentDDSFirewall
    if ($currentDDSFilter.LocalPort.Equals($portsDDSFirewall)) {
        # Rule is correct, leave it alone
        Write-Host ""
        Write-Host "Firewall rule for DDS already exists and is correct, continuing."
        } else {
        # Rule needs updating for current DDS domain
        Write-Host ""
        Write-Host "Firewall rule for DDS already exists but needs modifying, updating."
        Start-Process powershell -verb runAs -ArgumentList "Set-NetFirewallRule -DisplayName DDS_UDP -LocalPort $portsDDSFirewall"
        }
    } else {
    # Rule not found, add it
    Write-Host ""
    Write-Host "Adding Firewall rule for DDS."
    Start-Process powershell -verb runAs -ArgumentList "New-NetFirewallRule -DisplayName DDS_UDP -Action Allow -Enabled True -Direction Inbound -LocalPort $portsDDSFirewall -Protocol UDP"
    }
}



# ---------------------------------------------------------------------
# Miscalneous
# ---------------------------------------------------------------------
function createShortCut {
param (
  [string]$componentName,
  [string]$linkTarget
 )

    Write-Host ""
    Write-Host "Create short-cut for $componentName."

	$folderComponentBase = Join-Path $Global:installDir "$componentName"
	$TargetFile = Join-Path $folderComponentBase $linkTarget
    Write-Host "    TargetFile=$TargetFile"
	
	 
	# Create a Shortcut with Windows PowerShell
	$ShortcutFile = "$Home\Desktop\$componentName.lnk"
	
#	 Write-Host "ShortcutFile=$ShortcutFile"
	
	
	$WScriptShell = New-Object -ComObject WScript.Shell
	$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
	$Shortcut.TargetPath = $TargetFile
	$Shortcut.Save()

}


# ---------------------------------------------------------------------
# MYSQL
# ---------------------------------------------------------------------
function installMySQL {


$fileMysql = Join-Path $Global:tmpInstallDir "mysql.zip"
$folderMysqlBase = Join-Path $Global:installDir "mysql"

$mysqlInitFile = Join-Path $folderMysqlBase "mysql-init.txt"
$mysqlInitScript = Join-Path $folderMysqlBase "init-mysql.ps1"
$mysqlStartScript = Join-Path $folderMysqlBase "start-mysql.bat"
$mysqlStopScript = Join-Path $folderMysqlBase "stop-mysql.bat"

if (-Not (Test-Path $folderMysqlBase)) {
    
    Try {
        Write-Host ""
        Write-Host "Installing MYSQL-$versionMYSQL..."
        
        # Download the MySQL package
        downloadFile $urlMYSQL $fileMysql
        unzipFile $fileMysql $folderMysqlBase
        Remove-Item $fileMysql

        # Create mysql initialisation scripts
        "ALTER USER 'root'@'localhost' IDENTIFIED BY '475000Obsidian';" | out-file -filepath $mysqlInitFile -encoding ASCII
        "$folderMysqlBase\$folderMYSQL\bin\mysqld --initialize-insecure --console --init-file=$mysqlInitFile" | out-file -filePath $mysqlInitScript -encoding ASCII
        # Create a start script
        "@echo off" | out-file -filepath $mysqlStartScript -encoding ASCII
        "@echo Starting MySQL" | out-file -filepath $mysqlStartScript -append -encoding ASCII 
        "start $folderMysqlBase\$folderMYSQL\bin\mysqld --console" | out-file -filepath $mysqlStartScript -append -encoding ASCII
        # Create a stop script
        "@echo off" | out-file -filepath $mysqlStopScript -encoding ASCII
        "@echo Stopping MySQL" | out-file -filepath $mysqlStopScript -append -encoding ASCII 
        "Call $folderMysqlBase\$folderMYSQL\bin\mysqladmin -u $IMPDBUser -p$IMPDBPassword shutdown" | out-file -filepath $mysqlStopScript -append -encoding ASCII

        # Initialise the database instance
        Write-Host ""
        Write-Host "Initialising MySQL instance..."
        Start-Process powershell -ArgumentList "$mysqlInitScript"

        }
    Catch
        {
        Write-Host "--- FAILED ---"
        If (Test-Path $fileMysql){ Remove-Item $fileMysql }
        If (Test-Path $folderMysqlBase){ Remove-Item $folderMysqlBase -recurse }
        
        Exit
        }
    }
else
    {
    Write-Host "Skipping MySQL-$versionMYSQL"
    }
}

# ---------------------------------------------------------------------
# TOMCAT
# ---------------------------------------------------------------------
function createScriptsTomcat {


$folderTomcatBase = Join-Path $Global:installDir "tomcat"
$tomcatStartScript = Join-Path $folderTomcatBase "start-tomcat.bat"
$tomcatStopScript = Join-Path $folderTomcatBase "stop-tomcat.bat"

if ( Test-Path $folderTomcatBase) {
    
    Try {
        Write-Host ""
        Write-Host "Removing WEBAPPS for TOMCAT-$versionTomcat : $folderTomcatWebapps ..."
        
        ## Download the Tomcat package
        ## Remove existing WebApps
        #Remove-Item $folderTomcatWebapps -recurse
        #new-item $folderTomcatWebapps -itemtype directory 
        ##| Out-Null

        Write-Host ""
        Write-Host "Creating scripts for TOMCAT-$versionTomcat..."

        # Create a start script
        "@echo off" | out-file -filepath $tomcatStartScript -encoding ASCII
        "@echo Setting up dependencies" | out-file -filepath $tomcatStartScript -append -encoding ASCII
        "call ../java/setjavaHomePath.bat" | out-file -filepath $tomcatStartScript -append -encoding ASCII
        "set CATALINA_HOME=$folderTomcatInstall" | out-file -filepath $tomcatStartScript -append -encoding ASCII
        "set JAVA_OPTS=-XX:PermSize=128m -XX:MaxPermSize=256m" | out-file -filepath $tomcatStartScript -append -encoding ASCII
        "@echo Starting Tomcat" | out-file -filepath $tomcatStartScript -append -encoding ASCII
        "call ./bin/startup.bat" | out-file -filepath $tomcatStartScript -append -encoding ASCII
        # Create a stop script
        "@echo off" | out-file -filepath $tomcatStopScript -encoding ASCII
        "@echo Setting up dependencies" | out-file -filepath $tomcatStopScript -append -encoding ASCII
        "call ../java/setjavaHomePath.bat" | out-file -filepath $tomcatStopScript -append -encoding ASCII
        "set CATALINA_HOME=$folderTomcatInstall" | out-file -filepath $tomcatStopScript -append -encoding ASCII
        "call $folderTomcatInstall\bin\shutdown.bat" | out-file -filepath $tomcatStopScript -append -encoding ASCII
        }
    Catch
        {
        Write-Host "--- FAILED ---"
        
        Exit
        }
    }
    
    setupTomcatFirewall    
    
}    
# ---------------------------------------------------------------------
function checkDotNet
{
$PSVersionTable.CLRVersion
}



# ---------------------------------------------------------------------
# FINISH
# ---------------------------------------------------------------------
function finishInstall {

Write-Host ""
Write-Host "Completed download & installed to '$Global:installDir'"
Write-Host ""
Read-Host "Press ENTER to continue"
# Open Install folder
cd $Global:installDir
ii .
}
    
# ---------------------------------------------------------------------
# THE INSTALL PROCESS
# ---------------------------------------------------------------------
function doSetupProcess {


	initScript
	#selectVersion
	askCleanInstall
	setupComponentVersions
	setupDownloadableComponents
    runAllComponentInstallers
    setupComponentShortcuts
	
	if ( $Global:downloadedTomcat )   { createScriptsTomcat }

checkDotNet

#finishInstall    
}
# ---------------------------------------------------------------------


# ---------------------------------------------------------------------
#           SETUP - VERSIONS
# ---------------------------------------------------------------------
function setupComponentVersions {

#Java
$Global:versionJava ="1.7.0_80"
$Global:zipJava = "jre-$versionJava-windows-x64"

#Tomcat
$Global:versionTomcat ="7.0.65"
$Global:zipTomcat = "apache-tomcat-$versionTomcat"


#MYSQL
$Global:versionMYSQL ="5.7.10"
$Global:zipMYSQL = "mysql-$versionMYSQL-winx64"

#MYSQL WORKBENCH
$Global:versionMYSQLWb ="6.3.6"
$Global:zipMYSQLWb = "mysql-workbench-community-$Global:versionMYSQLWb-winx64.msi"
$Global:exeMysql="mysql-workbench-$Global:versionMYSQLWb\MySQLWorkbench.exe"

# FLYWAY
$Global:versionFlyway ="3.2.1"
$Global:zipFlyway = "flyway-commandline-$versionFlyway"

# 7-Zip
$Global:version7zip ="9.20"
$Global:zip7zip = "7za-$version7zip"

# Eclipse
$Global:versionEclipse ="3.7.0"
$Global:zipEclipse = "spring-tool-suite-$versionEclipse.RELEASE-e4.5-win32-x86_64"
$Global:exeEclipse = "sts-bundle\sts-$Global:versionEclipse.RELEASE\sts.exe"     

# Maven
$Global:versionMaven ="3.1.1"
$Global:zipMaven = "apache-maven-$Global:versionMaven"

# Git
$Global:versionGit ="2.6.0"
$Global:zipGit = "portablegit-$Global:versionGit-64-bit"

# Notepad++
$Global:versionNPP ="6.8.8"
$Global:zipNPP = "npp.$Global:versionNPP.bin"

# Visual Studio redist
$Global:versionVCRedist ="2013_x64"
$Global:zipVCRedist = "vcredist-" + $Global:versionVCRedist 

# Microsoft .NET Framework 4 Client Profile
$Global:versionDotNet ="40"
$Global:zipDotNet = "dotNetFx" + $Global:versionDotNet + "_Client_setup"

# Google Chrome
$Global:versionChrome ="48.0.2564.116"
$Global:zipChrome = "chrome-" + $Global:versionChrome

}

# ---------------------------------------------------------------------
#           SETUP - VERSIONS
# ---------------------------------------------------------------------
function setupDownloadableComponents {

	
	$Global:downloadedMaven    = downloadComponent "apache-maven"        ""                          $Global:versionMaven        $Global:zipMaven        "\bin"      "M2"
	$Global:downloaded7za      = downloadComponent "7za"                 ""                          $Global:version7zip         $Global:zip7zip         ""  
	$Global:downloadedFlyway   = downloadComponent "flyway"              ""                          $Global:versionFlyway       $Global:zipFlyway       ""  
	$Global:downloadedJava     = downloadComponent "java"                "jre$Global:versionJava"    $Global:versionJava         $Global:zipJava         "\bin"  
	$Global:downloadedEclipse  = downloadComponent "eclipse"             ""                          $Global:versionEclipse      $Global:zipEclipse      ""  
	$Global:downloadedMysql    = downloadComponent "mysql"               ""                          $Global:versionMySql        $Global:zipMysql        ""  
	$Global:downloadedMysqlWb  = downloadComponent "mysql-workbench"     ""                          $Global:versionMySqlWB      $Global:zipMysqlWB      ""  
	$Global:downloadedGit      = downloadComponent "git"                 $Global:zipGit              $Global:versionGit          $Global:zipGit          "\bin"  
	$Global:downloadedTomcat   = downloadComponent "tomcat"              ""                          $Global:versionTomcat       $Global:zipTomcat       ""  
	$Global:downloadedNpp      = downloadComponent "notepad++"           ""                          $Global:versionNPP          $Global:zipNPP          ""          "NPP"
	$Global:downloadedVcredist = downloadComponent "vcredist"            ""                          $Global:versionVCRedist     $Global:zipVCRedist     ""          "NPP"
	$Global:downloadedDotNet   = downloadComponent "dotNet"              ""                          $Global:versionDotNet       $Global:zipDotNet       ""          "NPP"
    $Global:downloadedChrome   = downloadComponent "chrome"              ""                          $Global:versionChrome       $Global:zipChrome       ""         
	
	
}  

# ---------------------------------------------------------------------
#           SETUP - VERSIONS
# ---------------------------------------------------------------------
function setupComponentShortcuts {
  
    createShortCut "eclipse"            $Global:exeEclipse
    createShortCut "mysql-workbench"    $Global:exeMysql
  
}


# ---------------------------------------------------------------------
#           SETUP - VERSIONS
# ---------------------------------------------------------------------
function runAllComponentInstallers {
  
    if ( $Global:downloadedVcredist )   { runComponentInstaller "vcredist"            "vcredist-2013_x64/vcredist_x86.exe" }
    if ( $Global:downloadedVcredist )   { runComponentInstaller "vcredist"            "vcredist-2013_x64/vcredist_x64.exe" }
    if ( $Global:downloadedDotNet )     { runComponentInstaller "dotNet"              "dotNetFx40_Client_setup.exe" }
    if ( $Global:downloadedMysqlWb )    { runComponentInstaller "mysql-workbench"     "mysql-workbench-community-6.3.6-winx64.msi" }
    if ( $Global:downloadedChrome )     { runComponentInstaller "chrome"              "ChromeSetup.exe" }
    
}


## INVOKE INSTALL
doSetupProcess
Exit
