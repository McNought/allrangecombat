# I9700013 - DownloadDev (OBSIDIAN WEAPON)

## Introduction
Essentially all that this does is to allow a developer to gather all the tools for a development environment and install them onto a Windows machine in a simple and quick manner.
For a technical lead it allows a way to control the development set for their developers and to know that it was initially installed from a standard pattern. A pattern that can be version controlled.
The concept is similar to the idea of a Pheonix Server, which is a server that can be destroyed and recreated reliably and at will.  This contrasts with the usual Snowflake Server which is where each set up is unique and can not be reproduced.

The intention is to make it possible to install the entire development environment software and set up the environment from a single command.
This should allow developers & Tech-leads to ensure all their developers are using the same versions of tools and to control the set up from a their GIT repository location.

## How?
The technology that drives OBSIDIAN is based on Powershell scripts and their ability to load them from a central webserver.

It is possible to send a script to PowerShell from a webserver and use that script to run commands on the PC.
This is what OBSIDIAN does.

## Existing server
A version of the site is available @ [http://vm-9700014-002/](http://vm-9700014-002/) 


## Building
To build the web-site run "*mvn clean generate-resources*".
Then deploy via FTP to the server into its httpd folder (/var/www/html).

---
