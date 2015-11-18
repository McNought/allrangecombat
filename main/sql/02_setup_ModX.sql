-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2013 at 10:39 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `arcs`
--
CREATE DATABASE IF NOT EXISTS `arcs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `arcs`;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_actiondom`
--

CREATE TABLE IF NOT EXISTS `modx_access_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_actions`
--

CREATE TABLE IF NOT EXISTS `modx_access_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_category`
--

CREATE TABLE IF NOT EXISTS `modx_access_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_context`
--

CREATE TABLE IF NOT EXISTS `modx_access_context` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_elements`
--

CREATE TABLE IF NOT EXISTS `modx_access_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_media_source`
--

CREATE TABLE IF NOT EXISTS `modx_access_media_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_menus`
--

CREATE TABLE IF NOT EXISTS `modx_access_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_permissions`
--

CREATE TABLE IF NOT EXISTS `modx_access_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `template` (`template`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=215 ;

--
-- Dumping data for table `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(22, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(23, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(24, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(25, 1, 'delete_template', 'perm.delete_template_desc', 1),
(26, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(27, 1, 'delete_role', 'perm.delete_role_desc', 1),
(28, 1, 'delete_user', 'perm.delete_user_desc', 1),
(29, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(30, 1, 'directory_create', 'perm.directory_create_desc', 1),
(31, 1, 'directory_list', 'perm.directory_list_desc', 1),
(32, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(33, 1, 'directory_update', 'perm.directory_update_desc', 1),
(34, 1, 'edit_category', 'perm.edit_category_desc', 1),
(35, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(36, 1, 'edit_context', 'perm.edit_context_desc', 1),
(37, 1, 'edit_document', 'perm.edit_document_desc', 1),
(38, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(39, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(40, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(41, 1, 'edit_role', 'perm.edit_role_desc', 1),
(42, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(43, 1, 'edit_template', 'perm.edit_template_desc', 1),
(44, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(45, 1, 'edit_user', 'perm.edit_user_desc', 1),
(46, 1, 'element_tree', 'perm.element_tree_desc', 1),
(47, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(48, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(49, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(50, 1, 'export_static', 'perm.export_static_desc', 1),
(51, 1, 'file_create', 'perm.file_create_desc', 1),
(52, 1, 'file_list', 'perm.file_list_desc', 1),
(53, 1, 'file_manager', 'perm.file_manager_desc', 1),
(54, 1, 'file_remove', 'perm.file_remove_desc', 1),
(55, 1, 'file_tree', 'perm.file_tree_desc', 1),
(56, 1, 'file_update', 'perm.file_update_desc', 1),
(57, 1, 'file_upload', 'perm.file_upload_desc', 1),
(58, 1, 'file_view', 'perm.file_view_desc', 1),
(59, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(60, 1, 'frames', 'perm.frames_desc', 1),
(61, 1, 'help', 'perm.help_desc', 1),
(62, 1, 'home', 'perm.home_desc', 1),
(63, 1, 'import_static', 'perm.import_static_desc', 1),
(64, 1, 'languages', 'perm.languages_desc', 1),
(65, 1, 'lexicons', 'perm.lexicons_desc', 1),
(66, 1, 'list', 'perm.list_desc', 1),
(67, 1, 'load', 'perm.load_desc', 1),
(68, 1, 'logout', 'perm.logout_desc', 1),
(69, 1, 'logs', 'perm.logs_desc', 1),
(70, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(71, 1, 'menu_security', 'perm.menu_security_desc', 1),
(72, 1, 'menu_site', 'perm.menu_site_desc', 1),
(73, 1, 'menu_support', 'perm.menu_support_desc', 1),
(74, 1, 'menu_system', 'perm.menu_system_desc', 1),
(75, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(76, 1, 'menu_user', 'perm.menu_user_desc', 1),
(77, 1, 'menus', 'perm.menus_desc', 1),
(78, 1, 'messages', 'perm.messages_desc', 1),
(79, 1, 'namespaces', 'perm.namespaces_desc', 1),
(80, 1, 'new_category', 'perm.new_category_desc', 1),
(81, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(82, 1, 'new_context', 'perm.new_context_desc', 1),
(83, 1, 'new_document', 'perm.new_document_desc', 1),
(84, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(85, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(86, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(87, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(88, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(89, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(90, 1, 'new_role', 'perm.new_role_desc', 1),
(91, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(92, 1, 'new_template', 'perm.new_template_desc', 1),
(93, 1, 'new_tv', 'perm.new_tv_desc', 1),
(94, 1, 'new_user', 'perm.new_user_desc', 1),
(95, 1, 'packages', 'perm.packages_desc', 1),
(96, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(97, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(98, 1, 'policy_new', 'perm.policy_new_desc', 1),
(99, 1, 'policy_save', 'perm.policy_save_desc', 1),
(100, 1, 'policy_view', 'perm.policy_view_desc', 1),
(101, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(102, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(103, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(104, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(105, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(106, 1, 'property_sets', 'perm.property_sets_desc', 1),
(107, 1, 'providers', 'perm.providers_desc', 1),
(108, 1, 'publish_document', 'perm.publish_document_desc', 1),
(109, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(110, 1, 'remove', 'perm.remove_desc', 1),
(111, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(112, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(113, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(114, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(115, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(116, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(117, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(118, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(119, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(120, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(121, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(122, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(123, 1, 'save', 'perm.save_desc', 1),
(124, 1, 'save_category', 'perm.save_category_desc', 1),
(125, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(126, 1, 'save_context', 'perm.save_context_desc', 1),
(127, 1, 'save_document', 'perm.save_document_desc', 1),
(128, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(129, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(130, 1, 'save_role', 'perm.save_role_desc', 1),
(131, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(132, 1, 'save_template', 'perm.save_template_desc', 1),
(133, 1, 'save_tv', 'perm.save_tv_desc', 1),
(134, 1, 'save_user', 'perm.save_user_desc', 1),
(135, 1, 'search', 'perm.search_desc', 1),
(136, 1, 'settings', 'perm.settings_desc', 1),
(137, 1, 'source_save', 'perm.source_save_desc', 1),
(138, 1, 'source_delete', 'perm.source_delete_desc', 1),
(139, 1, 'source_edit', 'perm.source_edit_desc', 1),
(140, 1, 'source_view', 'perm.source_view_desc', 1),
(141, 1, 'sources', 'perm.sources_desc', 1),
(142, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(143, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(144, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(145, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(146, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(147, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(148, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(149, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(150, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(151, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(152, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(153, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(154, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(155, 1, 'view', 'perm.view_desc', 1),
(156, 1, 'view_category', 'perm.view_category_desc', 1),
(157, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(158, 1, 'view_context', 'perm.view_context_desc', 1),
(159, 1, 'view_document', 'perm.view_document_desc', 1),
(160, 1, 'view_element', 'perm.view_element_desc', 1),
(161, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(162, 1, 'view_offline', 'perm.view_offline_desc', 1),
(163, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(164, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(165, 1, 'view_role', 'perm.view_role_desc', 1),
(166, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(167, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(168, 1, 'view_template', 'perm.view_template_desc', 1),
(169, 1, 'view_tv', 'perm.view_tv_desc', 1),
(170, 1, 'view_user', 'perm.view_user_desc', 1),
(171, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(172, 1, 'workspaces', 'perm.workspaces_desc', 1),
(173, 2, 'add_children', 'perm.add_children_desc', 1),
(174, 2, 'copy', 'perm.copy_desc', 1),
(175, 2, 'create', 'perm.create_desc', 1),
(176, 2, 'delete', 'perm.delete_desc', 1),
(177, 2, 'list', 'perm.list_desc', 1),
(178, 2, 'load', 'perm.load_desc', 1),
(179, 2, 'move', 'perm.move_desc', 1),
(180, 2, 'publish', 'perm.publish_desc', 1),
(181, 2, 'remove', 'perm.remove_desc', 1),
(182, 2, 'save', 'perm.save_desc', 1),
(183, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(184, 2, 'undelete', 'perm.undelete_desc', 1),
(185, 2, 'unpublish', 'perm.unpublish_desc', 1),
(186, 2, 'view', 'perm.view_desc', 1),
(187, 3, 'load', 'perm.load_desc', 1),
(188, 3, 'list', 'perm.list_desc', 1),
(189, 3, 'view', 'perm.view_desc', 1),
(190, 3, 'save', 'perm.save_desc', 1),
(191, 3, 'remove', 'perm.remove_desc', 1),
(192, 4, 'add_children', 'perm.add_children_desc', 1),
(193, 4, 'create', 'perm.create_desc', 1),
(194, 4, 'copy', 'perm.copy_desc', 1),
(195, 4, 'delete', 'perm.delete_desc', 1),
(196, 4, 'list', 'perm.list_desc', 1),
(197, 4, 'load', 'perm.load_desc', 1),
(198, 4, 'remove', 'perm.remove_desc', 1),
(199, 4, 'save', 'perm.save_desc', 1),
(200, 4, 'view', 'perm.view_desc', 1),
(201, 5, 'create', 'perm.create_desc', 1),
(202, 5, 'copy', 'perm.copy_desc', 1),
(203, 5, 'list', 'perm.list_desc', 1),
(204, 5, 'load', 'perm.load_desc', 1),
(205, 5, 'remove', 'perm.remove_desc', 1),
(206, 5, 'save', 'perm.save_desc', 1),
(207, 5, 'view', 'perm.view_desc', 1),
(208, 6, 'load', 'perm.load_desc', 1),
(209, 6, 'list', 'perm.list_desc', 1),
(210, 6, 'view', 'perm.view_desc', 1),
(211, 6, 'save', 'perm.save_desc', 1),
(212, 6, 'remove', 'perm.remove_desc', 1),
(213, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(214, 6, 'copy', 'perm.copy_desc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policies`
--

CREATE TABLE IF NOT EXISTS `modx_access_policies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `class` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `class` (`class`),
  KEY `template` (`template`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{"add_children":true,"create":true,"copy":true,"delete":true,"list":true,"load":true,"move":true,"publish":true,"remove":true,"save":true,"steal_lock":true,"undelete":true,"unpublish":true,"view":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{"about":true,"access_permissions":true,"actions":true,"change_password":true,"change_profile":true,"charsets":true,"class_map":true,"components":true,"content_types":true,"countries":true,"create":true,"credits":true,"customize_forms":true,"dashboards":true,"database":true,"database_truncate":true,"delete_category":true,"delete_chunk":true,"delete_context":true,"delete_document":true,"delete_eventlog":true,"delete_plugin":true,"delete_propertyset":true,"delete_role":true,"delete_snippet":true,"delete_template":true,"delete_tv":true,"delete_user":true,"directory_chmod":true,"directory_create":true,"directory_list":true,"directory_remove":true,"directory_update":true,"edit_category":true,"edit_chunk":true,"edit_context":true,"edit_document":true,"edit_locked":true,"edit_plugin":true,"edit_propertyset":true,"edit_role":true,"edit_snippet":true,"edit_template":true,"edit_tv":true,"edit_user":true,"element_tree":true,"empty_cache":true,"error_log_erase":true,"error_log_view":true,"export_static":true,"file_create":true,"file_list":true,"file_manager":true,"file_remove":true,"file_tree":true,"file_update":true,"file_upload":true,"file_view":true,"flush_sessions":true,"frames":true,"help":true,"home":true,"import_static":true,"languages":true,"lexicons":true,"list":true,"load":true,"logout":true,"logs":true,"menus":true,"menu_reports":true,"menu_security":true,"menu_site":true,"menu_support":true,"menu_system":true,"menu_tools":true,"menu_user":true,"messages":true,"namespaces":true,"new_category":true,"new_chunk":true,"new_context":true,"new_document":true,"new_document_in_root":true,"new_plugin":true,"new_propertyset":true,"new_role":true,"new_snippet":true,"new_static_resource":true,"new_symlink":true,"new_template":true,"new_tv":true,"new_user":true,"new_weblink":true,"packages":true,"policy_delete":true,"policy_edit":true,"policy_new":true,"policy_save":true,"policy_template_delete":true,"policy_template_edit":true,"policy_template_new":true,"policy_template_save":true,"policy_template_view":true,"policy_view":true,"property_sets":true,"providers":true,"publish_document":true,"purge_deleted":true,"remove":true,"remove_locks":true,"resource_duplicate":true,"resourcegroup_delete":true,"resourcegroup_edit":true,"resourcegroup_new":true,"resourcegroup_resource_edit":true,"resourcegroup_resource_list":true,"resourcegroup_save":true,"resourcegroup_view":true,"resource_quick_create":true,"resource_quick_update":true,"resource_tree":true,"save":true,"save_category":true,"save_chunk":true,"save_context":true,"save_document":true,"save_plugin":true,"save_propertyset":true,"save_role":true,"save_snippet":true,"save_template":true,"save_tv":true,"save_user":true,"search":true,"settings":true,"sources":true,"source_delete":true,"source_edit":true,"source_save":true,"source_view":true,"steal_locks":true,"tree_show_element_ids":true,"tree_show_resource_ids":true,"undelete_document":true,"unlock_element_properties":true,"unpublish_document":true,"usergroup_delete":true,"usergroup_edit":true,"usergroup_new":true,"usergroup_save":true,"usergroup_user_edit":true,"usergroup_user_list":true,"usergroup_view":true,"view":true,"view_category":true,"view_chunk":true,"view_context":true,"view_document":true,"view_element":true,"view_eventlog":true,"view_offline":true,"view_plugin":true,"view_propertyset":true,"view_role":true,"view_snippet":true,"view_sysinfo":true,"view_template":true,"view_tv":true,"view_unpublished":true,"view_user":true,"workspaces":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{"load":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{"load":true,"list":true,"view":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{"load":true,"list":true,"view":true,"save":true,"remove":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{"add_children":true,"create":true,"delete":true,"list":true,"load":true,"remove":true,"save":true,"view":true,"copy":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{"change_profile":true,"class_map":true,"countries":true,"edit_document":true,"frames":true,"help":true,"home":true,"load":true,"list":true,"logout":true,"menu_reports":true,"menu_site":true,"menu_support":true,"menu_tools":true,"menu_user":true,"resource_duplicate":true,"resource_tree":true,"save_document":true,"source_view":true,"tree_show_resource_ids":true,"view":true,"view_document":true,"new_document":true,"delete_document":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{"create":true,"copy":true,"load":true,"list":true,"save":true,"remove":true,"view":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{"load":true,"list":true,"view":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{"about":true,"change_password":true,"change_profile":true,"charsets":true,"class_map":true,"components":true,"content_types":true,"countries":true,"create":true,"credits":true,"customize_forms":true,"dashboards":true,"database":true,"delete_category":true,"delete_chunk":true,"delete_context":true,"delete_document":true,"delete_eventlog":true,"delete_plugin":true,"delete_propertyset":true,"delete_snippet":true,"delete_template":true,"delete_tv":true,"delete_role":true,"delete_user":true,"directory_chmod":true,"directory_create":true,"directory_list":true,"directory_remove":true,"directory_update":true,"edit_category":true,"edit_chunk":true,"edit_context":true,"edit_document":true,"edit_locked":true,"edit_plugin":true,"edit_propertyset":true,"edit_role":true,"edit_snippet":true,"edit_template":true,"edit_tv":true,"edit_user":true,"element_tree":true,"empty_cache":true,"error_log_erase":true,"error_log_view":true,"export_static":true,"file_create":true,"file_list":true,"file_manager":true,"file_remove":true,"file_tree":true,"file_update":true,"file_upload":true,"file_view":true,"frames":true,"help":true,"home":true,"import_static":true,"languages":true,"lexicons":true,"list":true,"load":true,"logout":true,"logs":true,"menu_reports":true,"menu_site":true,"menu_support":true,"menu_system":true,"menu_tools":true,"menu_user":true,"menus":true,"messages":true,"namespaces":true,"new_category":true,"new_chunk":true,"new_context":true,"new_document":true,"new_static_resource":true,"new_symlink":true,"new_weblink":true,"new_document_in_root":true,"new_plugin":true,"new_propertyset":true,"new_role":true,"new_snippet":true,"new_template":true,"new_tv":true,"new_user":true,"packages":true,"property_sets":true,"providers":true,"publish_document":true,"purge_deleted":true,"remove":true,"resource_duplicate":true,"resource_quick_create":true,"resource_quick_update":true,"resource_tree":true,"save":true,"save_category":true,"save_chunk":true,"save_context":true,"save_document":true,"save_plugin":true,"save_propertyset":true,"save_snippet":true,"save_template":true,"save_tv":true,"save_user":true,"search":true,"settings":true,"source_delete":true,"source_edit":true,"source_save":true,"source_view":true,"sources":true,"tree_show_element_ids":true,"tree_show_resource_ids":true,"undelete_document":true,"unpublish_document":true,"unlock_element_properties":true,"view":true,"view_category":true,"view_chunk":true,"view_context":true,"view_document":true,"view_element":true,"view_eventlog":true,"view_offline":true,"view_plugin":true,"view_propertyset":true,"view_role":true,"view_snippet":true,"view_sysinfo":true,"view_template":true,"view_tv":true,"view_user":true,"view_unpublished":true,"workspaces":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{"load":true,"list":true,"view":true,"save":true,"remove":true,"copy":true,"view_unpublished":true}', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_templates`
--

CREATE TABLE IF NOT EXISTS `modx_access_policy_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_group` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_template_groups`
--

CREATE TABLE IF NOT EXISTS `modx_access_policy_template_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resources`
--

CREATE TABLE IF NOT EXISTS `modx_access_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resource_groups`
--

CREATE TABLE IF NOT EXISTS `modx_access_resource_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_templatevars`
--

CREATE TABLE IF NOT EXISTS `modx_access_templatevars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actiondom`
--

CREATE TABLE IF NOT EXISTS `modx_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `set` (`set`),
  KEY `action` (`action`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `for_parent` (`for_parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions`
--

CREATE TABLE IF NOT EXISTS `modx_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(255) NOT NULL,
  `haslayout` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `controller` (`controller`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `modx_actions`
--

INSERT INTO `modx_actions` (`id`, `namespace`, `controller`, `haslayout`, `lang_topics`, `assets`, `help_url`) VALUES
(1, 'core', 'welcome', 1, 'welcome,configcheck', '', ''),
(2, 'core', 'system', 0, '', '', ''),
(3, 'core', 'browser', 0, 'file', '', ''),
(4, 'core', 'context/create', 1, 'context,setting,access,policy,user', '', 'Contexts'),
(5, 'core', 'context/update', 1, 'context,setting,access,policy,user', '', 'Contexts'),
(6, 'core', 'context/view', 1, 'context', '', 'Contexts'),
(7, 'core', 'element', 1, 'element', '', ''),
(8, 'core', 'element/chunk', 1, 'chunk,category,propertyset,element', '', 'Chunks'),
(9, 'core', 'element/chunk/create', 1, 'chunk,category,propertyset,element', '', 'Chunks'),
(10, 'core', 'element/chunk/update', 1, 'chunk,category,propertyset,element', '', 'Chunks'),
(11, 'core', 'element/plugin', 1, 'plugin,category,system_events,propertyset,element', '', 'Plugins'),
(12, 'core', 'element/plugin/create', 1, 'plugin,category,system_events,propertyset,element', '', 'Plugins'),
(13, 'core', 'element/plugin/update', 1, 'plugin,category,system_events,propertyset,element', '', 'Plugins'),
(14, 'core', 'element/snippet', 1, 'snippet,propertyset,element', '', 'Snippets'),
(15, 'core', 'element/snippet/create', 1, 'snippet,propertyset,element', '', 'Snippets'),
(16, 'core', 'element/snippet/update', 1, 'snippet,propertyset,element', '', 'Snippets'),
(17, 'core', 'element/template', 1, 'template,propertyset,element', '', 'Templates'),
(18, 'core', 'element/template/create', 1, 'template,propertyset,element', '', 'Templates'),
(19, 'core', 'element/template/update', 1, 'template,propertyset,element', '', 'Templates'),
(20, 'core', 'element/template/tvsort', 1, 'template,tv,propertyset,element', '', ''),
(21, 'core', 'element/tv', 1, 'tv,propertyset,element', '', 'Template+Variables'),
(22, 'core', 'element/tv/create', 1, 'tv,tv_widget,propertyset,element', '', 'Template+Variables'),
(23, 'core', 'element/tv/update', 1, 'tv,tv_widget,propertyset,element', '', 'Template+Variables'),
(24, 'core', 'element/view', 1, 'element', '', ''),
(25, 'core', 'resource', 1, '', '', ''),
(26, 'core', 'security/usergroup/create', 1, 'user,access,policy,context', '', 'User+Groups'),
(27, 'core', 'security/usergroup/update', 1, 'user,access,policy,context', '', 'User+Groups'),
(28, 'core', 'resource/data', 1, 'resource', '', 'Resource'),
(29, 'core', 'resource/empty_recycle_bin', 1, 'resource', '', ''),
(30, 'core', 'resource/update', 1, 'resource', '', 'Resource'),
(31, 'core', 'security', 1, 'user', '', ''),
(32, 'core', 'security/role', 1, 'user', '', 'Roles'),
(33, 'core', 'security/user/create', 1, 'user,setting,access', '', 'Users'),
(34, 'core', 'security/user/update', 1, 'user,setting,access', '', 'Users'),
(35, 'core', 'security/login', 1, 'login', '', ''),
(36, 'core', 'system/refresh_site', 1, '', '', ''),
(37, 'core', 'system/phpinfo', 1, '', '', ''),
(38, 'core', 'resource/tvs', 0, '', '', ''),
(39, 'core', 'system/file', 1, 'file', '', ''),
(40, 'core', 'system/file/edit', 1, 'file', '', ''),
(41, 'core', 'security/access/policy/update', 1, 'user,policy', '', 'Policies'),
(42, 'core', 'workspaces/package/view', 1, 'workspace,namespace', '', 'Package+Management'),
(43, 'core', 'security/access/policy/template/update', 1, 'user,policy', '', 'PolicyTemplates'),
(44, 'core', 'security/forms/profile/update', 1, 'formcustomization,user,access,policy', '', 'Form+Customization+Profiles'),
(45, 'core', 'security/forms/set/update', 1, 'formcustomization,user,access,policy', '', 'Form+Customization+Sets'),
(46, 'core', 'system/dashboards/update', 1, 'dashboards,user', '', 'Dashboards'),
(47, 'core', 'system/dashboards/create', 1, 'dashboards,user', '', 'Dashboards'),
(48, 'core', 'system/dashboards/widget/update', 1, 'dashboards,user', '', 'Dashboard+Widgets'),
(49, 'core', 'system/dashboards/widget/create', 1, 'dashboards,user', '', 'Dashboard+Widgets'),
(50, 'core', 'source/create', 1, 'sources,namespace', '', 'Media+Sources'),
(51, 'core', 'source/update', 1, 'sources,namespace', '', 'Media+Sources'),
(52, 'core', 'system/file/create', 1, 'file', '', ''),
(53, 'core', 'system/dashboards', 1, 'about', '', 'Dashboards'),
(54, 'core', 'search', 1, '', '', ''),
(55, 'core', 'resource/create', 1, 'resource', '', 'Resource'),
(56, 'core', 'security/user', 1, 'user', '', 'Users'),
(57, 'core', 'security/permission', 1, 'user,access,policy', '', 'Security'),
(58, 'core', 'security/resourcegroup/index', 1, 'resource,user,access', '', 'Resource+Groups'),
(59, 'core', 'security/forms', 1, 'formcustomization,user,access,policy', '', 'Customizing+The+Manager'),
(60, 'core', 'system/import', 1, 'import', '', ''),
(61, 'core', 'system/import/html', 1, 'import', '', ''),
(62, 'core', 'element/propertyset/index', 1, 'element,category,propertyset', '', 'Properties+and+Property+Sets'),
(63, 'core', 'source/index', 1, 'sources,namespace', '', 'Media+Sources'),
(64, 'core', 'resource/site_schedule', 1, 'resource', '', ''),
(65, 'core', 'system/logs/index', 1, 'manager_log', '', ''),
(66, 'core', 'system/event', 1, 'system_events', '', ''),
(67, 'core', 'system/info', 1, 'system_info', '', ''),
(68, 'core', 'help', 1, 'about', '', ''),
(69, 'core', 'workspaces', 1, 'workspace', '', 'Package+Management'),
(70, 'core', 'system/settings', 1, 'setting', '', 'Settings'),
(71, 'core', 'workspaces/lexicon', 1, 'package_builder,lexicon,namespace', '', 'Internationalization'),
(72, 'core', 'system/contenttype', 1, 'content_type', '', 'Content+Types'),
(73, 'core', 'context', 1, 'context', '', 'Contexts'),
(74, 'core', 'system/action', 1, 'action,menu,namespace', '', 'Actions+and+Menus'),
(75, 'core', 'workspaces/namespace', 1, 'workspace,package_builder,lexicon,namespace', '', 'Namespaces'),
(76, 'core', 'security/profile', 1, 'user', '', ''),
(77, 'core', 'security/message', 1, 'messages', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions_fields`
--

CREATE TABLE IF NOT EXISTS `modx_actions_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(255) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `action` (`action`),
  KEY `type` (`type`),
  KEY `tab` (`tab`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 30, 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 30, 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 30, 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 30, 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 30, 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 30, 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 30, 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 30, 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 30, 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 30, 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 30, 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 30, 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 30, 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 30, 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 30, 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 30, 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 30, 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 30, 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 30, 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 30, 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 30, 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 30, 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 30, 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 30, 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 30, 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 30, 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 30, 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 30, 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 30, 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 30, 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 30, 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 30, 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(33, 30, 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(34, 30, 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(35, 30, 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(36, 30, 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(37, 30, 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(38, 30, 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(39, 55, 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(40, 55, 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(41, 55, 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(42, 55, 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(43, 55, 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(44, 55, 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(45, 55, 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(46, 55, 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(47, 55, 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(48, 55, 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(49, 55, 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(50, 55, 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(51, 55, 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(52, 55, 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(53, 55, 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(54, 55, 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(55, 55, 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(56, 55, 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(57, 55, 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(58, 55, 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(59, 55, 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(60, 55, 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(61, 55, 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(62, 55, 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(63, 55, 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(64, 55, 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(65, 55, 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(66, 55, 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(67, 55, 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(68, 55, 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(69, 55, 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(70, 55, 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(71, 55, 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(72, 55, 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(73, 55, 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(74, 55, 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(75, 55, 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(76, 55, 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_active_users`
--

CREATE TABLE IF NOT EXISTS `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories`
--

CREATE TABLE IF NOT EXISTS `modx_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`) VALUES
(1, 0, 'Breadcrumbs'),
(2, 0, 'SimpleSearch');

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories_closure`
--

CREATE TABLE IF NOT EXISTS `modx_categories_closure` (
  `ancestor` int(10) unsigned NOT NULL DEFAULT '0',
  `descendant` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ancestor`,`descendant`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(1, 1, 0),
(0, 1, 0),
(2, 2, 0),
(0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_class_map`
--

CREATE TABLE IF NOT EXISTS `modx_class_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(255) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:resource',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`),
  KEY `parent_class` (`parent_class`),
  KEY `name_field` (`name_field`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Table structure for table `modx_content_type`
--

CREATE TABLE IF NOT EXISTS `modx_content_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.js', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context`
--

CREATE TABLE IF NOT EXISTS `modx_context` (
  `key` varchar(100) NOT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modx_context`
--

INSERT INTO `modx_context` (`key`, `description`, `rank`) VALUES
('web', 'The default front-end context for your web site.', 0),
('mgr', 'The default manager or administration context for content management activity.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_resource`
--

CREATE TABLE IF NOT EXISTS `modx_context_resource` (
  `context_key` varchar(255) NOT NULL,
  `resource` int(11) unsigned NOT NULL,
  PRIMARY KEY (`context_key`,`resource`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_setting`
--

CREATE TABLE IF NOT EXISTS `modx_context_setting` (
  `context_key` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`context_key`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard`
--

CREATE TABLE IF NOT EXISTS `modx_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `hide_trees` (`hide_trees`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget`
--

CREATE TABLE IF NOT EXISTS `modx_dashboard_widget` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(255) NOT NULL DEFAULT '',
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) NOT NULL DEFAULT 'half',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `namespace` (`namespace`),
  KEY `lexicon` (`lexicon`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget_placement`
--

CREATE TABLE IF NOT EXISTS `modx_dashboard_widget_placement` (
  `dashboard` int(10) unsigned NOT NULL DEFAULT '0',
  `widget` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dashboard`,`widget`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `modx_documentgroup_names`
--

CREATE TABLE IF NOT EXISTS `modx_documentgroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_document_groups`
--

CREATE TABLE IF NOT EXISTS `modx_document_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_element_property_sets`
--

CREATE TABLE IF NOT EXISTS `modx_element_property_sets` (
  `element` int(10) unsigned NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`element`,`element_class`,`property_set`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles`
--

CREATE TABLE IF NOT EXISTS `modx_fc_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles_usergroups`
--

CREATE TABLE IF NOT EXISTS `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usergroup`,`profile`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_sets`
--

CREATE TABLE IF NOT EXISTS `modx_fc_sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `profile` (`profile`),
  KEY `action` (`action`),
  KEY `active` (`active`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_lexicon_entries`
--

CREATE TABLE IF NOT EXISTS `modx_lexicon_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(255) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `topic` (`topic`),
  KEY `namespace` (`namespace`),
  KEY `language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_manager_log`
--

CREATE TABLE IF NOT EXISTS `modx_manager_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT '0000-00-00 00:00:00',
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=483 ;

--
-- Dumping data for table `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2013-10-09 21:17:21', 'resource_update', 'modResource', '1'),
(2, 1, '2013-10-09 21:21:56', 'template_update', 'modTemplate', '1'),
(3, 1, '2013-10-09 21:28:00', 'resource_update', 'modResource', '1'),
(4, 1, '2013-10-10 15:37:02', 'resource_update', 'modResource', '1'),
(5, 1, '2013-10-10 15:41:30', 'resource_update', 'modResource', '1'),
(6, 1, '2013-10-10 15:45:17', 'resource_create', 'modDocument', '2'),
(7, 1, '2013-10-10 15:48:26', 'resource_update', 'modResource', '2'),
(8, 1, '2013-10-10 15:51:39', 'resource_update', 'modResource', '1'),
(9, 1, '2013-10-10 15:52:44', 'resource_update', 'modResource', '2'),
(10, 1, '2013-10-10 15:52:57', 'resource_update', 'modResource', '2'),
(11, 1, '2013-10-10 15:53:59', 'resource_create', 'modDocument', '3'),
(12, 1, '2013-10-10 15:57:02', 'setting_update', 'modSystemSetting', 'site_name'),
(13, 1, '2013-10-10 15:59:50', 'template_update', 'modTemplate', '1'),
(14, 1, '2013-10-10 16:02:31', 'template_update', 'modTemplate', '1'),
(15, 1, '2013-10-10 16:03:35', 'template_update', 'modTemplate', '1'),
(16, 1, '2013-10-10 16:04:09', 'template_update', 'modTemplate', '1'),
(17, 1, '2013-10-10 16:04:44', 'template_update', 'modTemplate', '1'),
(18, 1, '2013-10-10 16:06:20', 'template_update', 'modTemplate', '1'),
(19, 1, '2013-10-10 16:09:13', 'resource_update', 'modResource', '3'),
(20, 1, '2013-10-10 16:11:10', 'resource_create', 'modDocument', '4'),
(21, 1, '2013-10-10 16:15:42', 'resource_update', 'modResource', '2'),
(22, 1, '2013-10-10 16:15:50', 'resource_update', 'modResource', '3'),
(23, 1, '2013-10-10 16:15:58', 'resource_update', 'modResource', '4'),
(24, 1, '2013-10-10 16:17:58', 'resource_update', 'modResource', '2'),
(25, 1, '2013-10-10 16:18:25', 'resource_update', 'modResource', '2'),
(26, 1, '2013-10-10 16:18:32', 'resource_update', 'modResource', '2'),
(27, 1, '2013-10-10 16:19:37', 'resource_update', 'modResource', '3'),
(28, 1, '2013-10-10 16:19:48', 'resource_update', 'modResource', '4'),
(29, 1, '2013-10-10 16:22:10', 'resource_update', 'modResource', '4'),
(30, 1, '2013-10-10 16:22:30', 'resource_update', 'modResource', '4'),
(31, 1, '2013-10-10 16:28:22', 'template_update', 'modTemplate', '1'),
(32, 1, '2013-10-10 16:29:06', 'template_update', 'modTemplate', '1'),
(33, 1, '2013-10-10 16:29:48', 'template_update', 'modTemplate', '1'),
(34, 1, '2013-10-10 16:30:59', 'template_update', 'modTemplate', '1'),
(35, 1, '2013-10-10 16:31:30', 'resource_update', 'modResource', '1'),
(36, 1, '2013-10-10 16:33:04', 'template_update', 'modTemplate', '1'),
(37, 1, '2013-10-10 16:34:35', 'template_update', 'modTemplate', '1'),
(38, 1, '2013-10-10 16:36:09', 'template_update', 'modTemplate', '1'),
(39, 1, '2013-10-10 16:36:45', 'resource_update', 'modResource', '1'),
(40, 1, '2013-10-10 18:39:53', 'template_update', 'modTemplate', '1'),
(41, 1, '2013-10-10 18:42:56', 'template_update', 'modTemplate', '1'),
(42, 1, '2013-10-10 18:44:16', 'template_update', 'modTemplate', '1'),
(43, 1, '2013-10-10 18:55:10', 'snippet_create', 'modSnippet', '2'),
(44, 1, '2013-10-10 18:56:10', 'snippet_update', 'modSnippet', '2'),
(45, 1, '2013-10-10 18:56:51', 'template_update', 'modTemplate', '1'),
(46, 1, '2013-10-10 18:57:39', 'template_update', 'modTemplate', '1'),
(47, 1, '2013-10-10 18:59:09', 'snippet_update', 'modSnippet', '2'),
(48, 1, '2013-10-10 18:59:39', 'snippet_update', 'modSnippet', '2'),
(49, 1, '2013-10-10 19:00:00', 'snippet_update', 'modSnippet', '2'),
(50, 1, '2013-10-10 19:01:11', 'template_update', 'modTemplate', '1'),
(51, 1, '2013-10-10 19:01:27', 'template_update', 'modTemplate', '1'),
(52, 1, '2013-10-10 19:01:59', 'template_update', 'modTemplate', '1'),
(53, 1, '2013-10-10 19:10:10', 'resource_update', 'modResource', '4'),
(54, 1, '2013-10-10 19:11:08', 'resource_update', 'modResource', '4'),
(55, 1, '2013-10-10 19:11:35', 'resource_update', 'modResource', '4'),
(56, 1, '2013-10-10 19:12:41', 'template_update', 'modTemplate', '1'),
(57, 1, '2013-10-10 19:13:26', 'template_update', 'modTemplate', '1'),
(58, 1, '2013-10-10 19:13:35', 'template_update', 'modTemplate', '1'),
(59, 1, '2013-10-10 19:17:46', 'setting_update', 'modSystemSetting', 'friendly_urls'),
(60, 1, '2013-10-10 19:25:42', 'resource_update', 'modResource', '2'),
(61, 1, '2013-10-10 19:30:14', 'template_update', 'modTemplate', '1'),
(62, 1, '2013-10-10 19:31:26', 'template_update', 'modTemplate', '1'),
(63, 1, '2013-10-10 19:32:19', 'template_update', 'modTemplate', '1'),
(64, 1, '2013-10-10 19:34:47', 'resource_update', 'modResource', '3'),
(65, 1, '2013-10-10 19:35:56', 'resource_update', 'modResource', '4'),
(66, 1, '2013-10-11 17:37:44', 'resource_update', 'modResource', '5'),
(67, 1, '2013-10-11 17:43:19', 'resource_update', 'modResource', '6'),
(68, 1, '2013-10-11 17:43:41', 'resource_update', 'modResource', '7'),
(69, 1, '2013-10-11 17:44:25', 'resource_update', 'modResource', '8'),
(70, 1, '2013-10-11 17:44:53', 'resource_update', 'modResource', '9'),
(71, 1, '2013-10-11 17:45:29', 'resource_update', 'modResource', '10'),
(72, 1, '2013-10-11 17:46:01', 'resource_update', 'modResource', '11'),
(73, 1, '2013-10-11 17:46:37', 'resource_update', 'modResource', '12'),
(74, 1, '2013-10-11 17:51:42', 'template_update', 'modTemplate', '1'),
(75, 1, '2013-10-11 17:52:41', 'template_update', 'modTemplate', '1'),
(76, 1, '2013-10-11 17:55:38', 'template_update', 'modTemplate', '1'),
(77, 1, '2013-10-11 17:55:59', 'template_update', 'modTemplate', '1'),
(78, 1, '2013-10-11 17:56:13', 'template_update', 'modTemplate', '1'),
(79, 1, '2013-10-11 17:56:32', 'template_update', 'modTemplate', '1'),
(80, 1, '2013-10-11 17:57:46', 'template_update', 'modTemplate', '1'),
(81, 1, '2013-10-11 17:59:31', 'template_update', 'modTemplate', '1'),
(82, 1, '2013-10-11 17:59:46', 'template_update', 'modTemplate', '1'),
(83, 1, '2013-10-11 18:01:59', 'template_update', 'modTemplate', '1'),
(84, 1, '2013-10-11 18:04:01', 'resource_update', 'modResource', '7'),
(85, 1, '2013-10-11 18:04:09', 'resource_update', 'modResource', '6'),
(86, 1, '2013-10-11 18:04:17', 'resource_update', 'modResource', '8'),
(87, 1, '2013-10-11 18:04:26', 'resource_update', 'modResource', '9'),
(88, 1, '2013-10-11 18:04:35', 'resource_update', 'modResource', '10'),
(89, 1, '2013-10-11 18:04:43', 'resource_update', 'modResource', '11'),
(90, 1, '2013-10-11 18:04:51', 'resource_update', 'modResource', '12'),
(91, 1, '2013-10-11 18:05:01', 'resource_update', 'modResource', '13'),
(92, 1, '2013-10-11 18:05:14', 'resource_update', 'modResource', '14'),
(93, 1, '2013-10-11 18:05:29', 'resource_update', 'modResource', '15'),
(94, 1, '2013-10-11 18:05:38', 'resource_update', 'modResource', '16'),
(95, 1, '2013-10-11 18:06:10', 'resource_update', 'modResource', '16'),
(96, 1, '2013-10-11 18:06:30', 'resource_update', 'modResource', '13'),
(97, 1, '2013-10-11 18:06:48', 'resource_update', 'modResource', '14'),
(98, 1, '2013-10-11 18:07:13', 'resource_update', 'modResource', '15'),
(99, 1, '2013-10-11 18:08:18', 'resource_update', 'modResource', '20'),
(100, 1, '2013-10-11 18:08:22', 'resource_update', 'modResource', '20'),
(101, 1, '2013-10-11 18:26:04', 'template_update', 'modTemplate', '1'),
(102, 1, '2013-10-11 18:29:08', 'template_duplicate', 'modTemplate', '2'),
(103, 1, '2013-10-11 18:30:16', 'template_update', 'modTemplate', '1'),
(104, 1, '2013-10-11 18:31:22', 'template_update', 'modTemplate', '1'),
(105, 1, '2013-10-11 18:32:32', 'template_update', 'modTemplate', '1'),
(106, 1, '2013-10-11 18:33:28', 'template_update', 'modTemplate', '1'),
(107, 1, '2013-10-11 18:35:23', 'template_update', 'modTemplate', '1'),
(108, 1, '2013-10-11 18:36:07', 'template_update', 'modTemplate', '1'),
(109, 1, '2013-10-11 18:37:09', 'template_update', 'modTemplate', '1'),
(110, 1, '2013-10-11 19:44:39', 'template_update', 'modTemplate', '1'),
(111, 1, '2013-10-11 20:01:06', 'template_update', 'modTemplate', '1'),
(112, 1, '2013-10-11 20:02:15', 'template_update', 'modTemplate', '1'),
(113, 1, '2013-10-11 20:03:06', 'template_update', 'modTemplate', '1'),
(114, 1, '2013-10-11 20:05:56', 'template_update', 'modTemplate', '1'),
(115, 1, '2013-10-11 20:09:06', 'template_update', 'modTemplate', '1'),
(116, 1, '2013-10-11 20:11:04', 'template_update', 'modTemplate', '1'),
(117, 1, '2013-10-11 20:13:07', 'template_update', 'modTemplate', '1'),
(118, 1, '2013-10-11 20:14:47', 'template_update', 'modTemplate', '1'),
(119, 1, '2013-10-11 20:16:53', 'template_update', 'modTemplate', '1'),
(120, 1, '2013-10-11 20:17:54', 'template_update', 'modTemplate', '1'),
(121, 1, '2013-10-11 20:20:27', 'template_update', 'modTemplate', '1'),
(122, 1, '2013-10-11 20:22:17', 'template_update', 'modTemplate', '1'),
(123, 1, '2013-10-11 20:23:26', 'template_update', 'modTemplate', '1'),
(124, 1, '2013-10-11 20:24:44', 'template_update', 'modTemplate', '1'),
(125, 1, '2013-10-11 20:26:46', 'template_update', 'modTemplate', '1'),
(126, 1, '2013-10-11 20:27:12', 'template_update', 'modTemplate', '1'),
(127, 1, '2013-10-11 20:28:18', 'template_update', 'modTemplate', '1'),
(128, 1, '2013-10-11 20:29:50', 'resource_update', 'modResource', '1'),
(129, 1, '2013-10-14 16:54:07', 'template_update', 'modTemplate', '1'),
(130, 1, '2013-10-14 16:56:47', 'template_update', 'modTemplate', '1'),
(131, 1, '2013-10-14 16:58:10', 'template_update', 'modTemplate', '1'),
(132, 1, '2013-10-14 17:00:15', 'template_update', 'modTemplate', '1'),
(133, 1, '2013-10-14 17:01:04', 'template_update', 'modTemplate', '1'),
(134, 1, '2013-10-14 17:03:59', 'snippet_duplicate', 'modSnippet', '4'),
(135, 1, '2013-10-14 17:06:45', 'snippet_delete', 'modSnippet', '4'),
(136, 1, '2013-10-14 17:08:36', 'resource_update', 'modResource', '1'),
(137, 1, '2013-10-14 17:10:19', 'template_update', 'modTemplate', '1'),
(138, 1, '2013-10-14 17:12:48', 'template_update', 'modTemplate', '1'),
(139, 1, '2013-10-14 17:15:41', 'snippet_duplicate', 'modSnippet', '5'),
(140, 1, '2013-10-14 17:19:17', 'snippet_delete', 'modSnippet', '5'),
(141, 1, '2013-10-14 17:21:12', 'chunk_create', 'modChunk', '1'),
(142, 1, '2013-10-14 17:21:55', 'chunk_update', 'modChunk', '1'),
(143, 1, '2013-10-14 17:36:00', 'chunk_update', 'modChunk', '1'),
(144, 1, '2013-10-14 17:36:32', 'template_update', 'modTemplate', '1'),
(145, 1, '2013-10-14 17:37:13', 'chunk_update', 'modChunk', '1'),
(146, 1, '2013-10-14 17:37:39', 'template_update', 'modTemplate', '1'),
(147, 1, '2013-10-14 17:38:59', 'chunk_update', 'modChunk', '1'),
(148, 1, '2013-10-14 17:48:04', 'chunk_create', 'modChunk', '2'),
(149, 1, '2013-10-14 17:48:30', 'template_update', 'modTemplate', '1'),
(150, 1, '2013-10-14 17:51:35', 'chunk_update', 'modChunk', '2'),
(151, 1, '2013-10-14 18:03:01', 'chunk_update', 'modChunk', '1'),
(152, 1, '2013-10-14 18:07:22', 'chunk_update', 'modChunk', '1'),
(153, 1, '2013-10-14 18:08:55', 'chunk_update', 'modChunk', '2'),
(154, 1, '2013-10-14 18:42:46', 'template_update', 'modTemplate', '1'),
(155, 1, '2013-10-14 18:43:43', 'template_update', 'modTemplate', '1'),
(156, 1, '2013-10-14 18:46:00', 'template_update', 'modTemplate', '1'),
(157, 1, '2013-10-14 18:50:36', 'template_update', 'modTemplate', '1'),
(158, 1, '2013-10-14 18:56:01', 'template_update', 'modTemplate', '1'),
(159, 1, '2013-10-14 18:58:02', 'template_update', 'modTemplate', '1'),
(160, 1, '2013-10-14 18:59:57', 'template_update', 'modTemplate', '1'),
(161, 1, '2013-10-14 19:00:06', 'template_update', 'modTemplate', '1'),
(162, 1, '2013-10-14 19:01:09', 'template_update', 'modTemplate', '1'),
(163, 1, '2013-10-14 19:01:24', 'template_update', 'modTemplate', '1'),
(164, 1, '2013-10-14 19:01:42', 'template_update', 'modTemplate', '1'),
(165, 1, '2013-10-14 19:02:12', 'resource_update', 'modResource', '3'),
(166, 1, '2013-10-14 19:03:20', 'resource_update', 'modResource', '3'),
(167, 1, '2013-10-14 19:11:13', 'template_update', 'modTemplate', '1'),
(168, 1, '2013-10-14 19:13:07', 'template_update', 'modTemplate', '1'),
(169, 1, '2013-10-14 19:14:04', 'template_update', 'modTemplate', '1'),
(170, 1, '2013-10-14 19:16:41', 'template_update', 'modTemplate', '1'),
(171, 1, '2013-10-14 19:19:38', 'template_update', 'modTemplate', '1'),
(172, 1, '2013-10-14 19:23:01', 'template_update', 'modTemplate', '1'),
(173, 1, '2013-10-14 19:23:20', 'template_update', 'modTemplate', '1'),
(174, 1, '2013-10-14 19:23:48', 'template_update', 'modTemplate', '1'),
(175, 1, '2013-10-14 19:24:09', 'template_update', 'modTemplate', '1'),
(176, 1, '2013-10-14 19:24:34', 'template_update', 'modTemplate', '1'),
(177, 1, '2013-10-14 19:25:12', 'template_update', 'modTemplate', '1'),
(178, 1, '2013-10-14 19:25:42', 'template_update', 'modTemplate', '1'),
(179, 1, '2013-10-14 19:26:16', 'template_update', 'modTemplate', '1'),
(180, 1, '2013-10-14 19:27:57', 'template_update', 'modTemplate', '1'),
(181, 1, '2013-10-14 19:28:26', 'template_update', 'modTemplate', '1'),
(182, 1, '2013-10-14 19:28:52', 'template_update', 'modTemplate', '1'),
(183, 1, '2013-10-14 19:29:30', 'template_update', 'modTemplate', '1'),
(184, 1, '2013-10-14 19:31:54', 'template_update', 'modTemplate', '1'),
(185, 1, '2013-10-14 19:32:43', 'template_update', 'modTemplate', '1'),
(186, 1, '2013-10-14 19:34:10', 'template_update', 'modTemplate', '1'),
(187, 1, '2013-10-14 19:34:40', 'template_update', 'modTemplate', '1'),
(188, 1, '2013-10-14 19:35:53', 'template_update', 'modTemplate', '1'),
(189, 1, '2013-10-14 19:37:06', 'template_update', 'modTemplate', '1'),
(190, 1, '2013-10-14 19:37:53', 'template_update', 'modTemplate', '1'),
(191, 1, '2013-10-14 19:38:14', 'template_update', 'modTemplate', '1'),
(192, 1, '2013-10-14 19:39:32', 'template_update', 'modTemplate', '1'),
(193, 1, '2013-10-14 19:40:43', 'template_update', 'modTemplate', '1'),
(194, 1, '2013-10-14 19:41:25', 'template_update', 'modTemplate', '1'),
(195, 1, '2013-10-14 19:42:17', 'template_update', 'modTemplate', '1'),
(196, 1, '2013-10-14 19:42:52', 'template_update', 'modTemplate', '1'),
(197, 1, '2013-10-14 19:43:08', 'template_update', 'modTemplate', '1'),
(198, 1, '2013-10-14 19:43:30', 'template_update', 'modTemplate', '1'),
(199, 1, '2013-10-14 19:44:48', 'template_update', 'modTemplate', '1'),
(200, 1, '2013-10-14 19:45:40', 'resource_update', 'modResource', '3'),
(201, 1, '2013-10-14 19:48:11', 'template_update', 'modTemplate', '1'),
(202, 1, '2013-10-14 19:49:00', 'template_update', 'modTemplate', '1'),
(203, 1, '2013-10-14 19:51:50', 'template_update', 'modTemplate', '1'),
(204, 1, '2013-10-14 19:54:13', 'template_update', 'modTemplate', '1'),
(205, 1, '2013-10-14 19:54:41', 'template_update', 'modTemplate', '1'),
(206, 1, '2013-10-14 19:54:55', 'template_update', 'modTemplate', '1'),
(207, 1, '2013-10-14 19:55:10', 'template_update', 'modTemplate', '1'),
(208, 1, '2013-10-14 19:55:27', 'template_update', 'modTemplate', '1'),
(209, 1, '2013-10-14 19:55:55', 'template_update', 'modTemplate', '1'),
(210, 1, '2013-10-14 19:56:01', 'template_update', 'modTemplate', '1'),
(211, 1, '2013-10-14 19:56:35', 'template_update', 'modTemplate', '1'),
(212, 1, '2013-10-14 19:57:43', 'template_update', 'modTemplate', '1'),
(213, 1, '2013-10-14 19:58:05', 'template_update', 'modTemplate', '1'),
(214, 1, '2013-10-14 21:14:15', 'template_update', 'modTemplate', '1'),
(215, 1, '2013-10-14 21:48:22', 'template_update', 'modTemplate', '1'),
(216, 1, '2013-10-14 21:49:00', 'template_update', 'modTemplate', '1'),
(217, 1, '2013-10-14 21:49:33', 'template_update', 'modTemplate', '1'),
(218, 1, '2013-10-14 21:49:53', 'template_update', 'modTemplate', '1'),
(219, 1, '2013-10-14 21:50:10', 'template_update', 'modTemplate', '1'),
(220, 1, '2013-10-14 21:50:19', 'template_update', 'modTemplate', '1'),
(221, 1, '2013-10-14 22:59:09', 'template_update', 'modTemplate', '1'),
(222, 1, '2013-10-14 23:01:04', 'template_update', 'modTemplate', '1'),
(223, 1, '2013-10-14 23:01:26', 'template_update', 'modTemplate', '1'),
(224, 1, '2013-10-14 23:04:08', 'template_update', 'modTemplate', '1'),
(225, 1, '2013-10-14 23:21:04', 'template_update', 'modTemplate', '1'),
(226, 1, '2013-10-14 23:21:21', 'template_update', 'modTemplate', '1'),
(227, 1, '2013-10-14 23:23:08', 'template_update', 'modTemplate', '1'),
(228, 1, '2013-10-14 23:25:09', 'template_update', 'modTemplate', '1'),
(229, 1, '2013-10-14 23:27:42', 'template_update', 'modTemplate', '1'),
(230, 1, '2013-10-14 23:32:18', 'template_update', 'modTemplate', '1'),
(231, 1, '2013-10-14 23:32:25', 'template_update', 'modTemplate', '1'),
(232, 1, '2013-10-14 23:32:37', 'template_update', 'modTemplate', '1'),
(233, 1, '2013-10-14 23:33:51', 'template_update', 'modTemplate', '1'),
(234, 1, '2013-10-14 23:43:56', 'template_update', 'modTemplate', '1'),
(235, 1, '2013-10-14 23:46:09', 'template_update', 'modTemplate', '1'),
(236, 1, '2013-10-14 23:47:55', 'template_update', 'modTemplate', '1'),
(237, 1, '2013-10-14 23:48:43', 'template_update', 'modTemplate', '1'),
(238, 1, '2013-10-14 23:50:06', 'template_update', 'modTemplate', '1'),
(239, 1, '2013-10-14 23:52:51', 'template_update', 'modTemplate', '1'),
(240, 1, '2013-10-14 23:53:16', 'template_update', 'modTemplate', '1'),
(241, 1, '2013-10-14 23:54:46', 'template_update', 'modTemplate', '1'),
(242, 1, '2013-10-15 00:03:47', 'template_update', 'modTemplate', '1'),
(243, 1, '2013-10-15 00:21:06', 'template_update', 'modTemplate', '1'),
(244, 1, '2013-10-15 00:21:36', 'template_update', 'modTemplate', '1'),
(245, 1, '2013-10-15 00:47:40', 'template_update', 'modTemplate', '1'),
(246, 1, '2013-10-15 00:49:33', 'resource_update', 'modResource', '2'),
(247, 1, '2013-10-15 00:49:41', 'resource_update', 'modResource', '3'),
(248, 1, '2013-10-15 00:50:09', 'resource_update', 'modResource', '6'),
(249, 1, '2013-10-15 00:50:36', 'resource_update', 'modResource', '7'),
(250, 1, '2013-10-15 00:51:09', 'resource_update', 'modResource', '8'),
(251, 1, '2013-10-15 00:51:17', 'resource_update', 'modResource', '9'),
(252, 1, '2013-10-15 00:51:26', 'resource_update', 'modResource', '10'),
(253, 1, '2013-10-15 00:51:36', 'resource_update', 'modResource', '11'),
(254, 1, '2013-10-15 00:51:45', 'resource_update', 'modResource', '12'),
(255, 1, '2013-10-15 00:52:06', 'resource_update', 'modResource', '13'),
(256, 1, '2013-10-15 00:52:21', 'resource_update', 'modResource', '14'),
(257, 1, '2013-10-15 00:52:50', 'resource_update', 'modResource', '15'),
(258, 1, '2013-10-15 00:53:35', 'resource_update', 'modResource', '16'),
(259, 1, '2013-10-15 00:53:48', 'delete_resource', 'modDocument', '17'),
(260, 1, '2013-10-15 00:54:19', 'resource_update', 'modResource', '18'),
(261, 1, '2013-10-15 00:54:31', 'delete_resource', 'modDocument', '19'),
(262, 1, '2013-10-15 00:55:02', 'resource_update', 'modResource', '20'),
(263, 1, '2013-10-15 00:55:39', 'resource_update', 'modResource', '21'),
(264, 1, '2013-10-15 00:55:52', 'resource_update', 'modResource', '18'),
(265, 1, '2013-10-15 00:56:01', 'resource_update', 'modResource', '21'),
(266, 1, '2013-10-15 01:00:12', 'template_update', 'modTemplate', '1'),
(267, 1, '2013-10-15 01:01:40', 'template_update', 'modTemplate', '1'),
(268, 1, '2013-10-15 01:04:04', 'template_update', 'modTemplate', '1'),
(269, 1, '2013-10-15 01:09:19', 'template_update', 'modTemplate', '1'),
(270, 1, '2013-10-15 01:09:34', 'template_update', 'modTemplate', '1'),
(271, 1, '2013-10-15 01:10:19', 'template_update', 'modTemplate', '1'),
(272, 1, '2013-10-15 01:11:02', 'template_update', 'modTemplate', '1'),
(273, 1, '2013-10-15 01:11:30', 'template_update', 'modTemplate', '1'),
(274, 1, '2013-10-15 01:11:43', 'template_update', 'modTemplate', '1'),
(275, 1, '2013-10-15 01:14:48', 'template_update', 'modTemplate', '1'),
(276, 1, '2013-10-15 01:15:06', 'template_update', 'modTemplate', '1'),
(277, 1, '2013-10-15 01:15:29', 'template_update', 'modTemplate', '1'),
(278, 1, '2013-10-15 01:16:15', 'template_update', 'modTemplate', '1'),
(279, 1, '2013-10-15 01:16:35', 'template_update', 'modTemplate', '1'),
(280, 1, '2013-10-15 01:17:52', 'template_update', 'modTemplate', '1'),
(281, 1, '2013-10-15 01:28:54', 'template_update', 'modTemplate', '1'),
(282, 1, '2013-10-15 01:29:52', 'template_update', 'modTemplate', '1'),
(283, 1, '2013-10-15 01:30:16', 'template_update', 'modTemplate', '1'),
(284, 1, '2013-10-15 01:30:42', 'template_update', 'modTemplate', '1'),
(285, 1, '2013-10-15 01:31:08', 'template_update', 'modTemplate', '1'),
(286, 1, '2013-10-15 01:31:20', 'template_update', 'modTemplate', '1'),
(287, 1, '2013-10-15 01:31:42', 'template_update', 'modTemplate', '1'),
(288, 1, '2013-10-15 01:32:28', 'template_update', 'modTemplate', '1'),
(289, 1, '2013-10-15 01:32:56', 'template_update', 'modTemplate', '1'),
(290, 1, '2013-10-15 01:35:23', 'template_update', 'modTemplate', '1'),
(291, 1, '2013-10-15 01:40:25', 'template_update', 'modTemplate', '1'),
(292, 1, '2013-10-15 01:40:47', 'template_update', 'modTemplate', '1'),
(293, 1, '2013-10-15 01:42:08', 'template_update', 'modTemplate', '1'),
(294, 1, '2013-10-15 01:42:35', 'template_update', 'modTemplate', '1'),
(295, 1, '2013-10-15 01:42:56', 'template_update', 'modTemplate', '1'),
(296, 1, '2013-10-15 01:43:01', 'template_update', 'modTemplate', '1'),
(297, 1, '2013-10-15 01:44:14', 'template_update', 'modTemplate', '1'),
(298, 1, '2013-10-15 01:44:34', 'template_update', 'modTemplate', '1'),
(299, 1, '2013-10-15 01:45:07', 'template_update', 'modTemplate', '1'),
(300, 1, '2013-10-15 01:52:32', 'template_update', 'modTemplate', '1'),
(301, 1, '2013-10-15 01:53:25', 'template_update', 'modTemplate', '1'),
(302, 1, '2013-10-15 01:53:53', 'template_update', 'modTemplate', '1'),
(303, 1, '2013-10-15 01:55:30', 'template_update', 'modTemplate', '1'),
(304, 1, '2013-10-15 01:56:34', 'template_update', 'modTemplate', '1'),
(305, 1, '2013-10-15 01:56:45', 'template_update', 'modTemplate', '1'),
(306, 1, '2013-10-15 01:57:06', 'template_update', 'modTemplate', '1'),
(307, 1, '2013-10-15 01:57:17', 'template_update', 'modTemplate', '1'),
(308, 1, '2013-10-15 01:57:53', 'template_update', 'modTemplate', '1'),
(309, 1, '2013-10-15 01:58:04', 'template_update', 'modTemplate', '1'),
(310, 1, '2013-10-15 01:58:09', 'template_update', 'modTemplate', '1'),
(311, 1, '2013-10-15 01:58:36', 'template_update', 'modTemplate', '1'),
(312, 1, '2013-10-15 01:58:48', 'template_update', 'modTemplate', '1'),
(313, 1, '2013-10-15 01:58:57', 'template_update', 'modTemplate', '1'),
(314, 1, '2013-10-15 01:59:09', 'template_update', 'modTemplate', '1'),
(315, 1, '2013-10-15 01:59:19', 'template_update', 'modTemplate', '1'),
(316, 1, '2013-10-15 01:59:52', 'template_update', 'modTemplate', '1'),
(317, 1, '2013-10-15 02:00:08', 'template_update', 'modTemplate', '1'),
(318, 1, '2013-10-15 02:00:23', 'template_update', 'modTemplate', '1'),
(319, 1, '2013-10-15 02:00:49', 'template_update', 'modTemplate', '1'),
(320, 1, '2013-10-15 02:00:59', 'template_update', 'modTemplate', '1'),
(321, 1, '2013-10-15 02:01:59', 'template_update', 'modTemplate', '1'),
(322, 1, '2013-10-15 02:02:56', 'template_update', 'modTemplate', '1'),
(323, 1, '2013-10-15 02:04:47', 'resource_update', 'modResource', '6'),
(324, 1, '2013-10-15 02:06:34', 'template_update', 'modTemplate', '1'),
(325, 1, '2013-10-15 02:06:49', 'template_update', 'modTemplate', '1'),
(326, 1, '2013-10-15 02:12:28', 'resource_update', 'modResource', '6'),
(327, 1, '2013-10-15 02:14:09', 'resource_update', 'modResource', '6'),
(328, 1, '2013-10-15 02:14:53', 'resource_update', 'modResource', '6'),
(329, 1, '2013-10-15 02:21:37', 'resource_update', 'modResource', '1'),
(330, 1, '2013-10-15 02:22:40', 'resource_update', 'modResource', '1'),
(331, 1, '2013-10-15 02:22:46', 'resource_update', 'modResource', '1'),
(332, 1, '2013-10-15 02:23:14', 'resource_update', 'modResource', '1'),
(333, 1, '2013-10-15 02:23:31', 'resource_update', 'modResource', '1'),
(334, 1, '2013-10-15 02:24:27', 'template_update', 'modTemplate', '1'),
(335, 1, '2013-10-15 02:24:41', 'template_update', 'modTemplate', '1'),
(336, 1, '2013-10-15 02:25:10', 'template_update', 'modTemplate', '1'),
(337, 1, '2013-10-15 02:26:44', 'resource_update', 'modResource', '6'),
(338, 1, '2013-10-15 02:26:57', 'resource_update', 'modResource', '6'),
(339, 1, '2013-10-15 02:27:19', 'resource_update', 'modResource', '6'),
(340, 1, '2013-10-15 02:27:55', 'resource_update', 'modResource', '7'),
(341, 1, '2013-10-15 02:28:21', 'resource_update', 'modResource', '7'),
(342, 1, '2013-10-15 02:29:37', 'resource_update', 'modResource', '7'),
(343, 1, '2013-10-15 02:30:40', 'resource_update', 'modResource', '7'),
(344, 1, '2013-10-15 02:31:01', 'resource_update', 'modResource', '6'),
(345, 1, '2013-10-15 02:31:41', 'resource_update', 'modResource', '8'),
(346, 1, '2013-10-15 02:32:21', 'resource_update', 'modResource', '12'),
(347, 1, '2013-10-15 02:43:14', 'resource_update', 'modResource', '9'),
(348, 1, '2013-10-15 02:43:48', 'resource_update', 'modResource', '9'),
(349, 1, '2013-10-15 02:44:35', 'resource_update', 'modResource', '9'),
(350, 1, '2013-10-15 02:45:59', 'resource_update', 'modResource', '12'),
(351, 1, '2013-10-15 02:50:55', 'resource_update', 'modResource', '1'),
(352, 1, '2013-10-15 02:53:02', 'resource_update', 'modResource', '1'),
(353, 1, '2013-10-15 02:53:51', 'resource_update', 'modResource', '18'),
(354, 1, '2013-10-15 02:54:01', 'resource_update', 'modResource', '18'),
(355, 1, '2013-10-15 02:55:06', 'resource_update', 'modResource', '21'),
(356, 1, '2013-10-15 02:57:52', 'resource_update', 'modResource', '1'),
(357, 1, '2013-10-15 02:58:07', 'resource_update', 'modResource', '1'),
(358, 1, '2013-10-15 02:58:20', 'resource_update', 'modResource', '1'),
(359, 1, '2013-10-15 02:59:35', 'resource_update', 'modResource', '1'),
(360, 1, '2013-10-15 03:00:09', 'chunk_create', 'modChunk', '3'),
(361, 1, '2013-10-15 03:02:18', 'chunk_update', 'modChunk', '3'),
(362, 1, '2013-10-15 03:03:33', 'chunk_update', 'modChunk', '3'),
(363, 1, '2013-10-15 03:03:50', 'chunk_update', 'modChunk', '3'),
(364, 1, '2013-10-15 03:04:20', 'resource_update', 'modResource', '1'),
(365, 1, '2013-10-15 03:04:34', 'resource_update', 'modResource', '1'),
(366, 1, '2013-10-15 03:05:54', 'template_update', 'modTemplate', '1'),
(367, 1, '2013-10-15 03:08:05', 'template_update', 'modTemplate', '1'),
(368, 1, '2013-10-15 03:08:40', 'template_update', 'modTemplate', '1'),
(369, 1, '2013-10-15 03:08:58', 'template_update', 'modTemplate', '1'),
(370, 1, '2013-10-15 03:11:47', 'resource_update', 'modResource', '1'),
(371, 1, '2013-10-15 03:13:08', 'chunk_update', 'modChunk', '3'),
(372, 1, '2013-10-15 03:14:27', 'template_update', 'modTemplate', '1'),
(373, 1, '2013-10-15 03:14:49', 'template_update', 'modTemplate', '1'),
(374, 1, '2013-10-15 03:14:54', 'template_update', 'modTemplate', '1'),
(375, 1, '2013-10-15 03:21:56', 'template_update', 'modTemplate', '1'),
(376, 1, '2013-10-15 11:49:24', 'template_update', 'modTemplate', '1'),
(377, 1, '2013-10-15 11:51:07', 'template_update', 'modTemplate', '1'),
(378, 1, '2013-10-15 11:51:25', 'template_update', 'modTemplate', '1'),
(379, 1, '2013-10-15 11:51:54', 'template_update', 'modTemplate', '1'),
(380, 1, '2013-10-15 11:52:10', 'template_update', 'modTemplate', '1'),
(381, 1, '2013-10-15 11:52:43', 'template_update', 'modTemplate', '1'),
(382, 1, '2013-10-15 12:00:13', 'template_update', 'modTemplate', '1'),
(383, 1, '2013-10-15 12:04:00', 'template_update', 'modTemplate', '1'),
(384, 1, '2013-10-15 12:04:17', 'template_update', 'modTemplate', '1'),
(385, 1, '2013-10-15 12:04:52', 'template_update', 'modTemplate', '1'),
(386, 1, '2013-10-15 12:05:24', 'template_update', 'modTemplate', '1'),
(387, 1, '2013-10-15 12:07:05', 'template_update', 'modTemplate', '1'),
(388, 1, '2013-10-15 12:07:31', 'template_update', 'modTemplate', '1'),
(389, 1, '2013-10-15 12:08:20', 'template_update', 'modTemplate', '1'),
(390, 1, '2013-10-15 12:08:52', 'template_update', 'modTemplate', '1'),
(391, 1, '2013-10-15 12:13:57', 'template_update', 'modTemplate', '1'),
(392, 1, '2013-10-15 12:17:28', 'template_update', 'modTemplate', '1'),
(393, 1, '2013-10-15 12:30:38', 'chunk_create', 'modChunk', '4'),
(394, 1, '2013-10-15 12:31:44', 'template_update', 'modTemplate', '1'),
(395, 1, '2013-10-15 12:32:20', 'chunk_update', 'modChunk', '4'),
(396, 1, '2013-10-15 12:32:36', 'chunk_update', 'modChunk', '4'),
(397, 1, '2013-10-15 12:33:14', 'chunk_update', 'modChunk', '4'),
(398, 1, '2013-10-15 12:33:28', 'chunk_update', 'modChunk', '4'),
(399, 1, '2013-10-15 12:33:41', 'chunk_update', 'modChunk', '4'),
(400, 1, '2013-10-15 12:35:52', 'template_update', 'modTemplate', '1'),
(401, 1, '2013-10-15 12:36:20', 'template_update', 'modTemplate', '1'),
(402, 1, '2013-10-15 12:39:08', 'template_update', 'modTemplate', '1'),
(403, 1, '2013-10-15 12:39:18', 'template_update', 'modTemplate', '1'),
(404, 1, '2013-10-15 12:39:44', 'template_update', 'modTemplate', '1'),
(405, 1, '2013-10-15 12:41:09', 'template_update', 'modTemplate', '1'),
(406, 1, '2013-10-15 12:41:22', 'template_update', 'modTemplate', '1'),
(407, 1, '2013-10-15 12:41:43', 'template_update', 'modTemplate', '1'),
(408, 1, '2013-10-15 12:42:11', 'template_update', 'modTemplate', '1'),
(409, 1, '2013-10-15 16:11:32', 'template_update', 'modTemplate', '1'),
(410, 1, '2013-10-15 16:11:52', 'template_update', 'modTemplate', '1'),
(411, 1, '2013-10-15 16:12:26', 'template_update', 'modTemplate', '1'),
(412, 1, '2013-10-15 16:13:57', 'template_update', 'modTemplate', '1'),
(413, 1, '2013-10-15 16:14:40', 'template_update', 'modTemplate', '1'),
(414, 1, '2013-10-15 16:15:13', 'template_update', 'modTemplate', '1'),
(415, 1, '2013-10-15 16:16:36', 'template_update', 'modTemplate', '1'),
(416, 1, '2013-10-15 16:22:28', 'template_update', 'modTemplate', '1'),
(417, 1, '2013-10-15 16:22:48', 'template_update', 'modTemplate', '1'),
(418, 1, '2013-10-15 16:24:13', 'template_update', 'modTemplate', '1'),
(419, 1, '2013-10-15 16:24:56', 'template_update', 'modTemplate', '1'),
(420, 1, '2013-10-15 16:28:01', 'template_update', 'modTemplate', '1'),
(421, 1, '2013-10-15 16:58:59', 'template_update', 'modTemplate', '1'),
(422, 1, '2013-10-15 16:59:51', 'template_update', 'modTemplate', '1'),
(423, 1, '2013-10-15 17:01:00', 'resource_update', 'modResource', '4'),
(424, 1, '2013-10-15 17:02:07', 'template_update', 'modTemplate', '1'),
(425, 1, '2013-10-15 17:03:25', 'resource_update', 'modResource', '4'),
(426, 1, '2013-10-15 17:05:15', 'template_update', 'modTemplate', '1'),
(427, 1, '2013-10-15 17:09:20', 'resource_update', 'modResource', '4'),
(428, 1, '2013-10-15 17:11:23', 'resource_update', 'modResource', '3'),
(429, 1, '2013-10-15 17:11:34', 'resource_update', 'modResource', '2'),
(430, 1, '2013-10-15 17:11:51', 'resource_update', 'modResource', '2'),
(431, 1, '2013-10-15 17:12:02', 'resource_update', 'modResource', '3'),
(432, 1, '2013-10-15 17:43:40', 'template_update', 'modTemplate', '1'),
(433, 1, '2013-10-15 17:43:56', 'template_update', 'modTemplate', '1'),
(434, 1, '2013-10-15 17:45:39', 'template_update', 'modTemplate', '1'),
(435, 1, '2013-10-15 18:08:11', 'resource_create', 'modDocument', '22'),
(436, 1, '2013-10-15 18:10:04', 'resource_create', 'modDocument', '23'),
(437, 1, '2013-10-15 18:12:01', 'resource_update', 'modResource', '5'),
(438, 1, '2013-10-15 18:12:30', 'resource_update', 'modResource', '5'),
(439, 1, '2013-10-15 18:12:41', 'resource_update', 'modResource', '23'),
(440, 1, '2013-10-15 18:13:12', 'resource_update', 'modResource', '5'),
(441, 1, '2013-10-15 18:14:04', 'resource_update', 'modResource', '22'),
(442, 1, '2013-10-15 18:15:52', 'resource_update', 'modResource', '5'),
(443, 1, '2013-10-15 18:17:43', 'resource_create', 'modDocument', '24'),
(444, 1, '2013-10-15 18:17:49', 'resource_update', 'modResource', '24'),
(445, 1, '2013-10-15 18:18:25', 'resource_create', 'modDocument', '25'),
(446, 1, '2013-10-15 18:18:38', 'duplicate_resource', 'modDocument', '26'),
(447, 1, '2013-10-15 18:19:03', 'resource_update', 'modResource', '26'),
(448, 1, '2013-10-15 18:19:08', 'duplicate_resource', 'modDocument', '27'),
(449, 1, '2013-10-15 18:19:32', 'resource_update', 'modResource', '27'),
(450, 1, '2013-10-15 18:19:43', 'duplicate_resource', 'modDocument', '28'),
(451, 1, '2013-10-15 18:20:02', 'resource_update', 'modResource', '28'),
(452, 1, '2013-10-15 18:20:13', 'duplicate_resource', 'modDocument', '29'),
(453, 1, '2013-10-15 18:20:38', 'duplicate_resource', 'modDocument', '30'),
(454, 1, '2013-10-15 18:21:06', 'resource_update', 'modResource', '29'),
(455, 1, '2013-10-15 18:22:07', 'resource_update', 'modResource', '30'),
(456, 1, '2013-10-15 18:22:15', 'duplicate_resource', 'modDocument', '31'),
(457, 1, '2013-10-15 18:22:46', 'resource_update', 'modResource', '31'),
(458, 1, '2013-10-15 18:22:58', 'duplicate_resource', 'modDocument', '32'),
(459, 1, '2013-10-15 18:23:28', 'resource_update', 'modResource', '32'),
(460, 1, '2013-10-15 18:23:43', 'resource_update', 'modResource', '32'),
(461, 1, '2013-10-15 18:24:03', 'resource_update', 'modResource', '32'),
(462, 1, '2013-10-15 18:24:26', 'resource_update', 'modResource', '31'),
(463, 1, '2013-10-15 18:24:54', 'resource_update', 'modResource', '29'),
(464, 1, '2013-10-15 18:25:16', 'resource_update', 'modResource', '30'),
(465, 1, '2013-10-15 18:25:38', 'resource_update', 'modResource', '29'),
(466, 1, '2013-10-15 18:25:57', 'resource_update', 'modResource', '28'),
(467, 1, '2013-10-15 18:26:16', 'resource_update', 'modResource', '27'),
(468, 1, '2013-10-15 18:26:34', 'resource_update', 'modResource', '26'),
(469, 1, '2013-10-15 18:26:50', 'resource_update', 'modResource', '25'),
(470, 1, '2013-10-15 18:27:06', 'resource_update', 'modResource', '24'),
(471, 1, '2013-10-15 18:28:12', 'resource_update', 'modResource', '23'),
(472, 1, '2013-10-15 18:30:50', 'resource_update', 'modResource', '5'),
(473, 1, '2013-10-15 18:31:37', 'resource_update', 'modResource', '24'),
(474, 1, '2013-10-15 18:32:05', 'resource_update', 'modResource', '28'),
(475, 1, '2013-10-15 18:33:03', 'resource_update', 'modResource', '25'),
(476, 1, '2013-10-15 18:33:19', 'resource_update', 'modResource', '26'),
(477, 1, '2013-10-15 18:33:35', 'resource_update', 'modResource', '27'),
(478, 1, '2013-10-15 18:35:41', 'resource_update', 'modResource', '24'),
(479, 1, '2013-10-15 18:35:51', 'resource_update', 'modResource', '25'),
(480, 1, '2013-10-15 18:36:43', 'resource_update', 'modResource', '26'),
(481, 1, '2013-10-15 18:36:51', 'resource_update', 'modResource', '27'),
(482, 1, '2013-10-15 18:36:59', 'resource_update', 'modResource', '28');

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources`
--

CREATE TABLE IF NOT EXISTS `modx_media_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_key` (`class_key`),
  KEY `is_stream` (`is_stream`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_contexts`
--

CREATE TABLE IF NOT EXISTS `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_elements`
--

CREATE TABLE IF NOT EXISTS `modx_media_sources_elements` (
  `source` int(11) unsigned NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`object`,`object_class`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modx_membergroup_names`
--

CREATE TABLE IF NOT EXISTS `modx_membergroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `dashboard` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`),
  KEY `dashboard` (`dashboard`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_member_groups`
--

CREATE TABLE IF NOT EXISTS `modx_member_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group` int(10) unsigned NOT NULL DEFAULT '0',
  `member` int(10) unsigned NOT NULL DEFAULT '0',
  `role` int(10) unsigned NOT NULL DEFAULT '1',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_menus`
--

CREATE TABLE IF NOT EXISTS `modx_menus` (
  `text` varchar(255) NOT NULL DEFAULT '',
  `parent` varchar(255) NOT NULL DEFAULT '',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(11) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`text`),
  KEY `parent` (`parent`),
  KEY `action` (`action`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`) VALUES
('dashboard', '', 0, '', 'images/misc/logo_tbar.gif', 0, '', 'MODx.loadPage(""); return false;', 'home'),
('dashboards', 'dashboard', 53, 'dashboards_desc', 'images/icons/information.png', 0, '', '', 'dashboards'),
('site', '', 0, '', 'images/misc/logo_tbar.gif', 1, '', '', 'menu_site'),
('preview', 'site', 0, 'preview_desc', 'images/icons/show.gif', 0, '', 'MODx.preview(); return false;', ''),
('refresh_site', 'site', 0, 'refresh_site_desc', 'images/icons/refresh.png', 1, '', 'MODx.clearCache(); return false;', 'empty_cache'),
('remove_locks', 'site', 0, 'remove_locks_desc', 'images/ext/default/grid/hmenu-unlock.png', 2, '', '\nMODx.msg.confirm({\n    title: _(''remove_locks'')\n    ,text: _(''confirm_remove_locks'')\n    ,url: MODx.config.connectors_url+''system/remove_locks.php''\n    ,params: {\n        action: ''remove''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { Ext.getCmp("modx-resource-tree").refresh(); },scope:this}\n    }\n});', 'remove_locks'),
('search', 'site', 54, 'search_desc', 'images/icons/context_view.gif', 3, '', '', 'search'),
('new_document', 'site', 55, 'new_document_desc', 'images/icons/folder_page_add.png', 4, '', '', 'new_document'),
('new_weblink', 'site', 55, 'new_weblink_desc', 'images/icons/link_add.png', 5, '&class_key=modWebLink', '', 'new_weblink'),
('new_symlink', 'site', 55, 'new_symlink_desc', 'images/icons/link_add.png', 6, '&class_key=modSymLink', '', 'new_symlink'),
('new_static_resource', 'site', 55, 'new_static_resource_desc', 'images/icons/link_add.png', 7, '&class_key=modStaticResource', '', 'new_static_resource'),
('logout', 'site', 0, 'logout_desc', 'images/misc/logo_tbar.gif', 8, '', 'MODx.logout(); return false;', 'logout'),
('components', '', 0, '', 'images/icons/plugin.gif', 2, '', '', 'components'),
('security', '', 0, '', 'images/icons/lock.gif', 3, '', '', 'menu_security'),
('user_management', 'security', 56, 'user_management_desc', 'images/icons/user.gif', 0, '', '', 'view_user'),
('user_group_management', 'security', 57, 'user_group_management_desc', 'images/icons/mnu_users.gif', 1, '', '', 'access_permissions'),
('resource_groups', 'security', 58, 'resource_groups_desc', '', 2, '', '', 'access_permissions'),
('form_customization', 'security', 59, 'form_customization_desc', 'images/misc/logo_tbar.gif', 3, '', '', 'customize_forms'),
('flush_access', 'security', 0, 'flush_access_desc', 'images/icons/unzip.gif', 4, '', 'MODx.msg.confirm({\n    title: _(''flush_access'')\n    ,text: _(''flush_access_confirm'')\n    ,url: MODx.config.connectors_url+''security/access/index.php''\n    ,params: {\n        action: ''flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});', 'access_permissions'),
('flush_sessions', 'security', 0, 'flush_sessions_desc', 'images/icons/unzip.gif', 5, '', 'MODx.msg.confirm({\n    title: _(''flush_sessions'')\n    ,text: _(''flush_sessions_confirm'')\n    ,url: MODx.config.connectors_url+''security/flush.php''\n    ,params: {\n        action: ''flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});', 'flush_sessions'),
('tools', '', 0, '', 'images/icons/menu_settings.gif', 4, '', '', 'menu_tools'),
('import_resources', 'tools', 60, 'import_resources_desc', 'images/icons/application_side_contract.png', 0, '', '', 'import_static'),
('import_site', 'tools', 61, 'import_site_desc', 'images/icons/application_side_contract.png', 1, '', '', 'import_static'),
('propertysets', 'tools', 62, 'propertysets_desc', 'images/misc/logo_tbar.gif', 2, '', '', 'property_sets'),
('sources', 'tools', 63, 'sources_desc', 'images/misc/logo_tbar.gif', 2, '', '', 'sources'),
('reports', '', 0, '', 'images/icons/menu_settings16.gif', 5, '', '', 'menu_reports'),
('site_schedule', 'reports', 64, 'site_schedule_desc', 'images/icons/cal.gif', 0, '', '', 'view_document'),
('view_logging', 'reports', 65, 'view_logging_desc', '', 1, '', '', 'logs'),
('eventlog_viewer', 'reports', 66, 'eventlog_viewer_desc', 'images/icons/comment.gif', 2, '', '', 'view_eventlog'),
('view_sysinfo', 'reports', 67, 'view_sysinfo_desc', 'images/icons/logging.gif', 3, '', '', 'view_sysinfo'),
('about', 'reports', 68, 'about_desc', 'images/icons/information.png', 4, '', '', 'about'),
('system', '', 0, '', 'images/misc/logo_tbar.gif', 6, '', '', 'menu_system'),
('manage_workspaces', 'system', 69, 'manage_workspaces_desc', 'images/icons/sysinfo.gif', 0, '', '', 'packages'),
('system_settings', 'system', 70, 'system_settings_desc', 'images/icons/sysinfo.gif', 1, '', '', 'settings'),
('lexicon_management', 'system', 71, 'lexicon_management_desc', 'images/icons/logging.gif', 2, '', '', 'lexicons'),
('content_types', 'system', 72, 'content_types_desc', 'images/icons/logging.gif', 3, '', '', 'content_types'),
('contexts', 'system', 73, 'contexts_desc', 'images/icons/sysinfo.gif', 4, '', '', 'view_context'),
('edit_menu', 'system', 74, 'edit_menu_desc', 'images/icons/sysinfo.gif', 5, '', '', 'menus,actions'),
('namespaces', 'system', 75, 'namespaces_desc', '', 6, '', '', 'namespaces'),
('user', '', 0, '', 'images/icons/user_go.png', 7, '', '', 'menu_user'),
('profile', 'user', 76, 'profile_desc', '', 0, '', '', 'change_profile'),
('messages', 'user', 77, 'messages_desc', 'images/icons/messages.gif', 1, '', '', 'messages'),
('support', '', 0, 'support_desc', 'images/icons/sysinfo.gif', 8, '', '', 'menu_support'),
('forums', 'support', 0, 'forums_desc', 'images/icons/sysinfo.gif', 0, '', 'window.open("http://modx.com/forums");', ''),
('wiki', 'support', 0, 'wiki_desc', 'images/icons/sysinfo.gif', 1, '', 'window.open("http://rtfm.modx.com/");', ''),
('jira', 'support', 0, 'jira_desc', 'images/icons/sysinfo.gif', 2, '', 'window.open("http://bugs.modx.com/projects/revo/issues");', ''),
('api_docs', 'support', 0, 'api_docs_desc', 'images/icons/sysinfo.gif', 3, '', 'window.open("http://api.modx.com/revolution/2.2/");', '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_namespaces`
--

CREATE TABLE IF NOT EXISTS `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}'),
('tinymce', '{core_path}components/tinymce/', NULL),
('wayfinder', '{core_path}components/wayfinder/', ''),
('ultimateparent', '{core_path}components/ultimateparent/', ''),
('breadcrumbs', '{core_path}components/breadcrumbs/', ''),
('sisea', '{core_path}components/simplesearch/', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_property_set`
--

CREATE TABLE IF NOT EXISTS `modx_property_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_messages`
--

CREATE TABLE IF NOT EXISTS `modx_register_messages` (
  `topic` int(10) unsigned NOT NULL,
  `id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) unsigned NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic`,`id`),
  KEY `created` (`created`),
  KEY `valid` (`valid`),
  KEY `accessed` (`accessed`),
  KEY `accesses` (`accesses`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_queues`
--

CREATE TABLE IF NOT EXISTS `modx_register_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:"directory";s:5:"locks";}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_topics`
--

CREATE TABLE IF NOT EXISTS `modx_register_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  KEY `queue` (`queue`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2013-10-09 21:17:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_session`
--

CREATE TABLE IF NOT EXISTS `modx_session` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `access` int(20) unsigned NOT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`),
  KEY `access` (`access`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('jlbcanep6s1f99p6vg4uot0rh6', 1381955523, 'modx.user.contextTokens|a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_content`
--

CREATE TABLE IF NOT EXISTS `modx_site_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `donthit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) unsigned NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `pub_date` (`pub_date`),
  KEY `unpub_date` (`unpub_date`),
  KEY `parent` (`parent`),
  KEY `isfolder` (`isfolder`),
  KEY `template` (`template`),
  KEY `menuindex` (`menuindex`),
  KEY `searchable` (`searchable`),
  KEY `cacheable` (`cacheable`),
  KEY `hidemenu` (`hidemenu`),
  KEY `class_key` (`class_key`),
  KEY `context_key` (`context_key`),
  KEY `uri` (`uri`(333)),
  KEY `uri_override` (`uri_override`),
  KEY `hide_children_in_tree` (`hide_children_in_tree`),
  KEY `show_in_tree` (`show_in_tree`),
  KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Home', 'Welcome!', 'The club which teaches the the "All Range Combat" style was established in 1986 and has run uninterrupted since then.', 'index', '', 1, 0, 0, 0, 0, 'The club which teaches the the "All Range Combat" style was established in 1986 and has run uninterrupted since then.', '<h2>How is training organised?</h2>\r\n<p>Training is versatile and enjoyable.We train (and offer grades) in Â many disciplines.<br /> <br /> TheseÂ include:</p>\r\n<ul>\r\n<li><a href="styles/tae-kwon-do.htm">Korean TaeKwonDo</a>,</li>\r\n<li><a href="styles/muay-thai.htm">Muay Thai</a>,</li>\r\n<li><a href="styles/jiu-jitsu.htm">Brazilian and Japanese Jiu Jitsu</a>,</li>\r\n<li><a href="styles/Jun-fan-kung-fo.htm">Jun FanÂ Kung Fu</a>,Â </li>\r\n<li><a href="styles/boxing.htm">Kickboxing and Boxing</a>,</li>\r\n<li><a href="styles/kali.htm">Panantukan(Phillipino empty hand)</a></li>\r\n<li><a style="line-height: 1.5em;" href="styles/kali.htm">Kali(single and double stick and knife)</a><span style="line-height: 1.5em;">.</span></li>\r\n</ul>\r\n<p>This is a friendly butÂ disciplined club which consists of men and women from 7-mid fifties. Kids are taught in separate classes.Â The emphasis is on respectful and safe training in an enjoyable environment. Chief Instructor Colin Lawrence has been training forÂ 30 yearsÂ and has been runningÂ these clubs since <strong>1986</strong>. It is anÂ extremely well-equipped clubÂ with everything a martial artistÂ needs(focus mitts/kickpads/Thai pads/kick paddles/punch-bag/Escrima sticks/knives/safety sparring gear and a matted area).We cover all ranges from long-distance kicking to groundwork. Gradings take place twice or three times a year.There is a flexible curriculum and students can set their goals and plan their progress.Many students have graded to 1st and 2nd Dan Black belt.</p>\r\n<p>Students can choose their classes.They can arrive and leave at the beginning or end of any class and do not have to stay all evening (which helps if energy is at a premium).</p>\r\n<p>All-round fitness is a priority and we focus on all areas including flexibility training.If you are new to the area and have trained before in any style,or are totally new to martial arts, visit the club in Leighton BuzzardÂ or e-mail for further details.</p>\r\n<p>Tel.Â <strong>(01525) 372029</strong>Â orÂ <strong>(07788) 544726</strong>Â for details or e-mail the address below.</p>\r\n<p>Â Directions to the club venue can be found here on this site (<a href="http://allrangecombat.com/wherearewe/index.htm">directions</a>).</p>\r\n<p><strong>Prospective students are welcome to visit the club.</strong></p>\r\n<h2>Â </h2>', 1, 1, 0, 1, 1, 1, 1381346143, 1, 1381799507, 0, 0, 0, 0, 0, 'Home', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '/', 1, 0, 1, NULL),
(4, 'document', 'text/html', 'Results', 'Search Results', 'The results of your site search.', 'test', '', 1, 0, 0, 0, 0, 'The results of your site search.', '<h2>Results</h2>\r\n<p>[[!SimpleSearch]]</p>', 1, 1, 3, 1, 1, 1, 1381414270, 1, 1381849760, 0, 0, 0, 1381414500, 1, 'Search Results', 0, 0, 0, 0, 1, 'modDocument', 'web', 1, 'test.html', 0, 0, 1, NULL),
(3, 'document', 'text/html', 'News', 'rescent events', 'TBC News - Summary (description)', 'news', '', 1, 0, 0, 0, 1, 'TBC News - Summary (introtext)', '<!-- PAGE LEFT INTENTIONALLY BLANK -->', 1, 1, 2, 1, 1, 1, 1381413239, 1, 1381849922, 0, 0, 0, 1381414500, 1, 'News', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'news/', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'About', 'About the club', 'desc TBC about', 'about', '', 1, 0, 0, 0, 1, 'sum TBC about', '<!-- PAGE LEFT INTENTIONALLY BLANK -->', 1, 1, 1, 1, 1, 1, 1381412717, 1, 1381849911, 0, 0, 0, 1381414500, 1, 'About', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'about/', 0, 0, 1, NULL),
(5, 'document', 'text/html', 'Techniques required to Grade', 'Techniques required to Grade', 'In order to grade you need to know these techniques.\r\nLike all martial arts there are ten beginners grades before reaching black belt.', 'techniquesrequiredtograde', '', 1, 0, 0, 22, 0, 'In order to grade you need to know these techniques.\r\nLike all martial arts there are ten beginners grades before reaching black belt.', '<p>In all the Martial Arts, some form of assessment is used. The aim of this is to serve as a series of stepping-stones upon which the student can see his/her own progress develop.</p>\r\n<p>A secondary and less important reason for grading is to serve as an outward sign of that individual''s level of ability and achievement and to act as encouragement to the other students.</p>\r\n<p>The grading system provides the individual with an attainable objective and through this a sense of achievement and satisfaction which build self-confidence and self-control.</p>\r\n<p>With Tae-Kwon-Do, the following coloured belt scheme has been adopted:</p>\r\n<ul>\r\n<li><a href="[[~23]]">White </a>(9th KUP)</li>\r\n<li><a href="[[~24]]">Yellow</a> (8th KUP)</li>\r\n<li><a href="[[~25]]">Orange</a> (7th KUP)</li>\r\n<li><a href="[[~26]]">Green</a> (6th KUP)</li>\r\n<li><a href="[[~27]]">Blue</a> (5th KUP)</li>\r\n<li><a href="[[~28]]">Red </a>(4th KUP)</li>\r\n<li><a href="[[~29]]">Brown</a>Â (3rd KUP)</li>\r\n<li><a href="[[~30]]">Brown - Black Tag</a> (2nd KUP)</li>\r\n<li><a href="[[~31]]">Brown - Black Tip</a> (1st KUP)</li>\r\n<li><a href="[[~32]]">Black</a>Â (1st DAN)</li>\r\n</ul>\r\n<h1 class="outerWrapper">Â </h1>', 1, 1, 0, 1, 1, 1, 1381505769, 1, 1381854650, 0, 0, 0, 1381853580, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'techniquesrequiredtograde.html', 0, 0, 1, NULL),
(6, 'document', 'text/html', 'Chief Instructor', 'Chief Instructor', 'Colin Lawrence is a 3rd Dan Black Belt in Tae-Kwon-Do and has been practising  Taekwondo/Thai boxing/Jiu Jitsu and Kali for 29 years.', 'chiefinstructor', '', 1, 0, 0, 2, 0, 'Colin Lawrence is a 3rd Dan Black Belt in Tae-Kwon-Do and has been practising  Taekwondo/Thai boxing/Jiu Jitsu and Kali for 29 years.', '<div class="outerWrapper">\r\n<div class="contentWrapper">\r\n<div class="content">\r\n<div class="summary"><img style="line-height: 1.5em; float: left; margin: 2px 10px;" src="assets/images/slices/ColinPic.gif" alt="Colin Lawrence" width="294" height="426" /></div>\r\n<div class="summary"><span style="line-height: 1.5em;">.</span></div>\r\n</div>\r\n</div>\r\n</div>', 1, 1, 0, 1, 1, 1, 1381506014, 1, 1381797061, 0, 0, 0, 1381507440, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'chiefinstructor.html', 0, 0, 1, NULL),
(7, 'document', 'text/html', 'About the Club', 'About the Club', 'A.R.C.S (All Range Combat System) includes various Martial Arts. Which include Bruce Lee''s J.K.D and Taekwondo. ', 'index', '', 1, 0, 0, 2, 0, 'A.R.C.S (All Range Combat System) includes various Martial Arts. Which include Bruce Lee''s J.K.D and Taekwondo. ', '<p>Korean Taekwondo, Japanese Karate, Thai Boxing, Western Boxing, Ju Jitsu, Kali and freestyle grappling are some more examples of the sort of martial arts A.R.C.S covers.</p>\r\n<p><span style="line-height: 1.5em;">The basic aims of the club will are:</span></p>\r\n<div class="content">\r\n<div class="copy">\r\n<blockquote><ol>\r\n<li>To help the individual develop a practical repertoire of self-defence techniques.</li>\r\n<li>To instil a basis for self confidence in one''s own abilities</li>\r\n<li>To help build a minimum fitness level and encourage suppleness. Various health benefits will necessarily follow.</li>\r\n<li>To develop co-ordination, balance and timing.</li>\r\n<li>To teach the many techniques and approaches which are involved in the Martial Arts.</li>\r\n<li>To make the process of learning Tae-Kwon-Do and other martial artsÂ enjoyable and stimulating.</li>\r\n</ol></blockquote>\r\n</div>\r\n</div>', 1, 1, 1, 1, 1, 1, 1381506014, 1, 1381797040, 0, 0, 0, 1381507440, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'index.html', 0, 0, 1, NULL),
(8, 'document', 'text/html', 'Membership', 'Membership', 'Training is geared to suit the individual.', 'membership', '', 1, 0, 0, 2, 0, 'Training is geared to suit the individual.', '<h1 class="outerWrapper"><span style="font-size: 12px; font-weight: normal; line-height: 1.5em;">Training is geared to suit the individual. new members of either gender over 12 years old are welcome as are interested spectators who are invited to stay and watch. The club caters for the needs of both beginners and advanced students.</span></h1>', 1, 1, 2, 1, 1, 1, 1381506014, 1, 1381797101, 0, 0, 0, 1381507440, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'membership.html', 0, 0, 1, NULL),
(9, 'document', 'text/html', 'Payment for Lessons', 'Payment for Lessons', 'Students pay via monthly standing order of Â£32 from their bank or building society.\r\nThis allows the student to attend as many classes as they wish.', 'paymentforlessons', '', 1, 0, 0, 2, 0, 'Students pay via monthly standing order of Â£32 from their bank or building society.\r\nThis allows the student to attend as many classes as they wish.', '<p>The student must set this up before training (but may visit and watch the club as many times as they wish beforehand).The studentÂ Â remains in control of this payment and can continue indefinitely or can cancel if they do not wish to continue training.</p>\r\n<p><strong> There is no contract.</strong></p>\r\n<p>The student receives one private lesson free of charge when the standing order has been set up.</p>\r\n<p>Members are also obliged to purchase a Martial Arts Licence which provides full insurance cover and also acts as a grading record. This isÂ only Â£8 pounds a year and is through theÂ <a href="http://www.amauk.co.uk/" target="_blank">Amateur Martial Association</a>.This provides 3rd party, dental and injury insurance.Â Further details available upon request.</p>', 1, 1, 3, 1, 1, 1, 1381506014, 1, 1381797875, 0, 0, 0, 1381507440, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'paymentforlessons.html', 0, 0, 1, NULL),
(31, 'document', 'text/html', 'Brown Belt - Black Tip', 'Brown Belt - Black Tip (1st KUP)', 'Brown Belt - Black Tip (1st KUP)', 'brown-black-tip', '', 1, 0, 0, 22, 0, 'Brown Belt - Black Tip (1st KUP)', '<p>TBC</p>', 1, 1, 9, 1, 1, 1, 1381854135, 1, 1381854266, 0, 0, 0, 1381853880, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'brown-black-tip.html', 0, 0, 1, NULL),
(32, 'document', 'text/html', 'Black Belt', 'Black Belt (1st DAN)', 'Black Belt (1st DAN)', 'black-belt', '', 1, 0, 0, 22, 0, 'Black Belt (1st DAN)', '<p>TBC</p>', 1, 1, 10, 1, 1, 1, 1381854178, 1, 1381854243, 0, 0, 0, 1381853880, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'black-belt.html', 0, 0, 1, NULL),
(10, 'document', 'text/html', 'Recommended Clothing:', '', '', 'recommendedclothing', '', 1, 0, 0, 2, 0, '', '<h1 class="outerWrapper"><span style="font-size: 12px; font-weight: normal; line-height: 1.5em;">Club clothing code is as follows:</span></h1>\r\n<div class="outerWrapper">\r\n<div class="contentWrapper">\r\n<div class="content">\r\n<div class="copy">\r\n<ul>\r\n<li>black trousers with red stripes ( Â£16);</li>\r\n<li>and black top (Â£20);</li>\r\n<li>club t-shirt (Â£15);</li>\r\n<li>or any plain black t-shirt (no prints)</li>\r\n</ul>\r\n<p>This isÂ  practical and cheap.</p>\r\n<p>Students alsoÂ need groin-guard (Â£16.50) andÂ leather bag gloves (Â£20).</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, 1, 4, 1, 1, 1, 1381506014, 1, 1381791086, 0, 0, 0, 1381507440, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'recommendedclothing.html', 0, 0, 1, NULL),
(11, 'document', 'text/html', 'Structure of a lesson:', '', '', 'structureofalesson', '', 1, 0, 0, 2, 0, '', '<div class="outerWrapper">\r\n<div class="contentWrapper">\r\n<div class="topLink">\r\n<div class="copy"><ol>\r\n<li><span style="line-height: 1.5em;">Callisthenics - warm-ups and muscle loosening &amp; toning exercises.</span></li>\r\n<li>Basic techniques and stances taught in all Martial Arts.</li>\r\n<li>Self-defence techniques against armed and unarmed opponents.</li>\r\n<li>Varied kicks, basic jumping and flying kicks.</li>\r\n<li>Punches, strikes and blocks.</li>\r\n<li>Locks, holds and throws.</li>\r\n<li>Pad-work to develop speed and power.</li>\r\n<li>Set sparring or free sparring against one or multiple opponents. during sparring utmost care is taken to ensure the safety of members and padded protective clothing is worn.</li>\r\n</ol></div>\r\n</div>\r\n</div>\r\n</div>', 1, 1, 5, 1, 1, 1, 1381506014, 1, 1381791096, 0, 0, 0, 1381507440, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'structureofalesson.html', 0, 0, 1, NULL),
(12, 'document', 'text/html', 'Training Schedule', 'Training Schedule', 'Training is held on Sunday evenings  7-10pm  and Thursdays 8-10 p.m', 'trainingschedule', '', 1, 0, 0, 2, 0, 'Training is held on Sunday evenings  7-10pm  and Thursdays 8-10 p.m', '<h1 class="outerWrapper"><span style="font-size: 12px; font-weight: normal; line-height: 1.5em;">Training is held on Sunday evenings Â 7-10pmÂ  and Thursdays 8-10 p.m.at </span><a style="font-size: 12px; font-weight: normal; line-height: 1.5em;" href="../wherearewe/index.htm">Southcott Community Centre</a><span style="font-size: 12px; font-weight: normal; line-height: 1.5em;">, off Coniston Road (Bideford Green, Linslade, Leighton Buzzard).Next to Tesco Express.</span></h1>', 1, 1, 6, 1, 1, 1, 1381506014, 1, 1381797959, 0, 0, 0, 1381507440, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'trainingschedule.html', 0, 0, 1, NULL),
(22, 'document', 'text/html', 'Gradings', 'Gradings', 'Gradings', 'gradings', '', 1, 0, 0, 0, 1, 'Gradings', '<p>In all the Martial Arts, some form of assessment is used. The aim of this is to serve as a series of stepping-stones upon which the student can see his/her own progress develop.</p>\r\n<p>Our system is described in these pages.</p>', 1, 1, 5, 1, 1, 1, 1381853291, 1, 1381853644, 0, 0, 0, 1381853280, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'gradings/', 0, 0, 1, NULL),
(23, 'document', 'text/html', 'White Belt', 'White Belt (9th KUP)', 'White Belt (9th KUP)', 'white-belt', '', 1, 0, 0, 22, 0, 'White Belt (9th KUP)', '<p>This is the lowest belt and is the student''s firat grade.</p>\r\n<p>It is granted on beginning their training.</p>', 1, 1, 1, 1, 1, 1, 1381853404, 1, 1381854492, 0, 0, 0, 1381853400, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'white-belt.html', 0, 0, 1, NULL),
(24, 'document', 'text/html', 'Yellow Belt', 'Yellow Belt (8th KUP)', 'The student will have to demonstrate a good understanding and the ability to  perform all these techniques in order to grade.', 'yellow-belt', '', 1, 0, 0, 22, 0, 'The student will have to demonstrate a good understanding and the ability to  perform all these techniques in order to grade.', '<ol>\r\n<li><strong>Callisthenics</strong><br /> (Exercises to loosen joints)</li>\r\n<li><strong>Simple muscle stretching exercises.</strong></li>\r\n<li><strong>Stances:</strong>\r\n<ul>\r\n<li>Horse Riding Stance</li>\r\n<li>Walking Stance</li>\r\n</ul>\r\n</li>\r\n<li><strong> Basic Striking Techniques:</strong>\r\n<ul>\r\n<li>Straight Punch</li>\r\n<li>Knife Hand</li>\r\n<li>Back Fist</li>\r\n</ul>\r\n</li>\r\n<li><strong>Non-Formal Punching:</strong>\r\n<ul>\r\n<li>Jab</li>\r\n<li>Right Cross</li>\r\n</ul>\r\n</li>\r\n<li><strong> Kicks:</strong>\r\n<ul>\r\n<li>Front Kick</li>\r\n<li>Roundhouse Kick</li>\r\n<li>Side Kick<br /> <br /> *All of above using both legs.</li>\r\n</ul>\r\n</li>\r\n<li><strong>Patterns: <a href="http://www.allrangecombat.com/patterns/pattern1.htm">1</a></strong></li>\r\n<li><strong> Self Defence Techniques</strong>:\r\n<ul>\r\n<li>Grab to either wrist</li>\r\n<li>Grab to hair from front</li>\r\n<li>Grab to throat (Both hands)</li>\r\n</ul>\r\n</li>\r\n</ol>', 1, 1, 2, 1, 1, 1, 1381853863, 1, 1381854941, 0, 0, 0, 1381853820, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'yellow-belt.html', 0, 0, 1, NULL),
(25, 'document', 'text/html', 'Orange Belt', 'Orange Belt (7th KUP)', 'The student will have to demonstrate a good understanding and the ability to  perform all these techniques in order to grade.', 'orange-belt', '', 1, 0, 0, 22, 0, 'The student will have to demonstrate a good understanding and the ability to  perform all these techniques in order to grade.', '<p>Â </p>\r\n<p>1. Good knowledge of muscle stretching exercises</p>\r\n<p>2. Basic Striking Techniques:<br /> a. Fore-Fist Punch<br /> b. Back Fist<br /> c Inside Knife~Hand<br /> d. Outside Knife-Hand<br /> e. Palm-Heel</p>\r\n<p>3. Non-Formal Punching:<br /> a. Jab<br /> b. Right Cross<br /> c Basic Hook</p>\r\n<p>4. Blocks:<br /> a. Inside Block<br /> b. Outside Block<br /> c Rising Block<br /> d. Double Knife-Hand</p>\r\n<p>5. Kicks:<br /> a. Front Kick<br /> b. Back Kick<br /> c Roundhouse Kick<br /> d. Side Kick</p>\r\n<p>*All with correct balance.</p>\r\n<p>6. All above kicks against stationary pad.</p>\r\n<p>7. Long Knee</p>\r\n<p>8. Patterns: 1 &amp; 2</p>\r\n<p>9. Self Defence Techniques:<br /> a. Grab to clothing from front. (One hand)<br /> b. Grab to clothing from front. (Both hands)<br /> C. Grab to throat from rear<br /> d. Defence from right hand punch</p>\r\n<p>Â </p>', 1, 1, 3, 1, 1, 1, 1381853905, 1, 1381854951, 0, 0, 0, 1381853880, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'orange-belt.html', 0, 0, 1, NULL),
(26, 'document', 'text/html', 'Green Belt', 'Green Belt (6th KUP)', 'The student will have to demonstrate a good understanding and the ability to  perform all these techniques in order to grade.', 'green-belt', '', 1, 0, 0, 22, 0, 'The student will have to demonstrate a good understanding and the ability to  perform all these techniques in order to grade.', '<p><br /> 1. Hand Techniques:<br /> a. Fore Fist<br /> b. Back Fist<br /> c Palm Heel<br /> d. Knife Hand<br /> e. Ridge Hand</p>\r\n<p>2. Elbow Strike (Cross Elbow)</p>\r\n<p>3. Long Knee:<br /> a. Grab &amp; knee to body</p>\r\n<p>4. Non-Formal Punching:<br /> a. Jab<br /> b. Right Cross<br /> c Hook<br /> d. Uppercut</p>\r\n<p>*All techniques without target and against focus mitt</p>\r\n<p>5. Kicks:<br /> a. Front Kick<br /> b. Side Kick<br /> c Back Kick<br /> d. Basic Hook Kick<br /> e. Stepping Side Kick</p>\r\n<p>*All techniques without target and against pad</p>\r\n<p>6. One Step Sparring:<br /> a. Outside Block<br /> b. Inside Block</p>\r\n<p>*Three techniques required on each</p>\r\n<p>7. Patterns: 1,2 &amp; 3</p>\r\n<p>8. Self Defence Techniques:<br /> a. Grab to hair from behind<br /> b. Escape when held over the arms from behind<br /> c Escape when held under the arms from behind<br /> d. Grab to clothing and punch<br /> e. Two defences from grab to throat<br /> f. Three defences from right hand punch to face</p>\r\n<p>Â </p>', 1, 1, 4, 1, 1, 1, 1381853918, 1, 1381855003, 0, 0, 0, 1381853880, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'green-belt.html', 0, 0, 1, NULL),
(27, 'document', 'text/html', 'Blue Belt', 'Blue Belt (5th KUP)', 'The student will have to demonstrate a good understanding and the ability to  perform all these techniques in order to grade.', 'blue-belt', '', 1, 0, 0, 22, 0, 'The student will have to demonstrate a good understanding and the ability to  perform all these techniques in order to grade.', '<p>1. Hand Techniques:<br /> a. Fingertip Strike<br /> b. Knuckle Strike<br /> c Back Fist</p>\r\n<p>2. Elbow Techniques:<br /> a. Front Elbow<br /> b. Rear Elbow</p>\r\n<p>3. Knee Techniques:<br /> a. Long Knee (Against Pad)<br /> b. Grab and knee strike (Thai Boxing)</p>\r\n<p>4. Blocks:<br /> a. Inside Block<br /> b. Outside Block<br /> c Rising Block<br /> d. Double Knife Hand<br /> e. Single Knife Hand</p>\r\n<p>5. Non-Formal Punching:<br /> a. Spinning Back Fist</p>\r\n<p>6. Kicks:<br /> a. Front Push Kick<br /> b. Front Snap Kick<br /> c Jumping Back Kick<br /> d. Reverse Turning Kick<br /> e. Improved Hook Kick</p>\r\n<p>7. One Step Sparring:<br /> a. Outside Block (Counter with simple techniques)<br /> b. Inside Block (Counter with simple techniques)</p>\r\n<p>8. Patterns: 1,2,3 &amp; 4</p>\r\n<p>9. Self Defence Techniques:<br /> a. Escape from full nelson<br /> b. Escape from head chancery<br /> c Defence on the ground (Front Kick &amp; Side Kick)</p>\r\n<p>10. Breaking Techniques:<br /> a. Side kick to break wood (Using both legs)</p>\r\n<p>11. 30 Press-Ups</p>\r\n<p>Â </p>', 1, 1, 5, 1, 1, 1, 1381853948, 1, 1381855011, 0, 0, 0, 1381853880, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'blue-belt.html', 0, 0, 1, NULL),
(28, 'document', 'text/html', 'Red Belt', 'Red Belt (4th KUP)', 'The student will have to demonstrate a good understanding and the ability to  perform all these techniques in order to grade.', 'red-belt', '', 1, 0, 0, 22, 0, 'The student will have to demonstrate a good understanding and the ability to  perform all these techniques in order to grade.', '<p>1.Â Â Â Â Â  All open hand techniques to date.</p>\r\n<p>Â Â Â Â Â Â Â Â Â  2.Â Â Â Â Â  Elbow Techniques:<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  a.Â Â Â Â Â  Rising Elbow<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  b.Â Â Â Â Â  Cross Elbow<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  cÂ Â Â Â Â Â  Back Elbow<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  d.Â Â Â Â Â  Spinning Elbow</p>\r\n<p>Â Â Â Â Â Â Â Â Â  3.Â Â Â Â Â  Jumping knee - against pad.</p>\r\n<p>Â Â Â Â Â Â Â Â Â  4.Â Â Â Â Â  Free-style Punching to focus mitts</p>\r\n<p>Â Â Â Â Â Â Â Â Â  5.Â Â Â Â Â  Kicks:<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  a.Â Â Â Â Â  Jumping side kick to mid-section of body<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  b.Â Â Â Â Â  Low round kick (Inside &amp; outside thigh)<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  cÂ Â Â Â Â Â  Double round-house kick<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  d.Â Â Â Â Â  Double side-kick<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  e.Â Â Â Â Â  Reverse turning kick (To stationary focus mitt)<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  Å“Â Â Â Â Â Â  Front &amp; rear leg hook kick to focus mitt</p>\r\n<p>Â Â Â Â Â Â Â Â Â  6.Â Â Â Â Â  One-on-One Kicking (No Contact)</p>\r\n<p>Â Â Â Â Â Â Â Â Â  7.Â Â Â Â Â  One Step Sparring:<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  a.Â Â Â Â Â  Outside Block<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  b.Â Â Â Â Â  Inside Block<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  r_Â Â Â Â Â  Single Knife Hand<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  d.Â Â Â Â Â  Double Knife Hand</p>\r\n<p>Â Â Â Â Â Â Â Â Â  8.Â Â Â Â Â  Patterns: <a href="http://www.allrangecombat.com/patterns/pattern1.htm">1</a>,<a href="http://www.allrangecombat.com/patterns/pattern2.htm">2</a>,<a href="http://www.allrangecombat.com/patterns/pattern3.htm">3</a>,<a href="http://www.allrangecombat.com/patterns/pattern4.htm">4</a> &amp; <a href="http://www.allrangecombat.com/patterns/pattern5.htm">5</a></p>\r\n<p>Â Â Â Â Â Â Â Â Â  9.Â Â Â Â Â  Self Defence Techniques:<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  a.Â Â Â Â Â  Arm around throat from behind<br />Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â Â  b.Â Â Â Â Â  Escape when held over &amp; under arms from front.</p>\r\n<p>Â Â Â Â Â Â Â Â Â  10.Â Â Â Â  40 x Press-Ups</p>\r\n<p>Â Â Â Â Â Â Â Â Â  11.Â Â Â Â  Back kick to break wood (both legs).</p>\r\n<p>Â Â Â Â Â Â Â Â Â  12.Â Â Â Â  Non-contact sparring.</p>', 1, 1, 6, 1, 1, 1, 1381853983, 1, 1381855019, 0, 0, 0, 1381853880, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'red-belt.html', 0, 0, 1, NULL),
(29, 'document', 'text/html', 'Brown Belt', 'Brown Belt (3rd KUP)', 'Brown Belt (3rd KUP)', 'brown-belt', '', 1, 0, 0, 22, 0, 'Brown Belt (3rd KUP)', '<p>TBC</p>', 1, 1, 7, 1, 1, 1, 1381854013, 1, 1381854337, 0, 0, 0, 1381853880, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'brown-belt.html', 0, 0, 1, NULL),
(30, 'document', 'text/html', 'Brown Belt - Black Tag', 'Brown Belt - Black Tag (2nd KUP)', 'Brown Belt - Black Tag (2nd KUP)', 'brown-belt-black-tag', '', 1, 0, 0, 22, 0, 'Brown Belt - Black Tag (2nd KUP)', '<p>TBC</p>', 1, 1, 8, 1, 1, 1, 1381854038, 1, 1381854316, 0, 0, 0, 1381853880, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'brown-belt-black-tag.html', 0, 0, 1, NULL),
(13, 'document', 'text/html', 'June 2009', '', '', 'june2009', '', 1, 0, 0, 3, 0, '', '<div class="outerWrapper">\r\n<div class="menubar"><span style="font-size: 1.5em; line-height: 1.5em;">Up-to-date club info June 2009</span></div>\r\n<div class="contentWrapper">\r\n<div class="content">\r\n<div class="copy">\r\n<h3>23rd June 2009</h3>\r\n<ol>\r\n<li>If you are interested in Sat. training/sparring get in touch and I will put your name on separate e-mail list.</li>\r\n<li>Those who are training and have still not set up their standing orders,it is only fair on me and the rest of the club that you do so.Enough said.</li>\r\n<li>New MMA club open in town.Limited space, very soft padded floor, but great if you want to improve ground-work/throws.Open at times during day.See me for further details.</li>\r\n<li>Training is as normal Suns. and Thurs .Try to make at least one a week if you want to improve/maintain your standard and learn the new stuff too. It can be very easy to lose momentum.I am constantly learning new things and also working hard to offer quality training.You would only be and would only remain a member of this club if you see something of value here ...so please use it.</li>\r\n</ol>\r\n<p>All the best - in the club and out! <br /> Colin</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, 1, 0, 1, 1, 1, 1381506139, 1, 1381791126, 0, 0, 0, 1381507500, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'june2009.html', 0, 0, 1, NULL),
(14, 'document', 'text/html', 'October 2009', '', '', 'october2009', '', 1, 0, 0, 3, 0, '', '<div class="outerWrapper"><span style="font-size: 1.5em; line-height: 1.5em;">Up-to-date club info October 2009</span><br />\r\n<div class="contentWrapper">\r\n<div class="content">\r\n<div class="copy">\r\n<h3>9th October 2009</h3>\r\n<ol>\r\n<li><strong>THE SURREY OPEN INTERCLUB LIGHT CONTINUOUS KICKBOXING COMPETITION </strong><br /> Sunday 18th October 2009 (<a href="../news/surreyopen.htm">details</a>)</li>\r\n<li>If you are interested in Sat. training/sparring get in touch and I will put your name on separate e-mail list.</li>\r\n<li>Those who are training and have still not set up their standing orders,it is only fair on me and the rest of the club that you do so.Enough said.</li>\r\n<li>New MMA club open in town.Limited space, very soft padded floor, but great if you want to improve ground-work/throws.Open at times during day.See me for further details.</li>\r\n<li>Training is as normal Suns. and Thurs .Try to make at least one a week if you want to improve/maintain your standard and learn the new stuff too. It can be very easy to lose momentum.I am constantly learning new things and also working hard to offer quality training.You would only be and would only remain a member of this club if you see something of value here ...so please use it.</li>\r\n</ol>\r\n<p>All the best - in the club and out! <br /> Colin</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, 1, 1, 1, 1, 1, 1381506139, 1, 1381791141, 0, 0, 0, 1381507500, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'october2009.html', 0, 0, 1, NULL),
(15, 'document', 'text/html', 'November 2009', 'THE BERKSHIRE OPEN', '', 'november2009', '', 1, 0, 0, 3, 0, '', '<div class="outerWrapper">\r\n<div class="menubar"><span style="text-align: center; line-height: 1.5em;">Light Continuous Kickboxing </span><strong style="text-align: center; line-height: 1.5em;">BIKMAÂ Sanctioned</strong><span style="text-align: center; line-height: 1.5em;">Sunday 29th November 2009Â </span></div>\r\n<div class="contentWrapper">\r\n<div class="content">\r\n<div style="text-align: center;">\r\n<div>\r\n<div class="ecxMsoNormal">\r\n<div align="left"><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Dear Coach/Instructor,Â <strong>You are</strong> <strong>invited</strong> <strong>to attend along with your students THE </strong></span><strong><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">BERKSHIRE OPEN. The day will feature </span><span style="text-decoration: underline;"><span style="font-family: Arial; font-size: 12pt;" lang="EN-GB">Junior &amp; Adult Light Continuous Kickboxing Competition</span></span></strong><span><strong> for novices and experienced fighters. In the evening there will be a Fight Night which is a separate event</strong>.Â  </span><span style="font-family: Arial; font-size: 12pt;" lang="EN-GB">Â </span><span style="text-decoration: underline;"><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">All fights will be pre-matched so all entries must be in 10 days before the event. There will be two rings in action during the day &amp; all competitors receive a trophy.</span></span><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Â The day event will also feature modified K1 rules (controlled contact) competition, this is a new format for our events and we believe it will give an outlet for the oriental rules clubs to compete in the controlled contact arena. Â Please ensure your fighters details are completed correctly. It is essential that any last minute cancellations or changes to entries are passed on to us before the day as this may affect the smooth running of the show and will avoid disappointment for a fighter whose opponent doesnâ€™t turn up. Â </span><span style="text-decoration: underline;"><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB"><strong>Please be aware </strong></span></span><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">The promoters and BIKMA will not be held responsible for any injuries sustained throughout the competition. The will have BIKMA referees and officials in attendance at all times but it is the responsibility each instructor to ensure his/her fighters conduct themselves in a fit and proper manner and adhere to all instructions given by referees or event officials. Failure to do so could result in injury or disqualification. There will be a paramedic in attendance all day.Â Please read all entry rules prior to the event.Â Â Best Regards,Â Â Frank Bowen </span></div>\r\n</div>\r\n<div class="ecxMsoNormal"><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">WKMA/BIKMA</span></div>\r\n</div>\r\n<p>Â </p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, 1, 2, 1, 1, 1, 1381506139, 1, 1381791170, 0, 0, 0, 1381507500, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'november2009.html', 0, 0, 1, NULL),
(16, 'document', 'text/html', 'august 2008', '', '', 'august2008', '', 1, 0, 0, 3, 0, '', '<div class="outerWrapper">\r\n<div class="menubar"><span style="line-height: 1.5em;">Competitions Many members are still actively engaged in competing.</span></div>\r\n<div class="contentWrapper">\r\n<div class="content">\r\n<div class="copy">\r\n<p>17 yr. old <strong>Tom Creasey</strong> entered the full-contact ring last month.</p>\r\n<p><strong>John Ritschel</strong> continues to compete following his silver medal at the Ty-Ga Open World Champs.</p>\r\n<p>Other members are chomping at the bit.</p>\r\n<p>Next large competition is October 5th. (Check out <a href="http://www.sportsmartialart.com" target="_blank">www.sportsmartialart.com</a>)</p>\r\n<h3>Under 18 1st Dan Black Belt gradings are on the cards for the autumn.</h3>\r\n<p><strong style="line-height: 1.5em;">Chris Watkins</strong><span style="line-height: 1.5em;">, </span><strong style="line-height: 1.5em;">Nick Cairns</strong><span style="line-height: 1.5em;"> and </span><strong style="line-height: 1.5em;">Francis McCabe</strong><span style="line-height: 1.5em;"> are first in line.</span></p>\r\n<p>Other Black Tags should discuss when they aim to go for their grading. (Calum Lawrence,Tom Walter,Sian Treacey). <br /> In the adult club, <strong>Lee Gawthrop</strong> will be going for his Black tag in TaeKwonDo this month.</p>\r\n<p>Â </p>\r\n</div>\r\n<a class="topLink" href="#top"><br /></a></div>\r\n</div>\r\n</div>', 1, 1, 3, 1, 1, 1, 1381506139, 1, 1381791215, 0, 0, 0, 1381507500, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'august2008.html', 0, 0, 1, NULL),
(17, 'document', 'text/html', 'Cedars Coaching Academy', '', '', 'cedarscoachingfoundation', '', 0, 0, 0, 3, 0, NULL, '\r\n<div class=''outerWrapper''>\r\n  <div class=''menubar''><img alt=''(menu bar)'' src=''../resources/images/slices/MenuBar.gif'' width=''684'' height=''45'' usemap=''#Map'' border=''0''><map name=''Map''><area shape=''rect'' coords=''13,7,130,31'' href=''../about/default.asp''><area shape=''rect'' coords=''140,7,229,32'' href=''default.asp''><area shape=''rect'' coords=''241,7,356,31'' href=''../picturegallery/index.htm''><area shape=''rect'' coords=''368,7,445,32'' href=''../grades/gradingsystem.htm''><area shape=''rect'' coords=''455,8,533,32'' href=''../kidsclub/thekidsclub.htm''><area shape=''rect'' coords=''543,8,662,31'' href=''../wherearewe/index.htm''></map></div>\r\n<div class=''header''>\r\n    <div class=''header''><img alt=''(banner)'' src=''../resources/images/slices/mainTitleBar.gif'' width=''684'' height=''172'' usemap=''#Map2'' border=''0''><map name=''Map2''><area shape=''rect'' coords=''3,-1,313,170'' href=''../default.asp'' alt=''Home'' title=''Home''><area shape=''rect'' coords=''312,67,386,134'' href=''../styles/tae-kwon-do.htm''><area shape=''rect'' coords=''385,67,431,133'' href=''../styles/jiu-jitsu.htm''><area shape=''rect'' coords=''431,67,464,132'' href=''../styles/kali.htm''><area shape=''rect'' coords=''465,68,524,131'' href=''../styles/muay-thai.htm''><area shape=''rect'' coords=''523,70,607,131'' href=''../styles/Jun-fan-kung-fo.htm''><area shape=''rect'' coords=''606,69,658,129'' href=''../styles/boxing.htm''><area shape=''rect'' coords=''386,134,627,158'' href=''../default.asp''></map></div>\r\n</div>\r\n<div class=''contentWrapper''>\r\n    <!-- START RIGHT COL -->\r\n	<!--#include file="../mainincludes/rightColContent.htm" -->\r\n    <!-- END RIGHT COL --> \r\n<div class=''rightcol''> \r\n      <div class=''menu''><!-- MENU -->\r\n        <div class=''menuInner''> \r\n          <p class="Title"><strong>Details:</strong></p>\r\n          <blockquote>\r\n            <p class="Title"><strong>Minimum Age:14 years</strong> \r\n            </p>\r\n          </blockquote>\r\n          <p><b>Dates</b>: </p>\r\n          <blockquote>\r\n            <p>SATURDAY 22nd October 2011<br>\r\n              SUNDAY 23rd October 2011</p>\r\n          </blockquote>\r\n          <p> <b>Venue:</b></p>\r\n          <blockquote>\r\n            <p>Cedars Upper SchoolMentmore Road<br>\r\n              Leighton Buzzard<br>\r\n              Bedfordshire<br>\r\n              LU7 2AE </p>\r\n          </blockquote>\r\n          <p><br>\r\n          </p>\r\n        </div>\r\n<!-- MENU Inner --></div>\r\n\r\n    </div>\r\n    <div class=''content''> <a href=''#top''></a> \r\n      <h1>Cedars Coaching Academy</h1>\r\n<div class=''summary''></div>\r\n      <div class=''copy''> \r\n        <p>Cedars Coaching Academy will host the ARCS instructor qualification \r\n          for under 19’s.<br>\r\n          </P>\r\n        <p>It provides students with an in-house qualification to teach and is \r\n          a top-notch addition to any C.V. for employment or University applications.</P>\r\n        <p>Check out the Cedars website for details. <span>(<a target="_null" href="http://www.cedarsupper.beds.sch.uk">Click \r\n            here</a>)</span> </P>\r\n        <p align="center"><a href="http://www.cedarscoachingacademy.com/coaching/martial-arts" target="_blank"><img src="images/Cedars_Academy_Logo.jpg" width="297" height="44" border="0"></a></P>\r\n        <p align="center">&nbsp; </p>\r\n      </div>\r\n    </div>\r\n</div>\r\n  <div class=''footbar''><a class=''externallink'' href=''http://www.amauk.co.uk/'' target=''_blank''><img src=''../resources/images/slices/AmaBanner.gif'' width=''179'' height=''56'' alt=''(AMA Logo)'' border=''0''></a></div>\r\n</div', 1, 1, 4, 1, 1, 1, 1381506139, 0, 0, 1, 1381791228, 1, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'cedarscoachingfoundation.html', 0, 0, 1, NULL),
(18, 'document', 'text/html', 'December 2001', '', '', 'december2001', '', 1, 0, 0, 3, 0, '', '<div class="outerWrapper">\r\n<div class="contentWrapper">\r\n<div class="rightcol">\r\n<div class="menu">\r\n<div class="menuInner">\r\n<div class="ChildPages">\r\n<p>On the 9th of December Mike GregoryÂ came down to give his latest JKD/Kali seminar. It was excellent.(<a href="http://www.maxt.co.uk/" target="_blank">To See his web site click here.</a>)The next seminar will be on the 10th of Feb. be there if you can. See Colin to book your place.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="content">\r\n<div class="copy">\r\n<p>On the 26th Jan I will be going to the JKD instructors'' seminar in London. Club members are welcome to attend as well.</p>\r\n<p>The kids club had a grading on the 10th of December. Their standardÂ was very high and theyÂ were very keen. Well done kids. Thanks to James and Gary for assisting with instruction.</p>\r\n<p>Â </p>\r\n<p>Bruce Mundin hasÂ  completed his grading for 1st Dan Black Belt! He received the belt on the 16th.Don''t stop trainingÂ !!Â Thanks go to him also for setting up this website and for constant info!</p>\r\n<p>We will recommence training on Thursday the 3rd of January. Be there if you can. Don''t give in to the sloth!</p>\r\n</div>\r\n<a class="topLink" href="#top"><br /></a></div>\r\n</div>\r\n</div>', 1, 1, 8, 1, 1, 1, 1381506140, 1, 1381798441, 0, 0, 0, 1381791300, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'december2001.html', 0, 0, 1, NULL),
(19, 'document', 'text/html', 'December 2001', '', '', 'october2008', '', 0, 0, 0, 3, 0, NULL, '\r\n<div class=''outerWrapper''>\r\n  <div class=''menubar''><img alt=''(menu bar)'' src=''../resources/images/slices/MenuBar.gif'' width=''684'' height=''45'' usemap=''#Map'' border=''0''><map name=''Map''><area shape=''rect'' coords=''13,7,130,31'' href=''../about/default.asp''><area shape=''rect'' coords=''140,7,229,32'' href=''default.asp''><area shape=''rect'' coords=''241,7,356,31'' href=''../picturegallery/index.htm''><area shape=''rect'' coords=''368,7,445,32'' href=''../grades/gradingsystem.htm''><area shape=''rect'' coords=''455,8,533,32'' href=''../kidsclub/thekidsclub.htm''><area shape=''rect'' coords=''543,8,662,31'' href=''../wherearewe/index.htm''></map></div>\r\n<div class=''header''>\r\n    <div class=''header''><img alt=''(banner)'' src=''../resources/images/slices/mainTitleBar.gif'' width=''684'' height=''172'' usemap=''#Map2'' border=''0''><map name=''Map2''><area shape=''rect'' coords=''3,-1,313,170'' href=''../default.asp'' alt=''Home'' title=''Home''><area shape=''rect'' coords=''312,67,386,134'' href=''../styles/tae-kwon-do.htm''><area shape=''rect'' coords=''385,67,431,133'' href=''../styles/jiu-jitsu.htm''><area shape=''rect'' coords=''431,67,464,132'' href=''../styles/kali.htm''><area shape=''rect'' coords=''465,68,524,131'' href=''../styles/muay-thai.htm''><area shape=''rect'' coords=''523,70,607,131'' href=''../styles/Jun-fan-kung-fo.htm''><area shape=''rect'' coords=''606,69,658,129'' href=''../styles/boxing.htm''><area shape=''rect'' coords=''386,134,627,158'' href=''../default.asp''></map></div>\r\n</div>\r\n<div class=''contentWrapper''>\r\n<div class=''rightcol''> \r\n<div class=''menu''><!-- MENU -->\r\n        <div class=''menuInner''><!-- MENU Inner --><img src="../resources/images/headings/headingSections.gif" width="281" height="34"> \r\n          <a href=''default.asp''><span class=''Title''>Club News</span></a> \r\n          <div class=''ChildPages''>\r\n<ul>\r\n            <li> <a href=''december2001.htm''><span class=''Title''>December 2001</span></a></li>\r\n</ul>\r\n</div>\r\n<!-- MENU Inner --></div>\r\n<!-- MENU --></div>\r\n\r\n</div>\r\n<div class=''content''>\r\n<a href=''#top''></a>\r\n      <h1><b>The 4th weekend in October</b></h1>\r\n      <div class=''copy''>\r\n<p> Cedars Coaching Foundation will host the ARCS instructor qualification \r\n          for under 19’s.<br>\r\n          It provides students with an in-house qualification to teach and is \r\n          a top-notch addition to any C.V. for employment or University applications.! \r\n          <br>\r\n          Check out the Cedars website for details. <span class="clickhere">(<a target="_null" href="http://www.cedarsupper.beds.sch.uk">Click \r\n          here</a>)</span> </P>\r\n        <p>&nbsp; </p>\r\n        </div>\r\n<a class=''topLink'' href=''#top''>Back to top</a>\r\n</div>\r\n</div>\r\n  <div class=''footbar''><a class=''externallink'' href=''http://www.amauk.co.uk/'' target=''_blank''><img src=''../resources/images/slices/AmaBanner.gif'' width=''179'' height=''56'' alt=''(AMA Logo)'' border=''0''></a></div>\r\n</div', 1, 1, 6, 1, 1, 1, 1381506140, 0, 0, 1, 1381791271, 1, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'october2008.html', 0, 0, 1, NULL);
INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(20, 'document', 'text/html', 'October 2009', 'THE SURREY OPEN INTERCLUB', '', 'october2009surreyopen', '', 1, 0, 0, 3, 0, '', '<div class="outerWrapper">\r\n<div class="contentWrapper">\r\n<div class="content">\r\n<div style="text-align: center;">\r\n<p><br /><span style="line-height: 1.5em;">Â </span></p>\r\n<p><strong><span style="font-family: ''Arial Black''; letter-spacing: 1.2pt; font-size: 17.5pt;" lang="EN-GB">THE </span></strong><strong><span style="font-family: ''Arial Black''; letter-spacing: 1.2pt; font-size: 17.5pt;" lang="EN-GB">SURREY</span></strong><strong><span style="font-family: ''Arial Black''; letter-spacing: 0.8pt; font-size: 17.5pt;" lang="EN-GB"> OPEN INTERCLUB</span></strong></p>\r\n</div>\r\n<div style="text-align: center; line-height: 30pt;">\r\n<p><strong><span style="font-family: ''Arial Black''; font-size: 18pt;" lang="EN-GB">LIGHT CONTINUOUS KICKBOXING COMPETITION</span></strong></p>\r\n<div style="text-align: center; line-height: 30pt;"><strong><span style="font-family: Arial; font-size: 18pt;" lang="EN-GB">Combined Martial Arts </span></strong></div>\r\n<div style="text-align: center; line-height: 18pt;"><em><span style="font-family: Arial; font-size: 14pt;" lang="EN-GB">presents</span></em></div>\r\n<div style="text-align: center;">Â </div>\r\n<div style="text-align: center; line-height: 30pt;"><strong><span style="font-family: ''Arial Black''; font-size: 22pt;" lang="EN-GB">Sunday 18th October 2009</span></strong></div>\r\n<div style="text-align: center; line-height: 30pt;"><strong><span style="font-family: Arial; font-size: 20pt;" lang="EN-GB">VENUE: </span></strong><strong><span style="font-family: Arial; font-size: 21pt;" lang="EN-GB">The </span></strong><strong><span style="font-family: Arial; font-size: 21pt;" lang="EN-GB">Agincourt</span></strong><strong><span style="font-family: Arial; font-size: 21pt;" lang="EN-GB"> Club</span></strong><strong><span style="font-family: Arial; font-size: 20pt;" lang="EN-GB">, </span></strong></div>\r\n<div style="text-align: center; line-height: 30pt;"><strong><span style="font-family: Arial; font-size: 20pt;" lang="EN-GB">London Road</span></strong><strong><span style="font-family: Arial; font-size: 20pt;" lang="EN-GB">, Camberley, </span></strong></div>\r\n<div style="text-align: center; line-height: 30pt;"><strong><span style="font-family: Arial; font-size: 20pt;" lang="EN-GB">Surrey</span></strong><strong><span style="font-family: Arial; font-size: 20pt;" lang="EN-GB">, </span></strong><strong><span style="font-family: Arial; font-size: 20pt;" lang="EN-GB">GU15 3JA</span></strong><strong><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">(Next to McDonalds)</span></strong></div>\r\n<p align="left"><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Dear Instructor/Trainer,</span></p>\r\n</div>\r\n<div class="copy">\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Â </span></div>\r\n<div><strong><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Enclosed is the information pack for our forthcoming event on </span></strong><strong><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Sunday 18<sup>th</sup> October 2009</span></strong><strong><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB"> at The </span></strong><strong><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Agincourt</span></strong><strong><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB"> Club. The day will feature </span></strong><strong><span style="text-decoration: underline;"><span style="font-family: Arial; font-size: 12pt;" lang="EN-GB">Junior and Adult Light Continuous Kickboxing Competition</span></span></strong><strong><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB"> for novices and experienced fighters. In the evening there will be a Fight Night which is a separate event</span></strong><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">.<span>Â  </span></span></div>\r\n<div><span style="font-family: Arial; font-size: 12pt;" lang="EN-GB">Â </span></div>\r\n<div><span style="text-decoration: underline;"><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">All fights will be prematched so please ensure all entries are sent in 7days before the event date. All bouts will be in a ring and all competitors will receive a trophy.</span></span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Â </span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">The day event will also feature modified K1 rules (controlled contact) bouts, this is a new format for our events and we believe it will give an outlet for our low kick and Thaiboxing clubs to compete in the controlled contact arena. </span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Â </span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Please ensure your fighters details are completed correctly. It is essential that any last minute cancellations or changes to entries are passed on to us before the day as this may affect the smooth running of the show and will avoid disappointment for a fighter whose opponent doesnâ€™t turn up. </span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Â </span></div>\r\n<div><strong><span style="text-decoration: underline;"><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Please be aware </span></span></strong><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">The promoters and BIKMA will not be held responsible for any injuries sustained throughout the competition. The will have BIKMA referees and officials in attendance at all times but it is the responsibility each instructor to ensure his/her fighters conduct themselves in a fit and proper manner and adhere to all instructions given by referees or event officials. Failure to do so could result in injury or disqualification. There will be a paramedic in attendance all day.</span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Â </span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Please read all entry rules prior to the event.</span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Â </span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Â </span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Best Regards,</span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Â </span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Â </span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Frank Bowen â€“ Dave Bishop</span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">WKMA/BIKMA</span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Â </span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Â </span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Enquiries: Frank 07740 287416 / Dave 07810196845</span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Email: <a href="mailto:wkmabikma@aol.com"><span style="color: windowtext; text-decoration: none;">wkmabikma@aol.com</span></a></span></div>\r\n<div><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Address: 159 Hilmanton, </span><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Lower Earley</span><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">, Reading </span><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB">Berkshire</span><span style="font-family: Arial; font-size: 11pt;" lang="EN-GB"> RG6 4HN </span></div>\r\n<h2><a class="topLink" href="#top">Â </a></h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, 1, 7, 1, 1, 1, 1381506140, 1, 1381791302, 0, 0, 0, 1381507680, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'october2009surreyopen.html', 0, 0, 1, NULL),
(21, 'document', 'text/html', 'August 2008', '', '', 'index-5d9', '', 1, 0, 0, 3, 0, '', '<div class="outerWrapper">\r\n<div class="menubar"><span style="line-height: 1.5em;">GradingÂ  end of April.</span></div>\r\n<div class="contentWrapper">\r\n<div class="rightcol">\r\n<div class="callout">\r\n<div class="calloutInner">\r\n<p>Panantukan day April 22nd.</p>\r\n<p>Kickboxing competition York hall,Bethnall Green April 29th</p>\r\n<p>Keysi seminar May.</p>\r\n<p>SeniÂ  Â May 19th/20th. www.senishow.co.uk</p>\r\n</div>\r\n</div>\r\n<!-- CALL OUT END --></div>\r\n<div class="content">\r\n<h1>Â </h1>\r\n</div>\r\n</div>\r\n</div>', 1, 1, 7, 1, 1, 1, 1381506140, 1, 1381798506, 0, 0, 0, 1381791360, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'index-5d9.html', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_htmlsnippets`
--

CREATE TABLE IF NOT EXISTS `modx_site_htmlsnippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, '_metroui-rowTpl', 'row for Wayfinder', 0, 0, 0, '<!-- Metro rowTpl -->\n<li [[+wf.id]][[+wf.classes]]>\n<a href="[[+wf.link]]" title="[[+wf.title]]" [[+wf.attributes]]>[[+wf.linktext]]</a>\n[[+wf.wrapper]]\n</li>', 0, 'a:0:{}', 0, ''),
(2, 1, 0, '_metroui-outerTpl', '', 0, 0, 0, '<!-- Metro outerTpl -->\n<ul id="topnav"[[+wf.classes]]>\n[[+wf.wrapper]]\n</ul>', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'lbTrainingTimes', 'LB Training times', 0, 0, 0, '<h3>Training Times</h3>\n<h4>Monday Evenings (Term-time only)</h4>\n<p>5:15-6:15: Children''s class</p>\n<h4>Tuesday Evenings</h4>\n<p>8:00-9:30: Adult''s class</p>\n<h4>Thursday Evenings</h4>\n<p>8:15-9:30: Adult''s class</p> ', 0, 'a:0:{}', 0, ''),
(4, 1, 0, 'lbContact', '', 0, 0, 0, '<h3>Contact Details</h3>\n<p>Tel. <b>(01525) 372029</b> <br/>or  <b>(07788) 544726</b></p>\n<p>E-mail <b>allrangecombat at gmail.com</b></p>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugins`
--

CREATE TABLE IF NOT EXISTS `modx_site_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'TinyMCE', 'TinyMCE 4.3.3-pl plugin for MODx Revolution', 0, 0, 0, '/**\n * TinyMCE RichText Editor Plugin\n *\n * Events: OnRichTextEditorInit, OnRichTextEditorRegister,\n * OnBeforeManagerPageInit, OnRichTextBrowserInit\n *\n * @author Jeff Whitfield <jeff@collabpad.com>\n * @author Shaun McCormick <shaun@collabpad.com>\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package tinymce\n * @subpackage build\n */\nif ($modx->event->name == ''OnRichTextEditorRegister'') {\n    $modx->event->output(''TinyMCE'');\n    return;\n}\nrequire_once $modx->getOption(''tiny.core_path'',null,$modx->getOption(''core_path'').''components/tinymce/'').''tinymce.class.php'';\n$tiny = new TinyMCE($modx,$scriptProperties);\n\n$useEditor = $tiny->context->getOption(''use_editor'',false);\n$whichEditor = $tiny->context->getOption(''which_editor'','''');\n\n/* Handle event */\nswitch ($modx->event->name) {\n    case ''OnRichTextEditorInit'':\n        if ($useEditor && $whichEditor == ''TinyMCE'') {\n            unset($scriptProperties[''chunk'']);\n            if (isset($forfrontend) || $modx->context->get(''key'') != ''mgr'') {\n                $def = $tiny->context->getOption(''cultureKey'',$tiny->context->getOption(''manager_language'',''en''));\n                $tiny->properties[''language''] = $modx->getOption(''fe_editor_lang'',array(),$def);\n                $tiny->properties[''frontend''] = true;\n                unset($def);\n            }\n            /* commenting these out as it causes problems with richtext tvs */\n            //if (isset($scriptProperties[''resource'']) && !$resource->get(''richtext'')) return;\n            //if (!isset($scriptProperties[''resource'']) && !$modx->getOption(''richtext_default'',null,false)) return;\n            $tiny->setProperties($scriptProperties);\n            $html = $tiny->initialize();\n            $modx->event->output($html);\n            unset($html);\n        }\n        break;\n    case ''OnRichTextBrowserInit'':\n        if ($useEditor && $whichEditor == ''TinyMCE'') {\n            $inRevo20 = (boolean)version_compare($modx->version[''full_version''],''2.1.0-rc1'',''<'');\n            $modx->getVersionData();\n            $source = $tiny->context->getOption(''default_media_source'',null,1);\n            \n            $modx->controller->addHtml(''<script type="text/javascript">var inRevo20 = ''.($inRevo20 ? 1 : 0).'';MODx.source = "''.$source.''";</script>'');\n            \n            $modx->controller->addJavascript($tiny->config[''assetsUrl''].''jscripts/tiny_mce/tiny_mce_popup.js'');\n            if (file_exists($tiny->config[''assetsPath''].''jscripts/tiny_mce/langs/''.$tiny->properties[''language''].''.js'')) {\n                $modx->controller->addJavascript($tiny->config[''assetsUrl''].''jscripts/tiny_mce/langs/''.$tiny->properties[''language''].''.js'');\n            } else {\n                $modx->controller->addJavascript($tiny->config[''assetsUrl''].''jscripts/tiny_mce/langs/en.js'');\n            }\n            $modx->controller->addJavascript($tiny->config[''assetsUrl''].''tiny.browser.js'');\n            $modx->event->output(''Tiny.browserCallback'');\n        }\n        return '''';\n        break;\n\n   default: break;\n}\nreturn;', 0, 'a:39:{s:22:"accessibility_warnings";a:7:{s:4:"name";s:22:"accessibility_warnings";s:4:"desc";s:315:"If this option is set to true some accessibility warnings will be presented to the user if they miss specifying that information. This option is set to true by default, since we should all try to make this world a better place for disabled people. But if you are annoyed with the warnings, set this option to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:23:"apply_source_formatting";a:7:{s:4:"name";s:23:"apply_source_formatting";s:4:"desc";s:229:"This option enables you to tell TinyMCE to apply some source formatting to the output HTML code. With source formatting, the output HTML code is indented and formatted. Without source formatting, the output HTML is more compact. ";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"button_tile_map";a:7:{s:4:"name";s:15:"button_tile_map";s:4:"desc";s:338:"If this option is set to true TinyMCE will use tiled images instead of individual images for most of the editor controls. This produces faster loading time since only one GIF image needs to be loaded instead of a GIF for each individual button. This option is set to false by default since it doesn''t work with some DOCTYPE declarations. ";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:7:"cleanup";a:7:{s:4:"name";s:7:"cleanup";s:4:"desc";s:331:"This option enables or disables the built-in clean up functionality. TinyMCE is equipped with powerful clean up functionality that enables you to specify what elements and attributes are allowed and how HTML contents should be generated. This option is set to true by default, but if you want to disable it you may set it to false.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:18:"cleanup_on_startup";a:7:{s:4:"name";s:18:"cleanup_on_startup";s:4:"desc";s:135:"If you set this option to true, TinyMCE will perform a HTML cleanup call when the editor loads. This option is set to false by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:22:"convert_fonts_to_spans";a:7:{s:4:"name";s:22:"convert_fonts_to_spans";s:4:"desc";s:348:"If you set this option to true, TinyMCE will convert all font elements to span elements and generate span elements instead of font elements. This option should be used in order to get more W3C compatible code, since font elements are deprecated. How sizes get converted can be controlled by the font_size_classes and font_size_style_values options.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:23:"convert_newlines_to_brs";a:7:{s:4:"name";s:23:"convert_newlines_to_brs";s:4:"desc";s:128:"If you set this option to true, newline characters codes get converted into br elements. This option is set to false by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"convert_urls";a:7:{s:4:"name";s:12:"convert_urls";s:4:"desc";s:495:"This option enables you to control whether TinyMCE is to be clever and restore URLs to their original values. URLs are automatically converted (messed up) by default because the built-in browser logic works this way. There is no way to get the real URL unless you store it away. If you set this option to false it will try to keep these URLs intact. This option is set to true by default, which means URLs will be forced to be either absolute or relative depending on the state of relative_urls.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"dialog_type";a:7:{s:4:"name";s:11:"dialog_type";s:4:"desc";s:246:"This option enables you to specify how dialogs/popups should be opened. Possible values are "window" and "modal", where the window option opens a normal window and the dialog option opens a modal dialog. This option is set to "window" by default.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{i:0;s:6:"window";s:4:"text";s:6:"Window";}i:1;a:2:{i:0;s:5:"modal";s:4:"text";s:5:"Modal";}}s:5:"value";s:6:"window";s:7:"lexicon";N;s:4:"area";s:0:"";}s:14:"directionality";a:7:{s:4:"name";s:14:"directionality";s:4:"desc";s:261:"This option specifies the default writing direction. Some languages (Like Hebrew, Arabic, Urdu...) write from right to left instead of left to right. The default value of this option is "ltr" but if you want to use from right to left mode specify "rtl" instead.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:3:"ltr";s:4:"text";s:13:"Left to Right";}i:1;a:2:{s:5:"value";s:3:"rtl";s:4:"text";s:13:"Right to Left";}}s:5:"value";s:3:"ltr";s:7:"lexicon";N;s:4:"area";s:0:"";}s:14:"element_format";a:7:{s:4:"name";s:14:"element_format";s:4:"desc";s:210:"This option enables control if elements should be in html or xhtml mode. xhtml is the default state for this option. This means that for example &lt;br /&gt; will be &lt;br&gt; if you set this option to "html".";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:5:"xhtml";s:4:"text";s:5:"XHTML";}i:1;a:2:{s:5:"value";s:4:"html";s:4:"text";s:4:"HTML";}}s:5:"value";s:5:"xhtml";s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"entity_encoding";a:7:{s:4:"name";s:15:"entity_encoding";s:4:"desc";s:70:"This option controls how entities/characters get processed by TinyMCE.";s:4:"type";s:4:"list";s:7:"options";a:4:{i:0;a:2:{s:5:"value";s:0:"";s:4:"text";s:4:"None";}i:1;a:2:{s:5:"value";s:5:"named";s:4:"text";s:5:"Named";}i:2;a:2:{s:5:"value";s:7:"numeric";s:4:"text";s:7:"Numeric";}i:3;a:2:{s:5:"value";s:3:"raw";s:4:"text";s:3:"Raw";}}s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:16:"force_p_newlines";a:7:{s:4:"name";s:16:"force_p_newlines";s:4:"desc";s:147:"This option enables you to disable/enable the creation of paragraphs on return/enter in Mozilla/Firefox. The default value of this option is true. ";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:22:"force_hex_style_colors";a:7:{s:4:"name";s:22:"force_hex_style_colors";s:4:"desc";s:277:"This option enables you to control TinyMCE to force the color format to use hexadecimal instead of rgb strings. It converts for example "color: rgb(255, 255, 0)" to "#FFFF00". This option is set to true by default since otherwice MSIE and Firefox would differ in this behavior.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"height";a:7:{s:4:"name";s:6:"height";s:4:"desc";s:38:"Sets the height of the TinyMCE editor.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:5:"400px";s:7:"lexicon";N;s:4:"area";s:0:"";}s:11:"indentation";a:7:{s:4:"name";s:11:"indentation";s:4:"desc";s:139:"This option allows specification of the indentation level for indent/outdent buttons in the UI. This defaults to 30px but can be any value.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"30px";s:7:"lexicon";N;s:4:"area";s:0:"";}s:16:"invalid_elements";a:7:{s:4:"name";s:16:"invalid_elements";s:4:"desc";s:163:"This option should contain a comma separated list of element names to exclude from the content. Elements in this list will removed when TinyMCE executes a cleanup.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:6:"nowrap";a:7:{s:4:"name";s:6:"nowrap";s:4:"desc";s:212:"This nowrap option enables you to control how whitespace is to be wordwrapped within the editor. This option is set to false by default, but if you enable it by setting it to true editor contents will never wrap.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:15:"object_resizing";a:7:{s:4:"name";s:15:"object_resizing";s:4:"desc";s:148:"This option gives you the ability to turn on/off the inline resizing controls of tables and images in Firefox/Mozilla. These are enabled by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"path_options";a:7:{s:4:"name";s:12:"path_options";s:4:"desc";s:119:"Sets a group of options. Note: This will override the relative_urls, document_base_url and remove_script_host settings.";s:4:"type";s:9:"textfield";s:7:"options";a:3:{i:0;a:2:{s:5:"value";s:11:"docrelative";s:4:"text";s:17:"Document Relative";}i:1;a:2:{s:5:"value";s:12:"rootrelative";s:4:"text";s:13:"Root Relative";}i:2;a:2:{s:5:"value";s:11:"fullpathurl";s:4:"text";s:13:"Full Path URL";}}s:5:"value";s:11:"docrelative";s:7:"lexicon";N;s:4:"area";s:0:"";}s:28:"plugin_insertdate_dateFormat";a:7:{s:4:"name";s:28:"plugin_insertdate_dateFormat";s:4:"desc";s:53:"Formatting of dates when using the InsertDate plugin.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"%Y-%m-%d";s:7:"lexicon";N;s:4:"area";s:0:"";}s:28:"plugin_insertdate_timeFormat";a:7:{s:4:"name";s:28:"plugin_insertdate_timeFormat";s:4:"desc";s:53:"Formatting of times when using the InsertDate plugin.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"%H:%M:%S";s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"preformatted";a:7:{s:4:"name";s:12:"preformatted";s:4:"desc";s:231:"If you enable this feature, whitespace such as tabs and spaces will be preserved. Much like the behavior of a &lt;pre&gt; element. This can be handy when integrating TinyMCE with webmail clients. This option is disabled by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:13:"relative_urls";a:7:{s:4:"name";s:13:"relative_urls";s:4:"desc";s:231:"If this option is set to true, all URLs returned from the file manager will be relative from the specified document_base_url. If it is set to false all URLs will be converted to absolute URLs. This option is set to true by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:17:"remove_linebreaks";a:7:{s:4:"name";s:17:"remove_linebreaks";s:4:"desc";s:531:"This option controls whether line break characters should be removed from output HTML. This option is enabled by default because there are differences between browser implementations regarding what to do with white space in the DOM. Gecko and Safari place white space in text nodes in the DOM. IE and Opera remove them from the DOM and therefore the line breaks will automatically be removed in those. This option will normalize this behavior when enabled (true) and all browsers will have a white-space-stripped DOM serialization.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:18:"remove_script_host";a:7:{s:4:"name";s:18:"remove_script_host";s:4:"desc";s:221:"If this option is enabled the protocol and host part of the URLs returned from the file manager will be removed. This option is only used if the relative_urls option is set to false. This option is set to true by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:20:"remove_trailing_nbsp";a:7:{s:4:"name";s:20:"remove_trailing_nbsp";s:4:"desc";s:392:"This option enables you to specify that TinyMCE should remove any traling &nbsp; characters in block elements if you start to write inside them. Paragraphs are default padded with a &nbsp; and if you write text into such paragraphs the space will remain. Setting this option to true will remove the space. This option is set to false by default since the cursor jumps a bit in Gecko browsers.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";N;s:4:"area";s:0:"";}s:4:"skin";a:7:{s:4:"name";s:4:"skin";s:4:"desc";s:330:"This option enables you to specify what skin you want to use with your theme. A skin is basically a CSS file that gets loaded from the skins directory inside the theme. The advanced theme that TinyMCE comes with has two skins, these are called "default" and "o2k7". We added another skin named "cirkuit" that is chosen by default.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:7:"cirkuit";s:7:"lexicon";N;s:4:"area";s:0:"";}s:12:"skin_variant";a:7:{s:4:"name";s:12:"skin_variant";s:4:"desc";s:403:"This option enables you to specify a variant for the skin, for example "silver" or "black". "default" skin does not offer any variant, whereas "o2k7" default offers "silver" or "black" variants to the default one. For the "cirkuit" skin there''s one variant named "silver". When creating a skin, additional variants may also be created, by adding ui_[variant_name].css files alongside the default ui.css.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:20:"table_inline_editing";a:7:{s:4:"name";s:20:"table_inline_editing";s:4:"desc";s:231:"This option gives you the ability to turn on/off the inline table editing controls in Firefox/Mozilla. According to the TinyMCE documentation, these controls are somewhat buggy and not redesignable, so they are disabled by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:22:"theme_advanced_disable";a:7:{s:4:"name";s:22:"theme_advanced_disable";s:4:"desc";s:111:"This option should contain a comma separated list of controls to disable from any toolbar row/panel in TinyMCE.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}s:19:"theme_advanced_path";a:7:{s:4:"name";s:19:"theme_advanced_path";s:4:"desc";s:331:"This option gives you the ability to enable/disable the element path. This option is only useful if the theme_advanced_statusbar_location option is set to "top" or "bottom". This option is set to "true" by default. Setting this option to "false" will effectively hide the path tool, though it still takes up room in the Status Bar.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:32:"theme_advanced_resize_horizontal";a:7:{s:4:"name";s:32:"theme_advanced_resize_horizontal";s:4:"desc";s:319:"This option gives you the ability to enable/disable the horizontal resizing. This option is only useful if the theme_advanced_statusbar_location option is set to "top" or "bottom" and when the theme_advanced_resizing is set to true. This option is set to true by default, allowing both resizing horizontal and vertical.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:23:"theme_advanced_resizing";a:7:{s:4:"name";s:23:"theme_advanced_resizing";s:4:"desc";s:216:"This option gives you the ability to enable/disable the resizing button. This option is only useful if the theme_advanced_statusbar_location option is set to "top" or "bottom". This option is set to false by default.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";N;s:4:"area";s:0:"";}s:33:"theme_advanced_statusbar_location";a:7:{s:4:"name";s:33:"theme_advanced_statusbar_location";s:4:"desc";s:257:"This option enables you to specify where the element statusbar with the path and resize tool should be located. This option can be set to "top" or "bottom". The default value is set to "top". This option can only be used when the theme is set to "advanced".";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:3:"top";s:4:"text";s:3:"Top";}i:1;a:2:{s:5:"value";s:6:"bottom";s:4:"text";s:6:"Bottom";}}s:5:"value";s:6:"bottom";s:7:"lexicon";N;s:4:"area";s:0:"";}s:28:"theme_advanced_toolbar_align";a:7:{s:4:"name";s:28:"theme_advanced_toolbar_align";s:4:"desc";s:187:"This option enables you to specify the alignment of the toolbar, this value can be "left", "right" or "center" (the default). This option can only be used when theme is set to "advanced".";s:4:"type";s:9:"textfield";s:7:"options";a:3:{i:0;a:2:{s:5:"value";s:6:"center";s:4:"text";s:6:"Center";}i:1;a:2:{s:5:"value";s:4:"left";s:4:"text";s:4:"Left";}i:2;a:2:{s:5:"value";s:5:"right";s:4:"text";s:5:"Right";}}s:5:"value";s:4:"left";s:7:"lexicon";N;s:4:"area";s:0:"";}s:31:"theme_advanced_toolbar_location";a:7:{s:4:"name";s:31:"theme_advanced_toolbar_location";s:4:"desc";s:191:"\nThis option enables you to specify where the toolbar should be located. This option can be set to "top" or "bottom" (the defualt). This option can only be used when theme is set to advanced.";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:5:"value";s:3:"top";s:4:"text";s:3:"Top";}i:1;a:2:{s:5:"value";s:6:"bottom";s:4:"text";s:6:"Bottom";}}s:5:"value";s:3:"top";s:7:"lexicon";N;s:4:"area";s:0:"";}s:5:"width";a:7:{s:4:"name";s:5:"width";s:4:"desc";s:32:"The width of the TinyMCE editor.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"95%";s:7:"lexicon";N;s:4:"area";s:0:"";}s:33:"template_selected_content_classes";a:7:{s:4:"name";s:33:"template_selected_content_classes";s:4:"desc";s:234:"Specify a list of CSS class names for the template plugin. They must be separated by spaces. Any template element with one of the specified CSS classes will have its content replaced by the selected editor content when first inserted.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";N;s:4:"area";s:0:"";}}', 0, '', 0, ''),
(2, 0, 0, 'SimpleSearchIndexer', 'Automatically indexes Resources into Solr.', 0, 0, 0, '/**\n * SimpleSearch\n *\n * Copyright 2010-11 by Shaun McCormick <shaun+sisea@modx.com>\n *\n * This file is part of SimpleSearch, a simple search component for MODx\n * Revolution. It is loosely based off of AjaxSearch for MODx Evolution by\n * coroico/kylej, minus the ajax.\n *\n * SimpleSearch is free software; you can redistribute it and/or modify it under\n * the terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * SimpleSearch is distributed in the hope that it will be useful, but WITHOUT\n * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS\n * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more\n * details.\n *\n * You should have received a copy of the GNU General Public License along with\n * SimpleSearch; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package simplesearch\n */\n/**\n * Plugin to index Resources whenever they are changed, published, unpublished,\n * deleted, or undeleted.\n *\n * @var modX $modx\n * @var SimpleSearch $search\n *\n * @package simplesearch\n */\nrequire_once $modx->getOption(''sisea.core_path'',null,$modx->getOption(''core_path'').''components/simplesearch/'').''model/simplesearch/simplesearch.class.php'';\n$search = new SimpleSearch($modx,$scriptProperties);\n\n$search->loadDriver($scriptProperties);\nif (!$search->driver || !($search->driver instanceof SimpleSearchDriverSolr)) return;\n\n/**\n * helper method for missing params in events\n * @param modX $modx\n * @param array $children\n * @param id $parent\n * @return boolean\n */\nfunction SimpleSearchGetChildren(&$modx,&$children,$parent) {\n    $success = false;\n    $kids = $modx->getCollection(''modResource'',array(\n        ''parent'' => $parent,\n    ));\n    if (!empty($kids)) {\n        /** @var modResource $kid */\n        foreach ($kids as $kid) {\n            $children[] = $kid->toArray();\n            SimpleSearchGetChildren($modx,$children,$kid->get(''id''));\n        }\n    }\n    return $success;\n}\n\n$action = ''index'';\n$resourcesToIndex = array();\nswitch ($modx->event->name) {\n    case ''OnDocFormSave'':\n        $action = ''index'';\n        $resourceArray = $scriptProperties[''resource'']->toArray();\n        foreach ($_POST as $k => $v) {\n            if (substr($k,0,2) == ''tv'') {\n                $id = str_replace(''tv'','''',$k);\n                /** @var modTemplateVar $tv */\n                $tv = $modx->getObject(''modTemplateVar'',$id);\n                if ($tv) {\n                    $resourceArray[$tv->get(''name'')] = $tv->renderOutput($resource->get(''id''));\n                    $modx->log(modX::LOG_LEVEL_DEBUG,''Indexing ''.$tv->get(''name'').'': ''.$resourceArray[$tv->get(''name'')]);\n                }\n                unset($resourceArray[$k]);\n            }\n        }\n        unset($resourceArray[''ta''],$resourceArray[''action''],$resourceArray[''tiny_toggle''],$resourceArray[''HTTP_MODAUTH''],$resourceArray[''modx-ab-stay''],$resourceArray[''resource_groups'']);\n        $resourcesToIndex[] = $resourceArray;\n        break;\n    case ''OnDocPublished'':\n        $action = ''index'';\n        $resourceArray = $scriptProperties[''resource'']->toArray();\n        unset($resourceArray[''ta''],$resourceArray[''action''],$resourceArray[''tiny_toggle''],$resourceArray[''HTTP_MODAUTH''],$resourceArray[''modx-ab-stay''],$resourceArray[''resource_groups'']);\n        $resourcesToIndex[] = $resourceArray;\n        break;\n    case ''OnDocUnpublished'':\n    case ''OnDocUnPublished'':\n        $action = ''removeIndex'';\n        $resourceArray = $scriptProperties[''resource'']->toArray();\n        unset($resourceArray[''ta''],$resourceArray[''action''],$resourceArray[''tiny_toggle''],$resourceArray[''HTTP_MODAUTH''],$resourceArray[''modx-ab-stay''],$resourceArray[''resource_groups'']);\n        $resourcesToIndex[] = $resourceArray;\n        break;\n    case ''OnResourceDuplicate'':\n        $action = ''index'';\n        /** @var modResource $newResource */\n        $resourcesToIndex[] = $newResource->toArray();\n        $children = array();\n        SimpleSearchGetChildren($modx,$children,$newResource->get(''id''));\n        foreach ($children as $child) {\n            $resourcesToIndex[] = $child;\n        }\n        break;\n    case ''OnResourceDelete'':\n        $action = ''removeIndex'';\n        $resourcesToIndex[] = $resource->toArray();\n        $children = array();\n        SimpleSearchGetChildren($modx,$children,$resource->get(''id''));\n        foreach ($children as $child) {\n            $resourcesToIndex[] = $child;\n        }\n        break;\n    case ''OnResourceUndelete'':\n        $action = ''index'';\n        $resourcesToIndex[] = $resource->toArray();\n        $children = array();\n        SimpleSearchGetChildren($modx,$children,$resource->get(''id''));\n        foreach ($children as $child) {\n            $resourcesToIndex[] = $child;\n        }\n        break;\n}\n\nforeach ($resourcesToIndex as $resourceArray) {\n    if (!empty($resourceArray[''id''])) {\n        if ($action == ''index'') {\n            $search->driver->index($resourceArray);\n        } else if ($action == ''removeIndex'') {\n            $search->driver->removeIndex($resourceArray[''id'']);\n        }\n    }\n}\nreturn;', 0, NULL, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugin_events`
--

CREATE TABLE IF NOT EXISTS `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(255) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnRichTextBrowserInit', 0, 0),
(1, 'OnRichTextEditorRegister', 0, 0),
(1, 'OnRichTextEditorInit', 0, 0),
(2, 'OnDocFormSave', 0, 0),
(2, 'OnDocPublished', 0, 0),
(2, 'OnDocUnPublished', 0, 0),
(2, 'OnResourceDuplicate', 0, 0),
(2, 'OnResourceDelete', 0, 0),
(2, 'OnResourceUndelete', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_snippets`
--

CREATE TABLE IF NOT EXISTS `modx_site_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'Wayfinder', 'Wayfinder for MODx Revolution 2.0.0-beta-5 and later.', 0, 0, 0, '/**\n * Wayfinder Snippet to build site navigation menus\n *\n * Totally refactored from original DropMenu nav builder to make it easier to\n * create custom navigation by using chunks as output templates. By using\n * templates, many of the paramaters are no longer needed for flexible output\n * including tables, unordered- or ordered-lists (ULs or OLs), definition lists\n * (DLs) or in any other format you desire.\n *\n * @version 2.1.1-beta5\n * @author Garry Nutting (collabpad.com)\n * @author Kyle Jaebker (muddydogpaws.com)\n * @author Ryan Thrash (modx.com)\n * @author Shaun McCormick (modx.com)\n * @author Jason Coward (modx.com)\n *\n * @example [[Wayfinder? &startId=`0`]]\n *\n * @var modX $modx\n * @var array $scriptProperties\n * \n * @package wayfinder\n */\n$wayfinder_base = $modx->getOption(''wayfinder.core_path'',$scriptProperties,$modx->getOption(''core_path'').''components/wayfinder/'');\n\n/* include a custom config file if specified */\nif (isset($scriptProperties[''config''])) {\n    $scriptProperties[''config''] = str_replace(''../'','''',$scriptProperties[''config'']);\n    $scriptProperties[''config''] = $wayfinder_base.''configs/''.$scriptProperties[''config''].''.config.php'';\n} else {\n    $scriptProperties[''config''] = $wayfinder_base.''configs/default.config.php'';\n}\nif (file_exists($scriptProperties[''config''])) {\n    include $scriptProperties[''config''];\n}\n\n/* include wayfinder class */\ninclude_once $wayfinder_base.''wayfinder.class.php'';\nif (!$modx->loadClass(''Wayfinder'',$wayfinder_base,true,true)) {\n    return ''error: Wayfinder class not found'';\n}\n$wf = new Wayfinder($modx,$scriptProperties);\n\n/* get user class definitions\n * TODO: eventually move these into config parameters */\n$wf->_css = array(\n    ''first'' => isset($firstClass) ? $firstClass : '''',\n    ''last'' => isset($lastClass) ? $lastClass : ''last'',\n    ''here'' => isset($hereClass) ? $hereClass : ''active'',\n    ''parent'' => isset($parentClass) ? $parentClass : '''',\n    ''row'' => isset($rowClass) ? $rowClass : '''',\n    ''outer'' => isset($outerClass) ? $outerClass : '''',\n    ''inner'' => isset($innerClass) ? $innerClass : '''',\n    ''level'' => isset($levelClass) ? $levelClass: '''',\n    ''self'' => isset($selfClass) ? $selfClass : '''',\n    ''weblink'' => isset($webLinkClass) ? $webLinkClass : ''''\n);\n\n/* get user templates\n * TODO: eventually move these into config parameters */\n$wf->_templates = array(\n    ''outerTpl'' => isset($outerTpl) ? $outerTpl : '''',\n    ''rowTpl'' => isset($rowTpl) ? $rowTpl : '''',\n    ''parentRowTpl'' => isset($parentRowTpl) ? $parentRowTpl : '''',\n    ''parentRowHereTpl'' => isset($parentRowHereTpl) ? $parentRowHereTpl : '''',\n    ''hereTpl'' => isset($hereTpl) ? $hereTpl : '''',\n    ''innerTpl'' => isset($innerTpl) ? $innerTpl : '''',\n    ''innerRowTpl'' => isset($innerRowTpl) ? $innerRowTpl : '''',\n    ''innerHereTpl'' => isset($innerHereTpl) ? $innerHereTpl : '''',\n    ''activeParentRowTpl'' => isset($activeParentRowTpl) ? $activeParentRowTpl : '''',\n    ''categoryFoldersTpl'' => isset($categoryFoldersTpl) ? $categoryFoldersTpl : '''',\n    ''startItemTpl'' => isset($startItemTpl) ? $startItemTpl : ''''\n);\n\n/* process Wayfinder */\n$output = $wf->run();\nif ($wf->_config[''debug'']) {\n    $output .= $wf->renderDebugOutput();\n}\n\n/* output results */\nif ($wf->_config[''ph'']) {\n    $modx->setPlaceholder($wf->_config[''ph''],$output);\n} else {\n    return $output;\n}', 0, 'a:48:{s:5:"level";a:6:{s:4:"name";s:5:"level";s:4:"desc";s:25:"prop_wayfinder.level_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"includeDocs";a:6:{s:4:"name";s:11:"includeDocs";s:4:"desc";s:31:"prop_wayfinder.includeDocs_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"excludeDocs";a:6:{s:4:"name";s:11:"excludeDocs";s:4:"desc";s:31:"prop_wayfinder.excludeDocs_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"wayfinder:properties";}s:8:"contexts";a:6:{s:4:"name";s:8:"contexts";s:4:"desc";s:28:"prop_wayfinder.contexts_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"cacheResults";a:6:{s:4:"name";s:12:"cacheResults";s:4:"desc";s:32:"prop_wayfinder.cacheResults_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"wayfinder:properties";}s:9:"cacheTime";a:6:{s:4:"name";s:9:"cacheTime";s:4:"desc";s:29:"prop_wayfinder.cacheTime_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:3600;s:7:"lexicon";s:20:"wayfinder:properties";}s:2:"ph";a:6:{s:4:"name";s:2:"ph";s:4:"desc";s:22:"prop_wayfinder.ph_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:5:"debug";a:6:{s:4:"name";s:5:"debug";s:4:"desc";s:25:"prop_wayfinder.debug_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"ignoreHidden";a:6:{s:4:"name";s:12:"ignoreHidden";s:4:"desc";s:32:"prop_wayfinder.ignoreHidden_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"hideSubMenus";a:6:{s:4:"name";s:12:"hideSubMenus";s:4:"desc";s:32:"prop_wayfinder.hideSubMenus_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:13:"useWeblinkUrl";a:6:{s:4:"name";s:13:"useWeblinkUrl";s:4:"desc";s:33:"prop_wayfinder.useWeblinkUrl_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"wayfinder:properties";}s:8:"fullLink";a:6:{s:4:"name";s:8:"fullLink";s:4:"desc";s:28:"prop_wayfinder.fullLink_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:6:"scheme";a:6:{s:4:"name";s:6:"scheme";s:4:"desc";s:26:"prop_wayfinder.scheme_desc";s:4:"type";s:4:"list";s:7:"options";a:3:{i:0;a:2:{s:4:"text";s:23:"prop_wayfinder.relative";s:5:"value";s:0:"";}i:1;a:2:{s:4:"text";s:23:"prop_wayfinder.absolute";s:5:"value";s:3:"abs";}i:2;a:2:{s:4:"text";s:19:"prop_wayfinder.full";s:5:"value";s:4:"full";}}s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:9:"sortOrder";a:6:{s:4:"name";s:9:"sortOrder";s:4:"desc";s:29:"prop_wayfinder.sortOrder_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:24:"prop_wayfinder.ascending";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:25:"prop_wayfinder.descending";s:5:"value";s:4:"DESC";}}s:5:"value";s:3:"ASC";s:7:"lexicon";s:20:"wayfinder:properties";}s:6:"sortBy";a:6:{s:4:"name";s:6:"sortBy";s:4:"desc";s:26:"prop_wayfinder.sortBy_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:9:"menuindex";s:7:"lexicon";s:20:"wayfinder:properties";}s:5:"limit";a:6:{s:4:"name";s:5:"limit";s:4:"desc";s:25:"prop_wayfinder.limit_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"wayfinder:properties";}s:6:"cssTpl";a:6:{s:4:"name";s:6:"cssTpl";s:4:"desc";s:26:"prop_wayfinder.cssTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:5:"jsTpl";a:6:{s:4:"name";s:5:"jsTpl";s:4:"desc";s:25:"prop_wayfinder.jsTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"rowIdPrefix";a:6:{s:4:"name";s:11:"rowIdPrefix";s:4:"desc";s:31:"prop_wayfinder.rowIdPrefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"textOfLinks";a:6:{s:4:"name";s:11:"textOfLinks";s:4:"desc";s:31:"prop_wayfinder.textOfLinks_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:9:"menutitle";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"titleOfLinks";a:6:{s:4:"name";s:12:"titleOfLinks";s:4:"desc";s:32:"prop_wayfinder.titleOfLinks_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:9:"pagetitle";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"displayStart";a:6:{s:4:"name";s:12:"displayStart";s:4:"desc";s:32:"prop_wayfinder.displayStart_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:10:"firstClass";a:6:{s:4:"name";s:10:"firstClass";s:4:"desc";s:30:"prop_wayfinder.firstClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:5:"first";s:7:"lexicon";s:20:"wayfinder:properties";}s:9:"lastClass";a:6:{s:4:"name";s:9:"lastClass";s:4:"desc";s:29:"prop_wayfinder.lastClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"last";s:7:"lexicon";s:20:"wayfinder:properties";}s:9:"hereClass";a:6:{s:4:"name";s:9:"hereClass";s:4:"desc";s:29:"prop_wayfinder.hereClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"active";s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"parentClass";a:6:{s:4:"name";s:11:"parentClass";s:4:"desc";s:31:"prop_wayfinder.parentClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:8:"rowClass";a:6:{s:4:"name";s:8:"rowClass";s:4:"desc";s:28:"prop_wayfinder.rowClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:10:"outerClass";a:6:{s:4:"name";s:10:"outerClass";s:4:"desc";s:30:"prop_wayfinder.outerClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:10:"innerClass";a:6:{s:4:"name";s:10:"innerClass";s:4:"desc";s:30:"prop_wayfinder.innerClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:10:"levelClass";a:6:{s:4:"name";s:10:"levelClass";s:4:"desc";s:30:"prop_wayfinder.levelClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:9:"selfClass";a:6:{s:4:"name";s:9:"selfClass";s:4:"desc";s:29:"prop_wayfinder.selfClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"webLinkClass";a:6:{s:4:"name";s:12:"webLinkClass";s:4:"desc";s:32:"prop_wayfinder.webLinkClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:8:"outerTpl";a:6:{s:4:"name";s:8:"outerTpl";s:4:"desc";s:28:"prop_wayfinder.outerTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:6:"rowTpl";a:6:{s:4:"name";s:6:"rowTpl";s:4:"desc";s:26:"prop_wayfinder.rowTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"parentRowTpl";a:6:{s:4:"name";s:12:"parentRowTpl";s:4:"desc";s:32:"prop_wayfinder.parentRowTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:16:"parentRowHereTpl";a:6:{s:4:"name";s:16:"parentRowHereTpl";s:4:"desc";s:36:"prop_wayfinder.parentRowHereTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:7:"hereTpl";a:6:{s:4:"name";s:7:"hereTpl";s:4:"desc";s:27:"prop_wayfinder.hereTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:8:"innerTpl";a:6:{s:4:"name";s:8:"innerTpl";s:4:"desc";s:28:"prop_wayfinder.innerTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"innerRowTpl";a:6:{s:4:"name";s:11:"innerRowTpl";s:4:"desc";s:31:"prop_wayfinder.innerRowTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"innerHereTpl";a:6:{s:4:"name";s:12:"innerHereTpl";s:4:"desc";s:32:"prop_wayfinder.innerHereTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:18:"activeParentRowTpl";a:6:{s:4:"name";s:18:"activeParentRowTpl";s:4:"desc";s:38:"prop_wayfinder.activeParentRowTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:18:"categoryFoldersTpl";a:6:{s:4:"name";s:18:"categoryFoldersTpl";s:4:"desc";s:38:"prop_wayfinder.categoryFoldersTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"startItemTpl";a:6:{s:4:"name";s:12:"startItemTpl";s:4:"desc";s:32:"prop_wayfinder.startItemTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"permissions";a:6:{s:4:"name";s:11:"permissions";s:4:"desc";s:31:"prop_wayfinder.permissions_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"list";s:7:"lexicon";s:20:"wayfinder:properties";}s:6:"hereId";a:6:{s:4:"name";s:6:"hereId";s:4:"desc";s:26:"prop_wayfinder.hereId_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:5:"where";a:6:{s:4:"name";s:5:"where";s:4:"desc";s:25:"prop_wayfinder.where_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:9:"templates";a:6:{s:4:"name";s:9:"templates";s:4:"desc";s:29:"prop_wayfinder.templates_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:18:"previewUnpublished";a:6:{s:4:"name";s:18:"previewUnpublished";s:4:"desc";s:38:"prop_wayfinder.previewunpublished_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}}', '', 0, ''),
(2, 1, 0, 'myTest', 'Test', 0, 0, 0, 'return ''Hello, World! ['' . $_GET["q"] . '']'' ;', 0, 'a:0:{}', '', 0, ''),
(3, 0, 0, 'UltimateParent', 'Return the "ultimate" parent of a resource.', 0, 0, 0, '/**\n * @name UltimateParent\n * @version 1.3\n * @author Susan Ottwell <sottwell@sottwell.com> March 2006\n * @author Al B <> May 18, 2007\n * @author S. Hamblett <shamblett@cwazy.co.uk>\n * @author Shaun McCormick <shaun@modx.com>\n * @author Jason Coward <modx@modx.com>\n *\n * @param &id The id of the document whose parent you want to find.\n * @param &top The top node for the search.\n * @param &topLevel The top level node for the search (root = level 1)\n *\n * @license Public Domain, use as you like.\n *\n * @example [[UltimateParent? &id=`45` &top=`6`]]\n * Will find the ultimate parent of document 45 if it is a child of document 6;\n * otherwise it will return 45.\n *\n * @example [[UltimateParent? &topLevel=`2`]]\n * Will find the ultimate parent of the current document at a depth of 2 levels\n * in the document hierarchy, with the root level being level 1.\n *\n * This snippet travels up the document tree from a specified document and\n * returns the "ultimate" parent.  Version 2.0 was rewritten to use the new\n * getParentIds function features available only in MODx 0.9.5 or later.\n *\n * Based on the original UltimateParent 1.x snippet by Susan Ottwell\n * <sottwell@sottwell.com>.  The topLevel parameter was introduced by staed and\n * adopted here.\n */\nif (!isset($modx)) return '''';\n\n$top = isset($top) && intval($top) ? $top : 0;\n$id= isset($id) && intval($id) ? intval($id) : $modx->resource->get(''id'');\n$topLevel= isset($topLevel) && intval($topLevel) ? intval($topLevel) : 0;\nif ($id && $id != $top) {\n    $pid = $id;\n    $pids = $modx->getParentIds($id);\n    if (!$topLevel || count($pids) >= $topLevel) {\n        while ($parentIds= $modx->getParentIds($id, 1)) {\n            $pid = array_pop($parentIds);\n            if ($pid == $top) {\n                break;\n            }\n            $id = $pid;\n            $parentIds = $modx->getParentIds($id);\n            if ($topLevel && count($parentIds) < $topLevel) {\n                break;\n            }\n        }\n    }\n}\nreturn $id;', 0, NULL, '', 0, ''),
(7, 0, 0, 'SimpleSearch', '', 0, 2, 0, '/**\n * SimpleSearch\n *\n * Copyright 2010-11 by Shaun McCormick <shaun+sisea@modx.com>\n *\n * This file is part of SimpleSearch, a simple search component for MODx\n * Revolution. It is loosely based off of AjaxSearch for MODx Evolution by\n * coroico/kylej, minus the ajax.\n *\n * SimpleSearch is free software; you can redistribute it and/or modify it under\n * the terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * SimpleSearch is distributed in the hope that it will be useful, but WITHOUT\n * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS\n * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more\n * details.\n *\n * You should have received a copy of the GNU General Public License along with\n * SimpleSearch; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package simplesearch\n */\n/**\n * SimpleSearch snippet\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @package simplesearch\n */\nrequire_once $modx->getOption(''sisea.core_path'',null,$modx->getOption(''core_path'').''components/simplesearch/'').''model/simplesearch/simplesearch.class.php'';\n$search = new SimpleSearch($modx,$scriptProperties);\n\n/* find search index and toplaceholder setting */\n$searchIndex = $modx->getOption(''searchIndex'',$scriptProperties,''search'');\n$toPlaceholder = $modx->getOption(''toPlaceholder'',$scriptProperties,false);\n$noResultsTpl = $modx->getOption(''noResultsTpl'',$scriptProperties,''SearchNoResults'');\n\n/* get search string */\nif (empty($_REQUEST[$searchIndex])) {\n    $output = $search->getChunk($noResultsTpl,array(\n        ''query'' => '''',\n    ));\n    return $search->output($output,$toPlaceholder);\n}\n$searchString = $search->parseSearchString($_REQUEST[$searchIndex]);\nif (!$searchString) {\n    $output = $search->getChunk($noResultsTpl,array(\n        ''query'' => $searchString,\n    ));\n    return $search->output($output,$toPlaceholder);\n}\n\n/* setup default properties */\n$tpl = $modx->getOption(''tpl'',$scriptProperties,''SearchResult'');\n$containerTpl = $modx->getOption(''containerTpl'',$scriptProperties,''SearchResults'');\n$showExtract = $modx->getOption(''showExtract'',$scriptProperties,true);\n$extractLength = $modx->getOption(''extractLength'',$scriptProperties,200);\n$extractEllipsis = $modx->getOption(''extractEllipsis'',$scriptProperties,''...'');\n$highlightResults = $modx->getOption(''highlightResults'',$scriptProperties,true);\n$highlightClass = $modx->getOption(''highlightClass'',$scriptProperties,''sisea-highlight'');\n$highlightTag = $modx->getOption(''highlightTag'',$scriptProperties,''span'');\n$perPage = $modx->getOption(''perPage'',$scriptProperties,10);\n$pagingSeparator = $modx->getOption(''pagingSeparator'',$scriptProperties,'' | '');\n$placeholderPrefix = $modx->getOption(''placeholderPrefix'',$scriptProperties,''sisea.'');\n$includeTVs = $modx->getOption(''includeTVs'',$scriptProperties,'''');\n$processTVs = $modx->getOption(''processTVs'',$scriptProperties,'''');\n$offsetIndex = $modx->getOption(''offsetIndex'',$scriptProperties,''sisea_offset'');\n$idx = isset($_REQUEST[$offsetIndex]) ? intval($_REQUEST[$offsetIndex]) + 1 : 1;\n$postHooks = $modx->getOption(''postHooks'',$scriptProperties,'''');\n$activeFacet = $modx->getOption(''facet'',$_REQUEST,$modx->getOption(''activeFacet'',$scriptProperties,''default''));\n$activeFacet = $modx->sanitizeString($activeFacet);\n$facetLimit = $modx->getOption(''facetLimit'',$scriptProperties,5);\n\n/* get results */\n$response = $search->getSearchResults($searchString,$scriptProperties);\n$placeholders = array(''query'' => $searchString);\n$resultsTpl = array(''default'' => array(''results'' => array(),''total'' => $response[''total'']));\nif (!empty($response[''results''])) {\n    /* iterate through search results */\n    foreach ($response[''results''] as $resourceArray) {\n        $resourceArray[''idx''] = $idx;\n        if (empty($resourceArray[''link''])) {\n            $ctx = !empty($resourceArray[''context_key'']) ? $resourceArray[''context_key''] : $modx->context->get(''key'');\n            $resourceArray[''link''] = $modx->makeUrl($resourceArray[''id''],$ctx);\n        }\n        if ($showExtract) {\n            $extract = array_pop($search->searchArray);\n            $extract = $search->createExtract($resourceArray[''content''],$extractLength,$extract,$extractEllipsis);\n            /* cleanup extract */\n            $extract = strip_tags(preg_replace("#\\<!--(.*?)--\\>#si",'''',$extract));\n            $extract = preg_replace("#\\[\\[(.*?)\\]\\]#si",'''',$extract);\n            $extract = str_replace(array(''[['','']]''),'''',$extract);\n            $resourceArray[''extract''] = !empty($highlightResults) ? $search->addHighlighting($extract,$highlightClass,$highlightTag) : $extract;\n        }\n        $resultsTpl[''default''][''results''][] = $search->getChunk($tpl,$resourceArray);\n        $idx++;\n    }\n}\n\n/* load postHooks to get faceted results */\nif (!empty($postHooks)) {\n    $limit = !empty($facetLimit) ? $facetLimit : $perPage;\n    $search->loadHooks(''post'');\n    $search->postHooks->loadMultiple($postHooks,$response[''results''],array(\n        ''hooks'' => $postHooks,\n        ''search'' => $searchString,\n        ''offset'' => !empty($_GET[$offsetIndex]) ? intval($_GET[$offsetIndex]) : 0,\n        ''limit'' => $limit,\n        ''perPage'' => $limit,\n    ));\n    if (!empty($search->postHooks->facets)) {\n        foreach ($search->postHooks->facets as $facetKey => $facetResults) {\n            if (empty($resultsTpl[$facetKey])) {\n                $resultsTpl[$facetKey] = array();\n                $resultsTpl[$facetKey][''total''] = $facetResults[''total''];\n                $resultsTpl[$facetKey][''results''] = array();\n            } else {\n                $resultsTpl[$facetKey][''total''] = $resultsTpl[$facetKey][''total''] = $facetResults[''total''];\n            }\n\n            $idx = !empty($resultsTpl[$facetKey]) ? count($resultsTpl[$facetKey][''results''])+1 : 1;\n            foreach ($facetResults[''results''] as $r) {\n                $r[''idx''] = $idx;\n                $fTpl = !empty($scriptProperties[''tpl''.$facetKey]) ? $scriptProperties[''tpl''.$facetKey] : $tpl;\n                $resultsTpl[$facetKey][''results''][] = $search->getChunk($fTpl,$r);\n                $idx++;\n            }\n        }\n    }\n}\n\n/* set faceted results to placeholders for easy result positioning */\n$output = array();\nforeach ($resultsTpl as $facetKey => $facetResults) {\n    $resultSet = implode("\\n",$facetResults[''results'']);\n    $placeholders[$facetKey.''.results''] = $resultSet;\n    $placeholders[$facetKey.''.total''] = !empty($facetResults[''total'']) ? $facetResults[''total''] : 0;\n    $placeholders[$facetKey.''.key''] = $facetKey;\n}\n$placeholders[''results''] = $placeholders[$activeFacet.''.results'']; /* set active facet results */\n$placeholders[''total''] = !empty($resultsTpl[$activeFacet][''total'']) ? $resultsTpl[$activeFacet][''total''] : 0;\n$placeholders[''page''] = isset($_REQUEST[$offsetIndex]) ? ceil(intval($_REQUEST[$offsetIndex]) / $perPage) + 1 : 1;\n$placeholders[''pageCount''] = !empty($resultsTpl[$activeFacet][''total'']) ? ceil($resultsTpl[$activeFacet][''total''] / $perPage) : 1;\n\nif (!empty($response[''results''])) {\n    /* add results found message */\n    $placeholders[''resultInfo''] = $modx->lexicon(''sisea.results_found'',array(\n        ''count'' => $placeholders[''total''],\n        ''text'' => !empty($highlightResults) ? $search->addHighlighting($searchString,$highlightClass,$highlightTag) : $searchString,\n    ));\n    /* if perPage set to >0, add paging */\n    if ($perPage > 0) {\n        $placeholders[''paging''] = $search->getPagination($searchString,$perPage,$pagingSeparator,$placeholders[''total'']);\n    }\n}\n$placeholders[''query''] = $searchString;\n$placeholders[''facet''] = $activeFacet;\n\n/* output */\n$modx->setPlaceholder($placeholderPrefix.''query'',$searchString);\n$modx->setPlaceholder($placeholderPrefix.''count'',$response[''total'']);\n$modx->setPlaceholders($placeholders,$placeholderPrefix);\nif (empty($response[''results''])) {\n    $output = $search->getChunk($noResultsTpl,array(\n        ''query'' => $searchString,\n    ));\n} else {\n    $output = $search->getChunk($containerTpl,$placeholders);\n}\nreturn $search->output($output,$toPlaceholder);', 0, 'a:43:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:14:"sisea.tpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:12:"SearchResult";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:12:"containerTpl";a:7:{s:4:"name";s:12:"containerTpl";s:4:"desc";s:23:"sisea.containertpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:13:"SearchResults";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:11:"useAllWords";a:7:{s:4:"name";s:11:"useAllWords";s:4:"desc";s:22:"sisea.useallwords_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:8:"maxWords";a:7:{s:4:"name";s:8:"maxWords";s:4:"desc";s:19:"sisea.maxwords_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:7;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:8:"minChars";a:7:{s:4:"name";s:8:"minChars";s:4:"desc";s:19:"sisea.minchars_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:3;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:11:"searchStyle";a:7:{s:4:"name";s:11:"searchStyle";s:4:"desc";s:22:"sisea.searchstyle_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:13:"sisea.partial";s:5:"value";s:7:"partial";}i:1;a:2:{s:4:"text";s:11:"sisea.match";s:5:"value";s:5:"match";}}s:5:"value";s:7:"partial";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:7:"perPage";a:7:{s:4:"name";s:7:"perPage";s:4:"desc";s:18:"sisea.perpage_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:10;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:11:"showExtract";a:7:{s:4:"name";s:11:"showExtract";s:4:"desc";s:22:"sisea.showextract_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:13:"extractLength";a:7:{s:4:"name";s:13:"extractLength";s:4:"desc";s:24:"sisea.extractlength_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:200;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:15:"extractEllipsis";a:7:{s:4:"name";s:15:"extractEllipsis";s:4:"desc";s:26:"sisea.extractellipsis_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"...";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:10:"includeTVs";a:7:{s:4:"name";s:10:"includeTVs";s:4:"desc";s:21:"sisea.includetvs_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:10:"processTVs";a:7:{s:4:"name";s:10:"processTVs";s:4:"desc";s:21:"sisea.processtvs_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:16:"highlightResults";a:7:{s:4:"name";s:16:"highlightResults";s:4:"desc";s:27:"sisea.highlightresults_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:14:"highlightClass";a:7:{s:4:"name";s:14:"highlightClass";s:4:"desc";s:25:"sisea.highlightclass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:15:"sisea-highlight";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:12:"highlightTag";a:7:{s:4:"name";s:12:"highlightTag";s:4:"desc";s:23:"sisea.highlighttag_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"span";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:9:"pageLimit";a:7:{s:4:"name";s:9:"pageLimit";s:4:"desc";s:20:"sisea.pagelimit_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:7:"pageTpl";a:7:{s:4:"name";s:7:"pageTpl";s:4:"desc";s:18:"sisea.pagetpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"PageLink";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:12:"pageFirstTpl";a:7:{s:4:"name";s:12:"pageFirstTpl";s:4:"desc";s:23:"sisea.pagefirsttpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:11:"pageLastTpl";a:7:{s:4:"name";s:11:"pageLastTpl";s:4:"desc";s:22:"sisea.pagelasttpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:11:"pagePrevTpl";a:7:{s:4:"name";s:11:"pagePrevTpl";s:4:"desc";s:22:"sisea.pageprevtpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:11:"pageNextTpl";a:7:{s:4:"name";s:11:"pageNextTpl";s:4:"desc";s:22:"sisea.pagenexttpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:14:"currentPageTpl";a:7:{s:4:"name";s:14:"currentPageTpl";s:4:"desc";s:25:"sisea.currentpagetpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:15:"CurrentPageLink";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:15:"pagingSeparator";a:7:{s:4:"name";s:15:"pagingSeparator";s:4:"desc";s:26:"sisea.pagingseparator_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:" | ";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:3:"ids";a:7:{s:4:"name";s:3:"ids";s:4:"desc";s:14:"sisea.ids_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:6:"idType";a:7:{s:4:"name";s:6:"idType";s:4:"desc";s:17:"sisea.idtype_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:13:"sisea.parents";s:5:"value";s:7:"parents";}i:1;a:2:{s:4:"text";s:15:"sisea.documents";s:5:"value";s:9:"documents";}}s:5:"value";s:7:"parents";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:7:"exclude";a:7:{s:4:"name";s:7:"exclude";s:4:"desc";s:18:"sisea.exclude_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:5:"depth";a:7:{s:4:"name";s:5:"depth";s:4:"desc";s:16:"sisea.depth_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:10;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:8:"hideMenu";a:7:{s:4:"name";s:8:"hideMenu";s:4:"desc";s:19:"sisea.hidemenu_desc";s:4:"type";s:9:"textfield";s:7:"options";a:3:{i:0;a:2:{s:4:"text";s:22:"sisea.hidemenu_visible";s:5:"value";i:0;}i:1;a:2:{s:4:"text";s:21:"sisea.hidemenu_hidden";s:5:"value";i:1;}i:2;a:2:{s:4:"text";s:19:"sisea.hidemenu_both";s:5:"value";i:2;}}s:5:"value";i:2;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:8:"contexts";a:7:{s:4:"name";s:8:"contexts";s:4:"desc";s:19:"sisea.contexts_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:11:"searchIndex";a:7:{s:4:"name";s:11:"searchIndex";s:4:"desc";s:22:"sisea.searchindex_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"search";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:11:"offsetIndex";a:7:{s:4:"name";s:11:"offsetIndex";s:4:"desc";s:22:"sisea.offsetindex_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:12:"sisea_offset";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:17:"placeholderPrefix";a:7:{s:4:"name";s:17:"placeholderPrefix";s:4:"desc";s:28:"sisea.placeholderprefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"sisea.";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:24:"sisea.toplaceholder_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:8:"andTerms";a:7:{s:4:"name";s:8:"andTerms";s:4:"desc";s:19:"sisea.andterms_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:13:"matchWildcard";a:7:{s:4:"name";s:13:"matchWildcard";s:4:"desc";s:24:"sisea.matchwildcard_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:9:"docFields";a:7:{s:4:"name";s:9:"docFields";s:4:"desc";s:20:"sisea.docfields_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:55:"pagetitle,longtitle,alias,description,introtext,content";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:12:"fieldPotency";a:7:{s:4:"name";s:12:"fieldPotency";s:4:"desc";s:23:"sisea.fieldpotency_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:9:"urlScheme";a:7:{s:4:"name";s:9:"urlScheme";s:4:"desc";s:20:"sisea.urlscheme_desc";s:4:"type";s:4:"list";s:7:"options";a:3:{i:0;a:2:{s:4:"text";s:18:"sisea.url_relative";s:5:"value";i:-1;}i:1;a:2:{s:4:"text";s:18:"sisea.url_absolute";s:5:"value";s:3:"abs";}i:2;a:2:{s:4:"text";s:14:"sisea.url_full";s:5:"value";s:4:"full";}}s:5:"value";i:-1;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:9:"postHooks";a:7:{s:4:"name";s:9:"postHooks";s:4:"desc";s:20:"sisea.posthooks_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:11:"activeFacet";a:7:{s:4:"name";s:11:"activeFacet";s:4:"desc";s:22:"sisea.activefacet_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:7:"default";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:10:"facetLimit";a:7:{s:4:"name";s:10:"facetLimit";s:4:"desc";s:21:"sisea.facetlimit_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:5;s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:6:"sortBy";a:7:{s:4:"name";s:6:"sortBy";s:4:"desc";s:17:"sisea.sortby_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:7:"sortDir";a:7:{s:4:"name";s:7:"sortDir";s:4:"desc";s:18:"sisea.sortdir_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:15:"sisea.ascending";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:16:"sisea.descending";s:5:"value";s:4:"DESC";}}s:5:"value";s:4:"DESC";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}}', '', 0, ''),
(8, 0, 0, 'SimpleSearchForm', '', 0, 2, 0, '/**\n * SimpleSearch\n *\n * Copyright 2010-11 by Shaun McCormick <shaun+sisea@modx.com>\n *\n * This file is part of SimpleSearch, a simple search component for MODx\n * Revolution. It is loosely based off of AjaxSearch for MODx Evolution by\n * coroico/kylej, minus the ajax.\n *\n * SimpleSearch is free software; you can redistribute it and/or modify it under\n * the terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * SimpleSearch is distributed in the hope that it will be useful, but WITHOUT\n * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS\n * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more\n * details.\n *\n * You should have received a copy of the GNU General Public License along with\n * SimpleSearch; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package simplesearch\n */\n/**\n * Show the search form\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @package simplesearch\n */\nrequire_once $modx->getOption(''sisea.core_path'',null,$modx->getOption(''core_path'').''components/simplesearch/'').''model/simplesearch/simplesearch.class.php'';\n$search = new SimpleSearch($modx,$scriptProperties);\n\n/* setup default options */\n$scriptProperties = array_merge(array(\n  ''tpl'' => ''SearchForm'',\n  ''method'' => ''get'',\n  ''searchIndex'' => ''search'',\n  ''toPlaceholder'' => false,\n  ''landing'' => $modx->resource->get(''id''),\n), $scriptProperties);\n\nif (empty($scriptProperties[''landing''])) {\n  $scriptProperties[''landing''] = $modx->resource->get(''id'');\n}\n\n/* if get value already exists, set it as default */\n$searchValue = isset($_REQUEST[$scriptProperties[''searchIndex'']]) ? $_REQUEST[$scriptProperties[''searchIndex'']] : '''';\n$searchValues = explode('' '', $searchValue);\narray_map(array($modx, ''sanitizeString''), $searchValues);\n$searchValue = implode('' '', $searchValues);\n$placeholders = array(\n    ''method'' => $scriptProperties[''method''],\n    ''landing'' => $scriptProperties[''landing''],\n    ''searchValue'' => strip_tags(str_replace(array(''['','']'',''"'',"''"),array(''&#91;'',''&#93;'',''&quot;'',''&apos;''),$searchValue)),\n    ''searchIndex'' => $scriptProperties[''searchIndex''],\n);\n\n$output = $search->getChunk($scriptProperties[''tpl''],$placeholders);\nreturn $search->output($output,$scriptProperties[''toPlaceholder'']);', 0, 'a:5:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:19:"sisea.tpl_form_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:10:"SearchForm";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:7:"landing";a:7:{s:4:"name";s:7:"landing";s:4:"desc";s:18:"sisea.landing_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:11:"searchIndex";a:7:{s:4:"name";s:11:"searchIndex";s:4:"desc";s:22:"sisea.searchindex_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"search";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:6:"method";a:7:{s:4:"name";s:6:"method";s:4:"desc";s:17:"sisea.method_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:9:"sisea.get";s:5:"value";s:3:"get";}i:1;a:2:{s:4:"text";s:10:"sisea.post";s:5:"value";s:4:"post";}}s:5:"value";s:3:"get";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:24:"sisea.toplaceholder_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"sisea:properties";s:4:"area";s:0:"";}}', '', 0, ''),
(6, 0, 0, 'Breadcrumbs', '', 0, 1, 0, '/**\n * BreadCrumbs\n *\n * Copyright 2009-2011 by Shaun McCormick <shaun+bc@modx.com>\n *\n * BreadCrumbs is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * BreadCrumbs is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * BreadCrumbs; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package breadcrumbs\n */\n/**\n * @name BreadCrumbs\n * @version 0.9f\n * @created 2006-06-12\n * @since 2009-05-11\n * @author Jared <jaredc@honeydewdesign.com>\n * @editor Bill Wilson\n * @editor wendy@djamoer.net\n * @editor grad\n * @editor Shaun McCormick <shaun@collabpad.com>\n * @editor Shawn Wilkerson <shawn@shawnwilkerson.com>\n * @editor Wieger Sloot, Sterc.nl <wieger@sterc.nl>\n * @tester Bob Ray\n * @package breadcrumbs\n *\n * This snippet was designed to show the path through the various levels of site\n * structure back to the root. It is NOT necessarily the path the user took to\n * arrive at a given page.\n *\n * @see breadcrumbs.class.php for config settings\n *\n * Included classes\n * .B_crumbBox Span that surrounds all crumb output\n * .B_hideCrumb Span surrounding the "..." if there are more crumbs than will be shown\n * .B_currentCrumb Span or A tag surrounding the current crumb\n * .B_firstCrumb Span that always surrounds the first crumb, whether it is "home" or not\n * .B_lastCrumb Span surrounding last crumb, whether it is the current page or not .\n * .B_crumb Class given to each A tag surrounding the intermediate crumbs (not home, or\n * hide)\n * .B_homeCrumb Class given to the home crumb\n */\nrequire_once $modx->getOption(''breadcrumbs.core_path'',null,$modx->getOption(''core_path'').''components/breadcrumbs/'').''model/breadcrumbs/breadcrumbs.class.php'';\n$bc = new BreadCrumbs($modx,$scriptProperties);\nreturn $bc->run();', 0, '', '', 0, ''),
(9, 0, 0, 'SimpleSearchIndexAll', '', 0, 2, 0, '/**\n * SimpleSearch\n *\n * Copyright 2010-11 by Shaun McCormick <shaun+sisea@modx.com>\n *\n * This file is part of SimpleSearch, a simple search component for MODx\n * Revolution. It is loosely based off of AjaxSearch for MODx Evolution by\n * coroico/kylej, minus the ajax.\n *\n * SimpleSearch is free software; you can redistribute it and/or modify it under\n * the terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * SimpleSearch is distributed in the hope that it will be useful, but WITHOUT\n * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS\n * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more\n * details.\n *\n * You should have received a copy of the GNU General Public License along with\n * SimpleSearch; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package simplesearch\n */\n/**\n * SimpleSearchIndexAll snippet, used for indexing all resources with alternate search drivers\n *\n * @package simplesearch\n */\nrequire_once $modx->getOption(''sisea.core_path'',null,$modx->getOption(''core_path'').''components/simplesearch/'').''model/simplesearch/simplesearch.class.php'';\n$search = new SimpleSearch($modx,$scriptProperties);\n$search->loadDriver($scriptProperties);\n\n$memoryLimit = $modx->getOption(''memory_limit'',$scriptProperties,''512M'');\n@ini_set(''memory_limit'',$memoryLimit);\n@set_time_limit(0);\n\n$includeTVs = $modx->getOption(''includeTVs'',$scriptProperties,true);\n$processTVs = $modx->getOption(''processTVs'',$scriptProperties,true);\n\n/* build query */\n$c = $modx->newQuery(''modResource'');\n$c->where(array(\n    ''searchable'' => true,\n    ''deleted'' => false,\n    ''published'' => true,\n));\n$c->sortby(''id'',''ASC'');\n$resources = $modx->getIterator(''modResource'',$c);\n\n$i = 0;\nforeach ($resources as $resource) {\n    $resourceArray = $resource->toArray();\n    $templateVars =& $resource->getMany(''TemplateVars'');\n    if (!empty($templateVars) && $includeTVs) {\n        foreach ($templateVars as $tvId => $templateVar) {\n            $resourceArray[$templateVar->get(''name'')] = !empty($processTVs) ? $templateVar->renderOutput($resource->get(''id'')) : $templateVar->get(''value'');\n        }\n    }\n\n    if ($search->driver->index($resourceArray,false)) {\n        $modx->log(modX::LOG_LEVEL_INFO,''[SimpleSearch] Indexing Resource: ''.$resourceArray[''pagetitle'']);\n        $i++;\n    }\n}\n\nreturn $modx->lexicon(''sisea.index_finished'',array(''total'' => $i));', 0, NULL, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_templates`
--

CREATE TABLE IF NOT EXISTS `modx_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'BaseTemplate', 'Template', 0, 0, '', 0, '<!DOCTYPE html>\n<html xmlns="http://www.w3.org/1999/html">\n<head>\n    <meta charset="utf-8">\n    <meta name="viewport" content="target-densitydpi=device-dpi, width=device-width, initial-scale=1.0, maximum-scale=1">\n    <meta name="description" content="The club which teaches the the "All Range Combat" style was established in 1986 and has run uninterrupted since then.">\n    <meta name="author" content="Bruce Mundin">\n    <meta name="keywords" content="Korean TaeKwonDo,Muay Thai,Brazilian and Japanese Jiu Jitsu,Jun Fan Kung Fu,Kickboxing and Boxing,Panantukan(Phillipino empty hand),Kali(single and double stick and knife).">    \n    <base href="[[++site_url]]" />\n\n    <link href="assets/Metro-UI-CSS-master/css/modern.css" rel="stylesheet">\n    <link href="assets/Metro-UI-CSS-master/css/modern-responsive.css" rel="stylesheet">\n    <link href="assets/Metro-UI-CSS-master/public/css/site.css" rel="stylesheet" type="text/css">\n    <link href="assets/Metro-UI-CSS-master/public/js/google-code-prettify/prettify.css" rel="stylesheet" type="text/css">\n    <link href="assets/style/sitestyle.css" rel="stylesheet">\n\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/assets/jquery-1.9.0.min.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/assets/jquery.mousewheel.min.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/assets/moment.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/assets/moment_langs.js"></script>\n\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/modern/dropdownWayfinder.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/modern/accordion.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/modern/buttonset.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/modern/carousel.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/modern/input-control.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/modern/pagecontrol.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/modern/rating.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/modern/slider.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/modern/tile-slider.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/modern/tile-drag.js"></script>\n    <script type="text/javascript" src="assets/Metro-UI-CSS-master/public/js/modern/calendar.js"></script>\n\n\n\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n</head>\n<body class="metrouicss fg-color-white" >\n\n<div class="full-bar">\n<div class="page">\n    <div class="nav-bar bg-color-darken">\n        <div class="nav-bar-inner padding10">\n           <span class="pull-menu"></span>\n\n           <a href="/"><span class="element brand">\n              <img class="place-left" src="assets/images/metro/logos-metro_3.png" style="height: 30px"/>\n              <span class="fg-color-yellow">[[++site_name]]  </span>\n           </a>\n           [[!Wayfinder?startId=`0` &level=`2` &outerClass=menu drop &innerClass=dropdown-menu &rowTpl=metroui-rowTpl &outerTpl=metroui-outerTpl]]\n\n        </div> <!-- end nav-bar-inner -->\n    </div> <!-- end nav-bar -->\n</div> <!-- end page -->\n\n\n    <div id="page1" class="page bg-color-darken">\n        <div class="page-region">\n            <div class="grid">\n               <div class="row">\n                  <div class="span12"><img width="100%" src="assets/images/slices/Banner.gif"/></div>\n               </div>\n               <div class="row">\n                  <div class="span3 padding5">\n[[!SimpleSearchForm? &landing=`4`]]\n<!--\n<img class="place-left" src="assets/images/metro/logos-metro_3.png" style="height: 50%"/>\n-->\n                  </div>\n                  <div class="span9 padding10"><h1 class="fg-color-yellow">[[*longtitle]]</h1>\n                  <span class="fg-color-yellow">[[Breadcrumbs? &crumbSeparator=`>`]]</span>\n                  <p>[[*introtext]]</p>\n\n                   </div>\n                </div>\n            </div>\n        </div>\n    </div>   <!-- end page --> \n</div> <!-- end full bar -->\n\n    <div id="page2" class="page bg-color-blueDark">\n        <div class="page-region">\n            <div class="grid">\n               <div class="row">\n                  <div class="span3 padding10">\n                  [[!Wayfinder? &startId=`[[UltimateParent?]]` &level=`1` &hideSubMenus=`1`  &outerClass=menu]]\n                  </div>\n                  <div class="span6 padding10">[[*content]]</div>\n\n<div class="span3 padding10 inset-bar">\n<div>[[$lbTrainingTimes]]</div>\n<div>[[$lbContact]]</div>\n</div>\n\n                 \n                </div> <!-- end row-->\n            </div> <!-- end grid-->\n        </div> <!-- end page-region -->\n    </div> <!-- end page -->\n\n<div class="full-bar">\n    <div id="page3" class="page bg-color-darken">\n        <div class="page-region">\n            <div class="grid">\n               <div class="row">\n                  <div class="span10 padding10">\n           [[!Wayfinder?startId=`0` &level=`2` &outerClass=menu &innerClass=Xdropdown-menu &rowTpl=metroui-rowTpl &outerTpl=metroui-outerTpl]]\n\n                  </div>\n                  <div style="text-align:right" class="span2 padding10">\n\n                          <small>Styled with<br/><a target="null" href="http://metroui.org.ua">Metro UI CSS</a></small>\n                      <br/>\n                          <small>Styled by<br/><a target="null" href="http://mcnought.blogspot.co.uk/">McNought</a></small>\n                  </div>\n                </div>\n            </div>\n        </div>\n    </div>    \n</div>\n    <script src="assets/Metro-UI-CSS-master/public/js/sharrre/jquery.sharrre-1.3.4.min.js"></script>\n\n    <script>\n        $(''#shareme'').sharrre({\n            share: {\n                googlePlus: true\n                ,facebook: true\n                ,twitter: true\n                ,delicious: true\n            },\n            urlCurl: "js/sharrre/sharrre.php",\n            buttons: {\n                googlePlus: {size: ''tall''},\n                facebook: {layout: ''box_count''},\n                twitter: {count: ''vertical''},\n                delicious: {size: ''tall''}\n            },\n            hover: function(api, options){\n                $(api.element).find(''.buttons'').show();\n            }\n        });\n    </script>\n    </body>\n</html>', 0, 'a:0:{}', 0, ''),
(2, 0, 0, 'original', 'Template', 0, 0, '', 0, '<html>\n<head>\n<title>[[++site_name]] - [[*pagetitle]]</title>\n   <base href="[[++site_url]]" />\n   <link rel=''stylesheet'' href=''resources/style/sitestyle.css''> \n   <link rel=''stylesheet'' href=''assets/Metro-UI-CSS-master/css/modern.css''>\n   <link rel=''stylesheet'' href=''assets/Metro-UI-CSS-master/css/modern-responsive.css''>\n</head>\n<body>\n<div class=''outerWrapper''> \n  <div class=''menubar''>\n    <img alt=''(menu bar)'' src=''resources/images/slices/MenuBar.gif'' width=''684'' height=''45'' usemap=''#Map'' border=''0''>\n    <map name=''Map''>\n       <area shape=''rect'' coords=''13,7,130,31''  href=''[[~2]]''>\n       <area shape=''rect'' coords=''140,7,229,32'' href=''[[~3]]''>\n       <area shape=''rect'' coords=''241,7,356,31'' href=''[[~4]]''>\n       <area shape=''rect'' coords=''368,7,445,32'' href=''[[~5]]''>\n       <area shape=''rect'' coords=''455,8,533,32'' href=''[[~6]]''>\n       <area shape=''rect'' coords=''543,8,662,31'' href=''[[~7]]''>\n    </map>\n  </div>\n  <div class=''header''> \n    <div class=''header''><img alt=''(banner)'' src=''resources/images/slices/mainTitleBar.gif'' width=''684'' height=''172'' usemap=''#Map2'' border=''0''><map name=''Map2''><area shape=''rect'' coords=''3,-1,313,170'' href=''[[~1]]'' alt=''Home'' title=''Home''><area shape=''rect'' coords=''312,67,386,134'' href=''styles/tae-kwon-do.htm''><area shape=''rect'' coords=''385,67,431,133'' href=''styles/jiu-jitsu.htm''><area shape=''rect'' coords=''431,67,464,132'' href=''styles/kali.htm''><area shape=''rect'' coords=''465,68,524,131'' href=''styles/muay-thai.htm''><area shape=''rect'' coords=''523,70,607,131'' href=''styles/Jun-fan-kung-fo.htm''><area shape=''rect'' coords=''606,69,658,129'' href=''styles/boxing.htm''><area shape=''rect'' coords=''386,134,627,158'' href=''default.asp''></map></div>\n  </div>\n\n<h2>PAGE:[[*pagetitle*]]</h2>\n<pre>\nSitename : [[++site_name]]\n\nlongtitle: [[*longtitle*]]\n\npagetitle: [[*pagetitle]]\n\nPage ID: [[*id]]\n\nmake a link : [[~2]] \n\nalias : [[*alias]]\n\n\nmenutitle: [[*menutitle]]\n\n\n<h1>[[*longtitle]]</h1>\n \nPage ID: [[*id]]<br/>\nIntroText (Summary): [[*introtext]]<br/>\nMenuTitle: [[*menutitle]]\n\nq = [[!myTest?startId=`0`!]]\n\n</pre>\n\n<div id="navigation">\nNAV\n<hr>\n[[!Wayfinder?startId=`0`!]]\n<hr>\n[[!Wayfinder?startId=`0` &hereClass=`current` &level=`1` &outerClass=mainnav !]]\n<hr>\n[[!Wayfinder? &startId=`0` &level=`2`!]]\n<hr>\n[[!Wayfinder? &startId=`[[UltimateParent?]]` &level=`1` &hideSubMenus=`1` &hereClass=`current` &outerClass=`submenu` !]]\n<hr>\n[[!Wayfinder? &startId=`[[UltimateParent?  &topLevel=`2`]]` &hideSubMenus=`1` &hereClass=`current` &outerClass=`submenu2` !]]\n<hr>\n[[UltimateParent? &topLevel=`2`]]\n<hr>\nNAV-END\n		</div><!-- end of navigation -->\n\n  <div class=''contentWrapper''> \n    <!-- START RIGHT COL --> \n    <?php include ''mainincludes/rightColContent.htm''; ?>\n    <!-- END RIGHT COL --> \n    <div class=''content''> \n	<a href=''#top''></a> \n      <div class=''summary''></div>\n      <div class=''copy''> \n\n[[*content]]\n\n      </div>\n      <a class=''topLink'' href=''#top''>Back to top</a> </div>\n  </div>\n  <div class=''footbar''><a class=''externallink'' href=''http://www.amauk.co.uk/'' target=''_blank''><img src=''resources/images/slices/AmaBanner.gif'' width=''210'' height=''56'' alt=''(AMA Logo)'' border=''0''></a></div>\n</div>\n</body>\n</html>\n', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvars`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`),
  KEY `static` (`static`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_access`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvar_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvar_contentvalues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`),
  KEY `tv_cnt` (`tmplvarid`,`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_templates`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_eventnames`
--

CREATE TABLE IF NOT EXISTS `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnTempFormDelete', 1, 'Templates'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnEmptyTrash', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnBeforeWebLogin', 3, 'Security'),
('OnWebAuthentication', 3, 'Security'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnPageUnauthorized', 1, 'Security'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserNotFound', 1, 'Users'),
('OnBeforeUserActivate', 1, 'Users'),
('OnUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserSave', 1, 'Users'),
('OnUserRemove', 1, 'Users'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnWebPagePrerender', 5, 'System'),
('OnBeforeCacheUpdate', 4, 'System'),
('OnCacheUpdate', 4, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnSiteRefresh', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageAfterRender', 2, 'System'),
('OnWebPageInit', 5, 'System'),
('OnLoadWebDocument', 5, 'System'),
('OnParseDocument', 5, 'System'),
('OnWebPageComplete', 5, 'System'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnPageNotFound', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnInitCulture', 3, 'Internationalization'),
('OnCategorySave', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnChunkSave', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnContextSave', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnPluginSave', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources');

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_settings`
--

CREATE TABLE IF NOT EXISTS `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('archive_with', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('automatic_alias', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('base_help_url', 'http://rtfm.modx.com/display/revolution20/', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_default', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_disabled', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_format', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('compress_css', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('compress_js', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('compress_js_groups', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('container_suffix', '/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('context_tree_sort', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('cultureKey', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00'),
('date_timezone', '', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('debug', '', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', '0000-00-00 00:00:00'),
('default_per_page', '20', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('default_context', 'web', 'modx-combo-context', 'core', 'site', '0000-00-00 00:00:00'),
('default_template', '1', 'modx-combo-template', 'core', 'site', '0000-00-00 00:00:00'),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', '0000-00-00 00:00:00'),
('editor_css_path', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00'),
('editor_css_selectors', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00'),
('emailsender', 'brucemundin@hotmail.com', 'textfield', 'core', 'authentication', '2013-10-09 19:15:43'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('error_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00'),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_security', 'http://feeds.feedburner.com/modxsecurity', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('filemanager_path', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>"~:`@\\?\\[\\]\\{\\}\\|\\^''\\\\]/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_urls', '1', 'combo-boolean', 'core', 'furls', '2013-10-10 17:17:45'),
('friendly_urls_strict', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('inline_help', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('locale', '', 'textfield', 'core', 'language', '0000-00-00 00:00:00'),
('log_level', '1', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('log_target', 'FILE', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('lock_ttl', '360', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_user', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_favicon_url', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_html5_cache', '0', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_document_root', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_direction', 'ltr', 'textfield', 'core', 'language', '0000-00-00 00:00:00'),
('manager_lang_attribute', 'en', 'textfield', 'core', 'language', '0000-00-00 00:00:00'),
('manager_language', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('manager_theme', 'default', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_week_start', '0', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', '0000-00-00 00:00:00'),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_host', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_password', '', 'text-password', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_port', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_username', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('password_generated_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('password_min_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('publish_default', '', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('rb_base_dir', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('rb_base_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_param_id', 'id', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('search_default', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('server_offset_time', '0', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('server_protocol', 'http', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('session_cookie_domain', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_path', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', '0000-00-00 00:00:00'),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_name', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('set_header', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('site_name', 'All Range Combat', 'textfield', 'core', 'site', '2013-10-10 13:57:02'),
('site_start', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_status', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_unavailable_page', '0', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('tree_root_id', '0', 'numberfield', 'core', 'manager', '0000-00-00 00:00:00'),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('unauthorized_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,htaccess,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_maxsize', '1048576', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('use_alias_path', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('use_browser', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('use_editor', '1', 'combo-boolean', 'core', 'editor', '0000-00-00 00:00:00'),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2013-10-09 19:15:43'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2013-10-09 19:16:25'),
('welcome_screen_url', 'http://misc.modx.com/revolution/welcome.22.html', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('which_editor', 'TinyMCE', 'modx-combo-rte', 'core', 'editor', '2013-10-10 13:49:55'),
('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', '0000-00-00 00:00:00'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('settings_version', '2.2.10-pl', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('settings_distro', 'traditional', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('tiny.base_url', '', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.convert_fonts_to_spans', '1', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.convert_newlines_to_brs', '', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.css_selectors', '', 'textfield', 'tinymce', 'advanced-theme', '0000-00-00 00:00:00'),
('tiny.custom_buttons1', 'undo,redo,selectall,separator,pastetext,pasteword,separator,search,replace,separator,nonbreaking,hr,charmap,separator,image,modxlink,unlink,anchor,media,separator,cleanup,removeformat,separator,fullscreen,print,code,help', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_buttons2', 'bold,italic,underline,strikethrough,sub,sup,separator,bullist,numlist,outdent,indent,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,separator,styleprops', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_buttons3', '', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_buttons4', '', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_buttons5', '', 'textfield', 'tinymce', 'custom-buttons', '0000-00-00 00:00:00'),
('tiny.custom_plugins', 'style,advimage,advlink,modxlink,searchreplace,print,contextmenu,paste,fullscreen,noneditable,nonbreaking,xhtmlxtras,visualchars,media', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.editor_theme', 'advanced', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.element_format', 'xhtml', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.entity_encoding', 'named', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.fix_nesting', '', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.fix_table_elements', '', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.font_size_classes', '', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.font_size_style_values', 'xx-small,x-small,small,medium,large,x-large,xx-large', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.forced_root_block', 'p', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.indentation', '30px', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.invalid_elements', '', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.nowrap', '', 'combo-boolean', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.object_resizing', '1', 'combo-boolean', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.path_options', '', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.remove_linebreaks', '', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.remove_redundant_brs', '1', 'combo-boolean', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.removeformat_selector', 'b,strong,em,i,span,ins', 'textfield', 'tinymce', 'cleanup-output', '0000-00-00 00:00:00'),
('tiny.skin', 'cirkuit', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.skin_variant', '', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.table_inline_editing', '', 'combo-boolean', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.template_list', '', 'textarea', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.template_list_snippet', '', 'textarea', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.template_selected_content_classes', '', 'textfield', 'tinymce', 'general', '0000-00-00 00:00:00'),
('tiny.theme_advanced_blockformats', 'p,h1,h2,h3,h4,h5,h6,div,blockquote,code,pre,address', 'textfield', 'tinymce', 'advanced-theme', '0000-00-00 00:00:00'),
('tiny.theme_advanced_font_sizes', '80%,90%,100%,120%,140%,160%,180%,220%,260%,320%,400%,500%,700%', 'textfield', 'tinymce', 'advanced-theme', '0000-00-00 00:00:00'),
('tiny.use_uncompressed_library', '', 'combo-boolean', 'tinymce', 'general', '0000-00-00 00:00:00'),
('sisea.driver_class', 'SimpleSearchDriverBasic', 'textfield', 'sisea', 'Drivers', '0000-00-00 00:00:00'),
('sisea.driver_class_path', '', 'textfield', 'sisea', 'Drivers', '0000-00-00 00:00:00'),
('sisea.driver_db_specific', '1', 'combo-boolean', 'sisea', 'Drivers', '0000-00-00 00:00:00'),
('sisea.solr.hostname', '127.0.0.1', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.port', '8983', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.path', '', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.username', '', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.password', '', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.timeout', '30', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.ssl', '', 'combo-boolean', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.ssl_cert', '', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.ssl_key', '', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.ssl_keypassword', '', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.ssl_cainfo', '', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.ssl_capath', '', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.proxy_host', '', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.proxy_port', '', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.proxy_username', '', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00'),
('sisea.solr.proxy_password', '', 'textfield', 'sisea', 'Solr', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_packages`
--

CREATE TABLE IF NOT EXISTS `modx_transport_packages` (
  `signature` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `workspace` int(10) unsigned NOT NULL DEFAULT '0',
  `provider` int(10) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(255) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) unsigned NOT NULL DEFAULT '0',
  `version_minor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `version_patch` smallint(5) unsigned NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`signature`),
  KEY `workspace` (`workspace`),
  KEY `provider` (`provider`),
  KEY `disabled` (`disabled`),
  KEY `package_name` (`package_name`),
  KEY `version_major` (`version_major`),
  KEY `version_minor` (`version_minor`),
  KEY `version_patch` (`version_patch`),
  KEY `release` (`release`),
  KEY `release_index` (`release_index`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('tinymce-4.3.3-pl', '2013-10-10 03:39:26', '2013-10-10 13:49:59', '2013-10-10 15:49:59', 0, 1, 1, 0, 'tinymce-4.3.3-pl.transport.zip', NULL, 'a:32:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:9:"signature";s:16:"tinymce-4.3.3-pl";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:8:"Continue";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:586:"function (va){var g=Ext.getCmp(''modx-package-grid'');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=''/workspace/package/install/''+r.signature+''/'';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:''install'',signature:r.signature,register:''mgr'',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connectors_url+''workspace/packages.php'',params:va,listeners:{''success'':{fn:function(){this.activate();Ext.getCmp(''modx-package-grid'').refresh();},scope:this},''failure'':{fn:function(){this.activate();},scope:this}}});}";s:5:"scope";s:15:"[object Object]";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:8:"lastSize";s:15:"[object Object]";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:7:"install";s:8:"register";s:3:"mgr";s:5:"topic";s:44:"/workspace/package/install/tinymce-4.3.3-pl/";s:12:"HTTP_MODAUTH";s:52:"modx5255ab57cf3c45.49327851_15256affcc61d21.54331286";s:14:"package_action";i:0;}', 'TinyMCE', 'a:31:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556bc5b2b083396d0007e9";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556bc5b2b083396d0007e9";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:16:"tinymce-4.3.3-pl";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"4.3.3";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"4";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"3";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"3";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:10;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:102:"<p>TinyMCE version 3.4.7 for MODx Revolution. Works with Revolution 2.2.x or later only.</p><ul>\n</ul>";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:225:"<p>Install via Package Management.</p>\n<p>If you''re having issues installing, make sure you have the latest ZipArchive extension for PHP, and that it''s properly configured, or set the "archive_with" System Setting to Yes.</p>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:4:"text";s:2332:"<p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.3.3</b></p><ul><li>Change popup windows to more convenient modals</li><li>Have TinyMCE respect context settings of Resource being edited</li><li>Update TinyMCE to 3.5.4.1</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.3.2</b></p><ul><li>Update Czech/German translation</li><li>&#91;#74&#93; Fix inclusion of english as fallback for language</li><li>&#91;#80&#93; Make context menu use MODxLink plugin</li><li>Upgrade TinyMCE to 3.4.7</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.3.1</b></p><ul><li>Optimizations for MODX 2.2</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.3.0</b></p><ul><li>&#91;#71&#93; Update TinyMCE to v3.4.5</li><li>&#91;#70&#93; Fixes to cirkuit skin with missing CSS styles</li><li>&#91;#64&#93; Add tiny.template_list_snippet setting for grabbing template list from a Snippet</li><li>&#91;#66&#93; Fix issues with Revolution 2.2.0 code</li><li>&#91;#63&#93; Add tiny.base_url setting for managing the document_base_url tinymce setting</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.2.4</b></p><ul><li>Updated TinyMCE to 3.4.2</li><li>Fix issue where recursion detected xPDO error was showing in logs on chunk editing</li><li>&#91;#55&#93; Fix help for element_format and preformatted descriptions in plugin properties</li><li>&#91;#53&#93; Languages added/update: German, English, French, Indonesian, Japanese, Dutch, Russian, Ukrainian</li></ul><b>New in 4.2.3</b><p></p><ul><li>Fix issue that inserted wrong URL when using TinyMCE in Revolution 2.1 and later</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.2.2</b></p><ul><li>&#91;#49&#93; Added spellchecker files</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 4.2.1</b></p><ul><li>&#91;#45&#93; &#91;#47&#93; Fixes for front-end usage and compatibility with NewsPublisher</li><li>Add compressed JS for faster loading</li></ul>";s:8:"children";a:0:{}}i:14;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:23:"2012-07-07 14:50:43 UTC";s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:10:"created_by";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:16;a:3:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:23:"2012-07-07 14:50:43 UTC";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:6:"180987";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:24;a:3:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:25;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:7:"TinyMCE";s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.2";s:8:"children";a:0:{}}i:28;a:4:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:4:"text";s:54:"http://modx.s3.amazonaws.com/extras/459/tinymce-ss.png";s:8:"children";a:0:{}}i:29;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4ff84cc6f245544fc100000c";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"4ff84cc3f245544fc100000a";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:30:"tinymce-4.3.3-pl.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"57336";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:4:"text";s:13:"178.20.153.48";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=4ff84cc6f245544fc100000c";s:8:"children";a:0:{}}}}i:30;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:16:"tinymce-4.3.3-pl";s:8:"children";a:0:{}}}', 4, 3, 3, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('wayfinder-2.3.3-pl', '2013-10-10 04:38:45', '2013-10-10 14:39:07', '2013-10-10 16:39:07', 0, 1, 1, 0, 'wayfinder-2.3.3-pl.transport.zip', NULL, 'a:34:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:804:"::::::::::::::::::::::::::::::::::::::::\n Snippet name: Wayfinder\n Short Desc: builds site navigation\n Version: 2.3.0 (Revolution compatible)\n Authors: \n    Kyle Jaebker (muddydogpaws.com)\n    Ryan Thrash (vertexworks.com)\n    Shaun McCormick (splittingred.com)\n ::::::::::::::::::::::::::::::::::::::::\nDescription:\n    Totally refactored from original DropMenu nav builder to make it easier to\n    create custom navigation by using chunks as output templates. By using templates,\n    many of the paramaters are no longer needed for flexible output including tables,\n    unordered- or ordered-lists (ULs or OLs), definition lists (DLs) or in any other\n    format you desire.\n::::::::::::::::::::::::::::::::::::::::\nExample Usage:\n    [[Wayfinder? &startId=`0`]]\n::::::::::::::::::::::::::::::::::::::::";s:9:"changelog";s:2655:"Changelog for Wayfinder (for Revolution).\n\nWayfinder 2.3.3\n====================================\n- [#40] Add wf.level placeholder to items for showing current depth\n- [#42] Allow authenticated mgr users with view_unpublished to use new previewUnpublished property to preview unpublished Resources in menus\n- [#41] Fix issue with Wayfinder and truncated result sets due to getIterator call\n\nWayfinder 2.3.2\n====================================\n- [#36] Fix issue with multiple Wayfinder calls using &config\n- [#35] Fix issues with TV bindings rendering\n- Add "protected" placeholder that is 1 if Resource is protected by a Resource Group\n- Updated documentation, snippet properties descriptions\n\nWayfinder 2.3.1\n====================================\n- [#31] Add &scheme property for specifying link schemes\n- [#27] Improve caching in Wayfinder to store cache files in resource cache so cache is synced with modx core caching\n\nWayfinder 2.3.0\n====================================\n- [#14] Fix issue with hideSubMenus when using it with a non-zero startId\n- Add all fields of a Resource to the rowTpl placeholder set, such as menutitle, published, etc\n- Properly optimize TV value grabbing to properly parse and cache TVs to improve load times when using TVs in a result set\n- Ensure that caching also caches by user ID to persist access permissions through cached result sets\n\nWayfinder 2.2.0\n====================================\n- [#23] Fix issue that generated error message in error.log due to &contexts always being processed regardless of empty state\n- [#21] Fix issue with unnecessary groupby that was breaking sorting in older mysql versions\n- [#22] Add &cacheResults parameter, which caches queries for faster loading\n- [#8] Add &contexts parameter, and &startIdContext parameter if navigating across multiple contexts and using a non-0 &startId\n\nWayfinder 2.1.3\n====================================\n- [#14] Fix hideSubMenus property\n- Add templates parameter that accepts a comma-delimited list of template IDs to filter by\n- Add where parameter that accepts a JSON object for where conditions\n- Add hereId parameter for specifying the active location\n\nWayfinder 2.1.2\n====================================\n- Fixed bug with includeDocs parameter\n\nWayfinder 2.1.1\n====================================\n- Wayfinder now properly uses MODx parsing system\n- Fixed issue with includeDocs statement\n- Fixed issues with PDO statements\n- Added the missing permissions check\n- Added wayfinder parameter "permissions" - default to "list", empty to bypass permissions check\n- [#WAYFINDER-20] TemplateVariables not rendering in Wayfinder templates.\n- Added changelog.";s:9:"signature";s:18:"wayfinder-2.3.3-pl";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:8:"Continue";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:586:"function (va){var g=Ext.getCmp(''modx-package-grid'');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=''/workspace/package/install/''+r.signature+''/'';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:''install'',signature:r.signature,register:''mgr'',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connectors_url+''workspace/packages.php'',params:va,listeners:{''success'':{fn:function(){this.activate();Ext.getCmp(''modx-package-grid'').refresh();},scope:this},''failure'':{fn:function(){this.activate();},scope:this}}});}";s:5:"scope";s:15:"[object Object]";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:8:"lastSize";s:15:"[object Object]";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:7:"install";s:8:"register";s:3:"mgr";s:5:"topic";s:46:"/workspace/package/install/wayfinder-2.3.3-pl/";s:12:"HTTP_MODAUTH";s:52:"modx5255ab57cf3c45.49327851_15256affcc61d21.54331286";s:14:"package_action";i:0;}', 'Wayfinder', 'a:31:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556be8b2b083396d0008bd";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556be8b2b083396d0008bd";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:18:"wayfinder-2.3.3-pl";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"2.3.3";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"2";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"3";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"3";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:10;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:230:"<p>Wayfinder is a highly flexible navigation builder for MODx Revolution.</p><p>See the official docs here:&nbsp;<a href="http://rtfm.modx.com/display/ADDON/Wayfinder">http://rtfm.modx.com/display/ADDON/Wayfinder</a></p><ul>\n</ul>";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:38:"<p>Install via Package Management.</p>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:4:"text";s:2306:"<p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 2.3.3</b></p><ul><li>&#91;#40&#93; Add wf.level placeholder to items for showing current depth</li><li>&#91;#42&#93; Allow authenticated mgr users with view_unpublished to use new previewUnpublished property to preview unpublished Resources in menus</li><li>&#91;#41&#93; Fix issue with Wayfinder and truncated result sets due to getIterator call</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 2.3.2</b></p><ul><li>&#91;#36&#93; Fix issue with multiple Wayfinder calls using &amp;config</li><li>&#91;#35&#93; Fix issues with TV bindings rendering</li><li>Add "protected" placeholder that is 1 if Resource is protected by a Resource Group</li><li>Updated documentation, snippet properties descriptions</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 2.3.1</b></p><ul><li>&#91;#31&#93; Add &amp;scheme property for specifying link schemes</li><li>&#91;#27&#93; Improve caching in Wayfinder to store cache files in resource cache so cache is synced with modx core caching</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b>New in 2.3.0</b></p><ul><li>&#91;#14&#93; Fix issue with hideSubMenus when using it with a non-zero startId</li><li>Add all fields of a Resource to the rowTpl placeholder set, such as menutitle, published, etc</li><li>Properly optimize TV value grabbing to properly parse and cache TVs to improve load times when using TVs in a result set</li><li>Ensure that caching also caches by user ID to persist access permissions through cached result sets</li></ul><p><b>New in 2.2.0</b></p><ul><li>&#91;#23&#93; Fix issue that generated error message in error.log due to &amp;contexts always being processed regardless of empty state</li><li>&#91;#21&#93; Fix issue with unnecessary groupby that was breaking sorting in older mysql versions</li><li>&#91;#22&#93; Add &amp;cacheResults parameter, which caches queries for faster loading</li><li>&#91;#8&#93; Add &amp;contexts parameter, and &amp;startIdContext parameter if navigating across multiple contexts and using a non-0 &amp;startId</li></ul>";s:8:"children";a:0:{}}i:14;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:23:"2011-10-31 16:21:50 UTC";s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:10:"created_by";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:16;a:3:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:23:"2011-10-31 16:21:50 UTC";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:6:"167882";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:24;a:3:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:25;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:9:"Wayfinder";s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.0";s:8:"children";a:0:{}}i:28;a:3:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:29;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4eaecb20f24554127d0000b8";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"4eaecb1ef24554127d0000b6";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:32:"wayfinder-2.3.3-pl.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"85534";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:4:"text";s:13:"31.24.216.131";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=4eaecb20f24554127d0000b8";s:8:"children";a:0:{}}}}i:30;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:18:"wayfinder-2.3.3-pl";s:8:"children";a:0:{}}}', 2, 3, 3, 'pl', 0),
('ultimateparent-2.0-pl', '2013-10-11 05:50:27', '2013-10-11 15:51:07', '2013-10-11 17:51:07', 0, 1, 1, 0, 'ultimateparent-2.0-pl.transport.zip', NULL, 'a:32:{s:7:"license";s:13:"Public Domain";s:9:"signature";s:21:"ultimateparent-2.0-pl";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:8:"Continue";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:586:"function (va){var g=Ext.getCmp(''modx-package-grid'');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=''/workspace/package/install/''+r.signature+''/'';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:''install'',signature:r.signature,register:''mgr'',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connectors_url+''workspace/packages.php'',params:va,listeners:{''success'':{fn:function(){this.activate();Ext.getCmp(''modx-package-grid'').refresh();},scope:this},''failure'':{fn:function(){this.activate();},scope:this}}});}";s:5:"scope";s:15:"[object Object]";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:8:"lastSize";s:15:"[object Object]";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:7:"install";s:8:"register";s:3:"mgr";s:5:"topic";s:49:"/workspace/package/install/ultimateparent-2.0-pl/";s:12:"HTTP_MODAUTH";s:52:"modx5255ab57cf3c45.49327851_15258199c886659.64057374";s:14:"package_action";i:0;}', 'UltimateParent', 'a:31:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556bdfb2b083396d000887";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556bdfb2b083396d000887";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:21:"ultimateparent-2.0-pl";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"2.0.0";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"2";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:10;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:90:"<p>Return the "ultimate" parent of a document. Added topLevel support to Revo version.</p>";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:38:"<p>Install via Package Management.</p>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:4:"text";s:7:"<p></p>";s:8:"children";a:0:{}}i:14;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:23:"2010-10-06 14:10:42 UTC";s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:10:"created_by";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:16;a:3:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:23:"2010-10-06 14:11:10 UTC";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"24308";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:24;a:4:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:4:"text";s:47:"http://modxcms.com/forums/index.php?topic=55378";s:8:"children";a:0:{}}i:25;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:14:"UltimateParent";s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.0";s:8:"children";a:0:{}}i:28;a:3:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:29;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556be1b2b083396d000895";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556be1b2b083396d000894";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:35:"ultimateparent-2.0-pl.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"16397";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:4:"text";s:12:"176.9.16.118";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=4d556be1b2b083396d000895";s:8:"children";a:0:{}}}}i:30;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:21:"ultimateparent-2.0-pl";s:8:"children";a:0:{}}}', 2, 0, 0, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('breadcrumbs-1.1.0-pl', '2013-10-14 09:40:27', '2013-10-14 19:40:39', '2013-10-14 21:40:39', 0, 1, 1, 0, 'breadcrumbs-1.1.0-pl.transport.zip', NULL, 'a:34:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:412:"--------------------\nSnippet: Breadcrumbs\n--------------------\nVersion: 1.0\nDate: 2008.10.08\nAuthor: jaredc@honeydewdesign.com\nEditor: Shaun McCormick <shaun@collabpad.com>\nHonorable mentions:\n- Bill Wilson\n- wendy@djamoer.net\n- grad\n\nThis snippet was designed to show the path through the various levels of site structure\nback to the root. It is NOT necessarily the path the user took to arrive at a given\npage.";s:9:"changelog";s:497:"Changelog file for breadcrumbs.\n\nBreadcrumbs 1.1-rc2 (August 31, 2010)\n====================================\n- Fix bug that skips the immediate children of site_start\n\nBreadcrumbs 1.1-rc1 (March 19, 2010)\n====================================\n- Updated version for Revo RC1\n- [#ADDON-84], [#ADDON-73] Fixed bug with showCrumbsAtHome and showCurrentCrumb\n- Consolidated settings into $scriptProperties, which cuts down snippet file code\n- Added initialize() function to handle default config settings";s:9:"signature";s:20:"breadcrumbs-1.1.0-pl";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:8:"Continue";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:586:"function (va){var g=Ext.getCmp(''modx-package-grid'');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=''/workspace/package/install/''+r.signature+''/'';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:''install'',signature:r.signature,register:''mgr'',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connectors_url+''workspace/packages.php'',params:va,listeners:{''success'':{fn:function(){this.activate();Ext.getCmp(''modx-package-grid'').refresh();},scope:this},''failure'':{fn:function(){this.activate();},scope:this}}});}";s:5:"scope";s:15:"[object Object]";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:8:"lastSize";s:15:"[object Object]";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:7:"install";s:8:"register";s:3:"mgr";s:5:"topic";s:48:"/workspace/package/install/breadcrumbs-1.1.0-pl/";s:12:"HTTP_MODAUTH";s:52:"modx5255ab57cf3c45.49327851_1525c056039cd35.67317512";s:14:"package_action";i:0;}', 'Breadcrumbs', 'a:31:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556a9ab2b083396d0000eb";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556a9ab2b083396d0000eb";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:20:"breadcrumbs-1.1.0-pl";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"1.1.0";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"1";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"1";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"0";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:10;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:246:"<p>Creates a highly configurable and styleable breadcrumb navigation trail.</p>\n<p>\n</p><p>&nbsp;</p>\n<p>Breadcrumbs 1.1-rc2 (August 31, 2010)</p>\n<p>\n</p><ul>\n<li>Fix bug that skips the immediate children of site_start</li>\n</ul>\n<p></p>\n<p></p>";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:38:"<p>Install via Package Management.</p>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:4:"text";s:22:"<p>Initial content</p>";s:8:"children";a:0:{}}i:14;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:23:"2011-08-22 19:29:21 UTC";s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:10:"created_by";s:10:"attributes";a:0:{}s:4:"text";s:12:"splittingred";s:8:"children";a:0:{}}i:16;a:3:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:23:"2011-08-22 19:29:21 UTC";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"57457";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:24;a:3:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:25;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:11:"Breadcrumbs";s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.0";s:8:"children";a:0:{}}i:28;a:3:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:29;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4e52ae12f24554618600003e";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"4e52ae11f24554618600003c";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:34:"breadcrumbs-1.1.0-pl.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"26543";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:4:"text";s:11:"92.53.98.21";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=4e52ae12f24554618600003e";s:8:"children";a:0:{}}}}i:30;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:20:"breadcrumbs-1.1.0-pl";s:8:"children";a:0:{}}}', 1, 1, 0, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('simplesearch-1.6.1-pl', '2013-10-15 04:56:58', '2013-10-15 14:57:18', '2013-10-15 16:57:18', 0, 1, 1, 0, 'simplesearch-1.6.1-pl.transport.zip', NULL, 'a:34:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:714:"=====================\nSnippet: SimpleSearch\n=====================\nVersion: 1.6\nAuthor: Shaun McCormick <shaun+sisea@modx.com>\nLicense: GNU GPLv2 (or later at your option)\n\nThis is a simple search component. Please see the documentation at:\nhttp://rtfm.modx.com/display/ADDON/SimpleSearch/\n\nIf you want to use the Solr driver, please refer to the docs, and make sure\nyou have the Solr PECL driver installed, which can be found here:\nhttp://pecl.php.net/package/solr\n\nYou can use the sample solr schema.xml file found at:\n- core/components/simplesearch/docs/solr.schema.xml\nJust rename it to schema.xml and place it in the proper conf/ directory.\n\nThanks for using SimpleSearch!\nShaun McCormick\nshaun+sisea@modx.com\n";s:9:"changelog";s:4845:"Changelog for SimpleSearch.\n\nSimpleSearch 1.6.1\n========================================================================\n- [#69] Apply additional guard against injection of modx tags\n\nSimpleSearch 1.6.0\n========================================================================\n- [#65] Fix issue with multiple search terms highlighting\n- [#67] Fix issue with quotations breaking forms in SimpleSearchForm snippet\n- [#64] Improved pagination links, added pageLimit and optional extra tpls\n\nSimpleSearch 1.5.2\n========================================================================\n- Fix invalid mb_strlen call when should be strlen\n- [#60] Fix issue with search highlighting\n\nSimpleSearch 1.5.1\n========================================================================\n- [#55] Fix issue with offsets in multibyte, one-character searches\n- [#59] Fix issue with broken links on pagination\n\nSimpleSearch 1.5.0\n========================================================================\n- [#36] Fix issue where whereGroup is not incr when using useAllWords\n- Allow file-based chunks in all tpl chunks\n- [#53] Ensure list permission is checked on loading of resources\n- [#56] Fix issue with forward slashes in searches\n\nSimpleSearch 1.4.1\n========================================================================\n- Ensure Solr search gets TVs indexed\n\nSimpleSearch 1.4.0\n========================================================================\n- Improved TV indexing for Solr-based searches, all TVs are now pre-processed and included during index\n- Fixed bug with processTVs in basic search\n- [#49] Add sortBy and sortDir properties for sorting of results\n- [#48] Fix issue with internationalization of no results message\n- [#50] Fix issue with pagination and searches with spaces\n- Added Solr search implementation, split up search into driver-specific classes\n- [#37] Fix charset in German translation\n- [#46] Add tpl for no results message, in property noResultsTpl\n\nSimpleSearch 1.3.0\n========================================================================\n- Fix bug in simplesearchform.snippet where spaces were being removed from searchValue\n- Fix SqlSrv query issues\n- Add sisea.facet placeholder for results page, and ''search'' parameter to be sent into posthooks\n- Add faceted search ability through postHooks\n- Add facetLimit to limit # of non-active facet results that return on main results page\n\nSimpleSearch 1.2.0\n========================================================================\n- Fixed bug with pagination\n- Fixed bug with searchScore sorting\n- Fixed bug with progressive highlighting class names\n- Added ''alias'' to default docFields\n- Added fieldPotency property to allow certain fields higher search scores for the same match\n- Added result sorting (by searchScores)\n\nSimpleSearch 1.1.2\n========================================================================\n- Added the urlScheme parameter which allows you to control the URL scheme used\nfor the pagination links.\n- Made the result extracts to never break words. This means that the extract\nlimit is a soft limit now, and results look much nicer.\n- Added the query placeholder to the containerTpl chunk.\n- Fixed the default value of the landing parameter for the SimpleSearchForm\nsnippet.\n- Fixed an URL decoding bug.\n- Removed defaults from the provided chunk templates, as they duplicate code\nfrom the snippets.\n- Made minor performance improvements.\n\nSimpleSearch 1.1.1\n========================================================================\n- Fixed bug in snippet with wrong reference to $modx var\n- Added idx placeholder\n- Added German translation\n- Added andTerm (true/false) - Whether or not to add a logical AND between words in search term.\n- Added matchWildcard (behavior depending on query type and limitations)\n- Added docFields which is a list of fields to search on the Resource.\n\nSimpleSearch 1.1.0\n========================================================================\n- Added ability to use TVs in placeholders\n- Added ability to exclude resources\n- Added missing f parameter if ids was empty\n- Added longtitle to partial search style\n- Fixed XHTML get/post in form tpl issue\n\nSimpleSearch 1.0.0\n========================================================================\n- Now searches unprocessed TVs\n- Added &customPackages property for searching custom packages\n- Added fix for GET searches\n- Added sisea.query and sisea.count global placeholders for search count/query string\n- Fixed bug with multibyte chars\n- Fixed bug with contexts param that was leaving search results empty\n- Fixed bug with separators doubling\n- Fixed bug with perPage not being respected due to shared object instance\n- Added Russian translation\n- Prepared for initial 1.0-beta release\n- Adjusted toPlaceholder behavior through output() method\n- Created build script\n- Initial commit\n";s:9:"signature";s:21:"simplesearch-1.6.1-pl";s:13:"initialConfig";s:15:"[object Object]";s:4:"text";s:8:"Continue";s:2:"id";s:19:"package-install-btn";s:6:"hidden";s:5:"false";s:7:"handler";s:586:"function (va){var g=Ext.getCmp(''modx-package-grid'');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=''/workspace/package/install/''+r.signature+''/'';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:''install'',signature:r.signature,register:''mgr'',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connectors_url+''workspace/packages.php'',params:va,listeners:{''success'':{fn:function(){this.activate();Ext.getCmp(''modx-package-grid'').refresh();},scope:this},''failure'':{fn:function(){this.activate();},scope:this}}});}";s:5:"scope";s:15:"[object Object]";s:8:"minWidth";s:2:"75";s:10:"removeMode";s:9:"container";s:10:"hideParent";s:4:"true";s:6:"events";s:15:"[object Object]";s:7:"ownerCt";s:15:"[object Object]";s:9:"container";s:15:"[object Object]";s:8:"rendered";s:4:"true";s:8:"template";s:15:"[object Object]";s:5:"btnEl";s:15:"[object Object]";s:4:"mons";s:15:"[object Object]";s:2:"el";s:15:"[object Object]";s:4:"icon";s:0:"";s:7:"iconCls";s:0:"";s:8:"boxReady";s:4:"true";s:8:"lastSize";s:15:"[object Object]";s:11:"useSetClass";s:4:"true";s:6:"oldCls";s:12:"x-btn-noicon";s:3:"doc";s:15:"[object Object]";s:19:"monitoringMouseOver";s:4:"true";s:6:"action";s:7:"install";s:8:"register";s:3:"mgr";s:5:"topic";s:49:"/workspace/package/install/simplesearch-1.6.1-pl/";s:12:"HTTP_MODAUTH";s:52:"modx5255ab57cf3c45.49327851_1525c056039cd35.67317512";s:14:"package_action";i:0;}', 'SimpleSearch', 'a:31:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556cb6b2b083396d000d97";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"package";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d556cb6b2b083396d000d97";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:12:"display_name";s:10:"attributes";a:0:{}s:4:"text";s:21:"simplesearch-1.6.1-pl";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:5:"1.6.1";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:13:"version_major";s:10:"attributes";a:0:{}s:4:"text";s:1:"1";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:13:"version_minor";s:10:"attributes";a:0:{}s:4:"text";s:1:"6";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:13:"version_patch";s:10:"attributes";a:0:{}s:4:"text";s:1:"1";s:8:"children";a:0:{}}i:7;a:4:{s:4:"name";s:7:"release";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:8;a:4:{s:4:"name";s:8:"vrelease";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:9;a:4:{s:4:"name";s:14:"vrelease_index";s:10:"attributes";a:0:{}s:4:"text";s:2:"pl";s:8:"children";a:0:{}}i:10;a:4:{s:4:"name";s:6:"author";s:10:"attributes";a:0:{}s:4:"text";s:10:"netprophet";s:8:"children";a:0:{}}i:11;a:4:{s:4:"name";s:11:"description";s:10:"attributes";a:0:{}s:4:"text";s:325:"<p>A simple search solution for MODx Revolution. Loosely based on AjaxSearch for Evolution (minus the ajax). Only searches Resources; does not search dynamic content.</p>\n<p>See the official documentation here:<a href="http://rtfm.modx.com/display/addon/SimpleSearch/">http://rtfm.modx.com/display/addon/SimpleSearch/</a></p>";s:8:"children";a:0:{}}i:12;a:4:{s:4:"name";s:12:"instructions";s:10:"attributes";a:0:{}s:4:"text";s:658:"<p>Install via Package Management.</p><p><b>Note</b>: 2.1.0-rc4 and earlier&nbsp;users wanting to use Solr search should check the&nbsp;<a href="http://rtfm.modx.com/display/ADDON/SimpleSearch.Solr" title="" target="" style="color: rgb(15, 112, 150); ">SimpleSearch official documentation</a>&nbsp;regarding a bug in 2.0.x with the OnDocUnPublished event that will need to be fixed.</p><p><b>Note</b>: Those who used Solr searches in 1.4.0-rc1 will need to update their schema.xml files to the latest (included in core/components/simplesearch/docs/solr.schema.xml) and then re-run SimpleSearchIndexAll to take advantage of new auto-processed TV indexing.</p>";s:8:"children";a:0:{}}i:13;a:4:{s:4:"name";s:9:"changelog";s:10:"attributes";a:0:{}s:4:"text";s:4459:"<p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><p style="font-weight: bold; padding: 2px;"><b><b><div style="display: inline !important;"><p style="font-weight: normal; padding: 2px; display: inline !important;"><b>New in 1.6.1</b></p></p></b></b></p><p><ul><li><p style="padding: 2px;">&#91;#69&#93; Apply additional guard against injection of modx tags</p></li></ul></p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b><b>New in 1.6.0</b></b></p><ul><li>&#91;#65&#93; Fix issue with multiple search terms highlighting</li><li>&#91;#67&#93; Fix issue with quotations breaking forms in SimpleSearchForm snippet</li><li>&#91;#64&#93; Improved pagination links, added pageLimit and optional extra tpls</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b><b>New in 1.5.2</b></b></p><ul><li>&#91;#60&#93; Fix issue with search highlighting</li><li>Fix invalid mb_strlen call when should be strlen</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b><b>New in 1.5.1</b></b></p><ul><li>&#91;#55&#93; Fix issue with offsets in multibyte, one-character searches</li><li>&#91;#59&#93; Fix issue with broken links on pagination</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b><b>New in 1.5.0</b></b></p><ul><li>&#91;#36&#93; Fix issue where whereGroup is not incr when using useAllWords</li><li>Allow file-based chunks in all tpl chunks</li><li>&#91;#53&#93; Ensure list permission is checked on loading of resources</li><li>&#91;#56&#93; Fix issue with forward slashes in searches</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b><b>New in 1.4.1</b></b></p><ul><li>Ensure Solr-based search gets TVs indexed by name, so can be used as placeholders</li></ul><p></p><p style="padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b><b>New in 1.4.0</b></b><b></b></p><ul style="margin-bottom: 15px; "><li>Improved TV indexing for Solr-based searches, all TVs are now pre-processed and included during index</li><li>Fixed bug with processTVs in basic search</li><li>&#91;#49&#93; Add sortBy and sortDir properties for sorting of results</li><li>&#91;#48&#93; Fix issue with internationalization of no results message</li><li>&#91;#50&#93; Fix issue with pagination and searches with spaces</li><li>Fixed missing plugin in build script for Solr indexing</li><li>Added Solr search implementation, split up search into driver-specific classes</li><li>&#91;#37&#93; Fix charset in German translation</li><li>&#91;#46&#93; Add tpl for no results message, in property noResultsTpl</li><li>Fix bug in simplesearchform.snippet where spaces were being removed from searchValue</li><li>Fix SqlSrv query issues</li></ul><p style="margin-bottom: 15px; "></p><p style="margin-bottom: 15px; padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; "><b><b>New in 1.3.0</b></b></p><ul style="margin-bottom: 15px; "><li>Add sisea.facet placeholder for results page, and ''search'' parameter to be sent into posthooks</li><li>Add faceted search ability through postHooks</li><li>Add facetLimit to limit # of non-active facet results that return on main results page</li></ul><p style="margin-bottom: 15px; "><b><b>New in 1.2.0</b></b></p><ul style="margin-bottom: 15px; "><li>Fixed bug with pagination</li><li>Fixed bug with searchScore sorting</li><li>Fixed bug with progressive highlighting class names</li><li>Added ''alias'' to default docFields</li><li>Added fieldPotency property to allow certain fields higher search scores for the same match</li><li>Added result sorting (by searchScores)</li><li>Added the urlScheme parameter which allows you to control the URL scheme used&nbsp;for the pagination links.</li><li>Made the result extracts to never break words. This means that the extract&nbsp;limit is a soft limit now, and results look much nicer.</li><li>Added the query placeholder to the containerTpl chunk.</li><li>Fixed the default value of the landing parameter for the SimpleSearchForm&nbsp;snippet.</li><li>Fixed an URL decoding bug.</li><li>Removed defaults from the provided chunk templates, as they duplicate code&nbsp;from the snippets.</li><li>Made minor performance improvements.</li></ul><p></p>";s:8:"children";a:0:{}}i:14;a:4:{s:4:"name";s:9:"createdon";s:10:"attributes";a:0:{}s:4:"text";s:23:"2012-12-13 16:29:07 UTC";s:8:"children";a:0:{}}i:15;a:4:{s:4:"name";s:10:"created_by";s:10:"attributes";a:0:{}s:4:"text";s:10:"netprophet";s:8:"children";a:0:{}}i:16;a:3:{s:4:"name";s:8:"editedon";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:17;a:4:{s:4:"name";s:10:"releasedon";s:10:"attributes";a:0:{}s:4:"text";s:23:"2012-12-28 12:34:33 UTC";s:8:"children";a:0:{}}i:18;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:5:"32726";s:8:"children";a:0:{}}i:19;a:4:{s:4:"name";s:8:"approved";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:20;a:4:{s:4:"name";s:7:"audited";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:21;a:4:{s:4:"name";s:8:"featured";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:22;a:4:{s:4:"name";s:10:"deprecated";s:10:"attributes";a:0:{}s:4:"text";s:5:"false";s:8:"children";a:0:{}}i:23;a:4:{s:4:"name";s:7:"license";s:10:"attributes";a:0:{}s:4:"text";s:5:"GPLv2";s:8:"children";a:0:{}}i:24;a:3:{s:4:"name";s:7:"smf_url";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:25;a:4:{s:4:"name";s:4:"name";s:10:"attributes";a:0:{}s:4:"text";s:12:"SimpleSearch";s:8:"children";a:0:{}}i:26;a:4:{s:4:"name";s:10:"repository";s:10:"attributes";a:0:{}s:4:"text";s:24:"4d4c3fa6b2b0830da9000001";s:8:"children";a:0:{}}i:27;a:4:{s:4:"name";s:8:"supports";s:10:"attributes";a:0:{}s:4:"text";s:3:"2.0";s:8:"children";a:0:{}}i:28;a:3:{s:4:"name";s:10:"screenshot";s:10:"attributes";a:0:{}s:8:"children";a:0:{}}i:29;a:3:{s:4:"name";s:4:"file";s:10:"attributes";a:0:{}s:8:"children";a:7:{i:0;a:4:{s:4:"name";s:2:"id";s:10:"attributes";a:0:{}s:4:"text";s:24:"50ca0253f2455436a8000081";s:8:"children";a:0:{}}i:1;a:4:{s:4:"name";s:7:"version";s:10:"attributes";a:0:{}s:4:"text";s:24:"50ca0253f2455436a8000080";s:8:"children";a:0:{}}i:2;a:4:{s:4:"name";s:8:"filename";s:10:"attributes";a:0:{}s:4:"text";s:35:"simplesearch-1.6.1-pl.transport.zip";s:8:"children";a:0:{}}i:3;a:4:{s:4:"name";s:9:"downloads";s:10:"attributes";a:0:{}s:4:"text";s:4:"7328";s:8:"children";a:0:{}}i:4;a:4:{s:4:"name";s:6:"lastip";s:10:"attributes";a:0:{}s:4:"text";s:12:"144.76.81.42";s:8:"children";a:0:{}}i:5;a:4:{s:4:"name";s:9:"transport";s:10:"attributes";a:0:{}s:4:"text";s:4:"true";s:8:"children";a:0:{}}i:6;a:4:{s:4:"name";s:8:"location";s:10:"attributes";a:0:{}s:4:"text";s:60:"http://modx.com/extras/download/?id=50ca0253f2455436a8000081";s:8:"children";a:0:{}}}}i:30;a:4:{s:4:"name";s:17:"package-signature";s:10:"attributes";a:0:{}s:4:"text";s:21:"simplesearch-1.6.1-pl";s:8:"children";a:0:{}}}', 1, 6, 1, 'pl', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_providers`
--

CREATE TABLE IF NOT EXISTS `modx_transport_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(255) NOT NULL DEFAULT '',
  `api_key` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `api_key` (`api_key`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`) VALUES
(1, 'modx.com', 'The official MODX transport facility for 3rd party components.', 'http://rest.modx.com/extras/', '', '', '2013-10-07 15:54:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_users`
--

CREATE TABLE IF NOT EXISTS `modx_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remote_key` varchar(255) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) unsigned NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`),
  KEY `primary_group` (`primary_group`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`) VALUES
(1, 'admin', '4gfPgZGTG20+1LIH+ayltptJg+9t+aFXW72YnTouV4o=', '', 'modUser', 1, NULL, NULL, 'hashing.modPBKDF2', 'e412f593de48ff3c4445c41bac7e7150', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_attributes`
--

CREATE TABLE IF NOT EXISTS `modx_user_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '',
  `extended` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `internalKey` (`internalKey`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Default Admin User', 'brucemundin@hotmail.com', '', '', 0, 0, 0, 5, 1381762400, 1381955483, 0, 'rv7591sqtf0vrq2na868rt5al4', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_roles`
--

CREATE TABLE IF NOT EXISTS `modx_user_group_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `authority` (`authority`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_messages`
--

CREATE TABLE IF NOT EXISTS `modx_user_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_settings`
--

CREATE TABLE IF NOT EXISTS `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modx_workspaces`
--

CREATE TABLE IF NOT EXISTS `modx_workspaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attributes` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2013-10-09 21:15:41', 1, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
