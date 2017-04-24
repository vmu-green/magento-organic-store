<br />
<b>Warning</b>:  Unknown: Input variables exceeded 1000. To increase the limit change max_input_vars in php.ini. in <b>Unknown</b> on line <b>0</b><br />
-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2017 at 08:33 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magento204`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminnotification_inbox`
--

CREATE TABLE `adminnotification_inbox` (
  `notification_id` int(10) UNSIGNED NOT NULL COMMENT 'Notification id',
  `severity` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

--
-- Truncate table before insert `adminnotification_inbox`
--

TRUNCATE TABLE `adminnotification_inbox`;
-- --------------------------------------------------------

--
-- Table structure for table `admin_passwords`
--

CREATE TABLE `admin_passwords` (
  `password_id` int(10) UNSIGNED NOT NULL COMMENT 'Password Id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User Id',
  `password_hash` varchar(100) DEFAULT NULL COMMENT 'Password Hash',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Expires',
  `last_updated` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Last Updated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Passwords';

--
-- Truncate table before insert `admin_passwords`
--

TRUNCATE TABLE `admin_passwords`;
-- --------------------------------------------------------

--
-- Table structure for table `admin_system_messages`
--

CREATE TABLE `admin_system_messages` (
  `identity` varchar(100) NOT NULL COMMENT 'Message id',
  `severity` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin System Messages';

--
-- Truncate table before insert `admin_system_messages`
--

TRUNCATE TABLE `admin_system_messages`;
--
-- Dumping data for table `admin_system_messages`
--

INSERT DELAYED IGNORE INTO `admin_system_messages` VALUES
('da332d712f3215b9b94bfa268c398323', 2, '2017-04-23 13:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(255) NOT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  `interface_locale` varchar(16) NOT NULL DEFAULT 'en_US' COMMENT 'Backend interface locale',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Expiration Lock Dates'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

--
-- Truncate table before insert `admin_user`
--

TRUNCATE TABLE `admin_user`;
--
-- Dumping data for table `admin_user`
--

INSERT DELAYED IGNORE INTO `admin_user` VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'admin', 'a659bc35c7ac244968e9662606443c39fd03c49e41439ab5cd3e7d75e363435d:pzzXiEasO71l40Oi2huvmpaCLoBImr4F:1', '2017-04-23 11:49:04', '2017-04-24 13:11:00', '2017-04-24 13:11:00', 4, 0, 1, 'a:1:{s:11:\"configState\";a:8:{s:7:\"web_url\";s:1:\"1\";s:7:\"web_seo\";s:1:\"1\";s:12:\"web_unsecure\";s:1:\"1\";s:10:\"web_secure\";s:1:\"1\";s:11:\"web_default\";s:1:\"1\";s:10:\"web_cookie\";s:1:\"0\";s:11:\"web_session\";s:1:\"0\";s:24:\"web_browser_capabilities\";s:1:\"0\";}}', NULL, NULL, 'en_US', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authorization_role`
--

CREATE TABLE `authorization_role` (
  `role_id` int(10) UNSIGNED NOT NULL COMMENT 'Role ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID',
  `user_type` varchar(16) DEFAULT NULL COMMENT 'User Type',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

--
-- Truncate table before insert `authorization_role`
--

TRUNCATE TABLE `authorization_role`;
--
-- Dumping data for table `authorization_role`
--

INSERT DELAYED IGNORE INTO `authorization_role` VALUES
(1, 0, 1, 1, 'G', 0, '2', 'Administrators'),
(2, 1, 2, 0, 'U', 1, '2', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `authorization_rule`
--

CREATE TABLE `authorization_rule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule ID',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

--
-- Truncate table before insert `authorization_rule`
--

TRUNCATE TABLE `authorization_rule`;
--
-- Dumping data for table `authorization_rule`
--

INSERT DELAYED IGNORE INTO `authorization_rule` VALUES
(1, 1, 'Magento_Backend::all', NULL, 'allow');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

--
-- Truncate table before insert `cache`
--

TRUNCATE TABLE `cache`;
-- --------------------------------------------------------

--
-- Table structure for table `cache_tag`
--

CREATE TABLE `cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

--
-- Truncate table before insert `cache_tag`
--

TRUNCATE TABLE `cache_tag`;
-- --------------------------------------------------------

--
-- Table structure for table `captcha_log`
--

CREATE TABLE `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

--
-- Truncate table before insert `captcha_log`
--

TRUNCATE TABLE `captcha_log`;
-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock`
--

CREATE TABLE `cataloginventory_stock` (
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

--
-- Truncate table before insert `cataloginventory_stock`
--

TRUNCATE TABLE `cataloginventory_stock`;
--
-- Dumping data for table `cataloginventory_stock`
--

INSERT DELAYED IGNORE INTO `cataloginventory_stock` VALUES
(1, 0, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_item`
--

CREATE TABLE `cataloginventory_stock_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

--
-- Truncate table before insert `cataloginventory_stock_item`
--

TRUNCATE TABLE `cataloginventory_stock_item`;
-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status`
--

CREATE TABLE `cataloginventory_stock_status` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Truncate table before insert `cataloginventory_stock_status`
--

TRUNCATE TABLE `cataloginventory_stock_status`;
-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_idx`
--

CREATE TABLE `cataloginventory_stock_status_idx` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

--
-- Truncate table before insert `cataloginventory_stock_status_idx`
--

TRUNCATE TABLE `cataloginventory_stock_status_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_tmp`
--

CREATE TABLE `cataloginventory_stock_status_tmp` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

--
-- Truncate table before insert `cataloginventory_stock_status_tmp`
--

TRUNCATE TABLE `cataloginventory_stock_status_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalogrule`
--

CREATE TABLE `catalogrule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `sub_is_enable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Rule Enable For Subitems',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';

--
-- Truncate table before insert `catalogrule`
--

TRUNCATE TABLE `catalogrule`;
-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_customer_group`
--

CREATE TABLE `catalogrule_customer_group` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

--
-- Truncate table before insert `catalogrule_customer_group`
--

TRUNCATE TABLE `catalogrule_customer_group`;
-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_group_website`
--

CREATE TABLE `catalogrule_group_website` (
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

--
-- Truncate table before insert `catalogrule_group_website`
--

TRUNCATE TABLE `catalogrule_group_website`;
-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product`
--

CREATE TABLE `catalogrule_product` (
  `rule_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product Id',
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

--
-- Truncate table before insert `catalogrule_product`
--

TRUNCATE TABLE `catalogrule_product`;
-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product_price`
--

CREATE TABLE `catalogrule_product_price` (
  `rule_product_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

--
-- Truncate table before insert `catalogrule_product_price`
--

TRUNCATE TABLE `catalogrule_product_price`;
-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_website`
--

CREATE TABLE `catalogrule_website` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

--
-- Truncate table before insert `catalogrule_website`
--

TRUNCATE TABLE `catalogrule_website`;
-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_fulltext_scope1`
--

CREATE TABLE `catalogsearch_fulltext_scope1` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope1';

--
-- Truncate table before insert `catalogsearch_fulltext_scope1`
--

TRUNCATE TABLE `catalogsearch_fulltext_scope1`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity`
--

CREATE TABLE `catalog_category_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

--
-- Truncate table before insert `catalog_category_entity`
--

TRUNCATE TABLE `catalog_category_entity`;
--
-- Dumping data for table `catalog_category_entity`
--

INSERT DELAYED IGNORE INTO `catalog_category_entity` VALUES
(1, 0, 0, '2017-04-23 11:47:29', '2017-04-24 13:19:02', '1', 0, 0, 7),
(2, 3, 1, '2017-04-23 11:47:31', '2017-04-24 13:19:02', '1/2', 1, 1, 6),
(3, 3, 2, '2017-04-24 13:13:49', '2017-04-24 13:19:02', '1/2/3', 1, 2, 1),
(4, 3, 2, '2017-04-24 13:14:43', '2017-04-24 13:14:44', '1/2/4', 2, 2, 0),
(5, 3, 2, '2017-04-24 13:17:02', '2017-04-24 13:17:02', '1/2/5', 3, 2, 0),
(6, 3, 2, '2017-04-24 13:17:37', '2017-04-24 13:17:37', '1/2/6', 4, 2, 0),
(7, 3, 2, '2017-04-24 13:18:22', '2017-04-24 13:18:22', '1/2/7', 5, 2, 0),
(8, 3, 3, '2017-04-24 13:19:02', '2017-04-24 13:19:02', '1/2/3/8', 1, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_datetime`
--

CREATE TABLE `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

--
-- Truncate table before insert `catalog_category_entity_datetime`
--

TRUNCATE TABLE `catalog_category_entity_datetime`;
--
-- Dumping data for table `catalog_category_entity_datetime`
--

INSERT DELAYED IGNORE INTO `catalog_category_entity_datetime` VALUES
(1, 58, 0, 1, NULL),
(2, 58, 0, 2, NULL),
(3, 58, 0, 3, NULL),
(4, 59, 0, 3, NULL),
(5, 58, 0, 4, NULL),
(6, 59, 0, 4, NULL),
(7, 58, 0, 5, NULL),
(8, 59, 0, 5, NULL),
(9, 58, 0, 6, NULL),
(10, 59, 0, 6, NULL),
(11, 58, 0, 7, NULL),
(12, 59, 0, 7, NULL),
(13, 58, 0, 8, NULL),
(14, 59, 0, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_decimal`
--

CREATE TABLE `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';

--
-- Truncate table before insert `catalog_category_entity_decimal`
--

TRUNCATE TABLE `catalog_category_entity_decimal`;
--
-- Dumping data for table `catalog_category_entity_decimal`
--

INSERT DELAYED IGNORE INTO `catalog_category_entity_decimal` VALUES
(1, 69, 0, 3, NULL),
(2, 69, 0, 4, NULL),
(3, 69, 0, 5, NULL),
(4, 69, 0, 6, NULL),
(5, 69, 0, 7, NULL),
(6, 69, 0, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_int`
--

CREATE TABLE `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

--
-- Truncate table before insert `catalog_category_entity_int`
--

TRUNCATE TABLE `catalog_category_entity_int`;
--
-- Dumping data for table `catalog_category_entity_int`
--

INSERT DELAYED IGNORE INTO `catalog_category_entity_int` VALUES
(1, 66, 0, 1, 1),
(2, 43, 0, 2, 1),
(3, 66, 0, 2, 1),
(4, 43, 0, 3, 1),
(5, 66, 0, 3, 1),
(6, 50, 0, 3, NULL),
(7, 51, 0, 3, 1),
(8, 67, 0, 3, 0),
(9, 68, 0, 3, 0),
(10, 43, 0, 4, 1),
(11, 66, 0, 4, 1),
(12, 50, 0, 4, NULL),
(13, 51, 0, 4, 1),
(14, 67, 0, 4, 0),
(15, 68, 0, 4, 0),
(16, 43, 0, 5, 1),
(17, 66, 0, 5, 1),
(18, 50, 0, 5, NULL),
(19, 51, 0, 5, 1),
(20, 67, 0, 5, 0),
(21, 68, 0, 5, 0),
(22, 43, 0, 6, 1),
(23, 66, 0, 6, 1),
(24, 50, 0, 6, NULL),
(25, 51, 0, 6, 1),
(26, 67, 0, 6, 0),
(27, 68, 0, 6, 0),
(28, 43, 0, 7, 1),
(29, 66, 0, 7, 1),
(30, 50, 0, 7, NULL),
(31, 51, 0, 7, 1),
(32, 67, 0, 7, 0),
(33, 68, 0, 7, 0),
(34, 43, 0, 8, 1),
(35, 66, 0, 8, 1),
(36, 50, 0, 8, NULL),
(37, 51, 0, 8, 1),
(38, 67, 0, 8, 0),
(39, 68, 0, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_text`
--

CREATE TABLE `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';

--
-- Truncate table before insert `catalog_category_entity_text`
--

TRUNCATE TABLE `catalog_category_entity_text`;
--
-- Dumping data for table `catalog_category_entity_text`
--

INSERT DELAYED IGNORE INTO `catalog_category_entity_text` VALUES
(1, 64, 0, 1, NULL),
(2, 64, 0, 2, NULL),
(3, 44, 0, 3, NULL),
(4, 47, 0, 3, NULL),
(5, 48, 0, 3, NULL),
(6, 64, 0, 3, NULL),
(7, 61, 0, 3, NULL),
(8, 44, 0, 4, NULL),
(9, 47, 0, 4, NULL),
(10, 48, 0, 4, NULL),
(11, 64, 0, 4, NULL),
(12, 61, 0, 4, NULL),
(13, 44, 0, 5, NULL),
(14, 47, 0, 5, NULL),
(15, 48, 0, 5, NULL),
(16, 64, 0, 5, NULL),
(17, 61, 0, 5, NULL),
(18, 44, 0, 6, NULL),
(19, 47, 0, 6, NULL),
(20, 48, 0, 6, NULL),
(21, 64, 0, 6, NULL),
(22, 61, 0, 6, NULL),
(23, 44, 0, 7, NULL),
(24, 47, 0, 7, NULL),
(25, 48, 0, 7, NULL),
(26, 64, 0, 7, NULL),
(27, 61, 0, 7, NULL),
(28, 44, 0, 8, NULL),
(29, 47, 0, 8, NULL),
(30, 48, 0, 8, NULL),
(31, 64, 0, 8, NULL),
(32, 61, 0, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_varchar`
--

CREATE TABLE `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

--
-- Truncate table before insert `catalog_category_entity_varchar`
--

TRUNCATE TABLE `catalog_category_entity_varchar`;
--
-- Dumping data for table `catalog_category_entity_varchar`
--

INSERT DELAYED IGNORE INTO `catalog_category_entity_varchar` VALUES
(1, 42, 0, 1, 'Root Catalog'),
(2, 42, 0, 2, 'Default Category'),
(3, 49, 0, 2, 'PRODUCTS'),
(4, 42, 0, 3, 'Rau xanh'),
(5, 113, 0, 3, 'rauxanh'),
(6, 46, 0, 3, NULL),
(7, 49, 0, 3, 'PRODUCTS'),
(8, 57, 0, 3, NULL),
(9, 60, 0, 3, NULL),
(10, 65, 0, 3, NULL),
(11, 114, 0, 3, 'rauxanh'),
(12, 42, 0, 4, 'Trái cây'),
(13, 113, 0, 4, 'traicay'),
(14, 46, 0, 4, NULL),
(15, 49, 0, 4, 'PRODUCTS'),
(16, 57, 0, 4, NULL),
(17, 60, 0, 4, NULL),
(18, 65, 0, 4, NULL),
(19, 114, 0, 4, 'traicay'),
(20, 42, 0, 5, 'Rau gia vị'),
(21, 113, 0, 5, 'raugiavi'),
(22, 46, 0, 5, NULL),
(23, 49, 0, 5, 'PRODUCTS'),
(24, 57, 0, 5, NULL),
(25, 60, 0, 5, NULL),
(26, 65, 0, 5, NULL),
(27, 114, 0, 5, 'raugiavi'),
(28, 42, 0, 6, 'Hạt giống'),
(29, 113, 0, 6, 'hatgiong'),
(30, 46, 0, 6, NULL),
(31, 49, 0, 6, 'PRODUCTS'),
(32, 57, 0, 6, NULL),
(33, 60, 0, 6, NULL),
(34, 65, 0, 6, NULL),
(35, 114, 0, 6, 'hatgiong'),
(36, 42, 0, 7, 'Món ngon'),
(37, 113, 0, 7, 'monngon'),
(38, 46, 0, 7, NULL),
(39, 49, 0, 7, 'PRODUCTS'),
(40, 57, 0, 7, NULL),
(41, 60, 0, 7, NULL),
(42, 65, 0, 7, NULL),
(43, 114, 0, 7, 'monngon'),
(44, 42, 0, 8, 'Rau cải'),
(45, 113, 0, 8, 'raucai'),
(46, 46, 0, 8, NULL),
(47, 49, 0, 8, 'PRODUCTS'),
(48, 57, 0, 8, NULL),
(49, 60, 0, 8, NULL),
(50, 65, 0, 8, NULL),
(51, 114, 0, 8, 'rauxanh/raucai');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product`
--

CREATE TABLE `catalog_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Truncate table before insert `catalog_category_product`
--

TRUNCATE TABLE `catalog_category_product`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index`
--

CREATE TABLE `catalog_category_product_index` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Truncate table before insert `catalog_category_product_index`
--

TRUNCATE TABLE `catalog_category_product_index`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_tmp`
--

CREATE TABLE `catalog_category_product_index_tmp` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

--
-- Truncate table before insert `catalog_category_product_index_tmp`
--

TRUNCATE TABLE `catalog_category_product_index_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_compare_item`
--

CREATE TABLE `catalog_compare_item` (
  `catalog_compare_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Compare Item ID',
  `visitor_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';

--
-- Truncate table before insert `catalog_compare_item`
--

TRUNCATE TABLE `catalog_compare_item`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_eav_attribute`
--

CREATE TABLE `catalog_eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  `is_required_in_admin_store` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Required In Admin Store',
  `is_used_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `search_weight` float NOT NULL DEFAULT '1' COMMENT 'Search Weight',
  `additional_data` text COMMENT 'Additional swatch attributes data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Truncate table before insert `catalog_eav_attribute`
--

TRUNCATE TABLE `catalog_eav_attribute`;
--
-- Dumping data for table `catalog_eav_attribute`
--

INSERT DELAYED IGNORE INTO `catalog_eav_attribute` VALUES
(42, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(43, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(44, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(47, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(51, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(52, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(53, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(54, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(57, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(58, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(59, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(62, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(63, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(64, 'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\Available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(65, 'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\DefaultSortby', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(66, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(67, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(68, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(69, 'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(70, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 5, NULL),
(71, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 6, NULL),
(72, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(73, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, NULL, 1, 0, 1, 0, 0, 1, 0, 0, 1, NULL),
(74, NULL, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 'simple,virtual,bundle,downloadable,configurable', 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(75, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(76, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(77, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(78, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,downloadable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(79, 'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Weight', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(80, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'simple', 1, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(81, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(82, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(83, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(84, 'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\BaseImage', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(87, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(88, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(89, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(90, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'simple,virtual,configurable', 1, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(91, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(92, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(93, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(94, 'Magento\\Framework\\Data\\Form\\Element\\Hidden', 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 1, NULL),
(95, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(96, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 1, NULL),
(97, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(98, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(99, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(100, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(101, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(102, 'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Category', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(103, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(104, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(105, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(106, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(107, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(108, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(109, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(110, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(111, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,bundle,grouped,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(112, 'Magento\\CatalogInventory\\Block\\Adminhtml\\Form\\Field\\Stock', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(113, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(114, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(115, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(116, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(117, 'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(118, 'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type\\Price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(119, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(120, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(121, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(122, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(123, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(124, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(125, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(126, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(127, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(128, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(129, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(130, 'Magento\\GiftMessage\\Block\\Adminhtml\\Product\\Helper\\Form\\Config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(131, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(132, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(133, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option`
--

CREATE TABLE `catalog_product_bundle_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';

--
-- Truncate table before insert `catalog_product_bundle_option`
--

TRUNCATE TABLE `catalog_product_bundle_option`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option_value`
--

CREATE TABLE `catalog_product_bundle_option_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value Id',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';

--
-- Truncate table before insert `catalog_product_bundle_option_value`
--

TRUNCATE TABLE `catalog_product_bundle_option_value`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_price_index`
--

CREATE TABLE `catalog_product_bundle_price_index` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

--
-- Truncate table before insert `catalog_product_bundle_price_index`
--

TRUNCATE TABLE `catalog_product_bundle_price_index`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection`
--

CREATE TABLE `catalog_product_bundle_selection` (
  `selection_id` int(10) UNSIGNED NOT NULL COMMENT 'Selection Id',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';

--
-- Truncate table before insert `catalog_product_bundle_selection`
--

TRUNCATE TABLE `catalog_product_bundle_selection`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection_price`
--

CREATE TABLE `catalog_product_bundle_selection_price` (
  `selection_id` int(10) UNSIGNED NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

--
-- Truncate table before insert `catalog_product_bundle_selection_price`
--

TRUNCATE TABLE `catalog_product_bundle_selection_price`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_stock_index`
--

CREATE TABLE `catalog_product_bundle_stock_index` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

--
-- Truncate table before insert `catalog_product_bundle_stock_index`
--

TRUNCATE TABLE `catalog_product_bundle_stock_index`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity`
--

CREATE TABLE `catalog_product_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

--
-- Truncate table before insert `catalog_product_entity`
--

TRUNCATE TABLE `catalog_product_entity`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_datetime`
--

CREATE TABLE `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

--
-- Truncate table before insert `catalog_product_entity_datetime`
--

TRUNCATE TABLE `catalog_product_entity_datetime`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_decimal`
--

CREATE TABLE `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

--
-- Truncate table before insert `catalog_product_entity_decimal`
--

TRUNCATE TABLE `catalog_product_entity_decimal`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_gallery`
--

CREATE TABLE `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';

--
-- Truncate table before insert `catalog_product_entity_gallery`
--

TRUNCATE TABLE `catalog_product_entity_gallery`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_int`
--

CREATE TABLE `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

--
-- Truncate table before insert `catalog_product_entity_int`
--

TRUNCATE TABLE `catalog_product_entity_int`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery`
--

CREATE TABLE `catalog_product_entity_media_gallery` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  `media_type` varchar(32) NOT NULL DEFAULT 'image' COMMENT 'Media entry type',
  `disabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visibility status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

--
-- Truncate table before insert `catalog_product_entity_media_gallery`
--

TRUNCATE TABLE `catalog_product_entity_media_gallery`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value`
--

CREATE TABLE `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) UNSIGNED DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  `record_id` int(10) UNSIGNED NOT NULL COMMENT 'Record Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Truncate table before insert `catalog_product_entity_media_gallery_value`
--

TRUNCATE TABLE `catalog_product_entity_media_gallery_value`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value_to_entity`
--

CREATE TABLE `catalog_product_entity_media_gallery_value_to_entity` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value media Entry ID',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Product entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Media value to Product entity table';

--
-- Truncate table before insert `catalog_product_entity_media_gallery_value_to_entity`
--

TRUNCATE TABLE `catalog_product_entity_media_gallery_value_to_entity`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value_video`
--

CREATE TABLE `catalog_product_entity_media_gallery_value_video` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Media Entity ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `provider` varchar(32) DEFAULT NULL COMMENT 'Video provider ID',
  `url` text COMMENT 'Video URL',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `description` text COMMENT 'Page Meta Description',
  `metadata` text COMMENT 'Video meta data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Video Table';

--
-- Truncate table before insert `catalog_product_entity_media_gallery_value_video`
--

TRUNCATE TABLE `catalog_product_entity_media_gallery_value_video`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_text`
--

CREATE TABLE `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

--
-- Truncate table before insert `catalog_product_entity_text`
--

TRUNCATE TABLE `catalog_product_entity_text`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_tier_price`
--

CREATE TABLE `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';

--
-- Truncate table before insert `catalog_product_entity_tier_price`
--

TRUNCATE TABLE `catalog_product_entity_tier_price`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_varchar`
--

CREATE TABLE `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

--
-- Truncate table before insert `catalog_product_entity_varchar`
--

TRUNCATE TABLE `catalog_product_entity_varchar`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav`
--

CREATE TABLE `catalog_product_index_eav` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Truncate table before insert `catalog_product_index_eav`
--

TRUNCATE TABLE `catalog_product_index_eav`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal`
--

CREATE TABLE `catalog_product_index_eav_decimal` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

--
-- Truncate table before insert `catalog_product_index_eav_decimal`
--

TRUNCATE TABLE `catalog_product_index_eav_decimal`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_idx`
--

CREATE TABLE `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

--
-- Truncate table before insert `catalog_product_index_eav_decimal_idx`
--

TRUNCATE TABLE `catalog_product_index_eav_decimal_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

--
-- Truncate table before insert `catalog_product_index_eav_decimal_tmp`
--

TRUNCATE TABLE `catalog_product_index_eav_decimal_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_idx`
--

CREATE TABLE `catalog_product_index_eav_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

--
-- Truncate table before insert `catalog_product_index_eav_idx`
--

TRUNCATE TABLE `catalog_product_index_eav_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_tmp`
--

CREATE TABLE `catalog_product_index_eav_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

--
-- Truncate table before insert `catalog_product_index_eav_tmp`
--

TRUNCATE TABLE `catalog_product_index_eav_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price`
--

CREATE TABLE `catalog_product_index_price` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Truncate table before insert `catalog_product_index_price`
--

TRUNCATE TABLE `catalog_product_index_price`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

--
-- Truncate table before insert `catalog_product_index_price_bundle_idx`
--

TRUNCATE TABLE `catalog_product_index_price_bundle_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

--
-- Truncate table before insert `catalog_product_index_price_bundle_opt_idx`
--

TRUNCATE TABLE `catalog_product_index_price_bundle_opt_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

--
-- Truncate table before insert `catalog_product_index_price_bundle_opt_tmp`
--

TRUNCATE TABLE `catalog_product_index_price_bundle_opt_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

--
-- Truncate table before insert `catalog_product_index_price_bundle_sel_idx`
--

TRUNCATE TABLE `catalog_product_index_price_bundle_sel_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

--
-- Truncate table before insert `catalog_product_index_price_bundle_sel_tmp`
--

TRUNCATE TABLE `catalog_product_index_price_bundle_sel_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

--
-- Truncate table before insert `catalog_product_index_price_bundle_tmp`
--

TRUNCATE TABLE `catalog_product_index_price_bundle_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

--
-- Truncate table before insert `catalog_product_index_price_cfg_opt_agr_idx`
--

TRUNCATE TABLE `catalog_product_index_price_cfg_opt_agr_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

--
-- Truncate table before insert `catalog_product_index_price_cfg_opt_agr_tmp`
--

TRUNCATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

--
-- Truncate table before insert `catalog_product_index_price_cfg_opt_idx`
--

TRUNCATE TABLE `catalog_product_index_price_cfg_opt_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

--
-- Truncate table before insert `catalog_product_index_price_cfg_opt_tmp`
--

TRUNCATE TABLE `catalog_product_index_price_cfg_opt_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_idx`
--

CREATE TABLE `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

--
-- Truncate table before insert `catalog_product_index_price_downlod_idx`
--

TRUNCATE TABLE `catalog_product_index_price_downlod_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_tmp`
--

CREATE TABLE `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

--
-- Truncate table before insert `catalog_product_index_price_downlod_tmp`
--

TRUNCATE TABLE `catalog_product_index_price_downlod_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_idx`
--

CREATE TABLE `catalog_product_index_price_final_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

--
-- Truncate table before insert `catalog_product_index_price_final_idx`
--

TRUNCATE TABLE `catalog_product_index_price_final_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_tmp`
--

CREATE TABLE `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

--
-- Truncate table before insert `catalog_product_index_price_final_tmp`
--

TRUNCATE TABLE `catalog_product_index_price_final_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_idx`
--

CREATE TABLE `catalog_product_index_price_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

--
-- Truncate table before insert `catalog_product_index_price_idx`
--

TRUNCATE TABLE `catalog_product_index_price_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

--
-- Truncate table before insert `catalog_product_index_price_opt_agr_idx`
--

TRUNCATE TABLE `catalog_product_index_price_opt_agr_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

--
-- Truncate table before insert `catalog_product_index_price_opt_agr_tmp`
--

TRUNCATE TABLE `catalog_product_index_price_opt_agr_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_idx`
--

CREATE TABLE `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

--
-- Truncate table before insert `catalog_product_index_price_opt_idx`
--

TRUNCATE TABLE `catalog_product_index_price_opt_idx`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

--
-- Truncate table before insert `catalog_product_index_price_opt_tmp`
--

TRUNCATE TABLE `catalog_product_index_price_opt_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_tmp`
--

CREATE TABLE `catalog_product_index_price_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

--
-- Truncate table before insert `catalog_product_index_price_tmp`
--

TRUNCATE TABLE `catalog_product_index_price_tmp`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_tier_price`
--

CREATE TABLE `catalog_product_index_tier_price` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

--
-- Truncate table before insert `catalog_product_index_tier_price`
--

TRUNCATE TABLE `catalog_product_index_tier_price`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_website`
--

CREATE TABLE `catalog_product_index_website` (
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Truncate table before insert `catalog_product_index_website`
--

TRUNCATE TABLE `catalog_product_index_website`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link`
--

CREATE TABLE `catalog_product_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link Type ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';

--
-- Truncate table before insert `catalog_product_link`
--

TRUNCATE TABLE `catalog_product_link`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute`
--

CREATE TABLE `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

--
-- Truncate table before insert `catalog_product_link_attribute`
--

TRUNCATE TABLE `catalog_product_link_attribute`;
--
-- Dumping data for table `catalog_product_link_attribute`
--

INSERT DELAYED IGNORE INTO `catalog_product_link_attribute` VALUES
(1, 1, 'position', 'int'),
(2, 4, 'position', 'int'),
(3, 5, 'position', 'int'),
(4, 3, 'position', 'int'),
(5, 3, 'qty', 'decimal');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_decimal`
--

CREATE TABLE `catalog_product_link_attribute_decimal` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';

--
-- Truncate table before insert `catalog_product_link_attribute_decimal`
--

TRUNCATE TABLE `catalog_product_link_attribute_decimal`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_int`
--

CREATE TABLE `catalog_product_link_attribute_int` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';

--
-- Truncate table before insert `catalog_product_link_attribute_int`
--

TRUNCATE TABLE `catalog_product_link_attribute_int`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_varchar`
--

CREATE TABLE `catalog_product_link_attribute_varchar` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';

--
-- Truncate table before insert `catalog_product_link_attribute_varchar`
--

TRUNCATE TABLE `catalog_product_link_attribute_varchar`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_type`
--

CREATE TABLE `catalog_product_link_type` (
  `link_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

--
-- Truncate table before insert `catalog_product_link_type`
--

TRUNCATE TABLE `catalog_product_link_type`;
--
-- Dumping data for table `catalog_product_link_type`
--

INSERT DELAYED IGNORE INTO `catalog_product_link_type` VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option`
--

CREATE TABLE `catalog_product_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) UNSIGNED DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';

--
-- Truncate table before insert `catalog_product_option`
--

TRUNCATE TABLE `catalog_product_option`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_price`
--

CREATE TABLE `catalog_product_option_price` (
  `option_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Price ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';

--
-- Truncate table before insert `catalog_product_option_price`
--

TRUNCATE TABLE `catalog_product_option_price`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_title`
--

CREATE TABLE `catalog_product_option_title` (
  `option_title_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Title ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';

--
-- Truncate table before insert `catalog_product_option_title`
--

TRUNCATE TABLE `catalog_product_option_title`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_price`
--

CREATE TABLE `catalog_product_option_type_price` (
  `option_type_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type Price ID',
  `option_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';

--
-- Truncate table before insert `catalog_product_option_type_price`
--

TRUNCATE TABLE `catalog_product_option_type_price`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_title`
--

CREATE TABLE `catalog_product_option_type_title` (
  `option_type_title_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type Title ID',
  `option_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';

--
-- Truncate table before insert `catalog_product_option_type_title`
--

TRUNCATE TABLE `catalog_product_option_type_title`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_value`
--

CREATE TABLE `catalog_product_option_type_value` (
  `option_type_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';

--
-- Truncate table before insert `catalog_product_option_type_value`
--

TRUNCATE TABLE `catalog_product_option_type_value`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_relation`
--

CREATE TABLE `catalog_product_relation` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

--
-- Truncate table before insert `catalog_product_relation`
--

TRUNCATE TABLE `catalog_product_relation`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute`
--

CREATE TABLE `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Super Attribute ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';

--
-- Truncate table before insert `catalog_product_super_attribute`
--

TRUNCATE TABLE `catalog_product_super_attribute`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute_label`
--

CREATE TABLE `catalog_product_super_attribute_label` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_super_attribute_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';

--
-- Truncate table before insert `catalog_product_super_attribute_label`
--

TRUNCATE TABLE `catalog_product_super_attribute_label`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_link`
--

CREATE TABLE `catalog_product_super_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';

--
-- Truncate table before insert `catalog_product_super_link`
--

TRUNCATE TABLE `catalog_product_super_link`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_website`
--

CREATE TABLE `catalog_product_website` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Truncate table before insert `catalog_product_website`
--

TRUNCATE TABLE `catalog_product_website`;
-- --------------------------------------------------------

--
-- Table structure for table `catalog_url_rewrite_product_category`
--

CREATE TABLE `catalog_url_rewrite_product_category` (
  `url_rewrite_id` int(10) UNSIGNED NOT NULL COMMENT 'url_rewrite_id',
  `category_id` int(10) UNSIGNED NOT NULL COMMENT 'category_id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'product_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='url_rewrite_relation';

--
-- Truncate table before insert `catalog_url_rewrite_product_category`
--

TRUNCATE TABLE `catalog_url_rewrite_product_category`;
-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement`
--

CREATE TABLE `checkout_agreement` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  `mode` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Applied mode'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';

--
-- Truncate table before insert `checkout_agreement`
--

TRUNCATE TABLE `checkout_agreement`;
-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement_store`
--

CREATE TABLE `checkout_agreement_store` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

--
-- Truncate table before insert `checkout_agreement_store`
--

TRUNCATE TABLE `checkout_agreement_store`;
-- --------------------------------------------------------

--
-- Table structure for table `cms_block`
--

CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Truncate table before insert `cms_block`
--

TRUNCATE TABLE `cms_block`;
--
-- Dumping data for table `cms_block`
--

INSERT DELAYED IGNORE INTO `cms_block` VALUES
(1, 'Footer Links Block', 'footer_links_block', '<ul class=\"footer links\">\n    <li class=\"nav item\"><a href=\"{{store url=\"about-us\"}}\">About us</a></li>\n    <li class=\"nav item\"><a href=\"{{store url=\"customer-service\"}}\">Customer Service</a></li>\n</ul>\n', '2017-04-23 13:39:39', '2017-04-23 13:39:39', 1),
(2, 'Contact us info', 'contact-us-info', '<div class=\"contact-info cms-content\">\n   <p class=\"cms-content-important\">We love hearing from you, our Luma customers. Please contact us about anything at all. Your latest passion, unique health experience or request for a specific product. We’ll do Necessary we can to make your Luma experience unforgettable every time. Reach us however you like</p>\n   <div class=\"block block-contact-info\">\n       <div class=\"block-title\">\n           <strong>Contact Us Info</strong>\n       </div>\n       <div class=\"block-content\">\n           <div class=\"box box-phone\">\n               <strong class=\"box-title\">\n                   <span>Phone</span>\n               </strong>\n               <div class=\"box-content\">\n                   <span class=\"contact-info-number\">1-800-403-8838</span>\n                   <p>Call the Luma Helpline for concerns, product questions, or anything else. We’re here for you 24 hours a day - 365 days a year.</p>\n               </div>\n           </div>\n           <div class=\"box box-design-inquiries\">\n               <strong class=\"box-title\">\n                   <span>Apparel Design Inquiries</span>\n               </strong>\n               <div class=\"box-content\">\n                   <p>Are you an independent clothing designer? Feature your products on the Luma website! Please direct all inquiries via email to: <a href=\"mailto:cs@luma.com\">cs@luma.com</a></p>\n               </div>\n           </div>\n           <div class=\"box box-press-inquiries\">\n               <strong class=\"box-title\">\n                   <span>Press Inquiries</span>\n               </strong>\n               <div class=\"box-content\">\n                   <p>Please direct all media inquiries via email to: <a href=\"mailto:pr@luma.com\">pr@luma.com</a></p>\n               </div>\n           </div>\n       </div>\n   </div>\n</div>\n', '2017-04-23 13:39:40', '2017-04-23 13:39:40', 1),
(3, 'Sale Left Menu Block', 'sale-left-menu-block', '<div class=\"categories-menu\"><strong class=\"title\"><span>Women\'s Deals</span></strong>\n<ul class=\"items\">\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/tops-women/hoodies-and-sweatshirts-women.html\">Hoodies and Sweatshirts</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/tops-women/jackets-women.html\">Jackets</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/tops-women/tees-women.html\">Tees</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/tops-women/tanks-women.html\">Bras & Tanks</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/bottoms-women/pants-women.html\">Pants</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/bottoms-women/shorts-women.html\">Shorts</a></li>\n</ul>\n\n<strong class=\"title\"><span>Mens\'s Deals</span></strong>\n<ul class=\"items\">\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/tops-men/hoodies-and-sweatshirts-men.html\">Hoodies and Sweatshirts</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/tops-men/jackets-men.html\">Jackets</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/tops-men/tees-men.html\">Tees</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/bottoms-men/pants-men.html\">Pants</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/bottoms-men/shorts-men.html\">Shorts</a></li>\n</ul>\n\n<strong class=\"title\"><span>Gear Deals</span></strong>\n<ul class=\"items\">\n    <li class=\"item\"><a href=\"{{store url=\"\"}}gear/bags.html\">Bags</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}gear/fitness-equipment.html\">Fitness Equipment</a></li>\n</ul>\n</div>', '2017-04-23 13:39:40', '2017-04-23 13:39:40', 1),
(4, 'Gear Left Menu Block', 'gear-left-menu-block', '<div class=\"categories-menu\"><strong class=\"title\"><span></span></strong>\n<ul class=\"items\">\n    <li class=\"item\"><a href=\"{{store url=\"\"}}gear/bags.html\">Bags</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}gear/fitness-equipment.html\">Fitness Equipment</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}gear/watches.html\">Watches</a></li>\n</ul>\n</div>', '2017-04-23 13:39:40', '2017-04-23 13:39:40', 1),
(5, 'Men Left Menu Block', 'men-left-menu-block', '<div class=\"categories-menu\"><strong class=\"title\"><span>Tops</span></strong>\n<ul class=\"items\">\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/tops-men/hoodies-and-sweatshirts-men.html\">Hoodies & Sweatshirts</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/tops-men/jackets-men.html\">Jackets</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/tops-men/tees-men.html\">Tees</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/tops-men/tanks-men.html\">Tanks</a></li>\n</ul>\n\n<strong class=\"title\"><span>Bottoms</span></strong>\n<ul class=\"items\">\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/bottoms-men/pants-men.html\">Pants</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/bottoms-men/shorts-men.html\">Shorts</a></li>\n</ul>\n</div>', '2017-04-23 13:39:40', '2017-04-23 13:39:40', 1),
(6, 'Women Left Menu Block', 'women-left-menu-block', '<div class=\"categories-menu\"><strong class=\"title\"><span>Tops</span></strong>\n<ul class=\"items\">\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/tops-women/hoodies-and-sweatshirts-women.html\">Hoodies & Sweatshirts</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/tops-women/jackets-women.html\">Jackets</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/tops-women/tees-women.html\">Tees</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/tops-women/tanks-women.html\">Bras & Tanks</a></li>\n</ul>\n\n<strong class=\"title\"><span>Bottoms</span></strong>\n<ul class=\"items\">\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/bottoms-women/pants-women.html\">Pants</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/bottoms-women/shorts-women.html\">Shorts</a></li>\n</ul>\n</div>', '2017-04-23 13:39:40', '2017-04-23 13:39:40', 1),
(7, 'New Left Menu Block', 'new-left-menu-block', '<div class=\"categories-menu\"><strong class=\"title\"><span>New in women\'s</span></strong>\n<ul class=\"items\">\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/tops-women/hoodies-and-sweatshirts-women.html\">Hoodies & Sweatshirts</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/tops-women/jackets-women.html\">Jackets</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/tops-women/tees-women.html\">Tees</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/tops-women/tanks-women.html\">Bras & Tanks</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/bottoms-women/pants-women.html\">Pants</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}women/bottoms-women/shorts-women.html\">Shorts</a></li>\n</ul>\n\n<strong class=\"title\"><span>New in men\'s</span></strong>\n<ul class=\"items\">\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/tops-men/hoodies-and-sweatshirts-men.html\">Hoodies & Sweatshirts</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/tops-men/jackets-men.html\">Jackets</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/tops-men/tees-men.html\">Tees</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/tops-men/tanks-men.html\">Tanks</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/bottoms-men/pants-men.html\">Pants</a></li>\n    <li class=\"item\"><a href=\"{{store url=\"\"}}men/bottoms-men/shorts-men.html\">Shorts</a></li>\n</ul>\n</div>', '2017-04-23 13:39:40', '2017-04-23 13:39:40', 1),
(8, 'Women Block', 'women-block', '<div class=\"blocks-promo\">\n    <a href=\"{{store url=\"\"}}women.html\" class=\"block-promo womens-main\">\n        <img src=\"{{media url=\"wysiwyg/womens/womens-main.jpg\"}}\" alt=\"\" />\n        <span class=\"content\">\n            <span class=\"info\">New Luma Yoga Collection</span>\n            <strong class=\"title\">Yoga is ancient<br />Clothing shouldn’t be</strong>\n            <span class=\"more button\">Shop New Yoga</span>\n        </span>\n    </a>\n    <div class=\"block-promo-wrapper block-promo-2columns\">\n        <a href=\"{{store url=\"\"}}women/tops-women/tees-women.html\" class=\"block-promo womens-t-shirts\">\n            <span class=\"content\">\n                <strong class=\"title\">You can’t have too many tees</strong>\n                <img src=\"{{media url=\"wysiwyg/womens/womens-t-shirts.png\"}}\" alt=\"\" />\n                <span class=\"info\">4 tees for the price of 3. Right now</span>\n                <span class=\"more icon\">Women’s Tees</span>\n            </span>\n        </a>\n        <a href=\"{{store url=\"\"}}women/bottoms-women/pants-women.html\" class=\"block-promo womens-pants\">\n            <img src=\"{{media url=\"wysiwyg/womens/womens-pants.jpg\"}}\" alt=\"\" />\n            <span class=\"content\">\n                <strong class=\"title\">Hot pants<br />Hot deals</strong>\n                <span class=\"info\"><span>20% OFF</span>Luma pants when you shop today*</span>\n                <span class=\"more icon\">Shop Pants</span>\n            </span>\n        </a>\n    </div>\n    <a href=\"{{store url=\"\"}}collections/erin-recommends.html\" class=\"block-promo womens-erin\">\n        <span class=\"content\">\n            <strong class=\"title\">What would Erin wear?</strong>\n            <span class=\"info\">It’s no secret: see Luma founder Erin Renny’s wardrobe go-to’s</span>\n            <span class=\"more icon\">Shop Erin Recommends</span>\n        </span>\n        <span class=\"image\"><img src=\"{{media url=\"wysiwyg/womens/womens-erin.jpg\"}}\" alt=\"\" /></span>\n    </a>\n    <div class=\"block-promo-wrapper block-promo-3columns\">\n        <a href=\"{{store url=\"\"}}women/bottoms-women/pants-women.html\" class=\"block-promo womens-category-pants\">\n            <span class=\"content\">\n                <strong class=\"title\">Luma pants</strong>\n                <span class=\"info\">Pants for yoga, gym and outdoors</span>\n                <span class=\"more icon\">Shop Pants</span>\n            </span>\n            <span class=\"image\"><img src=\"{{media url=\"wysiwyg/womens/womens-category-pants.jpg\"}}\" alt=\"\" /></span>\n        </a>\n        <a href=\"{{store url=\"\"}}women/bottoms-women/shorts-women.html\" class=\"block-promo womens-category-shorts\">\n            <span class=\"content\">\n                <strong class=\"title\">Luma shorts</strong>\n                <span class=\"info\">Exercise comfort</span>\n                <span class=\"more icon\">Shop Shorts</span>\n            </span>\n            <span class=\"image\"><img src=\"{{media url=\"wysiwyg/womens/womens-category-shorts.jpg\"}}\" alt=\"\" /></span>\n        </a>\n        <a href=\"{{store url=\"\"}}women/tops-women/tanks-women.html\" class=\"block-promo womens-category-tanks\">\n            <span class=\"content\">\n                <strong class=\"title\">Luma Bras<br />Tanks</strong>\n                <span class=\"info\">Stock up for summer!</span>\n                <span class=\"more icon\">Shop Now</span>\n            </span>\n            <span class=\"image\"><img src=\"{{media url=\"wysiwyg/womens/womens-category-tanks.jpg\"}}\" alt=\"\" /></span>\n        </a>\n    </div>\n</div>\n<div class=\"content-heading\">\n    <h2 class=\"title\">Hot Sellers</h2>\n    <p class=\"info\">Favorites from Luma shoppers</p>\n</div>\n{{widget type=\"Magento\\\\CatalogWidget\\\\Block\\\\Product\\\\ProductsList\" products_per_page=\"4\" products_per_page=\"4\" products_count=\"4\" template=\"product/widget/content/grid.phtml\" conditions_encoded=\"a:2:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:3:`sku`;s:8:`operator`;s:2:`()`;s:5:`value`;s:22:`WS12, WT09, WH05, WP12`;]]\"}}\n', '2017-04-23 13:39:40', '2017-04-23 13:39:40', 1),
(9, 'Training Block', 'training-block', '<div class=\"blocks-promo\">\n\n    <a href=\"{{store url=\"\"}}training.html\" class=\"block-promo training-main\">\n        <img src=\"{{media url=\"wysiwyg/training/training-main.jpg\"}}\" alt=\"\" />\n        <span class=\"content\">\n            <strong class=\"title\">\n                <span>Motivate</span> yourself.<br />\n                <span>Reach</span> goals.<br />\n                <span>Boost</span> ambition.<br />\n                <span>Max</span> fitness.<br />\n                <span>Upgrade</span> lifestyle.\n            </strong>\n        </span>\n    </a>\n    <a href=\"{{store url=\"\"}}collections/erin-recommends.html\" class=\"block-promo training-erin\">\n        <img src=\"{{media url=\"wysiwyg/training/training-erin.jpg\"}}\" alt=\"\" />\n        <span class=\"content\">\n            <strong class=\"title\">Before creating Luma, pro trainer Erin Renny helped world-class athletes reach peak fitness</strong>\n            <span class=\"info\">Hand-selected by Erin, our training downloads reflect a commitment to yoga, health and wellness.</span>\n        </span>\n    </a>\n    <a href=\"{{store url=\"\"}}training/training-video.html\" class=\"block-promo training-on-demand\">\n        <span class=\"content\">\n            <span class=\"icon download\"><span>Download</span></span>\n            <strong class=\"title\">Training on demand</strong>\n            <span class=\"info\">Luma downloads to inspire and&nbsp;challenge.<br />Your space, your pace</span>\n            <span class=\"more icon\">Videos</span>\n        </span>\n    </a>\n</div>\n<div class=\"content-heading\">\n    <h2 class=\"title\">Top Videos</h2>\n    <p class=\"info\">Stream free with subscription</p>\n</div>\n{{widget type=\"Magento\\\\CatalogWidget\\\\Block\\\\Product\\\\ProductsList\" products_count=\"4\" template=\"product/widget/content/grid.phtml\" conditions_encoded=\"a:2:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:3:`sku`;s:8:`operator`;s:2:`()`;s:5:`value`;s:38:`241-MB08, 240-LV05, 240-LV09, 240-LV07`;]]\"}}\n', '2017-04-23 13:39:40', '2017-04-23 13:39:40', 1),
(10, 'Men Block', 'men-block', '<div class=\"blocks-promo\">\n    <a href=\"{{store url=\"\"}}men.html\" class=\"block-promo mens-main\">\n        <img src=\"{{media url=\"wysiwyg/mens/mens-main.jpg\"}}\" alt=\"\" />\n        <span class=\"content\">\n            <span class=\"info\">Luma’s Performance Fabric collection</span>\n            <strong class=\"title\">Going the extra mile just got extra comfortable</strong>\n            <span class=\"more button\">Shop Performance</span>\n        </span>\n    </a>\n    <div class=\"block-promo-wrapper block-promo-2columns\">\n        <a href=\"{{store url=\"\"}}men/tops-men/tees-men.html\" class=\"block-promo mens-t-shirts\">\n            <span class=\"content\">\n                <strong class=\"title\">Save up to $24!</strong>\n                <img src=\"{{media url=\"wysiwyg/mens/mens-t-shirts.png\"}}\" alt=\"\" />\n                <span class=\"info\">Buy 3 Luma tees, get 4 instead</span>\n                <span class=\"more icon\">Shop Tees</span>\n            </span>\n        </a>\n        <a href=\"{{store url=\"\"}}men/bottoms-men/pants-men.html\" class=\"block-promo mens-pants\">\n            <img src=\"{{media url=\"wysiwyg/mens/mens-pants.jpg\"}}\" alt=\"\" />\n            <span class=\"content\">\n                <strong class=\"title\">Last chance<br />for pants</strong>\n                <span class=\"info\">Take <span>20% OFF</span>and save bigtime*</span>\n                <span class=\"more icon\">Shop Pants</span>\n            </span>\n        </a>\n    </div>\n    <div class=\"block-promo-wrapper block-promo-3columns\">\n        <a href=\"{{store url=\"\"}}men/bottoms-men/shorts-men.html\" class=\"block-promo mens-category-shorts\">\n            <span class=\"content\">\n                <strong class=\"title\">Luma shorts</strong>\n                <span class=\"info\">Cool it now</span>\n                <span class=\"more icon\">Shop Shorts</span>\n            </span>\n            <span class=\"image\"><img src=\"{{media url=\"wysiwyg/mens/mens-category-shorts.jpg\"}}\" alt=\"\" /></span>\n        </a>\n        <a href=\"{{store url=\"\"}}men/tops-men/tees-men.html\" class=\"block-promo mens-category-tees\">\n            <span class=\"content\">\n                <strong class=\"title\">Luma tees</strong>\n                <span class=\"info\">Grab a tee or two!</span>\n                <span class=\"more icon\">Shop Tees</span>\n            </span>\n            <span class=\"image\"><img src=\"{{media url=\"wysiwyg/mens/mens-category-tees.jpg\"}}\" alt=\"\" /></span>\n        </a>\n        <a href=\"{{store url=\"\"}}men/tops-men/hoodies-and-sweatshirts-men.html\" class=\"block-promo mens-category-hoodies\">\n            <span class=\"content\">\n                <strong class=\"title\">Luma hoodies</strong>\n                <span class=\"info\">Dress for fitness</span>\n                <span class=\"more icon\">Shop Hoodies</span>\n            </span>\n            <span class=\"image\"><img src=\"{{media url=\"wysiwyg/mens/mens-category-hoodies.jpg\"}}\" alt=\"\" /></span>\n        </a>\n    </div>\n</div>\n<div class=\"content-heading\">\n    <h2 class=\"title\">Hot Sellers</h2>\n    <p class=\"info\">Favorites from Luma shoppers</p>\n</div>\n{{widget type=\"Magento\\\\CatalogWidget\\\\Block\\\\Product\\\\ProductsList\" products_per_page=\"4\" products_count=\"4\" template=\"product/widget/content/grid.phtml\" conditions_encoded=\"a:2:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:3:`sku`;s:8:`operator`;s:2:`()`;s:5:`value`;s:23:`MT07, MH07, MSH03, MP03`;]]\"}}\n', '2017-04-23 13:39:40', '2017-04-23 13:39:40', 1),
(11, 'Gear Block', 'gear-block', '<div class=\"blocks-promo\">\n    <a href=\"{{store url=\"\"}}gear.html\" class=\"block-promo gear-main\">\n        <img src=\"{{media url=\"wysiwyg/gear/gear-main.jpg\"}}\" alt=\"\" />\n        <span class=\"content\">\n            <strong class=\"title\">Sprite Yoga Companion Kit</strong>\n            <span class=\"info\">Save up to 20% on a&nbsp;bundle!</span>\n            <span class=\"more button\">Shop Yoga Kit</span>\n        </span>\n    </a>\n    <div class=\"block-promo-wrapper block-promo-2columns\">\n        <a href=\"{{store url=\"\"}}gear/fitness-equipment.html\" class=\"block-promo gear-fitnes\">\n            <img src=\"{{media url=\"wysiwyg/gear/gear-fitnes.jpg\"}}\" alt=\"\" />\n            <span class=\"content\">\n                <strong class=\"title\">Loosen Up</strong>\n                <span class=\"info\">Extend your training with yoga straps, tone bands,<br />and jump ropes</span>\n                <span class=\"more icon\">Shop Fitness</span>\n            </span>\n        </a>\n        <a href=\"{{store url=\"\"}}gear/fitness-equipment.html\" class=\"block-promo gear-equipment\">\n            <img src=\"{{media url=\"wysiwyg/gear/gear-equipment.jpg\"}}\" alt=\"\" />\n            <span class=\"content\">\n                <strong class=\"title\">Here’s to you!</strong>\n                <span class=\"info\">$4 Luma water bottle<br />(save&nbsp;70%)</span>\n                <span class=\"note\">Enter promo code H2O<br />at check out</span>\n            </span>\n        </a>\n    </div>\n    <div class=\"block-promo-wrapper block-promo-3columns\">\n        <a href=\"{{store url=\"\"}}gear/bags.html\" class=\"block-promo gear-category-bags\">\n            <span class=\"content\">\n                <strong class=\"title\">Tote, cart or carry</strong>\n                <span class=\"info\">Luma bags go the distance</span>\n                <span class=\"more icon\">Shop Bags</span>\n            </span>\n            <span class=\"image\"><img src=\"{{media url=\"wysiwyg/gear/gear-category-bags.jpg\"}}\" alt=\"\" /></span>\n        </a>\n        <a href=\"{{store url=\"\"}}gear/fitness-equipment.html\" class=\"block-promo gear-category-equipment\">\n            <span class=\"content\">\n                <strong class=\"title\">Let’s get after it!</strong>\n                <span class=\"info\">Luma gym equipment fits your goals and&nbsp;style</span>\n                <span class=\"more icon\">Shop Equipment</span>\n            </span>\n            <span class=\"image\"><img src=\"{{media url=\"wysiwyg/gear/gear-category-equipment.jpg\"}}\" alt=\"\" /></span>\n        </a>\n        <a href=\"{{store url=\"\"}}gear/watches.html\" class=\"block-promo gear-category-watches\">\n            <span class=\"content\">\n                <strong class=\"title\">Luma watches</strong>\n                <span class=\"info\">Keeping pace has never been more stylish</span>\n                <span class=\"more icon\">Shop Watches</span>\n            </span>\n            <span class=\"image\"><img src=\"{{media url=\"wysiwyg/gear/gear-category-watches.jpg\"}}\" alt=\"\" /></span>\n        </a>\n    </div>\n</div>\n<div class=\"content-heading\">\n    <h2 class=\"title\">Hot Sellers</h2>\n    <p class=\"info\">Favorites from Luma shoppers</p>\n</div>\n{{widget type=\"Magento\\\\CatalogWidget\\\\Block\\\\Product\\\\ProductsList\" products_per_page=\"4\" products_count=\"4\" template=\"product/widget/content/grid.phtml\" conditions_encoded=\"a:2:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:3:`sku`;s:8:`operator`;s:2:`()`;s:5:`value`;s:35:`24-MB02, 24-WB04, 24-UG06, 24-WG080`;]]\"}}\n', '2017-04-23 13:39:40', '2017-04-23 13:39:40', 1),
(12, 'Sale Block', 'sale-block', '<div class=\"blocks-promo\">\n    <a href=\"{{store url=\"\"}}promotions/women-sale.html\" class=\"block-promo sale-main\">\n        <img src=\"{{media url=\"wysiwyg/sale/sale-main.jpg\"}}\" alt=\"\" />\n        <span class=\"content\">\n            <span class=\"info\">Women’s Deals</span>\n            <strong class=\"title\">Pristine prices on pants, tanks and bras.</strong>\n            <span class=\"more button\">Shop Women’s Deals</span>\n        </span>\n    </a>\n    <div class=\"block-promo-wrapper block-promo-2columns\">\n        <a href=\"{{store url=\"\"}}promotions/men-sale.html\" class=\"block-promo sale-mens\">\n            <img src=\"{{media url=\"wysiwyg/sale/sale-mens.jpg\"}}\" alt=\"\" />\n            <span class=\"content\">\n                <strong class=\"title\">Men’s Bargains</strong>\n                <span class=\"info\">Stretch your budget with active attire</span>\n                <span class=\"more icon\">Shop Men’s Deals</span>\n            </span>\n        </a>\n        <a href=\"{{store url=\"\"}}gear.html\" class=\"block-promo sale-women\">\n            <img src=\"{{media url=\"wysiwyg/sale/sale-gear.jpg\"}}\" alt=\"\" />\n            <span class=\"content\">\n                <strong class=\"title\">Luma Gear Steals</strong>\n                <span class=\"info\">Your best efforts deserve a deal</span>\n                <span class=\"more icon\">Shop Luma Gear</span>\n            </span>\n        </a>\n    </div>\n    <div class=\"block-promo-wrapper block-promo-3columns\">\n        <a class=\"block-promo sale-20-off\">\n            <span class=\"content\">\n                <strong class=\"title\">20% OFF</strong>\n                <span class=\"info\">Every $200-plus purchase!</span>\n            </span>\n            <span class=\"image\"><img src=\"{{media url=\"wysiwyg/sale/sale-20-off.png\"}}\" alt=\"\" /></span>\n        </a>\n        <a class=\"block-promo sale-free-shipping\">\n            <span class=\"content\">\n                <strong class=\"title\">Spend $50 or more&nbsp;&mdash; shipping is free!</strong>\n                <img src=\"{{media url=\"wysiwyg/sale/sale-free-shipping.png\"}}\" alt=\"\" />\n                <span class=\"info\">Buy more, save more</span>\n            </span>\n        </a>\n        <a href=\"{{store url=\"\"}}women/tops-women/tees-women.html\" class=\"block-promo sale-womens-t-shirts\">\n            <span class=\"content\">\n                <strong class=\"title\">You can\'t have too many tees</strong>\n                <span class=\"info\">4 tees for the price of 3. Right now</span>\n                <span class=\"more icon\">Tees on sale</span>\n            </span>\n            <span class=\"image\"><img src=\"{{media url=\"wysiwyg/womens/womens-t-shirts.png\"}}\" alt=\"\" /></span>\n        </a>\n    </div>\n</div>', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(13, 'New Block', 'new-block', '<div class=\"blocks-promo\">\n    <a href=\"{{store url=\"\"}}collections/yoga-new.html\" class=\"block-promo new-main\">\n        <img src=\"{{media url=\"wysiwyg/new/new-main.jpg\"}}\" alt=\"\" />\n        <span class=\"content\">\n            <span class=\"info\">New Luma Yoga Collection</span>\n            <strong class=\"title\">The very latest yoga styles  plus twists on timeless classics</strong>\n            <span class=\"more button\">Shop New Yoga</span>\n        </span>\n    </a>\n\n    <div class=\"block-promo-wrapper block-promo-2columns\">\n        <a href=\"{{store url=\"\"}}collections/performance-new.html\" class=\"block-promo new-performance\">\n            <img src=\"{{media url=\"wysiwyg/new/new-performance.jpg\"}}\" alt=\"\" />\n            <span class=\"content\">\n                <strong class=\"title\">Whatever day brings</strong>\n                <span class=\"info\">Luma Cocona<sup>™</sup> for breathability, CoolTech<sup>™</sup> for wicking, or a blend of&nbsp;both.</span>\n                <span class=\"more icon\">Performance Fabrics</span>\n            </span>\n        </a>\n        <a href=\"{{store url=\"\"}}collections/eco-new.html\" class=\"block-promo new-eco\">\n            <img src=\"{{media url=\"wysiwyg/new/new-eco.jpg\"}}\" alt=\"\" />\n            <span class=\"content\">\n                <strong class=\"title\">A sense of renewal</strong>\n                <span class=\"info\">Enjoy comfort of body and mind with Luma eco-friendly choices</span>\n                <span class=\"more icon\">Shop Eco Friendly </span>\n            </span>\n        </a>\n    </div>\n</div>\n<div class=\"content-heading\">\n    <h2 class=\"title\">Luma\'s Latest</h2>\n    <p class=\"info\">Just in time for the new season!</p>\n</div>\n{{widget type=\"Magento\\\\CatalogWidget\\\\Block\\\\Product\\\\ProductsList\" products_per_page=\"4\" products_count=\"4\" template=\"product/widget/content/grid.phtml\" conditions_encoded=\"a:2:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:3:`new`;s:8:`operator`;s:2:`==`;s:5:`value`;s:1:`1`;]]\"}}\n', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(14, 'Home Page Block', 'home-page-block', '<div class=\"blocks-promo\">\n   <a href=\"{{store url=\"\"}}collections/yoga-new.html\" class=\"block-promo home-main\">\n       <img src=\"{{media url=\"wysiwyg/home/home-main.jpg\"}}\" alt=\"\" />\n       <span class=\"content bg-white\">\n           <span class=\"info\">New Luma Yoga Collection</span>\n           <strong class=\"title\">Get fit and look fab in new seasonal styles</strong>\n           <span class=\"action more button\">Shop New Yoga</span>\n       </span>\n   </a>\n   <div class=\"block-promo-wrapper block-promo-hp\">\n       <a href=\"{{store url=\"\"}}promotions/pants-all.html\" class=\"block-promo home-pants\">\n           <img src=\"{{media url=\"wysiwyg/home/home-pants.jpg\"}}\" alt=\"\" />\n           <span class=\"content\">\n               <strong class=\"title\">20% OFF</strong>\n               <span class=\"info\">Luma pants when you shop today*</span>\n               <span class=\"action more icon\">Shop Pants</span>\n           </span>\n       </a>\n       <a href=\"{{store url=\"\"}}promotions/tees-all.html\" class=\"block-promo home-t-shirts\">\n           <span class=\"image\"><img src=\"{{media url=\"wysiwyg/home/home-t-shirts.png\"}}\" alt=\"\" /></span>\n           <span class=\"content\">\n               <strong class=\"title\">Even more ways to mix and match</strong>\n               <span class=\"info\">Buy 3 Luma tees get a 4th free</span>\n               <span class=\"action more icon\">Shop Tees</span>\n           </span>\n       </a>\n       <a href=\"{{store url=\"\"}}collections/erin-recommends.html\" class=\"block-promo home-erin\">\n           <img src=\"{{media url=\"wysiwyg/home/home-erin.jpg\"}}\" alt=\"\" />\n           <span class=\"content\">\n               <strong class=\"title\">Take it from Erin</strong>\n               <span class=\"info\">Luma founder Erin Renny shares her favorites!</span>\n               <span class=\"action more icon\">Shop Erin Recommends</span>\n           </span>\n       </a>\n       <a href=\"{{store url=\"\"}}collections/performance-fabrics.html\" class=\"block-promo home-performance\">\n           <img src=\"{{media url=\"wysiwyg/home/home-performance.jpg\"}}\" alt=\"\" />\n           <span class=\"content bg-white\">\n               <strong class=\"title\">Science meets performance</strong>\n               <span class=\"info\">Wicking to raingear, Luma covers&nbsp;you</span>\n               <span class=\"action more icon\">Shop Performance</span>\n           </span>\n       </a>\n       <a href=\"{{store url=\"\"}}collections/eco-friendly.html\" class=\"block-promo home-eco\">\n           <img src=\"{{media url=\"wysiwyg/home/home-eco.jpg\"}}\" alt=\"\" />\n           <span class=\"content bg-white\">\n               <strong class=\"title\">Twice around, twice as nice</strong>\n               <span class=\"info\">Find conscientious, comfy clothing in our <nobr>eco-friendly</nobr> collection</span>\n               <span class=\"action more icon\">Shop Eco-Friendly</span>\n           </span>\n       </a>\n   </div>\n</div>\n<div class=\"content-heading\">\n   <h2 class=\"title\">Hot Sellers</h2>\n   <p class=\"info\">Here is what`s trending on Luma right now</p>\n</div>\n{{widget type=\"Magento\\\\CatalogWidget\\\\Block\\\\Product\\\\ProductsList\" products_per_page=\"8\" products_count=\"8\" template=\"product/widget/content/grid.phtml\" conditions_encoded=\"a:2:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:3:`sku`;s:8:`operator`;s:2:`()`;s:5:`value`;s:60:`WS12, WT09, MT07, MH07, 24-MB02, 24-WB04, 241-MB08, 240-LV05`;]]\"}}\n', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(15, 'Performance Fabrics Block', 'performance-fabrics-block', '<div class=\"blocks-promo\">\n   <div class=\"block-promo collection-performance\">\n       <img src=\"{{media url=\"wysiwyg/collection/collection-performance.jpg\"}}\" alt=\"\" />\n       <span class=\"content\">\n           <strong class=\"title\">You\'re the best</strong>\n           <span class=\"info\">Make a strong statement with Luma Performance sportswear</span>\n       </span>\n   </div>\n</div>\n{{widget type=\"Magento\\\\CatalogWidget\\\\Block\\\\Product\\\\ProductsList\" products_count=\"5\" template=\"product/widget/content/grid.phtml\" conditions_encoded=\"a:3:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:18:`performance_fabric`;s:8:`operator`;s:2:`==`;s:5:`value`;s:1:`1`;]s:4:`1--2`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:3:`new`;s:8:`operator`;s:2:`==`;s:5:`value`;s:1:`1`;]]\"}}', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(16, 'Eco Friendly Block', 'eco-friendly-block', '<div class=\"blocks-promo\">\n    <div class=\"block-promo collection-eco\">\n        <img src=\"{{media url=\"wysiwyg/collection/collection-eco.jpg\"}}\" alt=\"\" />\n        <span class=\"content\">\n            <strong class=\"title\">Eco-friendly, ego-friendly</strong>\n            <span class=\"info\">Recycled polyester, hemp and organic cotton apperel</span>\n        </span>\n    </div>\n</div>\n{{widget type=\"Magento\\\\CatalogWidget\\\\Block\\\\Product\\\\ProductsList\" products_count=\"5\" template=\"product/widget/content/grid.phtml\" conditions_encoded=\"a:3:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:14:`eco_collection`;s:8:`operator`;s:2:`==`;s:5:`value`;s:1:`1`;]s:4:`1--2`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:3:`new`;s:8:`operator`;s:2:`==`;s:5:`value`;s:1:`1`;]]\"}}\n', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(17, 'Giftcard Block', 'giftcard-block', '<div class=\"blocks-promo\">\n    <div class=\"block-promo-wrapper block-promo-2columns\">\n        <a href=\"{{store url=\"\"}}\" class=\"block-promo giftcard-mailed\">\n            <span class=\"content\">\n                <strong class=\"title\">Give it away now</strong>\n                <span class=\"info\">A gift card always beats a blind guess</span>\n                <span class=\"more icon\">Mailed Gift Cards</span>\n            </span>\n            <span class=\"image\"><img src=\"{{media url=\"wysiwyg/giftcards/giftcard-mailed.jpg\"}}\" alt=\"\" /></span>\n        </a>\n        <a href=\"{{store url=\"\"}}\" class=\"block-promo giftcard-virtual\">\n            <img src=\"{{media url=\"wysiwyg/giftcards/giftcard-virtual.png\"}}\" alt=\"\" />\n            <span class=\"content\">\n                <strong class=\"title\">Can\'t decide?</strong>\n                <span class=\"info\">Just remember it\'s the card that counts</span>\n                <span class=\"more icon\">Virtual Gift Cards</span>\n            </span>\n        </a>\n    </div>\n</div>', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(18, 'Login Info Block', 'login-data', '<div class=\"message info\" style=\"margin-top: 50px;\">\n    <p><strong>Try Demo Customer Access</strong></p>\n    <p><span style=\"display:inline-block; width: 80px; padding-right: 10px;\">Email:</span>roni_cost@example.com</p>\n    <p><span style=\"display:inline-block; width: 80px; padding-right: 10px;\">Password:</span>roni_cost@example.com</p>\n</div>', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(19, 'EM0146 Necessary - Fashion Store - Home - Ads Text', 'em0146-fashion-home-ads-text', '<div class=\"row em-wrapper-ads-13 hidden-xs\">\r\n<div class=\"text-box col-sm-8 col-xs-8\"><a class=\"icon-banner-left pull-left\" title=\"Tech Support 247\" href=\"#\"><em class=\"fa fa-fw\"></em></a>\r\n<div class=\"em-banner-right\">\r\n<h5><a title=\"Tech Support 247\" href=\"#\">RETURN &amp; EXCHANGE</a></h5>\r\n<p>Vintage pastel tucked t-shirt leather cami</p>\r\n</div>\r\n</div>\r\n<div class=\"text-box col-sm-8 col-xs-8\"><a class=\"icon-banner-left pull-left\" title=\"Free shipping all order\" href=\"#\"><em class=\"fa fa-fw\"></em></a>\r\n<div class=\"em-banner-right\">\r\n<h5><a title=\"Free shipping all order\" href=\"#\">Free shipping</a></h5>\r\n<p>Get Free Shipping on all orders</p>\r\n</div>\r\n</div>\r\n<div class=\"text-box col-sm-8 col-xs-8\"><a class=\"icon-banner-left pull-left\" title=\"30 days return\" href=\"#\"><em class=\"fa fa-fw\"></em></a>\r\n<div class=\"em-banner-right\">\r\n<h5><a title=\"30 days return\" href=\"#\">MEMBER DISCOUNT</a></h5>\r\n<p>The total billed is discount for member</p>\r\n</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(20, 'EM0146 Necessary - Fashion Store - Sidebar Left - Home - Banner 01', 'em0146-fashion-sidebar-left-home-banner-01', '<div class=\"em-wrapper-banners hidden-xs space-small-block\">\r\n<div class=\"effect\"><a class=\"banner-img\" href=\"#\"><img class=\"img-responsive retina-img\" src=\"{{media url=\"wysiwyg/em0146/layout_fashion/home/em_ads_01.jpg\"}}\" alt=\"em_ads_01.jpg\" /></a><span class=\"effect-line\">&nbsp;</span></div>\r\n</div>', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(21, 'EM0146 Necessary - Fashion Store - Sidebar Left - Home - Ads 02', 'em0146-fashion-sidebar-left-home-ads-02', '<div class=\"row\">\r\n<div class=\"col-sm-24\">\r\n<div class=\"em-wrapper-ads-15\">\r\n<div class=\"em-slider em-slider-category\" data-mage-init=\"{&quot;emslider&quot;:{&quot;items&quot;:1}}\">\r\n<div class=\"em-ads-item\">\r\n<div class=\"em-ads-img\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_02.png\'}}\" alt=\"em_ads_02.png\" /></a></div>\r\n<div class=\"em-ads-content\">\r\n<p class=\"em-ads-des\"><em class=\"fa fa-fw\"></em>You can change the visual appearance of almost every element of the theme.</p>\r\n<p class=\"em-ads-author\"><span class=\"em-text-upercase\">elena gilbert </span><span>- Web designer</span></p>\r\n</div>\r\n</div>\r\n<div class=\"em-ads-item\">\r\n<div class=\"em-ads-img\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_02.png\'}}\" alt=\"em_ads_02.png\" /></a></div>\r\n<div class=\"em-ads-content\">\r\n<p class=\"em-ads-des\"><em class=\"fa fa-fw\"></em>You can change the visual appearance of almost every element of the theme.</p>\r\n<p class=\"em-ads-author\"><span class=\"em-text-upercase\">elena gilbert </span><span>- Web designer</span></p>\r\n</div>\r\n</div>\r\n<div class=\"em-ads-item\">\r\n<div class=\"em-ads-img\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_02.png\'}}\" alt=\"em_ads_02.png\" /></a></div>\r\n<div class=\"em-ads-content\">\r\n<p class=\"em-ads-des\"><em class=\"fa fa-fw\"></em>You can change the visual appearance of almost every element of the theme.</p>\r\n<p class=\"em-ads-author\"><span class=\"em-text-upercase\">elena gilbert </span><span>- Web designer</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(22, 'EM0146 Necessary - Fashion Store - Sidebar Left 03 - Home - Recent Blog', 'em0146-fashion-sidebar-left03-home-recent-blog', '<div class=\"row\">\r\n<div class=\"col-sm-24\">\r\n<div class=\"em-wrapper-ads-10 em-line-01\">\r\n<div class=\"em-block-title\">\r\n<h2><span>Blog</span></h2>\r\n</div>\r\n<div class=\"em-from-our-blog\">\r\n<div class=\"em-blog-item em-effect-13\">\r\n<div class=\"em-blog-content bkg-top\"><a href=\"#\"><img class=\"img-responsive retina-img\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_03.jpg\'}}\" alt=\"em_ads_03.jpg\" /></a>\r\n<div class=\"em-blog-time\">\r\n<p class=\"em-blog-date\">28</p>\r\n<p class=\"em-blog-month\">aug</p>\r\n</div>\r\n<div class=\"hov\">&nbsp;</div>\r\n</div>\r\n<div class=\"em-box bkg-bottom\">\r\n<h4 class=\"em-blog-title\"><a href=\"#\">Unlimited Colors</a></h4>\r\n<p class=\"em-blog-des\">You can change the visual appearance of almost every element of the theme. You can change colors using color pickers, apply patterns/textures (predefined or custom) for header...</p>\r\n<p><a class=\"link-more\" href=\"#\">Read more</a></p>\r\n</div>\r\n</div>\r\n<div class=\"em-blog-item em-effect-13\">\r\n<div class=\"em-blog-content bkg-top\"><a href=\"#\"><img class=\"img-responsive retina-img\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_04.jpg\'}}\" alt=\"em_ads_04.jpg\" /></a>\r\n<div class=\"em-blog-time\">\r\n<p class=\"em-blog-date\">28</p>\r\n<p class=\"em-blog-month\">aug</p>\r\n</div>\r\n<div class=\"hov\">&nbsp;</div>\r\n</div>\r\n<div class=\"em-box bkg-bottom\">\r\n<h4 class=\"em-blog-title\"><a href=\"#\">Unlimited Colors</a></h4>\r\n<p class=\"em-blog-des\">You can change the visual appearance of almost every element of the theme. You can change colors using color pickers, apply patterns/textures (predefined or custom) for header...</p>\r\n<p><a class=\"link-more\" href=\"#\">Read more</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(23, 'EM0146 Necessary - Fashion Store - Sidebar Left - Home - Banner 04', 'em0146-fashion-sidebar-left-home-banner-04', '<div class=\"img-banner hidden-xs\">\r\n<div class=\"effect-hover-text2\"><a class=\"banner-img\" title=\"em-sample-title\" href=\"#\"> <img class=\"img-responsive retina-img\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_05.jpg\'}}\" alt=\"em-sample-alt\" /> </a> <a class=\"banner-text\" title=\"em-sample-title\" href=\"#\"> <img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_text_05.png\'}}\" alt=\"em-sample-alt\" /> </a></div>\r\n</div>', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(24, 'EM0146 Necessary - Fashion Store - Area Main 01 - Home - Banners', 'em0146-fashion-area-main01-home-banners', '<div class=\"row hidden-xs space-block\">\r\n<div class=\"em-wrapper-banners\">\r\n<div class=\"col-sm-8 col-xs-8  text-center\">\r\n<div class=\"effect\"><a title=\"em-sample-title\" href=\"#\"> <img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_06.jpg\'}}\" alt=\"em-sample-alt\" /> </a><span class=\"effect-line\">&nbsp;</span></div>\r\n</div>\r\n<div class=\"col-sm-8 col-xs-8  img-banner text-center\">\r\n<div class=\"effect\"><a title=\"em-sample-title\" href=\"#\"> <img class=\"img-responsive retina-img\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_07.jpg\'}}\" alt=\"em-sample-alt\" /> </a><span class=\"effect-line\">&nbsp;</span></div>\r\n</div>\r\n<div class=\"col-sm-8 col-xs-8 text-center\">\r\n<div class=\"effect\"><a title=\"em-sample-title\" href=\"#\"> <img class=\"img-responsive retina-img\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_08.jpg\'}}\" alt=\"em-sample-alt\" /> </a><span class=\"effect-line\">&nbsp;</span></div>\r\n</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:41', '2017-04-23 13:39:41', 1),
(25, 'EM0146 Necessary - Fashion Store - Area Main 02 - Home - Tabs', 'em0146-fashion-area-main02-home-tabs', '<div class=\"emtabs-ajaxblock-loaded space-small-block\">\r\n<div class=\"em-tabs-widget tabs-widget\">\r\n<div class=\"widget-title em-widget-title\">\r\n<h3><span>New Arrivals</span></h3>\r\n</div>\r\n<div class=\"em-tabs-right\">\r\n<div class=\"em-tabs emtabs product data items\" data-mage-init=\"{&quot;tabs&quot;:{&quot;openedState&quot;:&quot;active&quot;}}\">\r\n<div id=\"tab-label-shirt-tab\" class=\"data item title\" data-role=\"collapsible\"><a id=\"tab-label-shirt-tab-title\" class=\"data switch\" tabindex=\"-1\" href=\"#shirt-tab\" data-toggle=\"switch\">Shirt</a></div>\r\n<div id=\"shirt-tab\" class=\"data item content\" data-role=\"content\">{{widget type=\"Emthemes\\FilterProduct\\Block\\Product\\ProductsList\" display_type=\"all_products\" products_count=\"8\" order_by=\"name ASC\" show=\"thumb,name,review,price,addtocart,addto\" thumb_width=\"250\" thumb_height=\"250\" filter_template=\"custom\" custom_template=\"grid_noslider.phtml\" conditions_encoded=\"a:1:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]]\"}}</div>\r\n<div id=\"tab-label-skirt-tab\" class=\"data item title\" data-role=\"collapsible\"><a id=\"tab-label-skirt-tab-title\" class=\"data switch\" tabindex=\"-1\" href=\"#skirt-tab\" data-toggle=\"switch\">Skirt</a></div>\r\n<div id=\"skirt-tab\" class=\"data item content\" data-role=\"content\">{{widget type=\"Emthemes\\FilterProduct\\Block\\Product\\ProductsList\" display_type=\"all_products\" products_count=\"8\" order_by=\"name ASC\" show=\"thumb,name,review,price,addtocart,addto\" thumb_width=\"250\" thumb_height=\"250\" filter_template=\"custom\" custom_template=\"grid_noslider.phtml\" conditions_encoded=\"a:2:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:12:`category_ids`;s:8:`operator`;s:2:`==`;s:5:`value`;s:10:`22, 27, 28`;]]\"}}</div>\r\n<div id=\"tab-label-dress-tab\" class=\"data item title\" data-role=\"collapsible\"><a id=\"tab-label-dress-tab-title\" class=\"data switch\" tabindex=\"-1\" href=\"#dress-tab\" data-toggle=\"switch\">Dress</a></div>\r\n<div id=\"dress-tab\" class=\"data item content\" data-role=\"content\">{{widget type=\"Emthemes\\FilterProduct\\Block\\Product\\ProductsList\" display_type=\"all_products\" products_count=\"8\" order_by=\"name ASC\" show=\"thumb,name,review,price,addtocart,addto\" thumb_width=\"250\" thumb_height=\"250\" filter_template=\"custom\" custom_template=\"grid_noslider.phtml\" conditions_encoded=\"a:2:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:12:`category_ids`;s:8:`operator`;s:2:`==`;s:5:`value`;s:18:`12, 14, 15, 16, 17`;]]\"}}</div>\r\n<div id=\"tab-label-outerwear-tab\" class=\"data item title\" data-role=\"collapsible\"><a id=\"tab-label-outerwear-tab-title\" class=\"data switch\" tabindex=\"-1\" href=\"#outerwear-tab\" data-toggle=\"switch\">Outerwear</a></div>\r\n<div id=\"outerwear-tab\" class=\"data item content\" data-role=\"content\">{{widget type=\"Emthemes\\FilterProduct\\Block\\Product\\ProductsList\" display_type=\"all_products\" products_count=\"8\" order_by=\"name ASC\" show=\"thumb,name,review,price,addtocart,addto\" thumb_width=\"250\" thumb_height=\"250\" filter_template=\"custom\" custom_template=\"grid_noslider.phtml\" conditions_encoded=\"a:2:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:12:`category_ids`;s:8:`operator`;s:2:`==`;s:5:`value`;s:10:`13, 18, 19`;]]\"}}</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1),
(26, 'EM0146 Necessary - Fashion Store - Area Main 03 - Home - Banner', 'em0146-fashion-area-main03-home-banner', '<div class=\"em-wrapper-banners hidden-xs space-block\">\r\n<div class=\"effect\"><a title=\"em-sample-title\" href=\"#\"> <img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_10.jpg\'}}\" alt=\"em-sample-alt\" /> </a><span class=\"effect-line\">&nbsp;</span></div>\r\n</div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1),
(27, 'EM0146 Necessary - Fashion Store - Main Bottom - Banners', 'em0146-fashion-main-bottom-banners', '<div class=\"row hidden-xs space-block\">\r\n<div class=\"em-wrapper-banners\">\r\n<div class=\"col-sm-12 text-center\">\r\n<div class=\"effect\"><a title=\"em-sample-title\" href=\"#\"> <img class=\"img-responsive retina-img\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_11.jpg\'}}\" alt=\"em-sample-alt\" /></a><span class=\"effect-line\">&nbsp;</span></div>\r\n</div>\r\n<div class=\"col-sm-12 text-center\">\r\n<div class=\"effect\"><a title=\"em-sample-title\" href=\"#\"> <img class=\"img-responsive retina-img\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_12.jpg\'}}\" alt=\"em-sample-alt\" /></a><span class=\"effect-line\">&nbsp;</span></div>\r\n</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1);
INSERT DELAYED IGNORE INTO `cms_block` VALUES
(28, 'EM0146 Necessary - Fashion Store - Main Bottom 02 - Ads', 'em0146-fashion-main-bottom02-ads', '<div class=\"em-wrapper-ads-09 space-block\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-6 text-center em-wrapper-ads-item\">\r\n<div class=\"em-ads-item\">\r\n<p><em class=\"fa fa-fw\"></em></p>\r\n<div class=\"em-ads-content\">\r\n<h4 class=\"primary em-text-upercase\">SUPER ONLINE STORES</h4>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-6 text-center em-wrapper-ads-item  line-left line-right\">\r\n<div class=\"em-ads-item\">\r\n<p><em class=\"fa fa-fw\"></em></p>\r\n<div class=\"em-ads-content\">\r\n<h4 class=\"primary em-text-upercase\">RESPONSIVaE DESIGN</h4>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-6 text-center  em-wrapper-ads-item  line-left line-right\">\r\n<div class=\"em-ads-item\">\r\n<p><em class=\"fa fa-fw\"></em></p>\r\n<div class=\"em-ads-content\">\r\n<h4 class=\"primary em-text-upercase\">FREE UPDATES</h4>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-6 text-center  em-wrapper-ads-item\">\r\n<div class=\"em-ads-item\">\r\n<p><em class=\"fa fa-fw\"></em></p>\r\n<div class=\"em-ads-content\">\r\n<h4 class=\"primary em-text-upercase\">24/7 SUPPORT ONLINE</h4>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1),
(29, 'EM0146 Necessary - Fashion Store - Main Bottom 03 - Banner Slider', 'em0146-fashion-main-bottom03-banners-slider', '<div class=\"em-wrapper-brands space-block\">\r\n<div class=\" slider-style02\">\r\n<div class=\"em-slider em-slider-banners em-slider-navigation-icon\" data-mage-init=\"{&quot;emslider&quot;:{&quot;loop&quot;:true,&quot;lazyLoad&quot;:true,&quot;items&quot;:6,&quot;dots&quot;:false,&quot;nav&quot;:true,&quot;responsive&quot;:{&quot;0&quot;:{&quot;items&quot;:1},&quot;320&quot;:{&quot;items&quot;:2},&quot;640&quot;:{&quot;items&quot;:3},&quot;768&quot;:{&quot;items&quot;:4},&quot;1024&quot;:{&quot;items&quot;:5}}}}\">\r\n<div class=\"em-banners-item\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/brand/em_brand_01.png\'}}\" alt=\"em_brand_01.jpg\" /></a></div>\r\n<div class=\"em-banners-item\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/brand/em_brand_06.png\'}}\" alt=\"em_brand_02.jpg\" /></a></div>\r\n<div class=\"em-banners-item\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/brand/em_brand_03.png\'}}\" alt=\"em_brand_03.jpg\" /></a></div>\r\n<div class=\"em-banners-item\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/brand/em_brand_04.png\'}}\" alt=\"em_brand_04.jpg\" /></a></div>\r\n<div class=\"em-banners-item\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/brand/em_brand_05.png\'}}\" alt=\"em_brand_05.jpg\" /></a></div>\r\n<div class=\"em-banners-item\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/brand/em_brand_02.png\'}}\" alt=\"em_brand_06.jpg\" /></a></div>\r\n<div class=\"em-banners-item\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/brand/em_brand_01.png\'}}\" alt=\"em_brand_01.jpg\" /></a></div>\r\n<div class=\"em-banners-item\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/brand/em_brand_02.png\'}}\" alt=\"em_brand_02.jpg\" /></a></div>\r\n<div class=\"em-banners-item\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/brand/em_brand_03.png\'}}\" alt=\"em_brand_03.jpg\" /></a></div>\r\n</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1),
(30, 'EM0146 Necessary - Fashion Store - Before Footer 01 - Links', 'em0146-fashion-before-footer01-links', '<div class=\"em-footer-info\">\r\n<div class=\"em-footer-info-bottom\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-16 col-sm-push-4\">\r\n<div class=\"em-wrapper-newsletter text-center\">\r\n<div class=\"em-block-title\" data-mage-init=\"{&quot;emCollapsible&quot;:{&quot;collapseTarget&quot;:&quot;#collapse07&quot;}}\">\r\n<p class=\"h3 em-text-upercase\"><span>Sign Up For Newsletter</span></p>\r\n</div>\r\n<div id=\"collapse07\" class=\"em-block-content em-newsletter\">{{block class=\"Magento\\Newsletter\\Block\\Subscribe\" name=\"em.newsletter.style05\" template=\"subscribe.phtml\"}}</div>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-24 text-center\">\r\n<div class=\"em-wrapper-social\">\r\n<div class=\"em-block-title  visible-xs\" data-mage-init=\"{&quot;emCollapsible&quot;:{&quot;collapseTarget&quot;:&quot;#collapse08&quot;}}\">\r\n<p class=\"h5 em-text-upercase\"><span>Follow Us</span></p>\r\n</div>\r\n<div id=\"collapse08\" class=\"em-block-content\">\r\n<p class=\"em-social\"><a class=\"em-social-icon em-facebook f-left\" title=\"em-sample-title\" href=\"#\"><span class=\"fa fa-facebook\">&nbsp;</span></a> <a class=\"em-social-icon em-twitter f-left\" title=\"em-sample-title\" href=\"#\"><span class=\"fa fa-twitter\">&nbsp;</span></a> <a class=\"em-social-icon em-pinterest  f-left\" title=\"em-sample-title\" href=\"#\"><span class=\"fa fa-pinterest\">&nbsp;</span></a> <a class=\"em-social-icon em-google f-left\" title=\"em-sample-title\" href=\"#\"><span class=\"fa fa-google\">&nbsp;</span></a> <a class=\"em-social-icon em-rss  f-left\" title=\"em-sample-title\" href=\"#\"><span class=\"fa fa-rss\">&nbsp;</span></a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 first text-center\">\r\n<div class=\"em-block-title\" data-mage-init=\"{&quot;emCollapsible&quot;:{&quot;collapseTarget&quot;:&quot;#collapse01&quot;}}\">\r\n<p class=\"h5 em-text-upercase\"><span>What\'s hot</span></p>\r\n</div>\r\n<ul id=\"collapse01\" class=\"em-links em-block-content block-info\">\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Discount Voucher</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Spring Collection</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Trending</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Best Sellers</span></a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-sm-4 text-center\">\r\n<div class=\"em-block-title\" data-mage-init=\"{&quot;emCollapsible&quot;:{&quot;collapseTarget&quot;:&quot;#collapse02&quot;}}\">\r\n<p class=\"h5 em-text-upercase\"><span>Brands</span></p>\r\n</div>\r\n<ul id=\"collapse02\" class=\"em-links em-block-content block-info\">\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Jack &amp; Jones</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Calvin Klein</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Ray Ban</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>River Island</span></a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-sm-4 text-center\">\r\n<div class=\"em-block-title\" data-mage-init=\"{&quot;emCollapsible&quot;:{&quot;collapseTarget&quot;:&quot;#collapse03&quot;}}\">\r\n<p class=\"h5 em-text-upercase\"><span>Men shop</span></p>\r\n</div>\r\n<ul id=\"collapse03\" class=\"em-links em-block-content block-info\">\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Top</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Bottoms</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Accessories</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Shoes</span></a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-sm-4 text-center\">\r\n<div class=\"em-block-title\" data-mage-init=\"{&quot;emCollapsible&quot;:{&quot;collapseTarget&quot;:&quot;#collapse04&quot;}}\">\r\n<p class=\"h5 em-text-upercase\"><span>Women shop</span></p>\r\n</div>\r\n<ul id=\"collapse04\" class=\"em-links em-block-content block-info\">\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Jeans</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Dresses</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Other</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Shoes</span></a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-sm-4 text-center\">\r\n<div class=\"em-block-title\" data-mage-init=\"{&quot;emCollapsible&quot;:{&quot;collapseTarget&quot;:&quot;#collapse05&quot;}}\">\r\n<p class=\"h5 em-text-upercase\"><span>Help</span></p>\r\n</div>\r\n<ul id=\"collapse05\" class=\"em-links em-block-content block-info\">\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>F.A.Q.</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Shipping</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"{{store direct_url=\'contacts\'}}\"><span>Contact Us</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Privacy Policy</span></a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-sm-4 last text-center\">\r\n<div class=\"em-block-title\" data-mage-init=\"{&quot;emCollapsible&quot;:{&quot;collapseTarget&quot;:&quot;#collapse06&quot;}}\">\r\n<p class=\"h5 em-text-upercase\"><span>Nation Apps</span></p>\r\n</div>\r\n<ul id=\"collapse06\" class=\"em-links em-block-content block-info\">\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>iPhone</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>iPad</span></a></li>\r\n<li class=\"em-links-item\"><a title=\"em-sample-title\" href=\"#\"><span>Android</span></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1),
(31, 'EM0146 Necessary - Fashion Store - Footer Inner - Payment', 'em0146-fashion-area-footer-inner-payment', '<div class=\"em-payment f-right\"><a class=\"em-payment-icon em-visa\" title=\"em-sample-title\" href=\"#\">visa</a> <a class=\"em-payment-icon em-master\" title=\"em-sample-title\" href=\"#\">master</a> <a class=\"em-payment-icon em-express \" title=\"em-sample-title\" href=\"#\">express</a><a class=\"em-payment-icon em-paypal\" title=\"em-sample-title\" href=\"#\">paypal</a> <a class=\"em-payment-icon em-other \" title=\"em-sample-title\" href=\"#\">other</a></div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1),
(32, 'EM0146 Necessary - Fashion Store - Area Main 04 - Home - Best Sale', 'em0146-fashion-area-main02-home-best-sale', '<div class=\"em-wrapper-area05-06-07 em-wrapper-product-18 space-small-block\">\r\n<div class=\"col-sm-6 em-clear-padding\">\r\n<div class=\"em-wrapper-products em-best-products button-show01 button-hide-text\">{{widget type=\"Emthemes\\FilterProduct\\Block\\Product\\ProductsList\" title=\"Best Sales\" display_type=\"bestseller_products\" products_count=\"1\" order_by=\"name ASC\" show=\"thumb,name,review,price,addtocart,addto\" thumb_width=\"300\" thumb_height=\"300\" filter_template=\"custom\" custom_template=\"em_grid_05.phtml\" conditions_encoded=\"a:2:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:12:`category_ids`;s:8:`operator`;s:2:`==`;s:5:`value`;s:34:`20, 21, 23, 24, 25, 26, 22, 27, 28`;]]\"}}</div>\r\n</div>\r\n<div class=\"col-sm-12 em-clear-padding em-line\">\r\n<div class=\"em-featured-products\">\r\n<div class=\"em-featured-top\">{{widget type=\"Emthemes\\FilterProduct\\Block\\Product\\ProductsList\" title=\"Featured Products\" display_type=\"all_products\" products_count=\"4\" order_by=\"name ASC\" show=\"thumb,name,review,price\" thumb_width=\"110\" thumb_height=\"110\" filter_template=\"custom\" custom_template=\"em_grid_15.phtml\" conditions_encoded=\"a:2:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]s:4:`1--1`;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Product`;s:9:`attribute`;s:12:`category_ids`;s:8:`operator`;s:2:`==`;s:5:`value`;s:34:`11, 12, 14, 15, 16, 17, 13, 18, 19`;]]\"}}</div>\r\n<div class=\"row em-featured-bottom hidden-xs\">\r\n<div class=\"col-sm-24 first text-center\">\r\n<div class=\"effect-hover-text\"><a class=\"banner-img\" title=\"em-sample-title\" href=\"#\"> <img class=\"img-responsive retina-img em-clear-radius\" src=\"{{media url=\'wysiwyg/em0146/layout_fashion/home/em_ads_13.jpg\'}}\" alt=\"em-sample-alt\" /> </a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-6 em-clear-padding\">\r\n<div class=\"em-sale-off\">{{widget type=\"Emthemes\\FilterProduct\\Block\\Product\\ProductsList\" title=\"Sale Off\" display_type=\"all_products\" products_count=\"4\" order_by=\"name ASC\" show=\"thumb,name,price\" thumb_width=\"80\" thumb_height=\"80\" filter_template=\"custom\" custom_template=\"em_list.phtml\" conditions_encoded=\"a:1:[i:1;a:4:[s:4:`type`;s:50:`Magento|CatalogWidget|Model|Rule|Condition|Combine`;s:10:`aggregator`;s:3:`all`;s:5:`value`;s:1:`1`;s:9:`new_child`;s:0:``;]]\"}}</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1),
(33, 'EM0146 Necessary - Fashion Store - Area Main - Slideshow', 'em0146-fashion-main-area-main-slideshow', '<div class=\"row\">\r\n<div class=\"col-sm-6\">\r\n<div class=\"em-left-menu\">{{block class=\"Magento\\Theme\\Block\\Html\\Topmenu\" name=\"home.leftnav\" template=\"Magento_Theme::html/left_menu.phtml\" ttl=\"3600\"}}</div>\r\n</div>\r\n<div class=\"col-sm-18\">\r\n<div class=\"em-slideshow space-small-block\">\r\n<div class=\"em-slider em-slider-banners em-slider-navigation-icon\" data-mage-init=\"{&quot;emslider&quot;:{&quot;loop&quot;:true,&quot;lazyLoad&quot;:true,&quot;items&quot;:1,&quot;dots&quot;:false,&quot;nav&quot;:true}}\">\r\n<div class=\"em-banners-item\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\"wysiwyg/em0146/layout_fashion/home/slideshow/sup_slide1.jpg\"}}\" alt=\"sup_slide1.jpg\" /></a></div>\r\n<div class=\"em-banners-item\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\"wysiwyg/em0146/layout_fashion/home/slideshow/sup_slide2.jpg\"}}\" alt=\"sup_slide2.jpg\" /></a></div>\r\n<div class=\"em-banners-item\"><a href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\"wysiwyg/em0146/layout_fashion/home/slideshow/sup_slide3.jpg\"}}\" alt=\"sup_slide3.jpg\" /></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1),
(34, 'EM0146 Necessary - Main Megamenu', 'em0146-main-megamenu', '<div class=\"em-menu\">\r\n<ul class=\"em-menu-content\">\r\n<li class=\"level0 submenu\"><a class=\"arrow\" href=\"javascript:void(0)\"><span>&gt;</span></a> <a class=\"em-menu-link\" href=\"{{store direct_url=\'women.html\'}}\"><span>Home Store</span></a>\r\n</li>\r\n<li class=\"level0 submenu\"><a class=\"arrow\" href=\"javascript:void(0)\"><span>&gt;</span></a> <a class=\"em-menu-link\"><span>Features</span></a>\r\n<div class=\"dropmenu-template\">\r\n<div class=\"dropmenu-content dropmenu-1\">\r\n<div class=\"em-row\">\r\n<div class=\"col-12\">\r\n<ul class=\"ls-link\">\r\n<li><a href=\"#\">Deals product <span class=\"menu-label coming-soon\">&nbsp;</span></a></li>\r\n<li><a href=\"#\">Product Label <span class=\"menu-label coming-soon\">&nbsp;</span></a></li>\r\n<li><a href=\"#\">ColorSwatch</a></li>\r\n<li><a href=\"#\">Blog</a></li>\r\n<li><a href=\"#\">Mega Menu</a></li>\r\n<li><a href=\"#\">Quickshop</a></li>\r\n<li><a href=\"#\">Emthemes Setting</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"level0 submenu parent\"><a class=\"arrow\" href=\"javascript:void(0)\"><span>&gt;</span></a> <a class=\"em-menu-link\" href=\"{{store direct_url=\'women/tops-women.html\'}}\"><span class=\"icon-menu\">&nbsp;</span><span>Categorys</span></a>\r\n<div class=\"dropmenu-template\">\r\n<div class=\"dropmenu-content dropmenu-6 dropmenu-full-content\">\r\n<div class=\"em-row\">\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>1 Column</span></div>\r\n<div class=\"nav-text\">\r\n<p>Key features for an online market, such as Featured products, Promotions, Deals with Timing, are absolutely ready. It&rsquo;s no doubt that Titanshop will get traffic for your site, and also help boosting sales.</p>\r\n<p class=\"view-more\"><a href=\"{{store direct_url=\'women/tops-women.html\'}}\">View more</a></p>\r\n</div>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-banner\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/menu/img-menu01.jpg\'}}\" alt=\"em-sample-alt\" /></div>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>2 Columns</span></div>\r\n<div class=\"nav-text\">\r\n<p>A friendly responsive design, adaptive screen with the new Bootstrap 3 is already very impressive. Besides that, Visual Content Editor allows you to edit content directly on front-end.</p>\r\n<p class=\"view-more\"><a href=\"{{store direct_url=\'men/tops-men.html\'}}\">View more</a></p>\r\n</div>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-banner\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/menu/img-menu02.jpg\'}}\" alt=\"em-sample-alt\" /></div>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>3 Columns</span></div>\r\n<div class=\"nav-text\">\r\n<p>A friendly responsive design, adaptive screen with the new Bootstrap 3 is already very impressive. Besides that, Visual Content Editor allows you to edit content directly on front-end.</p>\r\n<p class=\"view-more\"><a href=\"{{store direct_url=\'gear/bags.html\'}}\">View more</a></p>\r\n</div>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-banner\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/menu/img-menu03.jpg\'}}\" alt=\"em-sample-alt\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"level0 submenu parent\"><a class=\"arrow\" href=\"javascript:void(0)\"><span>&gt;</span></a> <a class=\"em-menu-link\"><span class=\"icon-menu\">&nbsp;</span><span>Products</span></a>\r\n<div class=\"dropmenu-template\">\r\n<div class=\"dropmenu-content dropmenu-5\">\r\n<div class=\"em-row\">\r\n<div class=\"col-3\">\r\n<div class=\"nav-title-link\"><span>Product Types</span></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'compete-track-tote.html\'}}\">Simple product</a></li>\r\n<li><a href=\"{{store direct_url=\'beginner-s-yoga.html\'}}\">Downloadable Product</a></li>\r\n<li><a href=\"{{store direct_url=\'chaz-kangeroo-hoodie.html\'}}\">Configurable Product</a></li>\r\n<li><a href=\"{{store direct_url=\'set-of-sprite-yoga-straps.html\'}}\">Grouped Product</a></li>\r\n<li><a href=\"{{store direct_url=\'sprite-yoga-companion-kit.html\'}}\">Bundle Product</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-3\">\r\n<div class=\"nav-title-link\"><span>Product Columns</span></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'aeon-capri.html\'}}\">1 Column</a></li>\r\n<li><a href=\"{{store direct_url=\'atlas-fitness-tank.html\'}}\">2 Columns Left</a></li>\r\n<li><a href=\"{{store direct_url=\'cronus-yoga-pant.html\'}}\">2 Columns Right</a></li>\r\n<li><a href=\"{{store direct_url=\'bardot-capri.html\'}}\">Upsell</a></li>\r\n<li><a href=\"{{store direct_url=\'breathe-easy-tank.html\'}}\">Related Product</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6\">\r\n<div class=\"nav-banner\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/menu/img-menu10.jpg\'}}\" alt=\"em-sample-alt\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"level0 submenu parent\"><a class=\"arrow\" href=\"javascript:void(0)\"><span>&gt;</span></a> <a class=\"em-menu-link\" href=\"{{store direct_url=\'man.html\'}}\"><span class=\"icon-menu\">&nbsp;</span><span>Fashion</span></a>\r\n<div class=\"dropmenu-template\">\r\n<div class=\"dropmenu-content dropmenu-6\" style=\"padding-bottom: 200px;\">\r\n<div class=\"bg-dropmenu\"><img src=\"{{media url=\'wysiwyg/em0146/menu/bkg-menu.jpg\'}}\" alt=\"em-sample-alt\" /></div>\r\n<div class=\"em-row\">\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>Women</span></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'women/tops-women.html\'}}\">Tops</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/jackets-women.html\'}}\">Jackets</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/hoodies-and-sweatshirts-women.html\'}}\">Hoodies &amp; Sweatshirts</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/tees-women.html\'}}\">Tees</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/tanks-women.html\'}}\">Bras &amp; Tanks</a></li>\r\n<li><a href=\"{{store direct_url=\'women/bottoms-women.html\'}}\">Bottoms</a></li>\r\n<li><a href=\"{{store direct_url=\'women/bottoms-women/pants-women.html\'}}\">Pants</a></li>\r\n<li><a href=\"{{store direct_url=\'women/bottoms-women/shorts-women.html\'}}\">Shorts</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>Men</span></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'men/tops-men.html\'}}\">Tops</a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/jackets-men.html\'}}\">Jackets</a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/hoodies-and-sweatshirts-men.html\'}}\">Hoodies </a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/tees-men.html\'}}\">Tees</a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/tanks-men.html\'}}\">Bras &amp; Tanks</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men.html\'}}\">Bottoms</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/pants-men.html\'}}\">Pants</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/shorts-men.html\'}}\">Shorts</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>Gear</span></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'gear.html\'}}\">Gear</a></li>\r\n<li><a href=\"{{store direct_url=\'gear/bags.html\'}}\">Bags</a></li>\r\n<li><a href=\"{{store direct_url=\'gear/fitness-equipment.html\'}}\">Fitness Equipment</a></li>\r\n<li><a href=\"{{store direct_url=\'gear/fitness-equipment.html\'}}\">watches</a></li>\r\n<li><a href=\"{{store direct_url=\'training.html\'}}\">Training</a></li>\r\n<li><a href=\"{{store direct_url=\'training/training-video.html\'}}\">Video Download</a></li>\r\n<li><a href=\"{{store direct_url=\'men/pants-men.html\'}}\">Pants</a></li>\r\n<li><a href=\"{{store direct_url=\'men/shorts-men.html\'}}\">Shorts</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>Women</span></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'women/tops-women.html\'}}\">Tops</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/jackets-women.html\'}}\">Jackets</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/hoodies-and-sweatshirts-women.html\'}}\">Hoodies &amp; Sweatshirts</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/tees-women.html\'}}\">Tees</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/tanks-women.html\'}}\">Bras &amp; Tanks</a></li>\r\n<li><a href=\"{{store direct_url=\'women/bottoms-women.html\'}}\">Bottoms</a></li>\r\n<li><a href=\"{{store direct_url=\'women/bottoms-women/pants-women.html\'}}\">Pants</a></li>\r\n<li><a href=\"{{store direct_url=\'women/bottoms-women/shorts-women.html\'}}\">Shorts</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>Men</span></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'men/tops-men.html\'}}\">Tops</a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/jackets-men.html\'}}\">Jackets</a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/hoodies-and-sweatshirts-men.html\'}}\">Hoodies </a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/tees-men.html\'}}\">Tees</a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/tanks-men.html\'}}\">Bras &amp; Tanks</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men.html\'}}\">Bottoms</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/pants-men.html\'}}\">Pants</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/shorts-men.html\'}}\">Shorts</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>Gear</span></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'gear.html\'}}\">Gear</a></li>\r\n<li><a href=\"{{store direct_url=\'gear/bags.html\'}}\">Bags</a></li>\r\n<li><a href=\"{{store direct_url=\'gear/fitness-equipment.html\'}}\">Fitness Equipment</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/shorts-men.html\'}}\">watches</a></li>\r\n<li><a href=\"{{store direct_url=\'training.html\'}}\">Training</a></li>\r\n<li><a href=\"{{store direct_url=\'training/training-video.html\'}}\">Video Download</a></li>\r\n<li><a href=\"{{store direct_url=\'men/pants-men.html\'}}\">Pants</a></li>\r\n<li><a href=\"{{store direct_url=\'men/shorts-men.html\'}}\">Shorts</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"level0 submenu parent\"><a class=\"arrow\" href=\"javascript:void(0)\"><span>&gt;</span></a> <a class=\"em-menu-link\" href=\"{{store direct_url=\'men/tops-men.html\'}}\"><span class=\"icon-menu\">&nbsp;</span><span>Sport</span></a>\r\n<div class=\"dropmenu-template\">\r\n<div class=\"dropmenu-content dropmenu-6\">\r\n<div class=\"em-row nav-flex\">\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>Tenis</span></div>\r\n<div class=\"nav-title-banner\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/menu/img-menu08.jpg\'}}\" alt=\"running\" /></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'men/tops-men.html\'}}\">Tops</a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/jackets-men.html\'}}\">Jackets</a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/hoodies-and-sweatshirts-men.html\'}}\">Hoodies </a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/tees-men.html\'}}\">Tees</a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/tanks-men.html\'}}\">Bras &amp; Tanks</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men.html\'}}\">Bottoms</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/pants-men.html\'}}\">Pants</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/shorts-men.html\'}}\">Shorts</a></li>\r\n<li class=\"view-all\"><a href=\"#\"><strong>View all</strong></a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>Golf</span></div>\r\n<div class=\"nav-title-banner\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/menu/img-menu04.jpg\'}}\" alt=\"running\" /></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'women/tops-women.html\'}}\">Tops</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/jackets-women.html\'}}\">Jackets</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/hoodies-and-sweatshirts-women.html\'}}\">Hoodies &amp; Sweatshirts</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/tees-women.html\'}}\">Tees</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/tanks-women.html\'}}\">Bras &amp; Tanks</a></li>\r\n<li><a href=\"{{store direct_url=\'women/bottoms-women.html\'}}\">Bottoms</a></li>\r\n<li><a href=\"{{store direct_url=\'women/bottoms-women/pants-women.html\'}}\">Pants</a></li>\r\n<li><a href=\"{{store direct_url=\'women/bottoms-women/shorts-women.html\'}}\">Shorts</a></li>\r\n<li class=\"view-all\"><a href=\"#\"><strong>View all</strong></a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>Basketball</span></div>\r\n<div class=\"nav-title-banner\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/menu/img-menu05.jpg\'}}\" alt=\"running\" /></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'gear.html\'}}\">Gear</a></li>\r\n<li><a href=\"{{store direct_url=\'gear/bags.html\'}}\">Bags</a></li>\r\n<li><a href=\"{{store direct_url=\'gear/fitness-equipment.html\'}}\">Fitness Equipment</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/shorts-men.html\'}}\">watches</a></li>\r\n<li><a href=\"{{store direct_url=\'training.html\'}}\">Training</a></li>\r\n<li><a href=\"{{store direct_url=\'training/training-video.html\'}}\">Video Download</a></li>\r\n<li><a href=\"{{store direct_url=\'men/pants-men.html\'}}\">Pants</a></li>\r\n<li><a href=\"{{store direct_url=\'men/shorts-men.html\'}}\">Shorts</a></li>\r\n<li class=\"view-all\"><a href=\"#\"><strong>View all</strong></a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>Trainning</span></div>\r\n<div class=\"nav-title-banner\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/menu/img-menu07.jpg\'}}\" alt=\"running\" /></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'women/tops-women.html\'}}\">Tops</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/jackets-women.html\'}}\">Jackets</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/hoodies-and-sweatshirts-women.html\'}}\">Hoodies &amp; Sweatshirts</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/tees-women.html\'}}\">Tees</a></li>\r\n<li><a href=\"{{store direct_url=\'women/tops-women/tanks-women.html\'}}\">Bras &amp; Tanks</a></li>\r\n<li><a href=\"{{store direct_url=\'women/bottoms-women.html\'}}\">Bottoms</a></li>\r\n<li><a href=\"{{store direct_url=\'women/bottoms-women/pants-women.html\'}}\">Pants</a></li>\r\n<li><a href=\"{{store direct_url=\'women/bottoms-women/shorts-women.html\'}}\">Shorts</a></li>\r\n<li class=\"view-all\"><a href=\"#\"><strong>View all</strong></a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-2\">\r\n<div class=\"nav-title-link\"><span>Football</span></div>\r\n<div class=\"nav-title-banner\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/menu/img-menu06.jpg\'}}\" alt=\"running\" /></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'gear.html\'}}\">Gear</a></li>\r\n<li><a href=\"{{store direct_url=\'gear/bags.html\'}}\">Bags</a></li>\r\n<li><a href=\"{{store direct_url=\'gear/fitness-equipment.html\'}}\">Fitness Equipment</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/shorts-men.html\'}}\">watches</a></li>\r\n<li><a href=\"{{store direct_url=\'training.html\'}}\">Training</a></li>\r\n<li><a href=\"{{store direct_url=\'training/training-video.html\'}}\">Video Download</a></li>\r\n<li><a href=\"{{store direct_url=\'men/pants-men.html\'}}\">Pants</a></li>\r\n<li><a href=\"{{store direct_url=\'men/shorts-men.html\'}}\">Shorts</a></li>\r\n<li class=\"view-all\"><a href=\"#\"><strong>View all</strong></a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-2 line-col-left\">\r\n<div class=\"nav-title-link\"><span>other sports</span></div>\r\n<ul class=\"ls-link\">\r\n<li><a href=\"{{store direct_url=\'men/tops-men.html\'}}\">Tops</a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/jackets-men.html\'}}\">Jackets</a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/hoodies-and-sweatshirts-men.html\'}}\">Hoodies </a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/tees-men.html\'}}\">Tees</a></li>\r\n<li><a href=\"{{store direct_url=\'men/tops-men/tanks-men.html\'}}\">Bras &amp; Tanks</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men.html\'}}\">Bottoms</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/pants-men.html\'}}\">Pants</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/shorts-men.html\'}}\">Shorts</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/shorts-men.html\'}}\">Training</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/shorts-men.html\'}}\">Outdoor</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/shorts-men.html\'}}\">Tennis</a></li>\r\n<li><a href=\"{{store direct_url=\'men/bottoms-men/shorts-men.html\'}}\">Golf</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"level0 submenu\"><a class=\"em-menu-link\" href=\"{{store direct_url=\'blog\'}}\"><span class=\"icon-menu\">&nbsp;</span><span>Blog</span></a></li>\r\n</ul>\r\n</div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1),
(35, 'EM0146 Necessary - Area Staic Block - Details Page - Ads', 'em0146-area-staticblock-detailspage-ads', '<div class=\"em-wrapper-ads-09 space-small-block\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-12 text-center em-wrapper-ads-item\">\r\n<div class=\"em-ads-item\">\r\n<p><em class=\"fa fa-fw\"></em></p>\r\n<div class=\"em-banner-right em-ads-content\">\r\n<h4 class=\"primary em-text-upercase\">free shipping</h4>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-12 text-center em-wrapper-ads-item  line-left\">\r\n<div class=\"em-ads-item\">\r\n<p><em class=\"fa fa-fw\"></em></p>\r\n<div class=\"em-banner-right em-ads-content\">\r\n<h4 class=\"primary em-text-upercase\">same day dispatch</h4>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1),
(36, 'EM0146 Necessary - Area Size Chart - Details - Size Chart', 'em0146-area-size-chart-details', '<p><a class=\"em-info-size\" data-role=\"action\"><em class=\"fa fa-fw\"></em>Size Chart</a></p>\r\n<div class=\"size-chart-wrapper\" data-mage-init=\"{&quot;modal&quot;:{&quot;trigger&quot;:&quot;.em-info-size&quot;,&quot;wrapperClass&quot;: &quot;modals-wrapper size-chart&quot;}}\">\r\n<div id=\"sizechartModal\" data-role=\"content\">\r\n<div class=\"modal-dialog\">\r\n<div class=\"modal-content\">\r\n<h3 id=\"sizechartModalLabel\" class=\"modal-title\">Size Chart</h3>\r\n<div class=\"box\">\r\n<p><a class=\"em-eff06-04\" href=\"#\"><img class=\"img-responsive\" src=\"{{media url=\'wysiwyg/em0146/details/em_ads_01.jpg\'}}\" alt=\"em_ads_01.jpg\" /></a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1),
(37, 'EM0146 Necessary - Fashion Store - Popup Advertising Block', 'em0146-fashion-popup-adsvertising-block', '<div class=\"em-block-ads\"><img class=\"img-responsive\" src=\"{{media url=\"wysiwyg/em0146/layout_fashion/home/em_ads_popup.jpg\"}}\" alt=\"em_ads_popup.jpg\" /></div>', '2017-04-23 13:39:42', '2017-04-23 13:39:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_block_store`
--

CREATE TABLE `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Truncate table before insert `cms_block_store`
--

TRUNCATE TABLE `cms_block_store`;
--
-- Dumping data for table `cms_block_store`
--

INSERT DELAYED IGNORE INTO `cms_block_store` VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE `cms_page` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Page Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

--
-- Truncate table before insert `cms_page`
--

TRUNCATE TABLE `cms_page`;
--
-- Dumping data for table `cms_page`
--

INSERT DELAYED IGNORE INTO `cms_page` VALUES
(1, '404 Not Found', '2columns-right', 'Page keywords', 'Page description', 'no-route', 'Whoops, our bad...', '<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li><a href=\"#\" onclick=\"history.go(-1); return false;\">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href=\"{{store url=\"\"}}\">Store Home</a> <span class=\"separator\">|</span> <a href=\"{{store url=\"customer/account\"}}\">My Account</a></li></ul></dd></dl>\r\n', '2017-04-23 11:47:12', '2017-04-23 11:47:12', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home Page', '1column', NULL, NULL, 'home', 'Home Page', NULL, '2017-04-23 11:47:13', '2017-04-23 13:39:39', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Enable Cookies', '1column', NULL, NULL, 'enable-cookies', 'What are Cookies?', '<div class=\"enable-cookies cms-content\">\r\n<p>\"Cookies\" are little pieces of data we send when you visit our store. Cookies help us get to know you better and personalize your experience. Plus they help protect you and other shoppers from fraud.</p>\r\n<p style=\"margin-bottom: 20px;\">Set your browser to accept cookies so you can buy items, save items, and receive customized recommendations. Here’s how:</p>\r\n<ul>\r\n<li><a href=\"https://support.google.com/accounts/answer/61416?hl=en\" target=\"_blank\">Google Chrome</a></li>\r\n<li><a href=\"http://windows.microsoft.com/en-us/internet-explorer/delete-manage-cookies\" target=\"_blank\">Internet Explorer</a></li>\r\n<li><a href=\"http://support.apple.com/kb/PH19214\" target=\"_blank\">Safari</a></li>\r\n<li><a href=\"https://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences\" target=\"_blank\">Mozilla/Firefox</a></li>\r\n</ul>\r\n</div>', '2017-04-23 11:47:13', '2017-04-23 11:47:13', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Privacy Policy', '1column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy Policy', '<div class=\"privacy-policy cms-content\">\n    <div class=\"privacy-policy-content\">\n        <p>This website (\"website\") is operated by Luma Inc., which includes Luma stores, and Luma Private Sales. This privacy policy only covers information collected at this website, and does not cover any information collected offline by Luma. All Luma websites are covered by this privacy policy.</p>\n\n        <h2 id=\"privacy-policy-title-1\">Luma Security</h2>\n        <p>Personal information provided on the website and online credit card transactions are transmitted through a secure server. We are committed to handling your personal information with high standards of information security. We take appropriate physical, electronic, and administrative steps to maintain the security and accuracy of personally identifiable information we collect, including limiting the number of people who have physical access to our database servers, as well as employing electronic security systems and password protections that guard against unauthorized access.</p>\n\n        <p>Our website uses encryption technology, like Secure Sockets Layer (SSL), to protect your personal information during data transport. SSL encrypts ordering information such as your name, address, and credit card number. Our Customer Care center and stores also operate over a private, secure network. Please note that email is not encrypted and is not considered to be a secure means of transmitting credit card information.</p>\n\n        <h2 id=\"privacy-policy-title-2\">Luma Privacy Policy</h2>\n        <p>To help us achieve our goal of providing the highest quality products and services, we use information from our interactions with you and other customers, as well as from other parties. Because we respect your privacy, we have implemented procedures to ensure that your personal information is handled in a safe, secure, and responsible manner. We have posted this privacy policy in order to explain our information collection practices and the choices you have about the way information is collected and used.</p>\n\n        <p>As we continue to develop the Luma website and take advantage of advances in technology to improve the services we offer, this privacy policy likely will change. We therefore encourage you to refer to this policy on an ongoing basis so that you understand our current privacy policy.</p>\n\n        <h2 id=\"privacy-policy-title-3\">The Information We Collect</h2>\n        <p>Generally, you may browse the Luma website without providing any personally identifiable information. However, we may ask you to provide personally identifiable information at various times and places on this website. In some cases, if you choose not to provide us with the requested information, you may not be able to access all parts of this website or participate in all of its features, pricing, and product selection.</p>\n\n        <p>We may collect the following information:</p>\n        <ul>\n            <li>name</li>\n            <li>contact information including email address</li>\n            <li>demographic information such as postcode, preferences and interests</li>\n            <li>other information relevant to customer surveys and/or offers</li>\n        </ul>\n        <p>For the exhaustive list of cookies we collect see the <a href=\"#privacy-policy-title-10\">List of cookies we collect</a> section. From your purchases and other interactions with us, we obtain information concerning the specific products or services you purchase or use. When you visit this website, our web server automatically collects anonymous information such as log data and IP addresses, and may collect general information concerning your location. We may use the automatically collected information for a number of purposes, such as improving our site design, product assortments, customer service, and special promotions.</p>\n        <h2 id=\"privacy-policy-title-4\">How We Use The Information We Collect</h2>\n        <p>We require this information to understand your needs and provide you with a better service, and in particular for the following reasons:</p>\n        <ul>\n            <li>Internal record keeping.</li>\n            <li>We may use the information to improve our products and services.</li>\n            <li>We may periodically send promotional emails about new products, special offers or other information which we think you may find interesting using the email address which you have provided.</li>\n            <li>From time to time, we may also use your information to contact you for market research purposes. We may contact you by email, phone, fax or mail. We may use the information to customize the website according to your interests.</li>\n        </ul>\n\n        <h2 id=\"privacy-policy-title-5\">Security</h2>\n        <p>We are committed to ensuring that your information is secure. In order to prevent unauthorized access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</p>\n\n        <h2 id=\"privacy-policy-title-6\">Others With Whom We Share Your Information.</h2>\n        <p><b>The Luma Group:</b> All of the above information that we collect, as described  above, may be shared among all Luma entities, including Luma Venia and Luma  Terra stores, website and Private Sales.</p>\n\n        <p><b>Service Providers:</b> We also may disclose information to outside companies that  help us bring you the products and services we offer. For example, we may work  with an outside company to: (a) manage a database of customer information; (b)  assist us in distributing emails; (c) assist us with direct marketing and data  collection; (d) provide us storage and analysis; (d) provide fraud prevention; and  (e) provide other services designed to assist us in maximizing our business potential. We require that these outside companies agree to keep confidential all information we share with them and to use the information only to perform their obligations in our agreements with them.</p>\n\n        <p><b>Other Companies:</b> We may provide information to carefully selected outside companies when we believe their products or services may be of interest to you.</p>\n\n        <p><b>Business Transitions:</b> We may transfer or share a copy of personal information about you in the event that Luma or one of its properties, affiliates, or subsidiaries goes through a business transition, such as a merger, being acquired by another company, or selling a portion of its assets. You will be notified via email or prominent notice on our website prior to a change of ownership or control of your personal information, if your personal information will be used contrary to this policy. However, nothing in this Privacy Policy is intended to interfere with the ability of Luma to transfer all or part of its business and/or assets to an affiliate or independent third party at any time, for any purpose, without any limitation whatsoever.</p>\n\n        <p>Luma specifically reserves the right to transfer or share a copy of personally identifiable information collected from its websites to the buyer of that portion of its business relating to that information.</p>\n\n        <p><b>Compliance with Law:</b> We may provide access to information when legally required to do so, to cooperate with police investigations or other legal proceedings, to protect against misuse or unauthorized use of our website, to limit our legal liability, and to protect our rights or to protect the rights, property, or safety of visitors of this website or the public.</p>\n\n        <p>Luma partners with advertising companies to place our advertising on publisher websites on the Internet. These advertising companies collect anonymous information about your visits to our web site. This technology involves the use of third party cookies that allow them to develop personalized advertising so that it directly relates to offers that may be of interest to you. You may choose to opt-out of this service we have with our third-party advertising partner. We may also use Luma cookies to provide similar enhanced online marketing to you based on your interests and preferences. You may also choose to opt out of these enhanced online marketing ads.</p>\n\n        <h2 id=\"privacy-policy-title-7\">Your Choices Regarding Use Of The Information We Collect</h2>\n\n        <p>You have several choices regarding our handling of your nonpublic personally identifiable information.</p>\n\n        <p>\n            <b>Direct Mail or Telephone Marketing:</b> If you shop at the Luma or Private Sales stores and wish to be removed from the list of customers that receive direct mail or telemarketing calls, please either write to Luma Customer Care at 112 West  34th Street, 18th Flr. New York, NY 10120 or call +1 800-403-8838. If you choose to write to us, please include your name, address, and credit card account number (if you have one), and state one of the following:\n            <ul>\n                <li>\"NO MAIL OFFERS\" (if you don\'t want to receive offers by mail);</li>\n                <li>\"NO PHONE OFFERS\" (if you don\'t want to receive offers by phone);</li>\n                <li>\"NO PHONE OR MAIL OFFERS\" (if you don\'t want to receive either).</li>\n            </ul>\n        </p>\n\n        <p>Because customer lists often are prepared well in advance of an offering  (sometimes a few months before the offer is made), you may continue to receive  some offers after you send us a request not to use your information for specified  marketing purposes. We appreciate your patience and understanding in giving us  time to carry out your request.</p>\n\n        <h2 id=\"privacy-policy-title-8\">Your California Privacy Rights</h2>\n        <p>Under California Civil Code sections 1798.83-1798.84, California residents are  entitled to ask us for a notice describing what categories of personal customer  information we share with third parties or corporate affiliates for those third  parties or corporate affiliates\' direct marketing purposes. That notice will identify  the categories of information shared and will include a list of the third parties and  affiliates with which it was shared, along with their names and addresses. If you  are a California resident and would like a copy of this notice, please submit a  written request to the following address: Luma Customer Care, 112 West 34th  Street, 18th Floor, New York, NY 10120. Please allow 30 days for a response.</p>\n\n        <h2 id=\"privacy-policy-title-9\">Cookies, Web Beacons, and How We Use Them</h2>\n        <p>A cookie is a small file which asks permission to be placed on your computer\'s hard drive. Once you agree, the file is added and the cookie helps analyze web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.</p>\n\n        <p>We use traffic log cookies to identify which pages are being used. This helps us analyze data about web page traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.</p>\n\n        <p>Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us. You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.</p>\n\n        <p>A \"web beacon\" or \"pixel tag\" or \"clear gif\" is typically a one-pixel image, used to pass information from your computer or mobile device to a website.</p>\n\n        <p>We use cookies and web beacons to keep track of what you have in your shopping cart and to remember you when you return to the website as well as to identify the pages you click on during your visit to our site and the name of the website you visited immediately before clicking to the Luma website. We use this information to improve our site design, product assortments, customer service, and special promotions. You can, of course, disable cookies and web beacons on your computer by indicating this in the preferences or options menus in your browser. However, it is possible that some parts of our website will not operate correctly if you disable cookies. We may also use web beacons, and other technologies, to help track whether our communications are reaching you, to measure their effectiveness, or to collect certain non-personal information about your computer, device, or browser in order to allow us to better design future communications to you.</p>\n\n        <p>We may contract with third parties who may use cookies and web beacons and collect information on our behalf or provide services such as credit card processing, shipping, promotional services, or data management. We call them our Customer Care Partners. These third parties are prohibited by our contract with them from sharing that information with anyone other than us or our other Customer Care Partners.</p>\n\n        <h2 id=\"privacy-policy-title-10\">List of cookies we collect</h2>\n        <p>The table below lists the cookies we collect and the information they store.</p>\n        <table class=\"data-table\">\n            <thead>\n                <tr>\n                    <th>COOKIE name</th>\n                    <th>COOKIE Description</th>\n                </tr>\n            </thead>\n            <tbody>\n                <tr>\n                    <th>CART</th>\n                    <td>The association with your shopping cart.</td>\n                </tr>\n                <tr>\n                    <th>CATEGORY_INFO</th>\n                    <td>Allows pages to be displayed more quickly.</td>\n                </tr>\n                <tr>\n                    <th>COMPARE</th>\n                    <td>The items that you have in the Compare Products list.</td>\n                </tr>\n                <tr>\n                    <th>CUSTOMER</th>\n                    <td>An encrypted version of your customer id.</td>\n                </tr>\n                <tr>\n                    <th>CUSTOMER_AUTH</th>\n                    <td>An indicator if you are signed into the store.</td>\n                </tr>\n                <tr>\n                    <th>CUSTOMER_INFO</th>\n                    <td>An encrypted version of the customer group you belong to.</td>\n                </tr>\n                <tr>\n                    <th>CUSTOMER_SEGMENT_IDS</th>\n                    <td>Stores your Customer Segment ID</td>\n                </tr>\n                <tr>\n                    <th>EXTERNAL_NO_CACHE</th>\n                    <td>A flag that, indicates whether caching is on or off.</td>\n                </tr>\n                <tr>\n                    <th>FRONTEND</th>\n                    <td>Your session ID on the server.</td>\n                </tr>\n                <tr>\n                    <th>GUEST-VIEW</th>\n                    <td>Allows guests to edit their orders.</td>\n                </tr>\n                <tr>\n                    <th>LAST_CATEGORY</th>\n                    <td>The last category you visited.</td>\n                </tr>\n                <tr>\n                    <th>LAST_PRODUCT</th>\n                    <td>The last product you looked at.</td>\n                </tr>\n                <tr>\n                    <th>NEWMESSAGE</th>\n                    <td>Indicates whether a new message has been received.</td>\n                </tr>\n                <tr>\n                    <th>NO_CACHE</th>\n                    <td>Indicates whether it is allowed to use cache.</td>\n                </tr>\n                <tr>\n                    <th>PERSISTENT_SHOPPING_CART</th>\n                    <td>A link to information about your cart and viewing history if you have asked the site.</td>\n                </tr>\n                <tr>\n                    <th>RECENTLYCOMPARED</th>\n                    <td>The items you recently compared.</td>\n                </tr>\n                <tr>\n                    <th>STF</th>\n                    <td>Information on products you emailed to friends.</td>\n                </tr>\n                <tr>\n                    <th>STORE</th>\n                    <td>The store view or language you have selected.</td>\n                </tr>\n                <tr>\n                    <th>USER_ALLOWED_SAVE_COOKIE</th>\n                    <td>Indicates whether a customer authorized cookies.</td>\n                </tr>\n                <tr>\n                    <th>VIEWED_PRODUCT_IDS</th>\n                    <td>The products that you recently looked at.</td>\n                </tr>\n                <tr>\n                    <th>WISHLIST</th>\n                    <td>An encrypted list of products added to your wish list.</td>\n                </tr>\n                <tr>\n                    <th>WISHLIST_CNT</th>\n                    <td>The number of items in your wish list.</td>\n                </tr>\n            </tbody>\n        </table>\n\n        <h2 id=\"privacy-policy-title-11\">Online Account Registration</h2>\n        <p>To make online shopping faster and easier, you may register on the Luma website. As a registered customer, you only have to enter your shipping addresses and billing information once; they will be securely stored with us for your future use. Using your name and a password of your choice, you may access your account online at any time to add, delete, or change information. If you are using a public computer, we strongly encourage you to Sign Out when you finish shopping. Your information will still be stored with us but it will not be accessible to anyone else from that computer.</p>\n\n        <h2 id=\"privacy-policy-title-12\">Emails</h2>\n        <p>You will receive promotional emails from us only if you have asked to receive them. If you do not want to receive email from Luma or its affiliates you can click on the \"Unsubscribe\" link at the bottom of any email communication sent by us. Please allow us 3 business days from when the request was received to complete the removal, as some of our promotions may already have been in process before you submitted your request.</p>\n\n        <h2 id=\"privacy-policy-title-13\">Acceptance</h2>\n        <p>By using this website, you accept the policies set forth in this Privacy Policy.</p>\n\n        <h2 id=\"privacy-policy-title-14\">Questions for Luma?</h2>\n        <p><a href=\"{{store url=\"contact\"}}\">Contact Us</a></p>\n    </div>\n    <div class=\"block block-collapsible-nav\">\n        <div class=\"title block-collapsible-nav-title\" data-mage-init=\"{&quot;toggleAdvanced&quot;: {&quot;toggleContainers&quot;: &quot;#privacy-policy-nav-content&quot;, &quot;selectorsToggleClass&quot;: &quot;active&quot;}}\">Privacy Menu</div>\n        <div class=\"block-collapsible-content content\" id=\"privacy-policy-nav-content\">\n            <ul class=\"items\">\n                <li class=\"item current\"><a href=\"#privacy-policy-title-1\">Luma Security</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-2\">Luma Privacy Policy</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-3\">The Information We Collect</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-4\">How We Use The Information We Collect</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-5\">Security</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-6\">Others With Whom We Share Your Information.</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-7\">Your Choices Regarding Use Of The Information We Collect</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-8\">Your California Privacy Rights</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-9\">Cookies, Web Beacons, and How We Use Them</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-10\">List of cookies we collect</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-11\">Online Account Registration</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-12\">Emails</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-13\">Acceptance</a></li>\n                <li class=\"item\"><a href=\"#privacy-policy-title-14\">Questions for Luma?</a></li>\n            </ul>\n        </div>\n    </div>\n</div>\n', '2017-04-23 11:47:13', '2017-04-23 13:39:39', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'About us', '1column', NULL, NULL, 'about-us', 'About us', '<div class=\"about-info cms-content\">\r\n<p class=\"cms-content-important\">With more than 230 stores spanning 43 states and growing, Luma is a nationally recognized active wear manufacturer and retailer. We&rsquo;re passionate about active lifestyles &ndash; and it goes way beyond apparel.</p>\r\n<p>At Luma, wellness is a way of life. We don&rsquo;t believe age, gender or past actions define you, only your ambition and desire for wholeness... today.</p>\r\n<p>We differentiate ourselves through a combination of unique designs and styles merged with unequaled standards of quality and authenticity. Our founders have deep roots in yoga and health communities and our selections serve amateur practitioners and professional athletes alike.</p>\r\n<ul style=\"list-style: none; margin-top: 20px; padding: 0;\">\r\n<li><a href=\"{{store url=\"contact\"}}\">Contact Luma</a></li>\r\n<li><a href=\"{{store url=\"customer-service\"}}\">Customer Service</a></li>\r\n<li><a href=\"{{store url=\"privacy-policy\"}}\">Luma Privacy Policy</a></li>\r\n<li><a href=\"{{store url=\"\"}}\">Shop Luma</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"em-menu\">\r\n	<ul class=\"em-menu-hoz\">\r\n		<li class=\"level0 submenu\"><a class=\"em-menu-link\"><span class=\"icon-menu\">&nbsp;</span><span>1 Column</span></a></li>\r\n		<li class=\"level0 submenu parent\"><a class=\"em-menu-link\"><span class=\"icon-menu\">&nbsp;</span><span>2 Columns</span></a>\r\n		<div class=\"dropmenu-template\">\r\n		<div class=\"dropmenu-content dropmenu-3\">\r\n		<div class=\"em-row\">\r\n		<div class=\"col-4\">\r\n		<div class=\"nav-title-link\"><span>shoes</span></div>\r\n		<ul class=\"ls-link\">\r\n		<li><a href=\"#\">Originals</a></li>\r\n		<li><a href=\"#\">Running</a></li>\r\n		<li><a href=\"#\">Training</a></li>\r\n		<li><a href=\"#\">Outdoor</a></li>\r\n		<li><a href=\"#\">Tennis</a></li>\r\n		<li><a href=\"#\">Golf</a></li>\r\n		<li><a href=\"#\">Golf</a></li>\r\n		<li><a href=\"#\">clothing</a></li>\r\n		</ul>\r\n		</div>\r\n		<div class=\"col-8\">\r\n		<div class=\"nav-text\">\r\n		<p>A friendly responsive design, adaptive screen with the new Bootstrap 3 is already very impressive. Besides that, Visual Content Editor allows you to edit content directly on front-end. Key features for an online market, such as Featured products, Promotions, Deals with Timing, are absolutely ready. It&rsquo;s no doubt that Titanshop will get traffic for your site, and also help boosting sales.</p>\r\n		<p>You can change visual appearance of almost every element of this Magento theme. You can set your favorite colors and generate css file from the admin.</p>\r\n		</div>\r\n		</div>\r\n		</div>\r\n		</div>\r\n		</div>\r\n		</li>\r\n		<li class=\"level0 submenu parent\"><a class=\"em-menu-link\"><span class=\"icon-menu\">&nbsp;</span><span>3 Columns</span></a>\r\n		<div class=\"dropmenu-template\">\r\n		<div class=\"dropmenu-content dropmenu-5\">\r\n		<div class=\"em-row\">\r\n		<div class=\"col-3\">\r\n		<div class=\"nav-title-link\"><span>shoes</span></div>\r\n		<ul class=\"ls-link\">\r\n		<li><a href=\"#\">Originals</a></li>\r\n		<li><a href=\"#\">Running</a></li>\r\n		<li><a href=\"#\">Training</a></li>\r\n		<li><a href=\"#\">Outdoor</a></li>\r\n		<li><a href=\"#\">Tennis</a></li>\r\n		<li><a href=\"#\">Golf</a></li>\r\n		<li><a href=\"#\">Golf</a></li>\r\n		<li><a href=\"#\">clothing</a></li>\r\n		</ul>\r\n		</div>\r\n		<div class=\"col-9\">\r\n		<div class=\"em-row\">\r\n		<div class=\"col-6\">\r\n		<div class=\"nav-title-link\"><span>shoes</span></div>\r\n		<ul class=\"ls-link\">\r\n		<li><a href=\"#\">Originals</a></li>\r\n		<li><a href=\"#\">Running</a></li>\r\n		<li><a href=\"#\">Training</a></li>\r\n		<li><a href=\"#\">Outdoor</a></li>\r\n		<li><a href=\"#\">Tennis</a></li>\r\n		<li><a href=\"#\">Golf</a></li>\r\n		<li><a href=\"#\">Golf</a></li>\r\n		<li><a href=\"#\">clothing</a></li>\r\n		</ul>\r\n		</div>\r\n		<div class=\"col-6\">\r\n		<div class=\"nav-title-link\"><span>shoes</span></div>\r\n		<ul class=\"ls-link\">\r\n		<li><a href=\"#\">Originals</a></li>\r\n		<li><a href=\"#\">Running</a></li>\r\n		<li><a href=\"#\">Training</a></li>\r\n		<li><a href=\"#\">Outdoor</a></li>\r\n		<li><a href=\"#\">Tennis</a></li>\r\n		<li><a href=\"#\">Golf</a></li>\r\n		<li><a href=\"#\">Golf</a></li>\r\n		<li><a href=\"#\">clothing</a></li>\r\n		</ul>\r\n		</div>\r\n		</div>\r\n		</div>\r\n		</div>\r\n		</div>\r\n		</div>\r\n		</li>\r\n		<li class=\"level0 submenu parent\"><a class=\"em-menu-link\"><span class=\"icon-menu\">&nbsp;</span><span>6 Columns</span></a>\r\n			<div class=\"dropmenu-template\">\r\n				<div class=\"dropmenu-content dropmenu-6\">\r\n					<div class=\"em-row\">\r\n					<div class=\"col-2\">\r\n					<div class=\"nav-title-link\"><span>shoes</span></div>\r\n					<ul class=\"ls-link\">\r\n					<li><a href=\"#\">Originals</a></li>\r\n					<li><a href=\"#\">Running</a></li>\r\n					<li><a href=\"#\">Training</a></li>\r\n					<li><a href=\"#\">Outdoor</a></li>\r\n					<li><a href=\"#\">Tennis</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">clothing</a></li>\r\n					</ul>\r\n					</div>\r\n					<div class=\"col-2\">\r\n					<div class=\"nav-title-link\"><span>shoes</span></div>\r\n					<ul class=\"ls-link\">\r\n					<li><a href=\"#\">Originals</a></li>\r\n					<li><a href=\"#\">Running</a></li>\r\n					<li><a href=\"#\">Training</a></li>\r\n					<li><a href=\"#\">Outdoor</a></li>\r\n					<li><a href=\"#\">Tennis</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">clothing</a></li>\r\n					</ul>\r\n					</div>\r\n					<div class=\"col-2\">\r\n					<div class=\"nav-title-link\"><span>shoes</span></div>\r\n					<ul class=\"ls-link\">\r\n					<li><a href=\"#\">Originals</a></li>\r\n					<li><a href=\"#\">Running</a></li>\r\n					<li><a href=\"#\">Training</a></li>\r\n					<li><a href=\"#\">Outdoor</a></li>\r\n					<li><a href=\"#\">Tennis</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">clothing</a></li>\r\n					</ul>\r\n					</div>\r\n					<div class=\"col-2\">\r\n					<div class=\"nav-title-link\"><span>shoes</span></div>\r\n					<ul class=\"ls-link\">\r\n					<li><a href=\"#\">Originals</a></li>\r\n					<li><a href=\"#\">Running</a></li>\r\n					<li><a href=\"#\">Training</a></li>\r\n					<li><a href=\"#\">Outdoor</a></li>\r\n					<li><a href=\"#\">Tennis</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">clothing</a></li>\r\n					</ul>\r\n					</div>\r\n					<div class=\"col-2\">\r\n					<div class=\"nav-title-link\"><span>shoes</span></div>\r\n					<ul class=\"ls-link\">\r\n					<li><a href=\"#\">Originals</a></li>\r\n					<li><a href=\"#\">Running</a></li>\r\n					<li><a href=\"#\">Training</a></li>\r\n					<li><a href=\"#\">Outdoor</a></li>\r\n					<li><a href=\"#\">Tennis</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">clothing</a></li>\r\n					</ul>\r\n					</div>\r\n					<div class=\"col-2\">\r\n					<div class=\"nav-title-link\"><span>shoes</span></div>\r\n					<ul class=\"ls-link\">\r\n					<li><a href=\"#\">Originals</a></li>\r\n					<li><a href=\"#\">Running</a></li>\r\n					<li><a href=\"#\">Training</a></li>\r\n					<li><a href=\"#\">Outdoor</a></li>\r\n					<li><a href=\"#\">Tennis</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">clothing</a></li>\r\n					</ul>\r\n					</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</li>\r\n		<li class=\"level0 submenu parent\"><a class=\"em-menu-link\"><span class=\"icon-menu\">&nbsp;</span><span>Sport layout</span></a>\r\n			<div class=\"dropmenu-template\">\r\n				<div class=\"dropmenu-content dropmenu-6\">\r\n					<div class=\"em-row\">\r\n					<div class=\"col-2\">\r\n					<div class=\"nav-title-link\"><span>shoes</span></div>\r\n					<div class=\"nav-title-banner\">\r\n						<img style=\"width: 172px; height: 80px;\" src=\"http://demandware.edgesuite.net/aagl_prd/on/demandware.static/-/Sites-adidas-AU-Library/default/dwbce30de0/header-redesign/Header_images_running.jpg\" alt=\"running\">\r\n					</div>\r\n					<ul class=\"ls-link\">\r\n					<li><a href=\"#\">Originals</a></li>\r\n					<li><a href=\"#\">Running</a></li>\r\n					<li><a href=\"#\">Training</a></li>\r\n					<li><a href=\"#\">Outdoor</a></li>\r\n					<li><a href=\"#\">Tennis</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">clothing</a></li>\r\n					</ul>\r\n					</div>\r\n					<div class=\"col-2\">\r\n					<div class=\"nav-title-link\"><span>shoes</span></div>\r\n					<div class=\"nav-title-banner\">\r\n						<img style=\"width: 172px; height: 80px;\" src=\"http://demandware.edgesuite.net/aagl_prd/on/demandware.static/-/Sites-adidas-AU-Library/default/dwbce30de0/header-redesign/Header_images_running.jpg\" alt=\"running\">\r\n					</div>\r\n					<ul class=\"ls-link\">\r\n					<li><a href=\"#\">Originals</a></li>\r\n					<li><a href=\"#\">Running</a></li>\r\n					<li><a href=\"#\">Training</a></li>\r\n					<li><a href=\"#\">Outdoor</a></li>\r\n					<li><a href=\"#\">Tennis</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">clothing</a></li>\r\n					</ul>\r\n					</div>\r\n					<div class=\"col-2\">\r\n					<div class=\"nav-title-link\"><span>shoes</span></div>\r\n					<div class=\"nav-title-banner\">\r\n						<img style=\"width: 172px; height: 80px;\" src=\"http://demandware.edgesuite.net/aagl_prd/on/demandware.static/-/Sites-adidas-AU-Library/default/dwbce30de0/header-redesign/Header_images_running.jpg\" alt=\"running\">\r\n					</div>\r\n					<ul class=\"ls-link\">\r\n					<li><a href=\"#\">Originals</a></li>\r\n					<li><a href=\"#\">Running</a></li>\r\n					<li><a href=\"#\">Training</a></li>\r\n					<li><a href=\"#\">Outdoor</a></li>\r\n					<li><a href=\"#\">Tennis</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">clothing</a></li>\r\n					</ul>\r\n					</div>\r\n					<div class=\"col-2\">\r\n					<div class=\"nav-title-link\"><span>shoes</span></div>\r\n					<div class=\"nav-title-banner\">\r\n						<img style=\"width: 172px; height: 80px;\" src=\"http://demandware.edgesuite.net/aagl_prd/on/demandware.static/-/Sites-adidas-AU-Library/default/dwbce30de0/header-redesign/Header_images_running.jpg\" alt=\"running\">\r\n					</div>\r\n					<ul class=\"ls-link\">\r\n					<li><a href=\"#\">Originals</a></li>\r\n					<li><a href=\"#\">Running</a></li>\r\n					<li><a href=\"#\">Training</a></li>\r\n					<li><a href=\"#\">Outdoor</a></li>\r\n					<li><a href=\"#\">Tennis</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">clothing</a></li>\r\n					</ul>\r\n					</div>\r\n					<div class=\"col-2\">\r\n					<div class=\"nav-title-link\"><span>shoes</span></div>\r\n					<div class=\"nav-title-banner\">\r\n						<img style=\"width: 172px; height: 80px;\" src=\"http://demandware.edgesuite.net/aagl_prd/on/demandware.static/-/Sites-adidas-AU-Library/default/dwbce30de0/header-redesign/Header_images_running.jpg\" alt=\"running\">\r\n					</div>\r\n					<ul class=\"ls-link\">\r\n					<li><a href=\"#\">Originals</a></li>\r\n					<li><a href=\"#\">Running</a></li>\r\n					<li><a href=\"#\">Training</a></li>\r\n					<li><a href=\"#\">Outdoor</a></li>\r\n					<li><a href=\"#\">Tennis</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">Golf</a></li>\r\n					<li><a href=\"#\">clothing</a></li>\r\n					</ul>\r\n					</div>\r\n					<div class=\"col-2\">\r\n						<div class=\"nav-title-link\"><span>shoes</span></div>\r\n						<div class=\"nav-title-banner\">\r\n						<img style=\"width: 172px; height: 80px;\" src=\"http://demandware.edgesuite.net/aagl_prd/on/demandware.static/-/Sites-adidas-AU-Library/default/dwbce30de0/header-redesign/Header_images_running.jpg\" alt=\"running\">\r\n					</div>\r\n						<ul class=\"ls-link\">\r\n						<li><a href=\"#\">Originals</a></li>\r\n						<li><a href=\"#\">Running</a></li>\r\n						<li><a href=\"#\">Training</a></li>\r\n						<li><a href=\"#\">Outdoor</a></li>\r\n						<li><a href=\"#\">Tennis</a></li>\r\n						<li><a href=\"#\">Golf</a></li>\r\n						<li><a href=\"#\">Golf</a></li>\r\n						<li><a href=\"#\">clothing</a></li>\r\n						</ul>\r\n					</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</li>\r\n	</ul>\r\n</div>', '2017-04-23 13:39:39', '2017-04-23 13:39:39', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Customer Service', '1column', NULL, NULL, 'customer-service', 'Customer Service', '<div class=\"customer-service cms-content\">\n  <div class=\"cms-content-important\">\n      <h2>Luma Delivery and Returns</h2>\n      <p>We hope you love shopping with Luma. Here are our delivery and returns policies to help make sure we meet your expectations. <a href=\"{{store url=\"contact\"}}\">Contact Us.</a></p>\n  </div>\n\n  <h2>Shipping and Delivery</h2>\n  <p>Shipping and Delivery is the charge for internet order processing, item selection, packaging, transport and handling. We don’t guarantee delivery times, but we do our best to provide accurate estimates.</p>\n\n  <p>Deliveries occur only on weekdays. Shipping and Delivery charges are subject to change and are determined when you order. Estimated delivery time assumes orders are placed before 12:00 noon (PST). Orders you place with Luma late on Friday or on Saturday will not be processed until Monday. Charges may be added to orders with Priority, Overnight and International shipping if we try unsuccessfully to deliver your order more than once.</p>\n\n  <p>Delivery addresses in Alaska, Hawaii, Puerto Rico, and Guam should add an additional $5.00 charge for standard Shipping & Delivery. Orders arrive in 7 to 9 business days when ordered before 12:00 noon (PST).</p>\n\n  <div class=\"table-wrapper\">\n      <table>\n          <caption>Shipping and Delivery</caption>\n          <thead>\n              <tr>\n                  <th><strong>Merchandise total *</strong></th>\n                  <th><strong>STANDARD</strong><br />5&mdash;7 day shipping **</th>\n                  <th><strong>PRIORITY</strong><br />2&mdash;3 day shipping **</th>\n                  <th><strong>OVERNIGHT</strong><br />Next business day **</th>\n              </tr>\n          </thead>\n          <tbody>\n              <tr>\n                  <th>Up to $200</th>\n                  <td>$16</td>\n                  <td>$26</td>\n                  <td>$33</td>\n              </tr>\n              <tr>\n                  <th>$200.01&mdash;500.00</th>\n                  <td>$21</td>\n                  <td>$31</td>\n                  <td>$38</td>\n              </tr>\n              <tr>\n                  <th>$500.01&mdash;1000.00</th>\n                  <td>$29</td>\n                  <td>$39</td>\n                  <td>$46</td>\n              </tr>\n              <tr>\n                  <th>Over $1000.00</th>\n                  <td>$34</td>\n                  <td>$44</td>\n                  <td>$51</td>\n              </tr>\n          </tbody>\n      </table>\n  </div>\n\n  <p>\n      <small>*before tax and additional charges</small><br />\n      <small>**after processing if ordered by 12:00 noon PST</small>\n  </p>\n\n  <h2 style=\"margin-top: 40px;\">Returns and Replacements</h2>\n  <p>We want you to be completely happy with your Luma order. If for any reason you are not satisfied, we will gladly accept your timely return of unworn, unwashed, or defective merchandise. Used merchandise cannot be returned unless defective. Returned merchandise should include the vendor packaging and tags and be in the same condition as when it was received. A pickup and/or restock fee may apply. Merchandise must be returned within 30 days of receipt of merchandise.</p>\n\n  <h3>Returning Gifts</h3>\n  <p>When returning a gift, a Luma Gift Card will be issued to the gift recipient for the amount of the returned merchandise. The card can be used for purchases from any Luma store, and online. In compliance with Federal law, for gifts valued at more than $2,000.00, the recipient will receive a check rather than an Luma Gift Card.</p>\n\n  <h3>Returning Merchandise by Mail</h3>\n  <p>On the back of the packing slip enclosed with your Luma order, please note the reason(s) for return and whether you wish to  exchange the item(s) or receive a credit/refund (depending on the original form of  payment).</p>\n  <p>Enclose the return section of the packing slip with your item(s). Please use one  of the return labels provided on the front of your packing slip to ensure proper  return address and credit information. Restricted items must be returned using  ground transportation.</p>\n  <p>Please allow 10 to 14 days for Luma to process your return.</p>\n</div>\n', '2017-04-23 13:39:39', '2017-04-23 13:39:39', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'EM Neccessary Homepage Two Columns', '2columns-left', NULL, NULL, 'neccessary-home', NULL, NULL, '2017-04-23 13:39:39', '2017-04-23 13:39:39', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_store`
--

CREATE TABLE `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Truncate table before insert `cms_page_store`
--

TRUNCATE TABLE `cms_page_store`;
--
-- Dumping data for table `cms_page_store`
--

INSERT DELAYED IGNORE INTO `cms_page_store` VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_config_data`
--

CREATE TABLE `core_config_data` (
  `config_id` int(10) UNSIGNED NOT NULL COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Config Data';

--
-- Truncate table before insert `core_config_data`
--

TRUNCATE TABLE `core_config_data`;
--
-- Dumping data for table `core_config_data`
--

INSERT DELAYED IGNORE INTO `core_config_data` VALUES
(1, 'default', 0, 'web/seo/use_rewrites', '1'),
(2, 'default', 0, 'web/unsecure/base_url', 'http://localhost/magento204/'),
(3, 'default', 0, 'web/secure/base_url', 'https://localhost/magento204/'),
(4, 'default', 0, 'general/locale/code', 'vi_VN'),
(5, 'default', 0, 'web/secure/use_in_frontend', '0'),
(6, 'default', 0, 'web/secure/use_in_adminhtml', '0'),
(7, 'default', 0, 'general/locale/timezone', 'Asia/Ho_Chi_Minh'),
(8, 'default', 0, 'currency/options/base', 'VND'),
(9, 'default', 0, 'currency/options/default', 'VND'),
(10, 'default', 0, 'currency/options/allow', 'VND'),
(11, 'default', 0, 'general/region/display_all', '1'),
(12, 'default', 0, 'general/region/state_required', 'AT,BR,CA,CH,DE,EE,ES,FI,FR,LT,LV,RO,US'),
(13, 'default', 0, 'catalog/category/root_id', NULL),
(14, 'default', 0, 'design/theme/theme_id', '4'),
(15, 'default', 0, 'web/default/cms_home_page', 'neccessary-home'),
(16, 'default', 0, 'web/url/use_store', '0'),
(17, 'default', 0, 'web/url/redirect_to_base', '1'),
(18, 'default', 0, 'web/unsecure/base_link_url', '{{unsecure_base_url}}'),
(19, 'default', 0, 'web/unsecure/base_static_url', NULL),
(20, 'default', 0, 'web/unsecure/base_media_url', NULL),
(21, 'default', 0, 'web/secure/base_link_url', '{{secure_base_url}}'),
(22, 'default', 0, 'web/secure/base_static_url', NULL),
(23, 'default', 0, 'web/secure/base_media_url', NULL),
(24, 'default', 0, 'web/secure/offloader_header', 'SSL_OFFLOADED'),
(25, 'default', 0, 'web/default/front', 'cms'),
(26, 'default', 0, 'web/default/no_route', 'cms/noroute/index'),
(27, 'default', 0, 'web/default/cms_no_route', 'neccessary-home'),
(28, 'default', 0, 'web/default/cms_no_cookies', 'enable-cookies'),
(29, 'default', 0, 'web/default/show_cms_breadcrumbs', '1'),
(30, 'default', 0, 'web/cookie/cookie_lifetime', '3600'),
(31, 'default', 0, 'web/cookie/cookie_path', NULL),
(32, 'default', 0, 'web/cookie/cookie_domain', NULL),
(33, 'default', 0, 'web/cookie/cookie_httponly', '1'),
(34, 'default', 0, 'web/cookie/cookie_restriction', '0'),
(35, 'default', 0, 'web/session/use_remote_addr', '0'),
(36, 'default', 0, 'web/session/use_http_via', '0'),
(37, 'default', 0, 'web/session/use_http_x_forwarded_for', '0'),
(38, 'default', 0, 'web/session/use_http_user_agent', '0'),
(39, 'default', 0, 'web/session/use_frontend_sid', '1'),
(40, 'default', 0, 'web/browser_capabilities/cookies', '1'),
(41, 'default', 0, 'web/browser_capabilities/javascript', '1'),
(42, 'default', 0, 'web/browser_capabilities/local_storage', '0');

-- --------------------------------------------------------

--
-- Table structure for table `cron_schedule`
--

CREATE TABLE `cron_schedule` (
  `schedule_id` int(10) UNSIGNED NOT NULL COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';

--
-- Truncate table before insert `cron_schedule`
--

TRUNCATE TABLE `cron_schedule`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity`
--

CREATE TABLE `customer_address_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `city` varchar(255) NOT NULL COMMENT 'City',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `country_id` varchar(255) NOT NULL COMMENT 'Country',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `firstname` varchar(255) NOT NULL COMMENT 'First Name',
  `lastname` varchar(255) NOT NULL COMMENT 'Last Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Zip/Postal Code',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `region` varchar(255) DEFAULT NULL COMMENT 'State/Province',
  `region_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'State/Province',
  `street` text NOT NULL COMMENT 'Street Address',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `telephone` varchar(255) NOT NULL COMMENT 'Phone Number',
  `vat_id` varchar(255) DEFAULT NULL COMMENT 'VAT number',
  `vat_is_valid` int(10) UNSIGNED DEFAULT NULL COMMENT 'VAT number validity',
  `vat_request_date` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request date',
  `vat_request_id` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request ID',
  `vat_request_success` int(10) UNSIGNED DEFAULT NULL COMMENT 'VAT number validation request success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';

--
-- Truncate table before insert `customer_address_entity`
--

TRUNCATE TABLE `customer_address_entity`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_datetime`
--

CREATE TABLE `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';

--
-- Truncate table before insert `customer_address_entity_datetime`
--

TRUNCATE TABLE `customer_address_entity_datetime`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_decimal`
--

CREATE TABLE `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';

--
-- Truncate table before insert `customer_address_entity_decimal`
--

TRUNCATE TABLE `customer_address_entity_decimal`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_int`
--

CREATE TABLE `customer_address_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';

--
-- Truncate table before insert `customer_address_entity_int`
--

TRUNCATE TABLE `customer_address_entity_int`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_text`
--

CREATE TABLE `customer_address_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';

--
-- Truncate table before insert `customer_address_entity_text`
--

TRUNCATE TABLE `customer_address_entity_text`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_varchar`
--

CREATE TABLE `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';

--
-- Truncate table before insert `customer_address_entity_varchar`
--

TRUNCATE TABLE `customer_address_entity_varchar`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute`
--

CREATE TABLE `customer_eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  `is_used_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `is_searchable_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Searchable in Grid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Truncate table before insert `customer_eav_attribute`
--

TRUNCATE TABLE `customer_eav_attribute`;
--
-- Dumping data for table `customer_eav_attribute`
--

INSERT DELAYED IGNORE INTO `customer_eav_attribute` VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL, 1, 1, 1, 0),
(2, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(3, 1, NULL, 0, NULL, 1, 20, NULL, 1, 1, 0, 1),
(4, 0, NULL, 0, NULL, 0, 30, NULL, 0, 0, 0, 0),
(5, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 40, NULL, 0, 0, 0, 0),
(6, 0, NULL, 0, NULL, 0, 50, NULL, 0, 0, 0, 0),
(7, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 60, NULL, 0, 0, 0, 0),
(8, 0, NULL, 0, NULL, 0, 70, NULL, 0, 0, 0, 0),
(9, 1, NULL, 0, 'a:1:{s:16:\"input_validation\";s:5:\"email\";}', 1, 80, NULL, 1, 1, 1, 1),
(10, 1, NULL, 0, NULL, 1, 25, NULL, 1, 1, 1, 0),
(11, 0, 'date', 0, 'a:1:{s:16:\"input_validation\";s:4:\"date\";}', 0, 90, NULL, 1, 1, 1, 0),
(12, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(13, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(14, 0, NULL, 0, 'a:1:{s:16:\"input_validation\";s:4:\"date\";}', 1, 0, NULL, 0, 0, 0, 0),
(15, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(16, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(17, 0, NULL, 0, 'a:1:{s:15:\"max_text_length\";i:255;}', 0, 100, NULL, 1, 1, 0, 1),
(18, 0, NULL, 0, NULL, 1, 0, NULL, 1, 1, 1, 0),
(19, 0, NULL, 0, NULL, 0, 0, NULL, 1, 1, 1, 0),
(20, 0, NULL, 0, 'a:0:{}', 0, 110, NULL, 1, 1, 1, 0),
(21, 1, NULL, 0, NULL, 1, 28, NULL, 0, 0, 0, 0),
(22, 0, NULL, 0, NULL, 0, 10, NULL, 0, 0, 0, 0),
(23, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 20, NULL, 1, 0, 0, 1),
(24, 0, NULL, 0, NULL, 0, 30, NULL, 0, 0, 0, 0),
(25, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 40, NULL, 1, 0, 0, 1),
(26, 0, NULL, 0, NULL, 0, 50, NULL, 0, 0, 0, 0),
(27, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 60, NULL, 1, 0, 0, 1),
(28, 1, NULL, 2, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 70, NULL, 1, 0, 0, 1),
(29, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 80, NULL, 1, 0, 0, 1),
(30, 1, NULL, 0, NULL, 1, 90, NULL, 1, 1, 1, 0),
(31, 1, NULL, 0, NULL, 1, 100, NULL, 1, 1, 0, 1),
(32, 1, NULL, 0, NULL, 1, 100, NULL, 0, 0, 0, 0),
(33, 1, NULL, 0, 'a:0:{}', 1, 110, 'Magento\\Customer\\Model\\Attribute\\Data\\Postcode', 1, 1, 1, 1),
(34, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 120, NULL, 1, 1, 1, 1),
(35, 0, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 0, 130, NULL, 1, 0, 0, 1),
(36, 1, NULL, 0, NULL, 1, 140, NULL, 0, 0, 0, 0),
(37, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(38, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(39, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(40, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(41, 0, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute_website`
--

CREATE TABLE `customer_eav_attribute_website` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Multiline Count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

--
-- Truncate table before insert `customer_eav_attribute_website`
--

TRUNCATE TABLE `customer_eav_attribute_website`;
--
-- Dumping data for table `customer_eav_attribute_website`
--

INSERT DELAYED IGNORE INTO `customer_eav_attribute_website` VALUES
(1, 1, NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, NULL),
(9, 1, NULL, NULL, NULL, NULL),
(10, 1, NULL, NULL, NULL, NULL),
(11, 1, NULL, NULL, NULL, NULL),
(17, 1, NULL, NULL, NULL, NULL),
(18, 1, NULL, NULL, NULL, NULL),
(19, 1, NULL, NULL, NULL, NULL),
(20, 1, NULL, NULL, NULL, NULL),
(21, 1, NULL, NULL, NULL, NULL),
(23, 1, NULL, NULL, NULL, NULL),
(25, 1, NULL, NULL, NULL, NULL),
(27, 1, NULL, NULL, NULL, NULL),
(28, 1, NULL, NULL, NULL, NULL),
(29, 1, NULL, NULL, NULL, NULL),
(30, 1, NULL, NULL, NULL, NULL),
(31, 1, NULL, NULL, NULL, NULL),
(32, 1, NULL, NULL, NULL, NULL),
(33, 1, NULL, NULL, NULL, NULL),
(34, 1, NULL, NULL, NULL, NULL),
(35, 1, NULL, NULL, NULL, NULL),
(36, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity`
--

CREATE TABLE `customer_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  `created_in` varchar(255) DEFAULT NULL COMMENT 'Created From',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'First Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name/Initial',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Last Name',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `dob` date DEFAULT NULL COMMENT 'Date Of Birth',
  `password_hash` varchar(128) DEFAULT NULL COMMENT 'Password_hash',
  `rp_token` varchar(128) DEFAULT NULL COMMENT 'Reset password token',
  `rp_token_created_at` datetime DEFAULT NULL COMMENT 'Reset password token creation time',
  `default_billing` int(10) UNSIGNED DEFAULT NULL COMMENT 'Default Billing Address',
  `default_shipping` int(10) UNSIGNED DEFAULT NULL COMMENT 'Default Shipping Address',
  `taxvat` varchar(50) DEFAULT NULL COMMENT 'Tax/VAT Number',
  `confirmation` varchar(64) DEFAULT NULL COMMENT 'Is Confirmed',
  `gender` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Gender'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity';

--
-- Truncate table before insert `customer_entity`
--

TRUNCATE TABLE `customer_entity`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_datetime`
--

CREATE TABLE `customer_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';

--
-- Truncate table before insert `customer_entity_datetime`
--

TRUNCATE TABLE `customer_entity_datetime`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_decimal`
--

CREATE TABLE `customer_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';

--
-- Truncate table before insert `customer_entity_decimal`
--

TRUNCATE TABLE `customer_entity_decimal`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_int`
--

CREATE TABLE `customer_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';

--
-- Truncate table before insert `customer_entity_int`
--

TRUNCATE TABLE `customer_entity_int`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_text`
--

CREATE TABLE `customer_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';

--
-- Truncate table before insert `customer_entity_text`
--

TRUNCATE TABLE `customer_entity_text`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_varchar`
--

CREATE TABLE `customer_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';

--
-- Truncate table before insert `customer_entity_varchar`
--

TRUNCATE TABLE `customer_entity_varchar`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_form_attribute`
--

CREATE TABLE `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Truncate table before insert `customer_form_attribute`
--

TRUNCATE TABLE `customer_form_attribute`;
--
-- Dumping data for table `customer_form_attribute`
--

INSERT DELAYED IGNORE INTO `customer_form_attribute` VALUES
('adminhtml_checkout', 9),
('adminhtml_checkout', 10),
('adminhtml_checkout', 11),
('adminhtml_checkout', 17),
('adminhtml_checkout', 20),
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('adminhtml_customer', 5),
('adminhtml_customer', 6),
('adminhtml_customer', 7),
('adminhtml_customer', 8),
('adminhtml_customer', 9),
('adminhtml_customer', 10),
('adminhtml_customer', 11),
('adminhtml_customer', 17),
('adminhtml_customer', 19),
('adminhtml_customer', 20),
('adminhtml_customer', 21),
('adminhtml_customer_address', 22),
('adminhtml_customer_address', 23),
('adminhtml_customer_address', 24),
('adminhtml_customer_address', 25),
('adminhtml_customer_address', 26),
('adminhtml_customer_address', 27),
('adminhtml_customer_address', 28),
('adminhtml_customer_address', 29),
('adminhtml_customer_address', 30),
('adminhtml_customer_address', 31),
('adminhtml_customer_address', 32),
('adminhtml_customer_address', 33),
('adminhtml_customer_address', 34),
('adminhtml_customer_address', 35),
('adminhtml_customer_address', 36),
('customer_account_create', 4),
('customer_account_create', 5),
('customer_account_create', 6),
('customer_account_create', 7),
('customer_account_create', 8),
('customer_account_create', 9),
('customer_account_create', 11),
('customer_account_create', 17),
('customer_account_create', 19),
('customer_account_create', 20),
('customer_account_edit', 4),
('customer_account_edit', 5),
('customer_account_edit', 6),
('customer_account_edit', 7),
('customer_account_edit', 8),
('customer_account_edit', 9),
('customer_account_edit', 11),
('customer_account_edit', 17),
('customer_account_edit', 19),
('customer_account_edit', 20),
('customer_address_edit', 22),
('customer_address_edit', 23),
('customer_address_edit', 24),
('customer_address_edit', 25),
('customer_address_edit', 26),
('customer_address_edit', 27),
('customer_address_edit', 28),
('customer_address_edit', 29),
('customer_address_edit', 30),
('customer_address_edit', 31),
('customer_address_edit', 32),
('customer_address_edit', 33),
('customer_address_edit', 34),
('customer_address_edit', 35),
('customer_address_edit', 36),
('customer_register_address', 22),
('customer_register_address', 23),
('customer_register_address', 24),
('customer_register_address', 25),
('customer_register_address', 26),
('customer_register_address', 27),
('customer_register_address', 28),
('customer_register_address', 29),
('customer_register_address', 30),
('customer_register_address', 31),
('customer_register_address', 32),
('customer_register_address', 33),
('customer_register_address', 34),
('customer_register_address', 35),
('customer_register_address', 36);

-- --------------------------------------------------------

--
-- Table structure for table `customer_grid_flat`
--

CREATE TABLE `customer_grid_flat` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `name` text COMMENT 'Name',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` int(11) DEFAULT NULL COMMENT 'Group_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `website_id` int(11) DEFAULT NULL COMMENT 'Website_id',
  `confirmation` int(11) DEFAULT NULL COMMENT 'Confirmation',
  `created_in` text COMMENT 'Created_in',
  `dob` date DEFAULT NULL COMMENT 'Dob',
  `gender` int(11) DEFAULT NULL COMMENT 'Gender',
  `taxvat` varchar(255) DEFAULT NULL COMMENT 'Taxvat',
  `last_visit_at` datetime DEFAULT NULL COMMENT 'Last_visit_at',
  `billing_full` text COMMENT 'Billing_full',
  `billing_firstname` varchar(255) DEFAULT NULL COMMENT 'Billing_firstname',
  `billing_lastname` varchar(255) DEFAULT NULL COMMENT 'Billing_lastname',
  `billing_telephone` varchar(255) DEFAULT NULL COMMENT 'Billing_telephone',
  `billing_postcode` varchar(255) DEFAULT NULL COMMENT 'Billing_postcode',
  `billing_country_id` varchar(255) DEFAULT NULL COMMENT 'Billing_country_id',
  `billing_region` varchar(255) DEFAULT NULL COMMENT 'Billing_region',
  `billing_street` varchar(255) DEFAULT NULL COMMENT 'Billing_street',
  `billing_city` varchar(255) DEFAULT NULL COMMENT 'Billing_city',
  `billing_fax` varchar(255) DEFAULT NULL COMMENT 'Billing_fax',
  `billing_vat_id` varchar(255) DEFAULT NULL COMMENT 'Billing_vat_id',
  `billing_company` varchar(255) DEFAULT NULL COMMENT 'Billing_company',
  `shipping_full` text COMMENT 'Shipping_full'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='customer_grid_flat';

--
-- Truncate table before insert `customer_grid_flat`
--

TRUNCATE TABLE `customer_grid_flat`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE `customer_group` (
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Tax Class Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Group';

--
-- Truncate table before insert `customer_group`
--

TRUNCATE TABLE `customer_group`;
--
-- Dumping data for table `customer_group`
--

INSERT DELAYED IGNORE INTO `customer_group` VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `customer_log`
--

CREATE TABLE `customer_log` (
  `log_id` int(11) NOT NULL COMMENT 'Log ID',
  `customer_id` int(11) NOT NULL COMMENT 'Customer ID',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'Last Login Time',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'Last Logout Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Log Table';

--
-- Truncate table before insert `customer_log`
--

TRUNCATE TABLE `customer_log`;
-- --------------------------------------------------------

--
-- Table structure for table `customer_visitor`
--

CREATE TABLE `customer_visitor` (
  `visitor_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `last_visit_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Visit Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Visitor Table';

--
-- Truncate table before insert `customer_visitor`
--

TRUNCATE TABLE `customer_visitor`;
--
-- Dumping data for table `customer_visitor`
--

INSERT DELAYED IGNORE INTO `customer_visitor` VALUES
(1, NULL, 'pq8srg0d17d011bhtn46fr0fu4', '2017-04-23 11:49:52'),
(2, NULL, '3og1is22jt4ebqeo09cdtb89p4', '2017-04-23 13:44:47'),
(3, NULL, '6mmoo01c8j8pgo0ujvi3rfsj24', '2017-04-23 13:49:50'),
(4, NULL, 'k9jejp06gn3ojpt1un58rq1c54', '2017-04-23 13:49:59'),
(5, NULL, 'vufibi19t2sep4pet86ojbbau2', '2017-04-23 13:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `design_change`
--

CREATE TABLE `design_change` (
  `design_change_id` int(11) NOT NULL COMMENT 'Design Change Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';

--
-- Truncate table before insert `design_change`
--

TRUNCATE TABLE `design_change`;
-- --------------------------------------------------------

--
-- Table structure for table `directory_country`
--

CREATE TABLE `directory_country` (
  `country_id` varchar(2) NOT NULL COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Truncate table before insert `directory_country`
--

TRUNCATE TABLE `directory_country`;
--
-- Dumping data for table `directory_country`
--

INSERT DELAYED IGNORE INTO `directory_country` VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_format`
--

CREATE TABLE `directory_country_format` (
  `country_format_id` int(10) UNSIGNED NOT NULL COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';

--
-- Truncate table before insert `directory_country_format`
--

TRUNCATE TABLE `directory_country_format`;
-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region`
--

CREATE TABLE `directory_country_region` (
  `region_id` int(10) UNSIGNED NOT NULL COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

--
-- Truncate table before insert `directory_country_region`
--

TRUNCATE TABLE `directory_country_region`;
--
-- Dumping data for table `directory_country_region`
--

INSERT DELAYED IGNORE INTO `directory_country_region` VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AE', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AE', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AE', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Vorarlberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'Ardèche'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d\'Or'),
(204, 'FR', '22', 'Côtes-d\'Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d\'Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 'EE', 'EE-51', 'Järvamaa'),
(345, 'EE', 'EE-57', 'Läänemaa'),
(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 'EE', 'EE-65', 'Põlvamaa'),
(348, 'EE', 'EE-67', 'Pärnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'Võrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 'LV', 'LV-LPX', 'Liepāja'),
(360, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 'LV', 'LV-RIX', 'Rīga'),
(363, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis'),
(485, 'BR', 'AC', 'Acre'),
(486, 'BR', 'AL', 'Alagoas'),
(487, 'BR', 'AP', 'Amapá'),
(488, 'BR', 'AM', 'Amazonas'),
(489, 'BR', 'BA', 'Bahia'),
(490, 'BR', 'CE', 'Ceará'),
(491, 'BR', 'ES', 'Espírito Santo'),
(492, 'BR', 'GO', 'Goiás'),
(493, 'BR', 'MA', 'Maranhão'),
(494, 'BR', 'MT', 'Mato Grosso'),
(495, 'BR', 'MS', 'Mato Grosso do Sul'),
(496, 'BR', 'MG', 'Minas Gerais'),
(497, 'BR', 'PA', 'Pará'),
(498, 'BR', 'PB', 'Paraíba'),
(499, 'BR', 'PR', 'Paraná'),
(500, 'BR', 'PE', 'Pernambuco'),
(501, 'BR', 'PI', 'Piauí'),
(502, 'BR', 'RJ', 'Rio de Janeiro'),
(503, 'BR', 'RN', 'Rio Grande do Norte'),
(504, 'BR', 'RS', 'Rio Grande do Sul'),
(505, 'BR', 'RO', 'Rondônia'),
(506, 'BR', 'RR', 'Roraima'),
(507, 'BR', 'SC', 'Santa Catarina'),
(508, 'BR', 'SP', 'São Paulo'),
(509, 'BR', 'SE', 'Sergipe'),
(510, 'BR', 'TO', 'Tocantins'),
(511, 'BR', 'DF', 'Distrito Federal');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region_name`
--

CREATE TABLE `directory_country_region_name` (
  `locale` varchar(8) NOT NULL COMMENT 'Locale',
  `region_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Truncate table before insert `directory_country_region_name`
--

TRUNCATE TABLE `directory_country_region_name`;
--
-- Dumping data for table `directory_country_region_name`
--

INSERT DELAYED IGNORE INTO `directory_country_region_name` VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Vorarlberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d\'Or'),
('en_US', 204, 'Côtes-d\'Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d\'Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'Etelä-Savo'),
('en_US', 326, 'Etelä-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'Etelä-Karjala'),
('en_US', 334, 'Päijät-Häme'),
('en_US', 335, 'Kanta-Häme'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'Itä-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'Jõgevamaa'),
('en_US', 344, 'Järvamaa'),
('en_US', 345, 'Läänemaa'),
('en_US', 346, 'Lääne-Virumaa'),
('en_US', 347, 'Põlvamaa'),
('en_US', 348, 'Pärnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'Võrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'Jēkabpils'),
('en_US', 358, 'Jūrmala'),
('en_US', 359, 'Liepāja'),
('en_US', 360, 'Liepājas novads'),
('en_US', 361, 'Rēzekne'),
('en_US', 362, 'Rīga'),
('en_US', 363, 'Rīgas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'Aknīstes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'Alūksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'Babītes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'Beverīnas novads'),
('en_US', 382, 'Brocēnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'Cēsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'Grobiņas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'Ikšķiles novads'),
('en_US', 399, 'Ilūkstes novads'),
('en_US', 400, 'Inčukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'Jēkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'Krāslavas novads'),
('en_US', 411, 'Kuldīgas novads'),
('en_US', 412, 'Kārsavas novads'),
('en_US', 413, 'Lielvārdes novads'),
('en_US', 414, 'Limbažu novads'),
('en_US', 415, 'Lubānas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'Līgatnes novads'),
('en_US', 418, 'Līvānu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'Mālpils novads'),
('en_US', 422, 'Mārupes novads'),
('en_US', 423, 'Naukšēnu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'Nīcas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'Preiļu novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'Priekuļu novads'),
('en_US', 432, 'Pārgaujas novads'),
('en_US', 433, 'Pāvilostas novads'),
('en_US', 434, 'Pļaviņu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'Riebiņu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'Ropažu novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'Rugāju novads'),
('en_US', 441, 'Rundāles novads'),
('en_US', 442, 'Rēzeknes novads'),
('en_US', 443, 'Rūjienas novads'),
('en_US', 444, 'Salacgrīvas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'Skrīveru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'Stopiņu novads'),
('en_US', 454, 'Strenču novads'),
('en_US', 455, 'Sējas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'Tērvetes novads'),
('en_US', 459, 'Vaiņodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'Varakļānu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'Viesītes novads'),
('en_US', 467, 'Viļakas novads'),
('en_US', 468, 'Viļānu novads'),
('en_US', 469, 'Vārkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'Ādažu novads'),
('en_US', 472, 'Ērgļu novads'),
('en_US', 473, 'Ķeguma novads'),
('en_US', 474, 'Ķekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'Klaipėdos Apskritis'),
('en_US', 478, 'Marijampolės Apskritis'),
('en_US', 479, 'Panevėžio Apskritis'),
('en_US', 480, 'Šiaulių Apskritis'),
('en_US', 481, 'Tauragės Apskritis'),
('en_US', 482, 'Telšių Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis'),
('en_US', 485, 'Acre'),
('en_US', 486, 'Alagoas'),
('en_US', 487, 'Amapá'),
('en_US', 488, 'Amazonas'),
('en_US', 489, 'Bahia'),
('en_US', 490, 'Ceará'),
('en_US', 491, 'Espírito Santo'),
('en_US', 492, 'Goiás'),
('en_US', 493, 'Maranhão'),
('en_US', 494, 'Mato Grosso'),
('en_US', 495, 'Mato Grosso do Sul'),
('en_US', 496, 'Minas Gerais'),
('en_US', 497, 'Pará'),
('en_US', 498, 'Paraíba'),
('en_US', 499, 'Paraná'),
('en_US', 500, 'Pernambuco'),
('en_US', 501, 'Piauí'),
('en_US', 502, 'Rio de Janeiro'),
('en_US', 503, 'Rio Grande do Norte'),
('en_US', 504, 'Rio Grande do Sul'),
('en_US', 505, 'Rondônia'),
('en_US', 506, 'Roraima'),
('en_US', 507, 'Santa Catarina'),
('en_US', 508, 'São Paulo'),
('en_US', 509, 'Sergipe'),
('en_US', 510, 'Tocantins'),
('en_US', 511, 'Distrito Federal');

-- --------------------------------------------------------

--
-- Table structure for table `directory_currency_rate`
--

CREATE TABLE `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Truncate table before insert `directory_currency_rate`
--

TRUNCATE TABLE `directory_currency_rate`;
--
-- Dumping data for table `directory_currency_rate`
--

INSERT DELAYED IGNORE INTO `directory_currency_rate` VALUES
('EUR', 'EUR', '1.000000000000'),
('EUR', 'USD', '1.415000000000'),
('USD', 'EUR', '0.706700000000'),
('USD', 'USD', '1.000000000000');

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link`
--

CREATE TABLE `downloadable_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';

--
-- Truncate table before insert `downloadable_link`
--

TRUNCATE TABLE `downloadable_link`;
-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_price`
--

CREATE TABLE `downloadable_link_price` (
  `price_id` int(10) UNSIGNED NOT NULL COMMENT 'Price ID',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';

--
-- Truncate table before insert `downloadable_link_price`
--

TRUNCATE TABLE `downloadable_link_price`;
-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased`
--

CREATE TABLE `downloadable_link_purchased` (
  `purchased_id` int(10) UNSIGNED NOT NULL COMMENT 'Purchased ID',
  `order_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of modification',
  `customer_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';

--
-- Truncate table before insert `downloadable_link_purchased`
--

TRUNCATE TABLE `downloadable_link_purchased`;
-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased_item`
--

CREATE TABLE `downloadable_link_purchased_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item ID',
  `purchased_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';

--
-- Truncate table before insert `downloadable_link_purchased_item`
--

TRUNCATE TABLE `downloadable_link_purchased_item`;
-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_title`
--

CREATE TABLE `downloadable_link_title` (
  `title_id` int(10) UNSIGNED NOT NULL COMMENT 'Title ID',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';

--
-- Truncate table before insert `downloadable_link_title`
--

TRUNCATE TABLE `downloadable_link_title`;
-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample`
--

CREATE TABLE `downloadable_sample` (
  `sample_id` int(10) UNSIGNED NOT NULL COMMENT 'Sample ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';

--
-- Truncate table before insert `downloadable_sample`
--

TRUNCATE TABLE `downloadable_sample`;
-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample_title`
--

CREATE TABLE `downloadable_sample_title` (
  `title_id` int(10) UNSIGNED NOT NULL COMMENT 'Title ID',
  `sample_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';

--
-- Truncate table before insert `downloadable_sample_title`
--

TRUNCATE TABLE `downloadable_sample_title`;
-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute`
--

CREATE TABLE `eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

--
-- Truncate table before insert `eav_attribute`
--

TRUNCATE TABLE `eav_attribute`;
--
-- Dumping data for table `eav_attribute`
--

INSERT DELAYED IGNORE INTO `eav_attribute` VALUES
(1, 1, 'website_id', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'static', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'static', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'static', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'static', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'static', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'static', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'static', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime', 'date', 'Date Of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Password', 'static', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'rp_token', NULL, NULL, 'static', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'rp_token_created_at', NULL, NULL, 'static', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'default_billing', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Billing', 'static', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'default_shipping', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Shipping', 'static', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'taxvat', NULL, NULL, 'static', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'confirmation', NULL, NULL, 'static', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(19, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'date', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 1, 'gender', NULL, NULL, 'static', NULL, NULL, 'select', 'Gender', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table', 0, 0, NULL, 0, NULL),
(21, 1, 'disable_auto_group_change', NULL, 'Magento\\Customer\\Model\\Attribute\\Backend\\Data\\Boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'prefix', NULL, NULL, 'static', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(23, 2, 'firstname', NULL, NULL, 'static', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(24, 2, 'middlename', NULL, NULL, 'static', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'lastname', NULL, NULL, 'static', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'suffix', NULL, NULL, 'static', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(27, 2, 'company', NULL, NULL, 'static', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(28, 2, 'street', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\DefaultBackend', 'static', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(29, 2, 'city', NULL, NULL, 'static', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(30, 2, 'country_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Country', NULL, 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Country', 1, 0, NULL, 0, NULL),
(31, 2, 'region', NULL, 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Backend\\Region', 'static', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(32, 2, 'region_id', NULL, NULL, 'static', NULL, NULL, 'hidden', 'State/Province', NULL, 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Region', 0, 0, NULL, 0, NULL),
(33, 2, 'postcode', NULL, NULL, 'static', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 2, 'telephone', NULL, NULL, 'static', NULL, NULL, 'text', 'Phone Number', NULL, NULL, 1, 0, NULL, 0, NULL),
(35, 2, 'fax', NULL, NULL, 'static', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(36, 2, 'vat_id', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number', NULL, NULL, 0, 0, NULL, 0, NULL),
(37, 2, 'vat_is_valid', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 2, 'vat_request_id', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 2, 'vat_request_date', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 2, 'vat_request_success', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 1, 'updated_at', NULL, NULL, 'static', NULL, NULL, 'date', 'Updated At', NULL, NULL, 0, 0, NULL, 0, NULL),
(42, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(43, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 1, 0, NULL, 0, NULL),
(44, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(45, 3, 'image', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(46, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(47, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(48, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(49, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Mode', 0, 0, NULL, 0, NULL),
(50, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page', 0, 0, NULL, 0, NULL),
(51, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, '1', 0, NULL),
(52, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
(53, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
(54, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(55, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(56, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(57, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'Magento\\Theme\\Model\\Theme\\Source\\Theme', 0, 0, NULL, 0, NULL),
(58, 3, 'custom_design_from', 'Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute', 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime', 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(59, 3, 'custom_design_to', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(60, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Layout', 0, 0, NULL, 0, NULL),
(61, 3, 'custom_layout_update', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(62, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
(63, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
(64, 3, 'available_sort_by', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby', 1, 0, NULL, 0, NULL),
(65, 3, 'default_sort_by', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby', 1, 0, NULL, 0, NULL),
(66, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 1, 0, '1', 0, NULL),
(67, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(68, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(69, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
(70, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', 'validate-length maximum-length-255', NULL, 1, 0, NULL, 0, NULL),
(71, 4, 'sku', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Sku', 'static', NULL, NULL, 'text', 'SKU', 'validate-length maximum-length-64', NULL, 1, 0, NULL, 1, NULL),
(72, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(73, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(74, 4, 'price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
(75, 4, 'special_price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(76, 4, 'special_from_date', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(77, 4, 'special_to_date', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(78, 4, 'cost', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
(79, 4, 'weight', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Weight', 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 0, 0, NULL, 0, NULL),
(80, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
(81, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(82, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(83, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars'),
(84, 4, 'image', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Base Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(85, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Small Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(86, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
(87, 4, 'media_gallery', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Media', 'varchar', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(88, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(89, 4, 'tier_price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(90, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, NULL, 0, NULL),
(91, 4, 'news_from_date', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(92, 4, 'news_to_date', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(93, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(94, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Status', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Status', 0, 0, '1', 0, NULL),
(95, 4, 'minimal_price', NULL, NULL, 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(96, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'Magento\\Catalog\\Model\\Product\\Visibility', 0, 0, '4', 0, NULL),
(97, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'Magento\\Theme\\Model\\Theme\\Source\\Theme', 0, 0, NULL, 0, NULL),
(98, 4, 'custom_design_from', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(99, 4, 'custom_design_to', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(100, 4, 'custom_layout_update', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(101, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout', 0, 0, NULL, 0, NULL),
(102, 4, 'category_ids', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Category', 'static', NULL, NULL, 'text', 'Categories', NULL, NULL, 0, 0, NULL, 0, NULL),
(103, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'Magento\\Catalog\\Model\\Entity\\Product\\Attribute\\Design\\Options\\Container', 0, 0, 'container2', 0, NULL),
(104, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(105, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(106, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(107, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(108, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(109, 4, 'created_at', NULL, NULL, 'static', NULL, NULL, 'date', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(110, 4, 'updated_at', NULL, NULL, 'static', NULL, NULL, 'date', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(111, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Countryofmanufacture', 0, 0, NULL, 0, NULL),
(112, 4, 'quantity_and_stock_status', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Stock', 'int', NULL, NULL, 'select', 'Quantity', NULL, 'Magento\\CatalogInventory\\Model\\Source\\Stock', 0, 0, '1', 0, NULL),
(113, 3, 'url_key', NULL, NULL, 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(114, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(115, 4, 'url_key', NULL, NULL, 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(116, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(117, 4, 'msrp', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Manufacturer\'s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(118, 4, 'msrp_display_actual_price_type', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'Magento\\Msrp\\Model\\Product\\Attribute\\Source\\Type\\Price', 0, 0, '0', 0, NULL),
(119, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(120, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(121, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(122, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Price\\View', 1, 0, NULL, 0, NULL),
(123, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, NULL, 'Shipment', NULL, NULL, 1, 0, NULL, 0, NULL),
(124, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
(125, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
(126, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
(127, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL),
(128, 4, 'swatch_image', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Swatch Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(129, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'Magento\\Tax\\Model\\TaxClass\\Source\\Product', 0, 0, '2', 0, NULL),
(130, 4, 'gift_message_available', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(131, 4, 'em_hot_label', NULL, NULL, 'int', NULL, NULL, 'select', 'EM Hot Label', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, '0', 0, NULL),
(132, 4, 'em_sale_label', NULL, NULL, 'int', NULL, NULL, 'select', 'EM Sale Label', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, '0', 0, NULL),
(133, 4, 'em_new_label', NULL, NULL, 'int', NULL, NULL, 'select', 'EM New Label', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, '0', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_group`
--

CREATE TABLE `eav_attribute_group` (
  `attribute_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Default Id',
  `attribute_group_code` varchar(255) NOT NULL COMMENT 'Attribute Group Code',
  `tab_group_code` varchar(255) DEFAULT NULL COMMENT 'Tab Group Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

--
-- Truncate table before insert `eav_attribute_group`
--

TRUNCATE TABLE `eav_attribute_group`;
--
-- Dumping data for table `eav_attribute_group`
--

INSERT DELAYED IGNORE INTO `eav_attribute_group` VALUES
(1, 1, 'General', 1, 1, 'general', NULL),
(2, 2, 'General', 1, 1, 'general', NULL),
(3, 3, 'General', 10, 1, 'general', NULL),
(4, 3, 'General Information', 2, 0, 'general-information', NULL),
(5, 3, 'Display Settings', 20, 0, 'display-settings', NULL),
(6, 3, 'Custom Design', 30, 0, 'custom-design', NULL),
(7, 4, 'General', 10, 1, 'product-details', 'basic'),
(8, 4, 'Advanced Pricing', 40, 0, 'advanced-pricing', 'advanced'),
(9, 4, 'Search Engine Optimization', 30, 0, 'search-engine-optimization', 'basic'),
(10, 4, 'Images and Videos', 20, 0, 'image-management', 'basic'),
(11, 4, 'Design', 50, 0, 'design', 'advanced'),
(12, 4, 'Autosettings', 60, 0, 'autosettings', 'advanced'),
(13, 5, 'General', 1, 1, 'general', NULL),
(14, 6, 'General', 1, 1, 'general', NULL),
(15, 7, 'General', 1, 1, 'general', NULL),
(16, 8, 'General', 1, 1, 'general', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_label`
--

CREATE TABLE `eav_attribute_label` (
  `attribute_label_id` int(10) UNSIGNED NOT NULL COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';

--
-- Truncate table before insert `eav_attribute_label`
--

TRUNCATE TABLE `eav_attribute_label`;
-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option`
--

CREATE TABLE `eav_attribute_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

--
-- Truncate table before insert `eav_attribute_option`
--

TRUNCATE TABLE `eav_attribute_option`;
--
-- Dumping data for table `eav_attribute_option`
--

INSERT DELAYED IGNORE INTO `eav_attribute_option` VALUES
(1, 20, 0),
(2, 20, 1),
(3, 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option_swatch`
--

CREATE TABLE `eav_attribute_option_swatch` (
  `swatch_id` int(10) UNSIGNED NOT NULL COMMENT 'Swatch ID',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `type` smallint(5) UNSIGNED NOT NULL COMMENT 'Swatch type: 0 - text, 1 - visual color, 2 - visual image',
  `value` varchar(255) DEFAULT NULL COMMENT 'Swatch Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magento Swatches table';

--
-- Truncate table before insert `eav_attribute_option_swatch`
--

TRUNCATE TABLE `eav_attribute_option_swatch`;
-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option_value`
--

CREATE TABLE `eav_attribute_option_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

--
-- Truncate table before insert `eav_attribute_option_value`
--

TRUNCATE TABLE `eav_attribute_option_value`;
--
-- Dumping data for table `eav_attribute_option_value`
--

INSERT DELAYED IGNORE INTO `eav_attribute_option_value` VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female'),
(3, 3, 0, 'Not Specified');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_set`
--

CREATE TABLE `eav_attribute_set` (
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

--
-- Truncate table before insert `eav_attribute_set`
--

TRUNCATE TABLE `eav_attribute_set`;
--
-- Dumping data for table `eav_attribute_set`
--

INSERT DELAYED IGNORE INTO `eav_attribute_set` VALUES
(1, 1, 'Default', 2),
(2, 2, 'Default', 2),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity`
--

CREATE TABLE `eav_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';

--
-- Truncate table before insert `eav_entity`
--

TRUNCATE TABLE `eav_entity`;
-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_attribute`
--

CREATE TABLE `eav_entity_attribute` (
  `entity_attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

--
-- Truncate table before insert `eav_entity_attribute`
--

TRUNCATE TABLE `eav_entity_attribute`;
--
-- Dumping data for table `eav_entity_attribute`
--

INSERT DELAYED IGNORE INTO `eav_entity_attribute` VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 20),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 81),
(13, 1, 1, 1, 13, 115),
(14, 1, 1, 1, 14, 120),
(15, 1, 1, 1, 15, 82),
(16, 1, 1, 1, 16, 83),
(17, 1, 1, 1, 17, 100),
(18, 1, 1, 1, 18, 85),
(19, 1, 1, 1, 19, 86),
(20, 1, 1, 1, 20, 110),
(21, 1, 1, 1, 21, 121),
(22, 2, 2, 2, 22, 10),
(23, 2, 2, 2, 23, 20),
(24, 2, 2, 2, 24, 30),
(25, 2, 2, 2, 25, 40),
(26, 2, 2, 2, 26, 50),
(27, 2, 2, 2, 27, 60),
(28, 2, 2, 2, 28, 70),
(29, 2, 2, 2, 29, 80),
(30, 2, 2, 2, 30, 90),
(31, 2, 2, 2, 31, 100),
(32, 2, 2, 2, 32, 100),
(33, 2, 2, 2, 33, 110),
(34, 2, 2, 2, 34, 120),
(35, 2, 2, 2, 35, 130),
(36, 2, 2, 2, 36, 131),
(37, 2, 2, 2, 37, 132),
(38, 2, 2, 2, 38, 133),
(39, 2, 2, 2, 39, 134),
(40, 2, 2, 2, 40, 135),
(41, 1, 1, 1, 41, 87),
(42, 3, 3, 4, 42, 1),
(43, 3, 3, 4, 43, 2),
(44, 3, 3, 4, 44, 4),
(45, 3, 3, 4, 45, 5),
(46, 3, 3, 4, 46, 6),
(47, 3, 3, 4, 47, 7),
(48, 3, 3, 4, 48, 8),
(49, 3, 3, 5, 49, 10),
(50, 3, 3, 5, 50, 20),
(51, 3, 3, 5, 51, 30),
(52, 3, 3, 4, 52, 12),
(53, 3, 3, 4, 53, 13),
(54, 3, 3, 4, 54, 14),
(55, 3, 3, 4, 55, 15),
(56, 3, 3, 4, 56, 16),
(57, 3, 3, 6, 57, 10),
(58, 3, 3, 6, 58, 30),
(59, 3, 3, 6, 59, 40),
(60, 3, 3, 6, 60, 50),
(61, 3, 3, 6, 61, 60),
(62, 3, 3, 4, 62, 24),
(63, 3, 3, 4, 63, 25),
(64, 3, 3, 5, 64, 40),
(65, 3, 3, 5, 65, 50),
(66, 3, 3, 4, 66, 10),
(67, 3, 3, 6, 67, 5),
(68, 3, 3, 6, 68, 6),
(69, 3, 3, 5, 69, 51),
(70, 4, 4, 7, 70, 10),
(71, 4, 4, 7, 71, 20),
(72, 4, 4, 7, 72, 90),
(73, 4, 4, 12, 73, 0),
(74, 4, 4, 7, 74, 30),
(75, 4, 4, 8, 75, 3),
(76, 4, 4, 8, 76, 4),
(77, 4, 4, 8, 77, 5),
(78, 4, 4, 8, 78, 6),
(79, 4, 4, 7, 79, 70),
(80, 4, 4, 9, 81, 20),
(81, 4, 4, 9, 82, 30),
(82, 4, 4, 9, 83, 40),
(83, 4, 4, 7, 84, 50),
(84, 4, 4, 10, 85, 2),
(85, 4, 4, 10, 86, 3),
(86, 4, 4, 10, 87, 4),
(87, 4, 4, 7, 88, 6),
(88, 4, 4, 8, 89, 7),
(89, 4, 4, 12, 91, 30),
(90, 4, 4, 12, 92, 40),
(91, 4, 4, 10, 93, 5),
(92, 4, 4, 7, 94, 100),
(93, 4, 4, 8, 95, 8),
(94, 4, 4, 12, 96, 20),
(95, 4, 4, 11, 97, 1),
(96, 4, 4, 11, 98, 2),
(97, 4, 4, 11, 99, 3),
(98, 4, 4, 11, 100, 4),
(99, 4, 4, 11, 101, 5),
(100, 4, 4, 7, 102, 80),
(101, 4, 4, 11, 103, 6),
(102, 4, 4, 7, 104, 14),
(103, 4, 4, 7, 105, 15),
(104, 4, 4, 7, 106, 16),
(105, 4, 4, 7, 107, 17),
(106, 4, 4, 7, 108, 18),
(107, 4, 4, 7, 109, 19),
(108, 4, 4, 7, 110, 20),
(109, 4, 4, 12, 111, 50),
(110, 4, 4, 7, 112, 60),
(111, 3, 3, 4, 113, 3),
(112, 3, 3, 4, 114, 17),
(113, 4, 4, 9, 115, 10),
(114, 4, 4, 7, 116, 11),
(115, 4, 4, 8, 117, 9),
(116, 4, 4, 8, 118, 10),
(117, 4, 4, 7, 119, 101),
(118, 4, 4, 7, 120, 102),
(119, 4, 4, 7, 121, 103),
(120, 4, 4, 8, 122, 11),
(121, 4, 4, 7, 123, 104),
(122, 4, 4, 7, 124, 105),
(123, 4, 4, 7, 125, 106),
(124, 4, 4, 7, 126, 107),
(125, 4, 4, 7, 127, 108),
(126, 4, 4, 7, 128, 3),
(127, 4, 4, 7, 129, 40),
(128, 4, 4, 12, 130, 60),
(129, 4, 4, 7, 131, 109),
(130, 4, 4, 7, 132, 110),
(131, 4, 4, 7, 133, 111);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_datetime`
--

CREATE TABLE `eav_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Truncate table before insert `eav_entity_datetime`
--

TRUNCATE TABLE `eav_entity_datetime`;
-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_decimal`
--

CREATE TABLE `eav_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Truncate table before insert `eav_entity_decimal`
--

TRUNCATE TABLE `eav_entity_decimal`;
-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_int`
--

CREATE TABLE `eav_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Truncate table before insert `eav_entity_int`
--

TRUNCATE TABLE `eav_entity_int`;
-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_store`
--

CREATE TABLE `eav_entity_store` (
  `entity_store_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';

--
-- Truncate table before insert `eav_entity_store`
--

TRUNCATE TABLE `eav_entity_store`;
-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_text`
--

CREATE TABLE `eav_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Truncate table before insert `eav_entity_text`
--

TRUNCATE TABLE `eav_entity_text`;
-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_type`
--

CREATE TABLE `eav_entity_type` (
  `entity_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT NULL COMMENT 'Increment Model',
  `increment_per_store` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) UNSIGNED NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT NULL COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

--
-- Truncate table before insert `eav_entity_type`
--

TRUNCATE TABLE `eav_entity_type`;
--
-- Dumping data for table `eav_entity_type`
--

INSERT DELAYED IGNORE INTO `eav_entity_type` VALUES
(1, 'customer', 'Magento\\Customer\\Model\\ResourceModel\\Customer', 'Magento\\Customer\\Model\\Attribute', 'customer_entity', NULL, NULL, 1, 'default', 1, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 0, 8, '0', 'customer_eav_attribute', 'Magento\\Customer\\Model\\ResourceModel\\Attribute\\Collection'),
(2, 'customer_address', 'Magento\\Customer\\Model\\ResourceModel\\Address', 'Magento\\Customer\\Model\\Attribute', 'customer_address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer_eav_attribute', 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Collection'),
(3, 'catalog_category', 'Magento\\Catalog\\Model\\ResourceModel\\Category', 'Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute', 'catalog_category_entity', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog_eav_attribute', 'Magento\\Catalog\\Model\\ResourceModel\\Category\\Attribute\\Collection'),
(4, 'catalog_product', 'Magento\\Catalog\\Model\\ResourceModel\\Product', 'Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute', 'catalog_product_entity', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog_eav_attribute', 'Magento\\Catalog\\Model\\ResourceModel\\Product\\Attribute\\Collection'),
(5, 'order', 'Magento\\Sales\\Model\\ResourceModel\\Order', NULL, 'sales_order', NULL, NULL, 1, 'default', 5, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL),
(6, 'invoice', 'Magento\\Sales\\Model\\ResourceModel\\Order', NULL, 'sales_invoice', NULL, NULL, 1, 'default', 6, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL),
(7, 'creditmemo', 'Magento\\Sales\\Model\\ResourceModel\\Order\\Creditmemo', NULL, 'sales_creditmemo', NULL, NULL, 1, 'default', 7, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL),
(8, 'shipment', 'Magento\\Sales\\Model\\ResourceModel\\Order\\Shipment', NULL, 'sales_shipment', NULL, NULL, 1, 'default', 8, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_varchar`
--

CREATE TABLE `eav_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

--
-- Truncate table before insert `eav_entity_varchar`
--

TRUNCATE TABLE `eav_entity_varchar`;
-- --------------------------------------------------------

--
-- Table structure for table `eav_form_element`
--

CREATE TABLE `eav_form_element` (
  `element_id` int(10) UNSIGNED NOT NULL COMMENT 'Element Id',
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

--
-- Truncate table before insert `eav_form_element`
--

TRUNCATE TABLE `eav_form_element`;
--
-- Dumping data for table `eav_form_element`
--

INSERT DELAYED IGNORE INTO `eav_form_element` VALUES
(1, 1, NULL, 23, 0),
(2, 1, NULL, 25, 1),
(3, 1, NULL, 27, 2),
(4, 1, NULL, 9, 3),
(5, 1, NULL, 28, 4),
(6, 1, NULL, 29, 5),
(7, 1, NULL, 31, 6),
(8, 1, NULL, 33, 7),
(9, 1, NULL, 30, 8),
(10, 1, NULL, 34, 9),
(11, 1, NULL, 35, 10),
(12, 2, NULL, 23, 0),
(13, 2, NULL, 25, 1),
(14, 2, NULL, 27, 2),
(15, 2, NULL, 9, 3),
(16, 2, NULL, 28, 4),
(17, 2, NULL, 29, 5),
(18, 2, NULL, 31, 6),
(19, 2, NULL, 33, 7),
(20, 2, NULL, 30, 8),
(21, 2, NULL, 34, 9),
(22, 2, NULL, 35, 10),
(23, 3, NULL, 23, 0),
(24, 3, NULL, 25, 1),
(25, 3, NULL, 27, 2),
(26, 3, NULL, 28, 3),
(27, 3, NULL, 29, 4),
(28, 3, NULL, 31, 5),
(29, 3, NULL, 33, 6),
(30, 3, NULL, 30, 7),
(31, 3, NULL, 34, 8),
(32, 3, NULL, 35, 9),
(33, 4, NULL, 23, 0),
(34, 4, NULL, 25, 1),
(35, 4, NULL, 27, 2),
(36, 4, NULL, 28, 3),
(37, 4, NULL, 29, 4),
(38, 4, NULL, 31, 5),
(39, 4, NULL, 33, 6),
(40, 4, NULL, 30, 7),
(41, 4, NULL, 34, 8),
(42, 4, NULL, 35, 9);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset`
--

CREATE TABLE `eav_form_fieldset` (
  `fieldset_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Fieldset Id',
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';

--
-- Truncate table before insert `eav_form_fieldset`
--

TRUNCATE TABLE `eav_form_fieldset`;
-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset_label`
--

CREATE TABLE `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Truncate table before insert `eav_form_fieldset_label`
--

TRUNCATE TABLE `eav_form_fieldset_label`;
-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type`
--

CREATE TABLE `eav_form_type` (
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

--
-- Truncate table before insert `eav_form_type`
--

TRUNCATE TABLE `eav_form_type`;
--
-- Dumping data for table `eav_form_type`
--

INSERT DELAYED IGNORE INTO `eav_form_type` VALUES
(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type_entity`
--

CREATE TABLE `eav_form_type_entity` (
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Type Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Truncate table before insert `eav_form_type_entity`
--

TRUNCATE TABLE `eav_form_type_entity`;
--
-- Dumping data for table `eav_form_type_entity`
--

INSERT DELAYED IGNORE INTO `eav_form_type_entity` VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `template_id` int(10) UNSIGNED NOT NULL COMMENT 'Template ID',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) UNSIGNED DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of Template Creation',
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

--
-- Truncate table before insert `email_template`
--

TRUNCATE TABLE `email_template`;
-- --------------------------------------------------------

--
-- Table structure for table `emthemes_config_data`
--

CREATE TABLE `emthemes_config_data` (
  `config_id` int(10) UNSIGNED NOT NULL COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `theme_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Theme Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Emthemes Config Data';

--
-- Truncate table before insert `emthemes_config_data`
--

TRUNCATE TABLE `emthemes_config_data`;
-- --------------------------------------------------------

--
-- Table structure for table `flag`
--

CREATE TABLE `flag` (
  `flag_id` int(10) UNSIGNED NOT NULL COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Flag';

--
-- Truncate table before insert `flag`
--

TRUNCATE TABLE `flag`;
-- --------------------------------------------------------

--
-- Table structure for table `gift_message`
--

CREATE TABLE `gift_message` (
  `gift_message_id` int(10) UNSIGNED NOT NULL COMMENT 'GiftMessage Id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Registrant',
  `message` text COMMENT 'Message'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';

--
-- Truncate table before insert `gift_message`
--

TRUNCATE TABLE `gift_message`;
-- --------------------------------------------------------

--
-- Table structure for table `googleoptimizer_code`
--

CREATE TABLE `googleoptimizer_code` (
  `code_id` int(10) UNSIGNED NOT NULL COMMENT 'Google experiment code id',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Optimized entity id product id or catalog id',
  `entity_type` varchar(50) DEFAULT NULL COMMENT 'Optimized entity type',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store id',
  `experiment_script` text COMMENT 'Google experiment script'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Experiment code';

--
-- Truncate table before insert `googleoptimizer_code`
--

TRUNCATE TABLE `googleoptimizer_code`;
-- --------------------------------------------------------

--
-- Table structure for table `importexport_importdata`
--

CREATE TABLE `importexport_importdata` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table';

--
-- Truncate table before insert `importexport_importdata`
--

TRUNCATE TABLE `importexport_importdata`;
-- --------------------------------------------------------

--
-- Table structure for table `import_history`
--

CREATE TABLE `import_history` (
  `history_id` int(10) UNSIGNED NOT NULL COMMENT 'History record Id',
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Started at',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID',
  `imported_file` varchar(255) DEFAULT NULL COMMENT 'Imported file',
  `execution_time` varchar(255) DEFAULT NULL COMMENT 'Execution time',
  `summary` varchar(255) DEFAULT NULL COMMENT 'Summary',
  `error_file` varchar(255) NOT NULL COMMENT 'Imported file with errors'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import history table';

--
-- Truncate table before insert `import_history`
--

TRUNCATE TABLE `import_history`;
-- --------------------------------------------------------

--
-- Table structure for table `indexer_state`
--

CREATE TABLE `indexer_state` (
  `state_id` int(10) UNSIGNED NOT NULL COMMENT 'Indexer State Id',
  `indexer_id` varchar(255) DEFAULT NULL COMMENT 'Indexer Id',
  `status` varchar(16) DEFAULT 'invalid' COMMENT 'Indexer Status',
  `updated` datetime DEFAULT NULL COMMENT 'Indexer Status',
  `hash_config` varchar(32) NOT NULL COMMENT 'Hash of indexer config'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer State';

--
-- Truncate table before insert `indexer_state`
--

TRUNCATE TABLE `indexer_state`;
--
-- Dumping data for table `indexer_state`
--

INSERT DELAYED IGNORE INTO `indexer_state` VALUES
(1, 'customer_grid', 'valid', '2017-04-23 04:47:11', '9b4506442a512a649dde7c6f25924134'),
(2, 'catalog_category_product', 'invalid', '2017-04-23 04:47:11', '86038392fe878acd22d5650a99b4f9b3'),
(3, 'catalog_product_category', 'invalid', '2017-04-23 04:47:12', '8fd6f9a1ec8741ce1c7984b549915e8e'),
(4, 'catalog_product_price', 'invalid', '2017-04-23 04:47:12', '0dce29088c0563479f66b2a70ebf152b'),
(5, 'catalog_product_attribute', 'invalid', '2017-04-23 04:47:12', '5ee6fe2540126b9b2c90c53fe25c4d9a'),
(6, 'cataloginventory_stock', 'invalid', '2017-04-23 04:47:12', '030021373629a9e2b3b8ffcc92be9483'),
(7, 'catalogrule_rule', 'invalid', '2017-04-23 04:47:12', '63676f01f658a0964f150347a6596a0a'),
(8, 'catalogrule_product', 'invalid', '2017-04-23 04:47:12', 'f9512548ab97beef43ea393d4a6dc545'),
(9, 'catalogsearch_fulltext', 'valid', '2017-04-23 04:48:22', 'a959fbd517e02dc6c79ef261cc983c97');

-- --------------------------------------------------------

--
-- Table structure for table `integration`
--

CREATE TABLE `integration` (
  `integration_id` int(10) UNSIGNED NOT NULL COMMENT 'Integration ID',
  `name` varchar(255) NOT NULL COMMENT 'Integration name is displayed in the admin interface',
  `email` varchar(255) NOT NULL COMMENT 'Email address of the contact person',
  `endpoint` varchar(255) DEFAULT NULL COMMENT 'Endpoint for posting consumer credentials',
  `status` smallint(5) UNSIGNED NOT NULL COMMENT 'Integration status',
  `consumer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Oauth consumer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `setup_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Integration type - manual or config file',
  `identity_link_url` varchar(255) DEFAULT NULL COMMENT 'Identity linking Url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='integration';

--
-- Truncate table before insert `integration`
--

TRUNCATE TABLE `integration`;
-- --------------------------------------------------------

--
-- Table structure for table `layout_link`
--

CREATE TABLE `layout_link` (
  `layout_link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme id',
  `layout_update_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Defines whether Layout Update is Temporary'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link';

--
-- Truncate table before insert `layout_link`
--

TRUNCATE TABLE `layout_link`;
--
-- Dumping data for table `layout_link`
--

INSERT DELAYED IGNORE INTO `layout_link` VALUES
(1, 0, 2, 1, 0),
(2, 0, 2, 2, 0),
(3, 0, 2, 3, 0),
(4, 0, 2, 4, 0),
(5, 0, 2, 5, 0),
(6, 0, 2, 6, 0),
(7, 0, 2, 7, 0),
(8, 0, 2, 8, 0),
(9, 0, 2, 9, 0),
(10, 0, 2, 10, 0),
(11, 0, 2, 11, 0),
(12, 0, 2, 12, 0),
(13, 0, 2, 13, 0),
(14, 0, 2, 14, 0),
(15, 0, 2, 15, 0),
(16, 0, 2, 16, 0),
(17, 0, 2, 17, 0),
(18, 0, 2, 18, 0),
(19, 0, 4, 19, 0),
(20, 0, 4, 20, 0),
(21, 0, 4, 21, 0),
(22, 0, 4, 22, 0),
(23, 0, 4, 23, 0),
(24, 0, 4, 24, 0),
(25, 0, 4, 25, 0),
(26, 0, 4, 26, 0),
(27, 0, 4, 27, 0),
(28, 0, 4, 28, 0),
(29, 0, 4, 29, 0),
(30, 0, 4, 30, 0),
(31, 0, 4, 31, 0),
(32, 0, 4, 32, 0),
(33, 0, 4, 33, 0),
(34, 0, 4, 34, 0),
(35, 0, 4, 35, 0),
(36, 0, 4, 36, 0),
(37, 0, 4, 37, 0),
(38, 0, 4, 38, 0);

-- --------------------------------------------------------

--
-- Table structure for table `layout_update`
--

CREATE TABLE `layout_update` (
  `layout_update_id` int(10) UNSIGNED NOT NULL COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates';

--
-- Truncate table before insert `layout_update`
--

TRUNCATE TABLE `layout_update`;
--
-- Dumping data for table `layout_update`
--

INSERT DELAYED IGNORE INTO `layout_update` VALUES
(1, 'contact_index_index', '<body><referenceContainer name=\"content.top\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"d0749e16f8b14f19a74f09ead4a9f915\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">2</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(2, 'default', '<body><referenceContainer name=\"cms_footer_links_container\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"039362539bf380c7c099ffcc9f8a9662\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">1</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(3, 'catalog_category_view_id_', '<body><referenceContainer name=\"sidebar.main\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"35bb11a52af892e4b22a5f494a13044e\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">3</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(4, 'catalog_category_view_id_', '<body><referenceContainer name=\"sidebar.main\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"43626903578f81bc2bf164d9e66be51a\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">4</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(5, 'catalog_category_view_id_', '<body><referenceContainer name=\"sidebar.main\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"87908fc6055e41ffd560d04950ed30b2\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">5</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(6, 'catalog_category_view_id_', '<body><referenceContainer name=\"sidebar.main\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"673500939c74f2b27cf9370a3352e004\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">6</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(7, 'catalog_category_view_id_', '<body><referenceContainer name=\"sidebar.main\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"90a0d051c8e73506028661e5b9229116\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">7</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(8, 'catalog_category_view_id_', '<body><referenceContainer name=\"content.top\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"d1af185f0de041397c18965892cff34a\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">8</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(9, 'catalog_category_view_id_', '<body><referenceContainer name=\"content.top\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"ac5a67e83b1cd15895010243004cb5c2\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">9</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(10, 'catalog_category_view_id_', '<body><referenceContainer name=\"content.top\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"5af67ac260729c8166189e2a103a2268\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">10</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(11, 'catalog_category_view_id_', '<body><referenceContainer name=\"content.top\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"a7f661a44fb42537650eae1bbdf2fd7c\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">11</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(12, 'catalog_category_view_id_', '<body><referenceContainer name=\"content.top\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"cbcd1057a9ea97416322226162289211\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">13</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(13, 'catalog_category_view_id_', '<body><referenceContainer name=\"content.top\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"3a67dbe3b36d1bcfde3eae3330adae59\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">12</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(14, 'cms_index_index', '<body><referenceContainer name=\"content\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"98a738dc6226e2f6fc5f6ca94698e2fb\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">14</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(15, 'catalog_category_view_id_', '<body><referenceContainer name=\"content.top\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"d8c5425fa510e2bb8b91c4334febe67f\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">15</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(16, 'catalog_category_view_id_', '<body><referenceContainer name=\"content.top\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"381d692be68afacf5bd0e1fafb8acfa6\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">16</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(17, 'customer_account_login', '<body><referenceContainer name=\"customer.login.container\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"b8e543333a45005dc2ae6799394163fe\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">18</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(18, 'catalog_category_view_id_', '<body><referenceContainer name=\"content.top\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"7e9430611955ea408071986f34cbd18e\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">17</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(19, 'cms_index_index', '<body><referenceContainer name=\"columns.top\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"6baea9531ca378cb335858b22fe997f9\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">19</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(20, 'cms_index_index', '<body><referenceContainer name=\"sidebar.main\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"3795c450470927f0c229fe95b7c1d093\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">20</argument></action></block></referenceContainer></body>', 1, '0000-00-00 00:00:00'),
(21, 'catalog_product_view', '<body><referenceContainer name=\"sidebar.main\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"582016c78af3d891661c0bbebf66f76c\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">20</argument></action></block></referenceContainer></body>', 1, '0000-00-00 00:00:00'),
(22, 'catalog_category_view', '<body><referenceContainer name=\"sidebar.main\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"4df409b9a1846d9186214e06c18a7aca\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">20</argument></action></block></referenceContainer></body>', 1, '0000-00-00 00:00:00'),
(23, 'default', '<body><referenceContainer name=\"sidebar.additional\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"94c295588f3d347f00d182c160a6ac08\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">21</argument></action></block></referenceContainer></body>', 2, '0000-00-00 00:00:00'),
(24, 'cms_index_index', '<body><referenceContainer name=\"sidebar.main\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"5c9f1cb923c46ff1bd5e070e5c69bcfd\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">22</argument></action></block></referenceContainer></body>', 3, '0000-00-00 00:00:00'),
(25, 'cms_index_index', '<body><referenceContainer name=\"sidebar.additional\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"1a14be30bce58b56dea7cb11f00c088b\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">23</argument></action></block></referenceContainer></body>', 4, '0000-00-00 00:00:00'),
(26, 'cms_index_index', '<body><referenceContainer name=\"content\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"c68c9b84eb72b86d51cb48b9c966a97b\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">24</argument></action></block></referenceContainer></body>', 1, '0000-00-00 00:00:00'),
(27, 'cms_index_index', '<body><referenceContainer name=\"content\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"3e8a7a5a271cb341a8bfaf8f3dbf5609\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">25</argument></action></block></referenceContainer></body>', 2, '0000-00-00 00:00:00'),
(28, 'cms_index_index', '<body><referenceContainer name=\"content\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"754f2ca301b053aa4acfb6eea7497b2e\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">26</argument></action></block></referenceContainer></body>', 3, '0000-00-00 00:00:00'),
(29, 'cms_index_index', '<body><referenceContainer name=\"page.bottom\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"4049ea0a1a40710fa156887660eefb25\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">27</argument></action></block></referenceContainer></body>', 1, '0000-00-00 00:00:00'),
(30, 'cms_index_index', '<body><referenceContainer name=\"page.bottom\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"eeabb83c3175628c052f3890c7fcef91\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">29</argument></action></block></referenceContainer></body>', 3, '0000-00-00 00:00:00'),
(31, 'default', '<body><referenceContainer name=\"footer.area.1\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"c6e45a85e79fc521c9e6182821d55c98\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">30</argument></action></block></referenceContainer></body>', 4, '0000-00-00 00:00:00'),
(32, 'default', '<body><referenceContainer name=\"footer.area.2\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"cfa4928f887c62b53e969f09c20d83eb\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">31</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(33, 'cms_index_index', '<body><referenceContainer name=\"content\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"4991e4b57505a27137f5e9a40444dd02\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">32</argument></action></block></referenceContainer></body>', 4, '0000-00-00 00:00:00'),
(34, 'cms_index_index', '<body><referenceContainer name=\"content\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"c015f500f3d980764bf631a9ed52a4aa\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">33</argument></action></block></referenceContainer></body>', 0, '0000-00-00 00:00:00'),
(35, 'default', '<body><referenceContainer name=\"topNavigation\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"217f0a1eca3abc2a2d491e202d1651aa\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">34</argument></action></block></referenceContainer></body>', 1, '0000-00-00 00:00:00'),
(36, 'catalog_product_view', '<body><referenceContainer name=\"product_view_block_custom\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"a7b47fbf8fb2d95b58e3b7b187ad4dbc\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">35</argument></action></block></referenceContainer></body>', 1, '0000-00-00 00:00:00'),
(37, 'catalog_product_view', '<body><referenceContainer name=\"product.info.social\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"666d2a78457440b538dd58b8d431e339\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">36</argument></action></block></referenceContainer></body>', 1, '0000-00-00 00:00:00'),
(38, 'default', '<body><referenceContainer name=\"popup.static.block\"><block class=\"Magento\\Cms\\Block\\Widget\\Block\" name=\"8708c30394e98388893703e3871f2e6a\" template=\"widget/static_block/default.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">block_id</argument><argument name=\"value\" xsi:type=\"string\">37</argument></action></block></referenceContainer></body>', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mview_state`
--

CREATE TABLE `mview_state` (
  `state_id` int(10) UNSIGNED NOT NULL COMMENT 'View State Id',
  `view_id` varchar(255) DEFAULT NULL COMMENT 'View Id',
  `mode` varchar(16) DEFAULT 'disabled' COMMENT 'View Mode',
  `status` varchar(16) DEFAULT 'idle' COMMENT 'View Status',
  `updated` datetime DEFAULT NULL COMMENT 'View updated time',
  `version_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'View Version Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='View State';

--
-- Truncate table before insert `mview_state`
--

TRUNCATE TABLE `mview_state`;
-- --------------------------------------------------------

--
-- Table structure for table `newsletter_problem`
--

CREATE TABLE `newsletter_problem` (
  `problem_id` int(10) UNSIGNED NOT NULL COMMENT 'Problem Id',
  `subscriber_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) UNSIGNED DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';

--
-- Truncate table before insert `newsletter_problem`
--

TRUNCATE TABLE `newsletter_problem`;
-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue`
--

CREATE TABLE `newsletter_queue` (
  `queue_id` int(10) UNSIGNED NOT NULL COMMENT 'Queue Id',
  `template_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Template ID',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';

--
-- Truncate table before insert `newsletter_queue`
--

TRUNCATE TABLE `newsletter_queue`;
-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_link`
--

CREATE TABLE `newsletter_queue_link` (
  `queue_link_id` int(10) UNSIGNED NOT NULL COMMENT 'Queue Link Id',
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';

--
-- Truncate table before insert `newsletter_queue_link`
--

TRUNCATE TABLE `newsletter_queue_link`;
-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_store_link`
--

CREATE TABLE `newsletter_queue_store_link` (
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

--
-- Truncate table before insert `newsletter_queue_store_link`
--

TRUNCATE TABLE `newsletter_queue_store_link`;
-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `subscriber_id` int(10) UNSIGNED NOT NULL COMMENT 'Subscriber Id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';

--
-- Truncate table before insert `newsletter_subscriber`
--

TRUNCATE TABLE `newsletter_subscriber`;
-- --------------------------------------------------------

--
-- Table structure for table `newsletter_template`
--

CREATE TABLE `newsletter_template` (
  `template_id` int(10) UNSIGNED NOT NULL COMMENT 'Template ID',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) UNSIGNED DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';

--
-- Truncate table before insert `newsletter_template`
--

TRUNCATE TABLE `newsletter_template`;
-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` varchar(255) DEFAULT NULL COMMENT 'Callback URL',
  `rejected_callback_url` varchar(255) NOT NULL COMMENT 'Rejected callback URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';

--
-- Truncate table before insert `oauth_consumer`
--

TRUNCATE TABLE `oauth_consumer`;
-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) UNSIGNED NOT NULL COMMENT 'Nonce Timestamp',
  `consumer_id` int(10) UNSIGNED NOT NULL COMMENT 'Consumer ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Nonce';

--
-- Truncate table before insert `oauth_nonce`
--

TRUNCATE TABLE `oauth_nonce`;
-- --------------------------------------------------------

--
-- Table structure for table `oauth_token`
--

CREATE TABLE `oauth_token` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `consumer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Oauth Consumer ID',
  `admin_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` varchar(255) NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `user_type` int(11) DEFAULT NULL COMMENT 'User type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';

--
-- Truncate table before insert `oauth_token`
--

TRUNCATE TABLE `oauth_token`;
-- --------------------------------------------------------

--
-- Table structure for table `oauth_token_request_log`
--

CREATE TABLE `oauth_token_request_log` (
  `log_id` int(10) UNSIGNED NOT NULL COMMENT 'Log Id',
  `user_name` varchar(255) NOT NULL COMMENT 'Customer email or admin login',
  `user_type` smallint(5) UNSIGNED NOT NULL COMMENT 'User type (admin or customer)',
  `failures_count` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Number of failed authentication attempts in a row',
  `lock_expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Lock expiration time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log of token request authentication failures.';

--
-- Truncate table before insert `oauth_token_request_log`
--

TRUNCATE TABLE `oauth_token_request_log`;
-- --------------------------------------------------------

--
-- Table structure for table `paypal_billing_agreement`
--

CREATE TABLE `paypal_billing_agreement` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';

--
-- Truncate table before insert `paypal_billing_agreement`
--

TRUNCATE TABLE `paypal_billing_agreement`;
-- --------------------------------------------------------

--
-- Table structure for table `paypal_billing_agreement_order`
--

CREATE TABLE `paypal_billing_agreement_order` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

--
-- Truncate table before insert `paypal_billing_agreement_order`
--

TRUNCATE TABLE `paypal_billing_agreement_order`;
-- --------------------------------------------------------

--
-- Table structure for table `paypal_cert`
--

CREATE TABLE `paypal_cert` (
  `cert_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Cert Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';

--
-- Truncate table before insert `paypal_cert`
--

TRUNCATE TABLE `paypal_cert`;
-- --------------------------------------------------------

--
-- Table structure for table `paypal_payment_transaction`
--

CREATE TABLE `paypal_payment_transaction` (
  `transaction_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';

--
-- Truncate table before insert `paypal_payment_transaction`
--

TRUNCATE TABLE `paypal_payment_transaction`;
-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report`
--

CREATE TABLE `paypal_settlement_report` (
  `report_id` int(10) UNSIGNED NOT NULL COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';

--
-- Truncate table before insert `paypal_settlement_report`
--

TRUNCATE TABLE `paypal_settlement_report`;
-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report_row`
--

CREATE TABLE `paypal_settlement_report_row` (
  `row_id` int(10) UNSIGNED NOT NULL COMMENT 'Row Id',
  `report_id` int(10) UNSIGNED NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT NULL COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';

--
-- Truncate table before insert `paypal_settlement_report_row`
--

TRUNCATE TABLE `paypal_settlement_report_row`;
-- --------------------------------------------------------

--
-- Table structure for table `persistent_session`
--

CREATE TABLE `persistent_session` (
  `persistent_id` int(10) UNSIGNED NOT NULL COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';

--
-- Truncate table before insert `persistent_session`
--

TRUNCATE TABLE `persistent_session`;
-- --------------------------------------------------------

--
-- Table structure for table `product_alert_price`
--

CREATE TABLE `product_alert_price` (
  `alert_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Product alert price id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';

--
-- Truncate table before insert `product_alert_price`
--

TRUNCATE TABLE `product_alert_price`;
-- --------------------------------------------------------

--
-- Table structure for table `product_alert_stock`
--

CREATE TABLE `product_alert_stock` (
  `alert_stock_id` int(10) UNSIGNED NOT NULL COMMENT 'Product alert stock id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';

--
-- Truncate table before insert `product_alert_stock`
--

TRUNCATE TABLE `product_alert_stock`;
-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) UNSIGNED DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) UNSIGNED DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `is_persistent` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Quote Persistent',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';

--
-- Truncate table before insert `quote`
--

TRUNCATE TABLE `quote`;
-- --------------------------------------------------------

--
-- Table structure for table `quote_address`
--

CREATE TABLE `quote_address` (
  `address_id` int(10) UNSIGNED NOT NULL COMMENT 'Address Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(10) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(20) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(20) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(20) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(40) DEFAULT NULL COMMENT 'City',
  `region` varchar(40) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(20) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(30) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(20) DEFAULT NULL COMMENT 'Phone Number',
  `fax` varchar(20) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `collect_shipping_rates` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(40) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `free_shipping` smallint(6) DEFAULT NULL,
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';

--
-- Truncate table before insert `quote_address`
--

TRUNCATE TABLE `quote_address`;
-- --------------------------------------------------------

--
-- Table structure for table `quote_address_item`
--

CREATE TABLE `quote_address_item` (
  `address_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Address Item Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `is_qty_decimal` int(10) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) UNSIGNED DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` int(11) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';

--
-- Truncate table before insert `quote_address_item`
--

TRUNCATE TABLE `quote_address_item`;
-- --------------------------------------------------------

--
-- Table structure for table `quote_id_mask`
--

CREATE TABLE `quote_id_mask` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `quote_id` int(10) UNSIGNED NOT NULL COMMENT 'Quote ID',
  `masked_id` varchar(32) DEFAULT NULL COMMENT 'Masked ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Quote ID and masked ID mapping';

--
-- Truncate table before insert `quote_id_mask`
--

TRUNCATE TABLE `quote_id_mask`;
-- --------------------------------------------------------

--
-- Table structure for table `quote_item`
--

CREATE TABLE `quote_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` smallint(6) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';

--
-- Truncate table before insert `quote_item`
--

TRUNCATE TABLE `quote_item`;
-- --------------------------------------------------------

--
-- Table structure for table `quote_item_option`
--

CREATE TABLE `quote_item_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';

--
-- Truncate table before insert `quote_item_option`
--

TRUNCATE TABLE `quote_item_option`;
-- --------------------------------------------------------

--
-- Table structure for table `quote_payment`
--

CREATE TABLE `quote_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL COMMENT 'Payment Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last_4` varchar(255) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';

--
-- Truncate table before insert `quote_payment`
--

TRUNCATE TABLE `quote_payment`;
-- --------------------------------------------------------

--
-- Table structure for table `quote_shipping_rate`
--

CREATE TABLE `quote_shipping_rate` (
  `rate_id` int(10) UNSIGNED NOT NULL COMMENT 'Rate Id',
  `address_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';

--
-- Truncate table before insert `quote_shipping_rate`
--

TRUNCATE TABLE `quote_shipping_rate`;
-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Rating Id',
  `entity_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Position On Storefront',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Rating is active.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ratings';

--
-- Truncate table before insert `rating`
--

TRUNCATE TABLE `rating`;
--
-- Dumping data for table `rating`
--

INSERT DELAYED IGNORE INTO `rating` VALUES
(1, 1, 'Quality', 0, 1),
(2, 1, 'Value', 0, 1),
(3, 1, 'Price', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating_entity`
--

CREATE TABLE `rating_entity` (
  `entity_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating entities';

--
-- Truncate table before insert `rating_entity`
--

TRUNCATE TABLE `rating_entity`;
--
-- Dumping data for table `rating_entity`
--

INSERT DELAYED IGNORE INTO `rating_entity` VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- Table structure for table `rating_option`
--

CREATE TABLE `rating_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Rating Option Id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Ration option position on Storefront'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating options';

--
-- Truncate table before insert `rating_option`
--

TRUNCATE TABLE `rating_option`;
--
-- Dumping data for table `rating_option`
--

INSERT DELAYED IGNORE INTO `rating_option` VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote`
--

CREATE TABLE `rating_option_vote` (
  `vote_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Vote id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values';

--
-- Truncate table before insert `rating_option_vote`
--

TRUNCATE TABLE `rating_option_vote`;
-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote_aggregated`
--

CREATE TABLE `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';

--
-- Truncate table before insert `rating_option_vote_aggregated`
--

TRUNCATE TABLE `rating_option_vote_aggregated`;
-- --------------------------------------------------------

--
-- Table structure for table `rating_store`
--

CREATE TABLE `rating_store` (
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

--
-- Truncate table before insert `rating_store`
--

TRUNCATE TABLE `rating_store`;
-- --------------------------------------------------------

--
-- Table structure for table `rating_title`
--

CREATE TABLE `rating_title` (
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

--
-- Truncate table before insert `rating_title`
--

TRUNCATE TABLE `rating_title`;
-- --------------------------------------------------------

--
-- Table structure for table `reporting_counts`
--

CREATE TABLE `reporting_counts` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Item Reported',
  `count` int(10) UNSIGNED DEFAULT NULL COMMENT 'Count Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all count related events generated via the cron job';

--
-- Truncate table before insert `reporting_counts`
--

TRUNCATE TABLE `reporting_counts`;
-- --------------------------------------------------------

--
-- Table structure for table `reporting_module_status`
--

CREATE TABLE `reporting_module_status` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Module Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Module Name',
  `active` varchar(255) DEFAULT NULL COMMENT 'Module Active Status',
  `setup_version` varchar(255) DEFAULT NULL COMMENT 'Module Version',
  `state` varchar(255) DEFAULT NULL COMMENT 'Module State',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module Status Table';

--
-- Truncate table before insert `reporting_module_status`
--

TRUNCATE TABLE `reporting_module_status`;
-- --------------------------------------------------------

--
-- Table structure for table `reporting_orders`
--

CREATE TABLE `reporting_orders` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `total` decimal(20,2) DEFAULT NULL COMMENT 'Total From Store',
  `total_base` decimal(20,2) DEFAULT NULL COMMENT 'Total From Base Currency',
  `item_count` int(10) UNSIGNED NOT NULL COMMENT 'Line Item Count',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all orders';

--
-- Truncate table before insert `reporting_orders`
--

TRUNCATE TABLE `reporting_orders`;
-- --------------------------------------------------------

--
-- Table structure for table `reporting_system_updates`
--

CREATE TABLE `reporting_system_updates` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Update Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for system updates';

--
-- Truncate table before insert `reporting_system_updates`
--

TRUNCATE TABLE `reporting_system_updates`;
-- --------------------------------------------------------

--
-- Table structure for table `reporting_users`
--

CREATE TABLE `reporting_users` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'User Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for user actions';

--
-- Truncate table before insert `reporting_users`
--

TRUNCATE TABLE `reporting_users`;
-- --------------------------------------------------------

--
-- Table structure for table `report_compared_product_index`
--

CREATE TABLE `report_compared_product_index` (
  `index_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Index Id',
  `visitor_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';

--
-- Truncate table before insert `report_compared_product_index`
--

TRUNCATE TABLE `report_compared_product_index`;
-- --------------------------------------------------------

--
-- Table structure for table `report_event`
--

CREATE TABLE `report_event` (
  `event_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Logged At',
  `event_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

--
-- Truncate table before insert `report_event`
--

TRUNCATE TABLE `report_event`;
-- --------------------------------------------------------

--
-- Table structure for table `report_event_types`
--

CREATE TABLE `report_event_types` (
  `event_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

--
-- Truncate table before insert `report_event_types`
--

TRUNCATE TABLE `report_event_types`;
--
-- Dumping data for table `report_event_types`
--

INSERT DELAYED IGNORE INTO `report_event_types` VALUES
(1, 'catalog_product_view', 0),
(2, 'sendfriend_product', 0),
(3, 'catalog_product_compare_add_product', 0),
(4, 'checkout_cart_add_product', 0),
(5, 'wishlist_add_product', 0),
(6, 'wishlist_share', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_daily`
--

CREATE TABLE `report_viewed_product_aggregated_daily` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

--
-- Truncate table before insert `report_viewed_product_aggregated_daily`
--

TRUNCATE TABLE `report_viewed_product_aggregated_daily`;
-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_monthly`
--

CREATE TABLE `report_viewed_product_aggregated_monthly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';

--
-- Truncate table before insert `report_viewed_product_aggregated_monthly`
--

TRUNCATE TABLE `report_viewed_product_aggregated_monthly`;
-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_yearly`
--

CREATE TABLE `report_viewed_product_aggregated_yearly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';

--
-- Truncate table before insert `report_viewed_product_aggregated_yearly`
--

TRUNCATE TABLE `report_viewed_product_aggregated_yearly`;
-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_index`
--

CREATE TABLE `report_viewed_product_index` (
  `index_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Index Id',
  `visitor_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

--
-- Truncate table before insert `report_viewed_product_index`
--

TRUNCATE TABLE `report_viewed_product_index`;
-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Review create date',
  `entity_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Status code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information';

--
-- Truncate table before insert `review`
--

TRUNCATE TABLE `review`;
-- --------------------------------------------------------

--
-- Table structure for table `review_detail`
--

CREATE TABLE `review_detail` (
  `detail_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review detail id',
  `review_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information';

--
-- Truncate table before insert `review_detail`
--

TRUNCATE TABLE `review_detail`;
-- --------------------------------------------------------

--
-- Table structure for table `review_entity`
--

CREATE TABLE `review_entity` (
  `entity_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review entities';

--
-- Truncate table before insert `review_entity`
--

TRUNCATE TABLE `review_entity`;
--
-- Dumping data for table `review_entity`
--

INSERT DELAYED IGNORE INTO `review_entity` VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `review_entity_summary`
--

CREATE TABLE `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates';

--
-- Truncate table before insert `review_entity_summary`
--

TRUNCATE TABLE `review_entity_summary`;
-- --------------------------------------------------------

--
-- Table structure for table `review_status`
--

CREATE TABLE `review_status` (
  `status_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review statuses';

--
-- Truncate table before insert `review_status`
--

TRUNCATE TABLE `review_status`;
--
-- Dumping data for table `review_status`
--

INSERT DELAYED IGNORE INTO `review_status` VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `review_store`
--

CREATE TABLE `review_store` (
  `review_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

--
-- Truncate table before insert `review_store`
--

TRUNCATE TABLE `review_store`;
-- --------------------------------------------------------

--
-- Table structure for table `salesrule`
--

CREATE TABLE `salesrule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) UNSIGNED NOT NULL COMMENT 'Discount Step',
  `apply_to_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'User Per Coupon',
  `simple_free_shipping` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule';

--
-- Truncate table before insert `salesrule`
--

TRUNCATE TABLE `salesrule`;
-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon`
--

CREATE TABLE `salesrule_coupon` (
  `coupon_id` int(10) UNSIGNED NOT NULL COMMENT 'Coupon Id',
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) UNSIGNED DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) UNSIGNED DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

--
-- Truncate table before insert `salesrule_coupon`
--

TRUNCATE TABLE `salesrule_coupon`;
-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_aggregated`
--

CREATE TABLE `salesrule_coupon_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

--
-- Truncate table before insert `salesrule_coupon_aggregated`
--

TRUNCATE TABLE `salesrule_coupon_aggregated`;
-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_aggregated_order`
--

CREATE TABLE `salesrule_coupon_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

--
-- Truncate table before insert `salesrule_coupon_aggregated_order`
--

TRUNCATE TABLE `salesrule_coupon_aggregated_order`;
-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_aggregated_updated`
--

CREATE TABLE `salesrule_coupon_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Aggregated Updated';

--
-- Truncate table before insert `salesrule_coupon_aggregated_updated`
--

TRUNCATE TABLE `salesrule_coupon_aggregated_updated`;
-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_usage`
--

CREATE TABLE `salesrule_coupon_usage` (
  `coupon_id` int(10) UNSIGNED NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

--
-- Truncate table before insert `salesrule_coupon_usage`
--

TRUNCATE TABLE `salesrule_coupon_usage`;
-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer`
--

CREATE TABLE `salesrule_customer` (
  `rule_customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Customer Id',
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';

--
-- Truncate table before insert `salesrule_customer`
--

TRUNCATE TABLE `salesrule_customer`;
-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer_group`
--

CREATE TABLE `salesrule_customer_group` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

--
-- Truncate table before insert `salesrule_customer_group`
--

TRUNCATE TABLE `salesrule_customer_group`;
-- --------------------------------------------------------

--
-- Table structure for table `salesrule_label`
--

CREATE TABLE `salesrule_label` (
  `label_id` int(10) UNSIGNED NOT NULL COMMENT 'Label Id',
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';

--
-- Truncate table before insert `salesrule_label`
--

TRUNCATE TABLE `salesrule_label`;
-- --------------------------------------------------------

--
-- Table structure for table `salesrule_product_attribute`
--

CREATE TABLE `salesrule_product_attribute` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

--
-- Truncate table before insert `salesrule_product_attribute`
--

TRUNCATE TABLE `salesrule_product_attribute`;
-- --------------------------------------------------------

--
-- Table structure for table `salesrule_website`
--

CREATE TABLE `salesrule_website` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

--
-- Truncate table before insert `salesrule_website`
--

TRUNCATE TABLE `salesrule_website`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_daily`
--

CREATE TABLE `sales_bestsellers_aggregated_daily` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';

--
-- Truncate table before insert `sales_bestsellers_aggregated_daily`
--

TRUNCATE TABLE `sales_bestsellers_aggregated_daily`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_monthly`
--

CREATE TABLE `sales_bestsellers_aggregated_monthly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';

--
-- Truncate table before insert `sales_bestsellers_aggregated_monthly`
--

TRUNCATE TABLE `sales_bestsellers_aggregated_monthly`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_yearly`
--

CREATE TABLE `sales_bestsellers_aggregated_yearly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';

--
-- Truncate table before insert `sales_bestsellers_aggregated_yearly`
--

TRUNCATE TABLE `sales_bestsellers_aggregated_yearly`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo`
--

CREATE TABLE `sales_creditmemo` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';

--
-- Truncate table before insert `sales_creditmemo`
--

TRUNCATE TABLE `sales_creditmemo`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo_comment`
--

CREATE TABLE `sales_creditmemo_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';

--
-- Truncate table before insert `sales_creditmemo_comment`
--

TRUNCATE TABLE `sales_creditmemo_comment`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo_grid`
--

CREATE TABLE `sales_creditmemo_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `state` int(11) DEFAULT NULL COMMENT 'Status',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order Status',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `order_base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Order Grand Total'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

--
-- Truncate table before insert `sales_creditmemo_grid`
--

TRUNCATE TABLE `sales_creditmemo_grid`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo_item`
--

CREATE TABLE `sales_creditmemo_item` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax in the creditmemo item over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';

--
-- Truncate table before insert `sales_creditmemo_item`
--

TRUNCATE TABLE `sales_creditmemo_item`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice`
--

CREATE TABLE `sales_invoice` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `can_void_flag` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';

--
-- Truncate table before insert `sales_invoice`
--

TRUNCATE TABLE `sales_invoice`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_invoiced_aggregated`
--

CREATE TABLE `sales_invoiced_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated';

--
-- Truncate table before insert `sales_invoiced_aggregated`
--

TRUNCATE TABLE `sales_invoiced_aggregated`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_invoiced_aggregated_order`
--

CREATE TABLE `sales_invoiced_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order';

--
-- Truncate table before insert `sales_invoiced_aggregated_order`
--

TRUNCATE TABLE `sales_invoiced_aggregated_order`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_comment`
--

CREATE TABLE `sales_invoice_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment';

--
-- Truncate table before insert `sales_invoice_comment`
--

TRUNCATE TABLE `sales_invoice_comment`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_grid`
--

CREATE TABLE `sales_invoice_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(128) DEFAULT NULL COMMENT 'Payment Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

--
-- Truncate table before insert `sales_invoice_grid`
--

TRUNCATE TABLE `sales_invoice_grid`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_item`
--

CREATE TABLE `sales_invoice_item` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax invoiced over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';

--
-- Truncate table before insert `sales_invoice_item`
--

TRUNCATE TABLE `sales_invoice_item`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `forced_shipment_with_invoice` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(32) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(128) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(128) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(128) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(128) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(32) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(32) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(32) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(32) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(32) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(32) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(32) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(32) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(32) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(32) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(32) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `total_item_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';

--
-- Truncate table before insert `sales_order`
--

TRUNCATE TABLE `sales_order`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_order_address`
--

CREATE TABLE `sales_order_address` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Phone Number',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';

--
-- Truncate table before insert `sales_order_address`
--

TRUNCATE TABLE `sales_order_address`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_order_aggregated_created`
--

CREATE TABLE `sales_order_aggregated_created` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created';

--
-- Truncate table before insert `sales_order_aggregated_created`
--

TRUNCATE TABLE `sales_order_aggregated_created`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_order_aggregated_updated`
--

CREATE TABLE `sales_order_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated';

--
-- Truncate table before insert `sales_order_aggregated_updated`
--

TRUNCATE TABLE `sales_order_aggregated_updated`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_order_grid`
--

CREATE TABLE `sales_order_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group` varchar(255) DEFAULT NULL COMMENT 'Customer Group',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `payment_method` varchar(255) DEFAULT NULL COMMENT 'Payment Method',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

--
-- Truncate table before insert `sales_order_grid`
--

TRUNCATE TABLE `sales_order_grid`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_order_item`
--

CREATE TABLE `sales_order_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `discount_tax_compensation_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `free_shipping` smallint(6) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';

--
-- Truncate table before insert `sales_order_item`
--

TRUNCATE TABLE `sales_order_item`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_order_payment`
--

CREATE TABLE `sales_order_payment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(12) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(12) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(128) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(128) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(32) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(32) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(32) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last_4` varchar(100) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_status_description` varchar(32) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(32) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(128) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(32) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(32) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(128) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(32) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(32) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(4) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(4) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(32) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(32) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(32) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(32) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(32) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(32) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(32) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(32) DEFAULT NULL COMMENT 'Cc Trans Id',
  `address_status` varchar(32) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';

--
-- Truncate table before insert `sales_order_payment`
--

TRUNCATE TABLE `sales_order_payment`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status`
--

CREATE TABLE `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Truncate table before insert `sales_order_status`
--

TRUNCATE TABLE `sales_order_status`;
--
-- Dumping data for table `sales_order_status`
--

INSERT DELAYED IGNORE INTO `sales_order_status` VALUES
('canceled', 'Canceled'),
('closed', 'Closed'),
('complete', 'Complete'),
('fraud', 'Suspected Fraud'),
('holded', 'On Hold'),
('payment_review', 'Payment Review'),
('paypal_canceled_reversal', 'PayPal Canceled Reversal'),
('paypal_reversed', 'PayPal Reversed'),
('pending', 'Pending'),
('pending_payment', 'Pending Payment'),
('pending_paypal', 'Pending PayPal'),
('processing', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_history`
--

CREATE TABLE `sales_order_status_history` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';

--
-- Truncate table before insert `sales_order_status_history`
--

TRUNCATE TABLE `sales_order_status_history`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_label`
--

CREATE TABLE `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

--
-- Truncate table before insert `sales_order_status_label`
--

TRUNCATE TABLE `sales_order_status_label`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_state`
--

CREATE TABLE `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visible on front'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Truncate table before insert `sales_order_status_state`
--

TRUNCATE TABLE `sales_order_status_state`;
--
-- Dumping data for table `sales_order_status_state`
--

INSERT DELAYED IGNORE INTO `sales_order_status_state` VALUES
('canceled', 'canceled', 1, 1),
('closed', 'closed', 1, 1),
('complete', 'complete', 1, 1),
('fraud', 'payment_review', 0, 1),
('fraud', 'processing', 0, 1),
('holded', 'holded', 1, 1),
('payment_review', 'payment_review', 1, 1),
('pending', 'new', 1, 1),
('pending_payment', 'pending_payment', 1, 0),
('processing', 'processing', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_tax`
--

CREATE TABLE `sales_order_tax` (
  `tax_id` int(10) UNSIGNED NOT NULL COMMENT 'Tax Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table';

--
-- Truncate table before insert `sales_order_tax`
--

TRUNCATE TABLE `sales_order_tax`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_order_tax_item`
--

CREATE TABLE `sales_order_tax_item` (
  `tax_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Tax Item Id',
  `tax_id` int(10) UNSIGNED NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  `amount` decimal(12,4) NOT NULL COMMENT 'Tax amount for the item and tax rate',
  `base_amount` decimal(12,4) NOT NULL COMMENT 'Base tax amount for the item and tax rate',
  `real_amount` decimal(12,4) NOT NULL COMMENT 'Real tax amount for the item and tax rate',
  `real_base_amount` decimal(12,4) NOT NULL COMMENT 'Real base tax amount for the item and tax rate',
  `associated_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id of the associated item',
  `taxable_item_type` varchar(32) NOT NULL COMMENT 'Type of the taxable item'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item';

--
-- Truncate table before insert `sales_order_tax_item`
--

TRUNCATE TABLE `sales_order_tax_item`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_payment_transaction`
--

CREATE TABLE `sales_payment_transaction` (
  `transaction_id` int(10) UNSIGNED NOT NULL COMMENT 'Transaction Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';

--
-- Truncate table before insert `sales_payment_transaction`
--

TRUNCATE TABLE `sales_payment_transaction`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_refunded_aggregated`
--

CREATE TABLE `sales_refunded_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated';

--
-- Truncate table before insert `sales_refunded_aggregated`
--

TRUNCATE TABLE `sales_refunded_aggregated`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_refunded_aggregated_order`
--

CREATE TABLE `sales_refunded_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order';

--
-- Truncate table before insert `sales_refunded_aggregated_order`
--

TRUNCATE TABLE `sales_refunded_aggregated_order`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_sequence_meta`
--

CREATE TABLE `sales_sequence_meta` (
  `meta_id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Prefix',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `sequence_table` varchar(32) NOT NULL COMMENT 'table for sequence'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sales_sequence_meta';

--
-- Truncate table before insert `sales_sequence_meta`
--

TRUNCATE TABLE `sales_sequence_meta`;
--
-- Dumping data for table `sales_sequence_meta`
--

INSERT DELAYED IGNORE INTO `sales_sequence_meta` VALUES
(1, 'order', 0, 'sequence_order_0'),
(2, 'invoice', 0, 'sequence_invoice_0'),
(3, 'creditmemo', 0, 'sequence_creditmemo_0'),
(4, 'shipment', 0, 'sequence_shipment_0'),
(5, 'order', 1, 'sequence_order_1'),
(6, 'invoice', 1, 'sequence_invoice_1'),
(7, 'creditmemo', 1, 'sequence_creditmemo_1'),
(8, 'shipment', 1, 'sequence_shipment_1');

-- --------------------------------------------------------

--
-- Table structure for table `sales_sequence_profile`
--

CREATE TABLE `sales_sequence_profile` (
  `profile_id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `meta_id` int(10) UNSIGNED NOT NULL COMMENT 'Meta_id',
  `prefix` varchar(32) DEFAULT NULL COMMENT 'Prefix',
  `suffix` varchar(32) DEFAULT NULL COMMENT 'Suffix',
  `start_value` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Start value for sequence',
  `step` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Step for sequence',
  `max_value` int(10) UNSIGNED NOT NULL COMMENT 'MaxValue for sequence',
  `warning_value` int(10) UNSIGNED NOT NULL COMMENT 'WarningValue for sequence',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'isActive flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sales_sequence_profile';

--
-- Truncate table before insert `sales_sequence_profile`
--

TRUNCATE TABLE `sales_sequence_profile`;
--
-- Dumping data for table `sales_sequence_profile`
--

INSERT DELAYED IGNORE INTO `sales_sequence_profile` VALUES
(1, 1, NULL, NULL, 1, 1, 0, 0, 1),
(2, 2, NULL, NULL, 1, 1, 0, 0, 1),
(3, 3, NULL, NULL, 1, 1, 0, 0, 1),
(4, 4, NULL, NULL, 1, 1, 0, 0, 1),
(5, 5, NULL, NULL, 1, 1, 0, 0, 1),
(6, 6, NULL, NULL, 1, 1, 0, 0, 1),
(7, 7, NULL, NULL, 1, 1, 0, 0, 1),
(8, 8, NULL, NULL, 1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment`
--

CREATE TABLE `sales_shipment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';

--
-- Truncate table before insert `sales_shipment`
--

TRUNCATE TABLE `sales_shipment`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment_comment`
--

CREATE TABLE `sales_shipment_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment';

--
-- Truncate table before insert `sales_shipment_comment`
--

TRUNCATE TABLE `sales_shipment_comment`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment_grid`
--

CREATE TABLE `sales_shipment_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_increment_id` varchar(32) NOT NULL COMMENT 'Order Increment Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `order_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Order Increment Id',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `billing_name` varchar(128) DEFAULT NULL COMMENT 'Billing Name',
  `shipping_name` varchar(128) DEFAULT NULL COMMENT 'Shipping Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

--
-- Truncate table before insert `sales_shipment_grid`
--

TRUNCATE TABLE `sales_shipment_grid`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment_item`
--

CREATE TABLE `sales_shipment_item` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';

--
-- Truncate table before insert `sales_shipment_item`
--

TRUNCATE TABLE `sales_shipment_item`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment_track`
--

CREATE TABLE `sales_shipment_track` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track';

--
-- Truncate table before insert `sales_shipment_track`
--

TRUNCATE TABLE `sales_shipment_track`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_shipping_aggregated`
--

CREATE TABLE `sales_shipping_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated';

--
-- Truncate table before insert `sales_shipping_aggregated`
--

TRUNCATE TABLE `sales_shipping_aggregated`;
-- --------------------------------------------------------

--
-- Table structure for table `sales_shipping_aggregated_order`
--

CREATE TABLE `sales_shipping_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order';

--
-- Truncate table before insert `sales_shipping_aggregated_order`
--

TRUNCATE TABLE `sales_shipping_aggregated_order`;
-- --------------------------------------------------------

--
-- Table structure for table `search_query`
--

CREATE TABLE `search_query` (
  `query_id` int(10) UNSIGNED NOT NULL COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `synonym_for` varchar(255) DEFAULT NULL COMMENT 'Synonym for',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search query table';

--
-- Truncate table before insert `search_query`
--

TRUNCATE TABLE `search_query`;
-- --------------------------------------------------------

--
-- Table structure for table `sendfriend_log`
--

CREATE TABLE `sendfriend_log` (
  `log_id` int(10) UNSIGNED NOT NULL COMMENT 'Log ID',
  `ip` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table';

--
-- Truncate table before insert `sendfriend_log`
--

TRUNCATE TABLE `sendfriend_log`;
-- --------------------------------------------------------

--
-- Table structure for table `sequence_creditmemo_0`
--

CREATE TABLE `sequence_creditmemo_0` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `sequence_creditmemo_0`
--

TRUNCATE TABLE `sequence_creditmemo_0`;
-- --------------------------------------------------------

--
-- Table structure for table `sequence_creditmemo_1`
--

CREATE TABLE `sequence_creditmemo_1` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `sequence_creditmemo_1`
--

TRUNCATE TABLE `sequence_creditmemo_1`;
-- --------------------------------------------------------

--
-- Table structure for table `sequence_invoice_0`
--

CREATE TABLE `sequence_invoice_0` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `sequence_invoice_0`
--

TRUNCATE TABLE `sequence_invoice_0`;
-- --------------------------------------------------------

--
-- Table structure for table `sequence_invoice_1`
--

CREATE TABLE `sequence_invoice_1` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `sequence_invoice_1`
--

TRUNCATE TABLE `sequence_invoice_1`;
-- --------------------------------------------------------

--
-- Table structure for table `sequence_order_0`
--

CREATE TABLE `sequence_order_0` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `sequence_order_0`
--

TRUNCATE TABLE `sequence_order_0`;
-- --------------------------------------------------------

--
-- Table structure for table `sequence_order_1`
--

CREATE TABLE `sequence_order_1` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `sequence_order_1`
--

TRUNCATE TABLE `sequence_order_1`;
-- --------------------------------------------------------

--
-- Table structure for table `sequence_shipment_0`
--

CREATE TABLE `sequence_shipment_0` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `sequence_shipment_0`
--

TRUNCATE TABLE `sequence_shipment_0`;
-- --------------------------------------------------------

--
-- Table structure for table `sequence_shipment_1`
--

CREATE TABLE `sequence_shipment_1` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `sequence_shipment_1`
--

TRUNCATE TABLE `sequence_shipment_1`;
-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

--
-- Truncate table before insert `session`
--

TRUNCATE TABLE `session`;
-- --------------------------------------------------------

--
-- Table structure for table `setup_module`
--

CREATE TABLE `setup_module` (
  `module` varchar(50) NOT NULL COMMENT 'Module',
  `schema_version` varchar(50) DEFAULT NULL COMMENT 'Schema Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module versions registry';

--
-- Truncate table before insert `setup_module`
--

TRUNCATE TABLE `setup_module`;
--
-- Dumping data for table `setup_module`
--

INSERT DELAYED IGNORE INTO `setup_module` VALUES
('Emthemes_Em0146settings', '2.0.0', '2.0.0'),
('Emthemes_FilterProduct', '2.0.0', '2.0.0'),
('Emthemes_QuickShop', '0.0.1', '0.0.1'),
('Emthemes_ThemeSettings', '2.0.0', '2.0.0'),
('Magento_AdminNotification', '2.0.0', '2.0.0'),
('Magento_AdvancedPricingImportExport', '2.0.0', '2.0.0'),
('Magento_Authorization', '2.0.0', '2.0.0'),
('Magento_Authorizenet', '2.0.0', '2.0.0'),
('Magento_Backend', '2.0.0', '2.0.0'),
('Magento_Backup', '2.0.0', '2.0.0'),
('Magento_Braintree', '2.0.0', '2.0.0'),
('Magento_Bundle', '2.0.1', '2.0.1'),
('Magento_BundleImportExport', '2.0.0', '2.0.0'),
('Magento_CacheInvalidate', '2.0.0', '2.0.0'),
('Magento_Captcha', '2.0.0', '2.0.0'),
('Magento_Catalog', '2.0.3', '2.0.3'),
('Magento_CatalogImportExport', '2.0.0', '2.0.0'),
('Magento_CatalogInventory', '2.0.0', '2.0.0'),
('Magento_CatalogRule', '2.0.0', '2.0.0'),
('Magento_CatalogRuleConfigurable', '2.0.0', '2.0.0'),
('Magento_CatalogSearch', '2.0.0', '2.0.0'),
('Magento_CatalogUrlRewrite', '2.0.0', '2.0.0'),
('Magento_CatalogWidget', '2.0.0', '2.0.0'),
('Magento_Checkout', '2.0.0', '2.0.0'),
('Magento_CheckoutAgreements', '2.0.1', '2.0.1'),
('Magento_Cms', '2.0.0', '2.0.0'),
('Magento_CmsUrlRewrite', '2.0.0', '2.0.0'),
('Magento_Config', '2.0.0', '2.0.0'),
('Magento_ConfigurableImportExport', '2.0.0', '2.0.0'),
('Magento_ConfigurableProduct', '2.0.0', '2.0.0'),
('Magento_Contact', '2.0.0', '2.0.0'),
('Magento_Cookie', '2.0.0', '2.0.0'),
('Magento_Cron', '2.0.0', '2.0.0'),
('Magento_CurrencySymbol', '2.0.0', '2.0.0'),
('Magento_Customer', '2.0.6', '2.0.6'),
('Magento_CustomerImportExport', '2.0.0', '2.0.0'),
('Magento_Deploy', '2.0.0', '2.0.0'),
('Magento_Developer', '2.0.0', '2.0.0'),
('Magento_Dhl', '2.0.0', '2.0.0'),
('Magento_Directory', '2.0.0', '2.0.0'),
('Magento_Downloadable', '2.0.0', '2.0.0'),
('Magento_DownloadableImportExport', '2.0.0', '2.0.0'),
('Magento_Eav', '2.0.0', '2.0.0'),
('Magento_Email', '2.0.0', '2.0.0'),
('Magento_EncryptionKey', '2.0.0', '2.0.0'),
('Magento_Fedex', '2.0.0', '2.0.0'),
('Magento_GiftMessage', '2.0.0', '2.0.0'),
('Magento_GoogleAdwords', '2.0.0', '2.0.0'),
('Magento_GoogleAnalytics', '2.0.0', '2.0.0'),
('Magento_GoogleOptimizer', '2.0.0', '2.0.0'),
('Magento_GroupedImportExport', '2.0.0', '2.0.0'),
('Magento_GroupedProduct', '2.0.0', '2.0.0'),
('Magento_ImportExport', '2.0.1', '2.0.1'),
('Magento_Indexer', '2.0.0', '2.0.0'),
('Magento_Integration', '2.0.1', '2.0.1'),
('Magento_LayeredNavigation', '2.0.0', '2.0.0'),
('Magento_Marketplace', '1.0.0', '1.0.0'),
('Magento_MediaStorage', '2.0.0', '2.0.0'),
('Magento_Msrp', '2.0.0', '2.0.0'),
('Magento_Multishipping', '2.0.0', '2.0.0'),
('Magento_NewRelicReporting', '2.0.0', '2.0.0'),
('Magento_Newsletter', '2.0.0', '2.0.0'),
('Magento_OfflinePayments', '2.0.0', '2.0.0'),
('Magento_OfflineShipping', '2.0.0', '2.0.0'),
('Magento_PageCache', '2.0.0', '2.0.0'),
('Magento_Payment', '2.0.0', '2.0.0'),
('Magento_Paypal', '2.0.0', '2.0.0'),
('Magento_Persistent', '2.0.0', '2.0.0'),
('Magento_ProductAlert', '2.0.0', '2.0.0'),
('Magento_ProductVideo', '2.0.0.2', '2.0.0.2'),
('Magento_Quote', '2.0.2', '2.0.2'),
('Magento_Reports', '2.0.0', '2.0.0'),
('Magento_RequireJs', '2.0.0', '2.0.0'),
('Magento_Review', '2.0.0', '2.0.0'),
('Magento_Rss', '2.0.0', '2.0.0'),
('Magento_Rule', '2.0.0', '2.0.0'),
('Magento_Sales', '2.0.1', '2.0.1'),
('Magento_SalesRule', '2.0.0', '2.0.0'),
('Magento_SalesSequence', '2.0.0', '2.0.0'),
('Magento_SampleData', '2.0.0', '2.0.0'),
('Magento_Search', '2.0.1', '2.0.1'),
('Magento_SendFriend', '2.0.0', '2.0.0'),
('Magento_Shipping', '2.0.0', '2.0.0'),
('Magento_Sitemap', '2.0.0', '2.0.0'),
('Magento_Store', '2.0.0', '2.0.0'),
('Magento_Swagger', '2.0.0', '2.0.0'),
('Magento_Swatches', '2.0.0', '2.0.0'),
('Magento_Tax', '2.0.1', '2.0.1'),
('Magento_TaxImportExport', '2.0.0', '2.0.0'),
('Magento_Theme', '2.0.0', '2.0.0'),
('Magento_Translation', '2.0.0', '2.0.0'),
('Magento_Ui', '2.0.0', '2.0.0'),
('Magento_Ups', '2.0.0', '2.0.0'),
('Magento_UrlRewrite', '2.0.0', '2.0.0'),
('Magento_User', '2.0.1', '2.0.1'),
('Magento_Usps', '2.0.0', '2.0.0'),
('Magento_Variable', '2.0.0', '2.0.0'),
('Magento_Version', '2.0.0', '2.0.0'),
('Magento_Webapi', '2.0.0', '2.0.0'),
('Magento_WebapiSecurity', '2.0.0', '2.0.0'),
('Magento_Weee', '2.0.0', '2.0.0'),
('Magento_Widget', '2.0.0', '2.0.0'),
('Magento_Wishlist', '2.0.0', '2.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_tablerate`
--

CREATE TABLE `shipping_tablerate` (
  `pk` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate';

--
-- Truncate table before insert `shipping_tablerate`
--

TRUNCATE TABLE `shipping_tablerate`;
-- --------------------------------------------------------

--
-- Table structure for table `sitemap`
--

CREATE TABLE `sitemap` (
  `sitemap_id` int(10) UNSIGNED NOT NULL COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='XML Sitemap';

--
-- Truncate table before insert `sitemap`
--

TRUNCATE TABLE `sitemap`;
-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Activity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores';

--
-- Truncate table before insert `store`
--

TRUNCATE TABLE `store`;
--
-- Dumping data for table `store`
--

INSERT DELAYED IGNORE INTO `store` VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_group`
--

CREATE TABLE `store_group` (
  `group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Store Groups';

--
-- Truncate table before insert `store_group`
--

TRUNCATE TABLE `store_group`;
--
-- Dumping data for table `store_group`
--

INSERT DELAYED IGNORE INTO `store_group` VALUES
(0, 0, 'Default', 0, 0),
(1, 1, 'Main Website Store', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_website`
--

CREATE TABLE `store_website` (
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Defines Is Website Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Websites';

--
-- Truncate table before insert `store_website`
--

TRUNCATE TABLE `store_website`;
--
-- Dumping data for table `store_website`
--

INSERT DELAYED IGNORE INTO `store_website` VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation`
--

CREATE TABLE `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';

--
-- Truncate table before insert `tax_calculation`
--

TRUNCATE TABLE `tax_calculation`;
-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate`
--

CREATE TABLE `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) UNSIGNED DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) UNSIGNED DEFAULT NULL COMMENT 'Zip To'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

--
-- Truncate table before insert `tax_calculation_rate`
--

TRUNCATE TABLE `tax_calculation_rate`;
--
-- Dumping data for table `tax_calculation_rate`
--

INSERT DELAYED IGNORE INTO `tax_calculation_rate` VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', '8.2500', NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', '8.3750', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate_title`
--

CREATE TABLE `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';

--
-- Truncate table before insert `tax_calculation_rate_title`
--

TRUNCATE TABLE `tax_calculation_rate_title`;
-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rule`
--

CREATE TABLE `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';

--
-- Truncate table before insert `tax_calculation_rule`
--

TRUNCATE TABLE `tax_calculation_rule`;
-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `class_id` smallint(6) NOT NULL COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Class';

--
-- Truncate table before insert `tax_class`
--

TRUNCATE TABLE `tax_class`;
--
-- Dumping data for table `tax_class`
--

INSERT DELAYED IGNORE INTO `tax_class` VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER');

-- --------------------------------------------------------

--
-- Table structure for table `tax_order_aggregated_created`
--

CREATE TABLE `tax_order_aggregated_created` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation';

--
-- Truncate table before insert `tax_order_aggregated_created`
--

TRUNCATE TABLE `tax_order_aggregated_created`;
-- --------------------------------------------------------

--
-- Table structure for table `tax_order_aggregated_updated`
--

CREATE TABLE `tax_order_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated';

--
-- Truncate table before insert `tax_order_aggregated_updated`
--

TRUNCATE TABLE `tax_order_aggregated_updated`;
-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme identifier',
  `parent_id` int(11) DEFAULT NULL COMMENT 'Parent Id',
  `theme_path` varchar(255) DEFAULT NULL COMMENT 'Theme Path',
  `theme_title` varchar(255) NOT NULL COMMENT 'Theme Title',
  `preview_image` varchar(255) DEFAULT NULL COMMENT 'Preview Image',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Theme Featured',
  `area` varchar(255) NOT NULL COMMENT 'Theme Area',
  `type` smallint(6) NOT NULL COMMENT 'Theme type: 0:physical, 1:virtual, 2:staging',
  `code` text COMMENT 'Full theme code, including package'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Core theme';

--
-- Truncate table before insert `theme`
--

TRUNCATE TABLE `theme`;
--
-- Dumping data for table `theme`
--

INSERT DELAYED IGNORE INTO `theme` VALUES
(1, NULL, 'Magento/blank', 'Magento Blank', 'preview_image_58fc31b9c47ab.jpeg', 0, 'frontend', 0, 'Magento/blank'),
(2, 1, 'Magento/luma', 'Magento Luma', 'preview_image_58fc31ba0704a.jpeg', 0, 'frontend', 0, 'Magento/luma'),
(3, NULL, 'Magento/backend', 'Magento 2 backend', NULL, 0, 'adminhtml', 0, 'Magento/backend'),
(4, 1, 'Emthemes/necessary_default', 'EMThemes Necessary', 'preview_image_58fc4c2a6ebb7.jpeg', 0, 'frontend', 0, 'Emthemes/necessary_default');

-- --------------------------------------------------------

--
-- Table structure for table `theme_file`
--

CREATE TABLE `theme_file` (
  `theme_files_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme files identifier',
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme Id',
  `file_path` varchar(255) DEFAULT NULL COMMENT 'Relative path to file',
  `file_type` varchar(32) NOT NULL COMMENT 'File Type',
  `content` longtext NOT NULL COMMENT 'File Content',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Temporary File'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Core theme files';

--
-- Truncate table before insert `theme_file`
--

TRUNCATE TABLE `theme_file`;
-- --------------------------------------------------------

--
-- Table structure for table `translation`
--

CREATE TABLE `translation` (
  `key_id` int(10) UNSIGNED NOT NULL COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations';

--
-- Truncate table before insert `translation`
--

TRUNCATE TABLE `translation`;
-- --------------------------------------------------------

--
-- Table structure for table `ui_bookmark`
--

CREATE TABLE `ui_bookmark` (
  `bookmark_id` int(10) UNSIGNED NOT NULL COMMENT 'Bookmark identifier',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'User Id',
  `namespace` varchar(255) NOT NULL COMMENT 'Bookmark namespace',
  `identifier` varchar(255) NOT NULL COMMENT 'Bookmark Identifier',
  `current` smallint(6) NOT NULL COMMENT 'Mark current bookmark per user and identifier',
  `title` varchar(255) DEFAULT NULL COMMENT 'Bookmark title',
  `config` longtext COMMENT 'Bookmark config',
  `created_at` datetime NOT NULL COMMENT 'Bookmark created at',
  `updated_at` datetime NOT NULL COMMENT 'Bookmark updated at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bookmark';

--
-- Truncate table before insert `ui_bookmark`
--

TRUNCATE TABLE `ui_bookmark`;
--
-- Dumping data for table `ui_bookmark`
--

INSERT DELAYED IGNORE INTO `ui_bookmark` VALUES
(1, 1, 'product_listing', 'current', 0, NULL, '{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"cost\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false}},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"cost\":16,\"weight\":17,\"meta_title\":18,\"meta_keyword\":19,\"meta_description\":20,\"news_from_date\":21,\"news_to_date\":22,\"custom_design\":23,\"custom_design_from\":24,\"custom_design_to\":25,\"page_layout\":26,\"country_of_manufacture\":27,\"url_key\":28,\"msrp\":29,\"tax_class_id\":30,\"gift_message_available\":31,\"actions\":32}}}', '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(2, 1, 'product_listing', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}}},\"value\":\"Default View\"}}}', '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(3, 1, 'product_attributes_listing', 'current', 0, NULL, '{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"is_filterable\":1,\"attribute_code\":2,\"frontend_label\":3,\"is_required\":4,\"is_user_defined\":5,\"is_visible\":6,\"is_global\":7,\"is_searchable\":8,\"is_comparable\":9},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}}}', '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(4, 1, 'product_attributes_listing', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"is_filterable\":1,\"attribute_code\":2,\"frontend_label\":3,\"is_required\":4,\"is_user_defined\":5,\"is_visible\":6,\"is_global\":7,\"is_searchable\":8,\"is_comparable\":9},\"paging\":{\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}},\"value\":\"Default View\"}}}', '1970-01-01 00:00:00', '1970-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `url_rewrite`
--

CREATE TABLE `url_rewrite` (
  `url_rewrite_id` int(10) UNSIGNED NOT NULL COMMENT 'Rewrite Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Entity type code',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `redirect_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Redirect Type',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description',
  `is_autogenerated` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is rewrite generated automatically flag',
  `metadata` varchar(255) DEFAULT NULL COMMENT 'Meta data for url rewrite'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

--
-- Truncate table before insert `url_rewrite`
--

TRUNCATE TABLE `url_rewrite`;
--
-- Dumping data for table `url_rewrite`
--

INSERT DELAYED IGNORE INTO `url_rewrite` VALUES
(1, 'cms-page', 1, 'no-route', 'cms/page/view/page_id/1', 0, 1, NULL, 1, NULL),
(2, 'cms-page', 2, 'home', 'cms/page/view/page_id/2', 0, 1, NULL, 1, NULL),
(3, 'cms-page', 3, 'enable-cookies', 'cms/page/view/page_id/3', 0, 1, NULL, 1, NULL),
(4, 'cms-page', 4, 'privacy-policy-cookie-restriction-mode', 'cms/page/view/page_id/4', 0, 1, NULL, 1, NULL),
(5, 'category', 3, 'rauxanh.html', 'catalog/category/view/id/3', 0, 1, NULL, 1, NULL),
(6, 'category', 4, 'traicay.html', 'catalog/category/view/id/4', 0, 1, NULL, 1, NULL),
(7, 'category', 5, 'raugiavi.html', 'catalog/category/view/id/5', 0, 1, NULL, 1, NULL),
(8, 'category', 6, 'hatgiong.html', 'catalog/category/view/id/6', 0, 1, NULL, 1, NULL),
(9, 'category', 7, 'monngon.html', 'catalog/category/view/id/7', 0, 1, NULL, 1, NULL),
(10, 'category', 8, 'rauxanh/raucai.html', 'catalog/category/view/id/8', 0, 1, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variable`
--

CREATE TABLE `variable` (
  `variable_id` int(10) UNSIGNED NOT NULL COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables';

--
-- Truncate table before insert `variable`
--

TRUNCATE TABLE `variable`;
-- --------------------------------------------------------

--
-- Table structure for table `variable_value`
--

CREATE TABLE `variable_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Variable Value Id',
  `variable_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value';

--
-- Truncate table before insert `variable_value`
--

TRUNCATE TABLE `variable_value`;
-- --------------------------------------------------------

--
-- Table structure for table `weee_tax`
--

CREATE TABLE `weee_tax` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'State',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax';

--
-- Truncate table before insert `weee_tax`
--

TRUNCATE TABLE `weee_tax`;
-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE `widget` (
  `widget_id` int(10) UNSIGNED NOT NULL COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets';

--
-- Truncate table before insert `widget`
--

TRUNCATE TABLE `widget`;
-- --------------------------------------------------------

--
-- Table structure for table `widget_instance`
--

CREATE TABLE `widget_instance` (
  `instance_id` int(10) UNSIGNED NOT NULL COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme';

--
-- Truncate table before insert `widget_instance`
--

TRUNCATE TABLE `widget_instance`;
--
-- Dumping data for table `widget_instance`
--

INSERT DELAYED IGNORE INTO `widget_instance` VALUES
(1, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Contact us info', '0', 'a:1:{s:8:\"block_id\";s:1:\"2\";}', 0),
(2, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Footer Links', '0', 'a:1:{s:8:\"block_id\";s:1:\"1\";}', 0),
(3, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Sale Left Menu', '0', 'a:1:{s:8:\"block_id\";s:1:\"3\";}', 0),
(4, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Gear Left Menu', '0', 'a:1:{s:8:\"block_id\";s:1:\"4\";}', 0),
(5, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Men\'s Left Menu', '0', 'a:1:{s:8:\"block_id\";s:1:\"5\";}', 0),
(6, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Women\'s Left Menu', '0', 'a:1:{s:8:\"block_id\";s:1:\"6\";}', 0),
(7, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'What\'s New Left Menu', '0', 'a:1:{s:8:\"block_id\";s:1:\"7\";}', 0),
(8, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Women Category Content', '0', 'a:1:{s:8:\"block_id\";s:1:\"8\";}', 0),
(9, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Training Category Content', '0', 'a:1:{s:8:\"block_id\";s:1:\"9\";}', 0),
(10, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Men Category Content', '0', 'a:1:{s:8:\"block_id\";s:2:\"10\";}', 0),
(11, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Gear Category Content', '0', 'a:1:{s:8:\"block_id\";s:2:\"11\";}', 0),
(12, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'New Products Category Content', '0', 'a:1:{s:8:\"block_id\";s:2:\"13\";}', 0),
(13, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Sale Category Content', '0', 'a:1:{s:8:\"block_id\";s:2:\"12\";}', 0),
(14, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Home Page', '0', 'a:1:{s:8:\"block_id\";s:2:\"14\";}', 0),
(15, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Performance Fabrics', '0', 'a:1:{s:8:\"block_id\";s:2:\"15\";}', 0),
(16, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Eco Friendly', '0', 'a:1:{s:8:\"block_id\";s:2:\"16\";}', 0),
(17, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Login Info', '0', 'a:1:{s:8:\"block_id\";s:2:\"18\";}', 0),
(18, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Giftcard Category Content', '0', 'a:1:{s:8:\"block_id\";s:2:\"17\";}', 0),
(19, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Home - Ads Text', '0', 'a:1:{s:8:\"block_id\";s:2:\"19\";}', 0),
(20, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Sidebar Left - Home - Banner 01', '0', 'a:1:{s:8:\"block_id\";s:2:\"20\";}', 1),
(21, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Sidebar Left - Home - Ads 02', '0', 'a:1:{s:8:\"block_id\";s:2:\"21\";}', 2),
(22, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Sidebar Left 03 - Home - Recent Blog', '0', 'a:1:{s:8:\"block_id\";s:2:\"22\";}', 3),
(23, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Sidebar Left - Home - Banner 04', '0', 'a:1:{s:8:\"block_id\";s:2:\"23\";}', 4),
(24, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Area Main 01 - Home - Banners', '0', 'a:1:{s:8:\"block_id\";s:2:\"24\";}', 1),
(25, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Area Main 02 - Home - Tabs', '0', 'a:1:{s:8:\"block_id\";s:2:\"25\";}', 2),
(26, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Area Main 03 - Home - Banner', '0', 'a:1:{s:8:\"block_id\";s:2:\"26\";}', 3),
(27, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Main Bottom - Banners', '0', 'a:1:{s:8:\"block_id\";s:2:\"27\";}', 1),
(28, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Main Bottom 02 - Ads', '0', 'a:1:{s:8:\"block_id\";s:2:\"28\";}', 2),
(29, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Main Bottom 03 - Banner Slider', '0', 'a:1:{s:8:\"block_id\";s:2:\"29\";}', 3),
(30, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Footer Area 01 - Links', '0', 'a:1:{s:8:\"block_id\";s:2:\"30\";}', 4),
(31, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Footer Area 2 - Payment', '0', 'a:1:{s:8:\"block_id\";s:2:\"31\";}', 0),
(32, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Area Main 04 - Home - Best Sale', '0', 'a:1:{s:8:\"block_id\";s:2:\"32\";}', 4),
(33, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Area Main - Slideshow', '0', 'a:1:{s:8:\"block_id\";s:2:\"33\";}', 0),
(34, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Main Megamenu', '0', 'a:1:{s:8:\"block_id\";s:2:\"34\";}', 1),
(35, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Area Staic Block - Details Page - Ads', '0', 'a:1:{s:8:\"block_id\";s:2:\"35\";}', 1),
(36, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Area Size Chart - Details - Size Chart', '0', 'a:1:{s:8:\"block_id\";s:2:\"36\";}', 1),
(37, 'Magento\\Cms\\Block\\Widget\\Block', 4, 'EM0146 Necessary - Fashion Store - Popup Advertising Block', '0', 'a:1:{s:8:\"block_id\";s:2:\"37\";}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page`
--

CREATE TABLE `widget_instance_page` (
  `page_id` int(10) UNSIGNED NOT NULL COMMENT 'Page Id',
  `instance_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Container',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page';

--
-- Truncate table before insert `widget_instance_page`
--

TRUNCATE TABLE `widget_instance_page`;
--
-- Dumping data for table `widget_instance_page`
--

INSERT DELAYED IGNORE INTO `widget_instance_page` VALUES
(1, 1, 'pages', 'contact_index_index', 'content.top', 'all', '', 'widget/static_block/default.phtml'),
(2, 2, 'all_pages', 'default', 'cms_footer_links_container', 'all', '', 'widget/static_block/default.phtml'),
(3, 3, 'anchor_categories', 'catalog_category_view_type_layered', 'sidebar.main', 'specific', '', 'widget/static_block/default.phtml'),
(4, 4, 'anchor_categories', 'catalog_category_view_type_layered', 'sidebar.main', 'specific', '', 'widget/static_block/default.phtml'),
(5, 5, 'anchor_categories', 'catalog_category_view_type_layered', 'sidebar.main', 'specific', '', 'widget/static_block/default.phtml'),
(6, 6, 'anchor_categories', 'catalog_category_view_type_layered', 'sidebar.main', 'specific', '', 'widget/static_block/default.phtml'),
(7, 7, 'anchor_categories', 'catalog_category_view_type_layered', 'sidebar.main', 'specific', '', 'widget/static_block/default.phtml'),
(8, 8, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '', 'widget/static_block/default.phtml'),
(9, 9, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '', 'widget/static_block/default.phtml'),
(10, 10, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '', 'widget/static_block/default.phtml'),
(11, 11, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '', 'widget/static_block/default.phtml'),
(12, 12, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '', 'widget/static_block/default.phtml'),
(13, 13, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '', 'widget/static_block/default.phtml'),
(14, 14, 'pages', 'cms_index_index', 'content', 'all', '', 'widget/static_block/default.phtml'),
(15, 15, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '', 'widget/static_block/default.phtml'),
(16, 16, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '', 'widget/static_block/default.phtml'),
(17, 17, 'pages', 'customer_account_login', 'customer.login.container', 'all', '', 'widget/static_block/default.phtml'),
(18, 18, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '', 'widget/static_block/default.phtml'),
(19, 19, 'pages', 'cms_index_index', 'columns.top', 'all', '', 'widget/static_block/default.phtml'),
(20, 20, 'pages', 'cms_index_index', 'sidebar.main', 'all', '', 'widget/static_block/default.phtml'),
(21, 20, 'pages', 'catalog_product_view', 'sidebar.main', 'all', '', 'widget/static_block/default.phtml'),
(22, 20, 'pages', 'catalog_category_view', 'sidebar.main', 'all', '', 'widget/static_block/default.phtml'),
(23, 21, 'all_pages', 'default', 'sidebar.additional', 'all', '', 'widget/static_block/default.phtml'),
(24, 22, 'pages', 'cms_index_index', 'sidebar.main', 'all', '', 'widget/static_block/default.phtml'),
(25, 23, 'pages', 'cms_index_index', 'sidebar.additional', 'all', '', 'widget/static_block/default.phtml'),
(26, 24, 'pages', 'cms_index_index', 'content', 'all', '', 'widget/static_block/default.phtml'),
(27, 25, 'pages', 'cms_index_index', 'content', 'all', '', 'widget/static_block/default.phtml'),
(28, 26, 'pages', 'cms_index_index', 'content', 'all', '', 'widget/static_block/default.phtml'),
(29, 27, 'pages', 'cms_index_index', 'page.bottom', 'all', '', 'widget/static_block/default.phtml'),
(30, 29, 'pages', 'cms_index_index', 'page.bottom', 'all', '', 'widget/static_block/default.phtml'),
(31, 30, 'all_pages', 'default', 'footer.area.1', 'all', '', 'widget/static_block/default.phtml'),
(32, 31, 'all_pages', 'default', 'footer.area.2', 'all', '', 'widget/static_block/default.phtml'),
(33, 32, 'pages', 'cms_index_index', 'content', 'all', '', 'widget/static_block/default.phtml'),
(34, 33, 'pages', 'cms_index_index', 'content', 'all', '', 'widget/static_block/default.phtml'),
(35, 34, 'all_pages', 'default', 'topNavigation', 'all', '', 'widget/static_block/default.phtml'),
(36, 35, 'all_products', 'catalog_product_view', 'product_view_block_custom', 'all', '', 'widget/static_block/default.phtml'),
(37, 36, 'all_products', 'catalog_product_view', 'product.info.social', 'all', '', 'widget/static_block/default.phtml'),
(38, 37, 'all_pages', 'default', 'popup.static.block', 'all', '', 'widget/static_block/default.phtml');

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page_layout`
--

CREATE TABLE `widget_instance_page_layout` (
  `page_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Layout Update Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

--
-- Truncate table before insert `widget_instance_page_layout`
--

TRUNCATE TABLE `widget_instance_page_layout`;
--
-- Dumping data for table `widget_instance_page_layout`
--

INSERT DELAYED IGNORE INTO `widget_instance_page_layout` VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist ID',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';

--
-- Truncate table before insert `wishlist`
--

TRUNCATE TABLE `wishlist`;
-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item`
--

CREATE TABLE `wishlist_item` (
  `wishlist_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items';

--
-- Truncate table before insert `wishlist_item`
--

TRUNCATE TABLE `wishlist_item`;
-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item_option`
--

CREATE TABLE `wishlist_item_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `wishlist_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table';

--
-- Truncate table before insert `wishlist_item_option`
--

TRUNCATE TABLE `wishlist_item_option`;
--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminnotification_inbox`
--
ALTER TABLE `adminnotification_inbox`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  ADD KEY `ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  ADD KEY `ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`);

--
-- Indexes for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  ADD PRIMARY KEY (`password_id`),
  ADD KEY `ADMIN_PASSWORDS_USER_ID` (`user_id`);

--
-- Indexes for table `admin_system_messages`
--
ALTER TABLE `admin_system_messages`
  ADD PRIMARY KEY (`identity`);

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `ADMIN_USER_USERNAME` (`username`);

--
-- Indexes for table `authorization_role`
--
ALTER TABLE `authorization_role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `AUTHORIZATION_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  ADD KEY `AUTHORIZATION_ROLE_TREE_LEVEL` (`tree_level`);

--
-- Indexes for table `authorization_rule`
--
ALTER TABLE `authorization_rule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `AUTHORIZATION_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  ADD KEY `AUTHORIZATION_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CACHE_EXPIRE_TIME` (`expire_time`);

--
-- Indexes for table `cache_tag`
--
ALTER TABLE `cache_tag`
  ADD PRIMARY KEY (`tag`,`cache_id`),
  ADD KEY `CACHE_TAG_CACHE_ID` (`cache_id`);

--
-- Indexes for table `captcha_log`
--
ALTER TABLE `captcha_log`
  ADD PRIMARY KEY (`type`,`value`);

--
-- Indexes for table `cataloginventory_stock`
--
ALTER TABLE `cataloginventory_stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_WEBSITE_ID` (`product_id`,`website_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_ITEM_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`);

--
-- Indexes for table `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `cataloginventory_stock_status_idx`
--
ALTER TABLE `cataloginventory_stock_status_idx`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `cataloginventory_stock_status_tmp`
--
ALTER TABLE `cataloginventory_stock_status_tmp`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogrule`
--
ALTER TABLE `catalogrule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`);

--
-- Indexes for table `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`),
  ADD KEY `CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  ADD PRIMARY KEY (`rule_product_id`),
  ADD UNIQUE KEY `IDX_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  ADD KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  ADD KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  ADD KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  ADD PRIMARY KEY (`rule_product_price_id`),
  ADD UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD PRIMARY KEY (`rule_id`,`website_id`),
  ADD KEY `CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogsearch_fulltext_scope1`
--
ALTER TABLE `catalogsearch_fulltext_scope1`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`);
ALTER TABLE `catalogsearch_fulltext_scope1` ADD FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`);

--
-- Indexes for table `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_LEVEL` (`level`);

--
-- Indexes for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD PRIMARY KEY (`category_id`,`product_id`),
  ADD KEY `CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
  ADD PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  ADD KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  ADD KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`);

--
-- Indexes for table `catalog_category_product_index_tmp`
--
ALTER TABLE `catalog_category_product_index_tmp`
  ADD KEY `CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`);

--
-- Indexes for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD PRIMARY KEY (`catalog_compare_item_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  ADD KEY `CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`);

--
-- Indexes for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`);

--
-- Indexes for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`);

--
-- Indexes for table `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD PRIMARY KEY (`selection_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD PRIMARY KEY (`selection_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_bundle_stock_index`
--
ALTER TABLE `catalog_product_bundle_stock_index`
  ADD PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`);

--
-- Indexes for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_SKU` (`sku`);

--
-- Indexes for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_VALUE_ID` (`value_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value_to_entity`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity`
  ADD UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_VAL_ID_ENTT_ID` (`value_id`,`entity_id`),
  ADD KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` (`entity_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value_video`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_video`
  ADD UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_VAL_ID_STORE_ID` (`value_id`,`store_id`),
  ADD KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_index_eav`
--
ALTER TABLE `catalog_product_index_eav`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal`
--
ALTER TABLE `catalog_product_index_eav_decimal`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal_idx`
--
ALTER TABLE `catalog_product_index_eav_decimal_idx`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal_tmp`
--
ALTER TABLE `catalog_product_index_eav_decimal_tmp`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_idx`
--
ALTER TABLE `catalog_product_index_eav_idx`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_tmp`
--
ALTER TABLE `catalog_product_index_eav_tmp`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  ADD KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`);

--
-- Indexes for table `catalog_product_index_price_bundle_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_opt_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_sel_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_sel_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_sel_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_sel_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_agr_idx`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_agr_idx`
  ADD PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_agr_tmp`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_agr_tmp`
  ADD PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_idx`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_downlod_idx`
--
ALTER TABLE `catalog_product_index_price_downlod_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_downlod_tmp`
--
ALTER TABLE `catalog_product_index_price_downlod_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_final_idx`
--
ALTER TABLE `catalog_product_index_price_final_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_final_tmp`
--
ALTER TABLE `catalog_product_index_price_final_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_idx`
--
ALTER TABLE `catalog_product_index_price_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`);

--
-- Indexes for table `catalog_product_index_price_opt_agr_idx`
--
ALTER TABLE `catalog_product_index_price_opt_agr_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_opt_agr_tmp`
--
ALTER TABLE `catalog_product_index_price_opt_agr_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_opt_idx`
--
ALTER TABLE `catalog_product_index_price_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_tmp`
--
ALTER TABLE `catalog_product_index_price_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`);

--
-- Indexes for table `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD PRIMARY KEY (`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`);

--
-- Indexes for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD PRIMARY KEY (`link_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_LINK_LINK_TYPE_ID_PRODUCT_ID_LINKED_PRODUCT_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`);

--
-- Indexes for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD PRIMARY KEY (`product_link_attribute_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`);

--
-- Indexes for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_type`
--
ALTER TABLE `catalog_product_link_type`
  ADD PRIMARY KEY (`link_type_id`);

--
-- Indexes for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD PRIMARY KEY (`option_price_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD PRIMARY KEY (`option_title_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD PRIMARY KEY (`option_type_price_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD PRIMARY KEY (`option_type_title_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD PRIMARY KEY (`option_type_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`);

--
-- Indexes for table `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD PRIMARY KEY (`parent_id`,`child_id`),
  ADD KEY `CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`);

--
-- Indexes for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD PRIMARY KEY (`product_super_attribute_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`);

--
-- Indexes for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD PRIMARY KEY (`link_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  ADD KEY `CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`);

--
-- Indexes for table `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD PRIMARY KEY (`product_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_url_rewrite_product_category`
--
ALTER TABLE `catalog_url_rewrite_product_category`
  ADD KEY `CATALOG_URL_REWRITE_PRODUCT_CATEGORY_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  ADD KEY `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` (`product_id`),
  ADD KEY `FK_BB79E64705D7F17FE181F23144528FC8` (`url_rewrite_id`);

--
-- Indexes for table `checkout_agreement`
--
ALTER TABLE `checkout_agreement`
  ADD PRIMARY KEY (`agreement_id`);

--
-- Indexes for table `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD PRIMARY KEY (`agreement_id`,`store_id`),
  ADD KEY `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `cms_block`
--
ALTER TABLE `cms_block`
  ADD PRIMARY KEY (`block_id`);
ALTER TABLE `cms_block` ADD FULLTEXT KEY `CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`);

--
-- Indexes for table `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD PRIMARY KEY (`block_id`,`store_id`),
  ADD KEY `CMS_BLOCK_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `CMS_PAGE_IDENTIFIER` (`identifier`);
ALTER TABLE `cms_page` ADD FULLTEXT KEY `CMS_PAGE_TITLE_META_KEYWORDS_META_DESCRIPTION_IDENTIFIER_CONTENT` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`);

--
-- Indexes for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`),
  ADD KEY `CMS_PAGE_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `core_config_data`
--
ALTER TABLE `core_config_data`
  ADD PRIMARY KEY (`config_id`),
  ADD UNIQUE KEY `CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`);

--
-- Indexes for table `cron_schedule`
--
ALTER TABLE `cron_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `CRON_SCHEDULE_JOB_CODE` (`job_code`),
  ADD KEY `CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`);

--
-- Indexes for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`);

--
-- Indexes for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD PRIMARY KEY (`attribute_id`,`website_id`),
  ADD KEY `CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  ADD KEY `CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  ADD KEY `CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`),
  ADD KEY `CUSTOMER_ENTITY_FIRSTNAME` (`firstname`),
  ADD KEY `CUSTOMER_ENTITY_LASTNAME` (`lastname`);

--
-- Indexes for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD PRIMARY KEY (`form_code`,`attribute_id`),
  ADD KEY `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_grid_flat`
--
ALTER TABLE `customer_grid_flat`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CUSTOMER_GRID_FLAT_GROUP_ID` (`group_id`),
  ADD KEY `CUSTOMER_GRID_FLAT_CREATED_AT` (`created_at`),
  ADD KEY `CUSTOMER_GRID_FLAT_WEBSITE_ID` (`website_id`),
  ADD KEY `CUSTOMER_GRID_FLAT_CONFIRMATION` (`confirmation`),
  ADD KEY `CUSTOMER_GRID_FLAT_DOB` (`dob`),
  ADD KEY `CUSTOMER_GRID_FLAT_GENDER` (`gender`),
  ADD KEY `CUSTOMER_GRID_FLAT_LAST_VISIT_AT` (`last_visit_at`),
  ADD KEY `CUSTOMER_GRID_FLAT_BILLING_COUNTRY_ID` (`billing_country_id`);
ALTER TABLE `customer_grid_flat` ADD FULLTEXT KEY `FTI_B691CA777399890C71AC8A4CDFB8EA99` (`name`,`email`,`created_in`,`taxvat`,`billing_full`,`billing_firstname`,`billing_lastname`,`billing_telephone`,`billing_postcode`,`billing_region`,`billing_city`,`billing_fax`,`billing_company`,`shipping_full`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `customer_log`
--
ALTER TABLE `customer_log`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `CUSTOMER_LOG_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `customer_visitor`
--
ALTER TABLE `customer_visitor`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `CUSTOMER_VISITOR_CUSTOMER_ID` (`customer_id`),
  ADD KEY `CUSTOMER_VISITOR_LAST_VISIT_AT` (`last_visit_at`);

--
-- Indexes for table `design_change`
--
ALTER TABLE `design_change`
  ADD PRIMARY KEY (`design_change_id`),
  ADD KEY `DESIGN_CHANGE_STORE_ID` (`store_id`);

--
-- Indexes for table `directory_country`
--
ALTER TABLE `directory_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `directory_country_format`
--
ALTER TABLE `directory_country_format`
  ADD PRIMARY KEY (`country_format_id`),
  ADD UNIQUE KEY `DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`);

--
-- Indexes for table `directory_country_region`
--
ALTER TABLE `directory_country_region`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`);

--
-- Indexes for table `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD PRIMARY KEY (`locale`,`region_id`),
  ADD KEY `DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`);

--
-- Indexes for table `directory_currency_rate`
--
ALTER TABLE `directory_currency_rate`
  ADD PRIMARY KEY (`currency_from`,`currency_to`),
  ADD KEY `DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`);

--
-- Indexes for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`);

--
-- Indexes for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  ADD KEY `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD PRIMARY KEY (`purchased_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`);

--
-- Indexes for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD PRIMARY KEY (`title_id`),
  ADD UNIQUE KEY `DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  ADD KEY `DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD PRIMARY KEY (`sample_id`),
  ADD KEY `DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD PRIMARY KEY (`title_id`),
  ADD UNIQUE KEY `DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  ADD KEY `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD PRIMARY KEY (`attribute_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`);

--
-- Indexes for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  ADD KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`);

--
-- Indexes for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD PRIMARY KEY (`attribute_label_id`),
  ADD KEY `EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  ADD KEY `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`);

--
-- Indexes for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_attribute_option_swatch`
--
ALTER TABLE `eav_attribute_option_swatch`
  ADD PRIMARY KEY (`swatch_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_OPTION_ID` (`store_id`,`option_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_SWATCH_SWATCH_ID` (`swatch_id`),
  ADD KEY `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` (`option_id`);

--
-- Indexes for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD PRIMARY KEY (`attribute_set_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  ADD KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`);

--
-- Indexes for table `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `EAV_ENTITY_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD PRIMARY KEY (`entity_attribute_id`),
  ADD UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  ADD UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  ADD KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  ADD KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_INT_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD PRIMARY KEY (`entity_store_id`),
  ADD KEY `EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `EAV_ENTITY_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `EAV_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_type`
--
ALTER TABLE `eav_entity_type`
  ADD PRIMARY KEY (`entity_type_id`),
  ADD KEY `EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`);

--
-- Indexes for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD PRIMARY KEY (`element_id`),
  ADD UNIQUE KEY `EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  ADD KEY `EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  ADD KEY `EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD PRIMARY KEY (`fieldset_id`),
  ADD UNIQUE KEY `EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`);

--
-- Indexes for table `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD PRIMARY KEY (`fieldset_id`,`store_id`),
  ADD KEY `EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  ADD KEY `EAV_FORM_TYPE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD PRIMARY KEY (`type_id`,`entity_type_id`),
  ADD KEY `EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`template_id`),
  ADD UNIQUE KEY `EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  ADD KEY `EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  ADD KEY `EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`);

--
-- Indexes for table `emthemes_config_data`
--
ALTER TABLE `emthemes_config_data`
  ADD PRIMARY KEY (`config_id`),
  ADD UNIQUE KEY `EMTHEMES_CONFIG_DATA_SCOPE_SCOPE_ID_PATH_THEME_ID` (`scope`,`scope_id`,`path`,`theme_id`);

--
-- Indexes for table `flag`
--
ALTER TABLE `flag`
  ADD PRIMARY KEY (`flag_id`),
  ADD KEY `FLAG_LAST_UPDATE` (`last_update`);

--
-- Indexes for table `gift_message`
--
ALTER TABLE `gift_message`
  ADD PRIMARY KEY (`gift_message_id`);

--
-- Indexes for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  ADD PRIMARY KEY (`code_id`),
  ADD UNIQUE KEY `GOOGLEOPTIMIZER_CODE_STORE_ID_ENTITY_ID_ENTITY_TYPE` (`store_id`,`entity_id`,`entity_type`);

--
-- Indexes for table `importexport_importdata`
--
ALTER TABLE `importexport_importdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_history`
--
ALTER TABLE `import_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `indexer_state`
--
ALTER TABLE `indexer_state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `INDEXER_STATE_INDEXER_ID` (`indexer_id`);

--
-- Indexes for table `integration`
--
ALTER TABLE `integration`
  ADD PRIMARY KEY (`integration_id`),
  ADD UNIQUE KEY `INTEGRATION_NAME` (`name`),
  ADD UNIQUE KEY `INTEGRATION_CONSUMER_ID` (`consumer_id`);

--
-- Indexes for table `layout_link`
--
ALTER TABLE `layout_link`
  ADD PRIMARY KEY (`layout_link_id`),
  ADD KEY `LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`),
  ADD KEY `LAYOUT_LINK_STORE_ID_THEME_ID_LAYOUT_UPDATE_ID_IS_TEMPORARY` (`store_id`,`theme_id`,`layout_update_id`,`is_temporary`),
  ADD KEY `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` (`theme_id`);

--
-- Indexes for table `layout_update`
--
ALTER TABLE `layout_update`
  ADD PRIMARY KEY (`layout_update_id`),
  ADD KEY `LAYOUT_UPDATE_HANDLE` (`handle`);

--
-- Indexes for table `mview_state`
--
ALTER TABLE `mview_state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `MVIEW_STATE_VIEW_ID` (`view_id`),
  ADD KEY `MVIEW_STATE_MODE` (`mode`);

--
-- Indexes for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD PRIMARY KEY (`problem_id`),
  ADD KEY `NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  ADD KEY `NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`);

--
-- Indexes for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`);

--
-- Indexes for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD PRIMARY KEY (`queue_link_id`),
  ADD KEY `NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  ADD KEY `NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`);

--
-- Indexes for table `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD PRIMARY KEY (`queue_id`,`store_id`),
  ADD KEY `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`);

--
-- Indexes for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD KEY `NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  ADD KEY `NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`);

--
-- Indexes for table `newsletter_template`
--
ALTER TABLE `newsletter_template`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  ADD KEY `NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  ADD KEY `NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `OAUTH_CONSUMER_KEY` (`key`),
  ADD UNIQUE KEY `OAUTH_CONSUMER_SECRET` (`secret`),
  ADD KEY `OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  ADD KEY `OAUTH_CONSUMER_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD UNIQUE KEY `OAUTH_NONCE_NONCE_CONSUMER_ID` (`nonce`,`consumer_id`),
  ADD KEY `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` (`consumer_id`);

--
-- Indexes for table `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `OAUTH_TOKEN_TOKEN` (`token`),
  ADD KEY `OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  ADD KEY `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  ADD KEY `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`);

--
-- Indexes for table `oauth_token_request_log`
--
ALTER TABLE `oauth_token_request_log`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `OAUTH_TOKEN_REQUEST_LOG_USER_NAME_USER_TYPE` (`user_name`,`user_type`);

--
-- Indexes for table `paypal_billing_agreement`
--
ALTER TABLE `paypal_billing_agreement`
  ADD PRIMARY KEY (`agreement_id`),
  ADD KEY `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PAYPAL_BILLING_AGREEMENT_STORE_ID` (`store_id`);

--
-- Indexes for table `paypal_billing_agreement_order`
--
ALTER TABLE `paypal_billing_agreement_order`
  ADD PRIMARY KEY (`agreement_id`,`order_id`),
  ADD KEY `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`);

--
-- Indexes for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD PRIMARY KEY (`cert_id`),
  ADD KEY `PAYPAL_CERT_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `paypal_payment_transaction`
--
ALTER TABLE `paypal_payment_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD UNIQUE KEY `PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`);

--
-- Indexes for table `paypal_settlement_report`
--
ALTER TABLE `paypal_settlement_report`
  ADD PRIMARY KEY (`report_id`),
  ADD UNIQUE KEY `PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`);

--
-- Indexes for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD PRIMARY KEY (`row_id`),
  ADD KEY `PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`);

--
-- Indexes for table `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD PRIMARY KEY (`persistent_id`),
  ADD UNIQUE KEY `PERSISTENT_SESSION_KEY` (`key`),
  ADD UNIQUE KEY `PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  ADD KEY `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD PRIMARY KEY (`alert_price_id`),
  ADD KEY `PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  ADD KEY `PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD PRIMARY KEY (`alert_stock_id`),
  ADD KEY `PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  ADD KEY `PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  ADD KEY `QUOTE_STORE_ID` (`store_id`);

--
-- Indexes for table `quote_address`
--
ALTER TABLE `quote_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `QUOTE_ADDRESS_QUOTE_ID` (`quote_id`);

--
-- Indexes for table `quote_address_item`
--
ALTER TABLE `quote_address_item`
  ADD PRIMARY KEY (`address_item_id`),
  ADD KEY `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  ADD KEY `QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  ADD KEY `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`);

--
-- Indexes for table `quote_id_mask`
--
ALTER TABLE `quote_id_mask`
  ADD PRIMARY KEY (`entity_id`,`quote_id`),
  ADD KEY `QUOTE_ID_MASK_QUOTE_ID` (`quote_id`),
  ADD KEY `QUOTE_ID_MASK_MASKED_ID` (`masked_id`);

--
-- Indexes for table `quote_item`
--
ALTER TABLE `quote_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  ADD KEY `QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  ADD KEY `QUOTE_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `quote_item_option`
--
ALTER TABLE `quote_item_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`);

--
-- Indexes for table `quote_payment`
--
ALTER TABLE `quote_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `QUOTE_PAYMENT_QUOTE_ID` (`quote_id`);

--
-- Indexes for table `quote_shipping_rate`
--
ALTER TABLE `quote_shipping_rate`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD UNIQUE KEY `RATING_RATING_CODE` (`rating_code`),
  ADD KEY `RATING_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `rating_entity`
--
ALTER TABLE `rating_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `RATING_ENTITY_ENTITY_CODE` (`entity_code`);

--
-- Indexes for table `rating_option`
--
ALTER TABLE `rating_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `RATING_OPTION_RATING_ID` (`rating_id`);

--
-- Indexes for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  ADD KEY `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`);

--
-- Indexes for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD PRIMARY KEY (`primary_id`),
  ADD KEY `RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  ADD KEY `RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `rating_store`
--
ALTER TABLE `rating_store`
  ADD PRIMARY KEY (`rating_id`,`store_id`),
  ADD KEY `RATING_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `rating_title`
--
ALTER TABLE `rating_title`
  ADD PRIMARY KEY (`rating_id`,`store_id`),
  ADD KEY `RATING_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `reporting_counts`
--
ALTER TABLE `reporting_counts`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_module_status`
--
ALTER TABLE `reporting_module_status`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_orders`
--
ALTER TABLE `reporting_orders`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_system_updates`
--
ALTER TABLE `reporting_system_updates`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_users`
--
ALTER TABLE `reporting_users`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD PRIMARY KEY (`index_id`),
  ADD UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  ADD KEY `REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  ADD KEY `REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_event`
--
ALTER TABLE `report_event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  ADD KEY `REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  ADD KEY `REPORT_EVENT_OBJECT_ID` (`object_id`),
  ADD KEY `REPORT_EVENT_SUBTYPE` (`subtype`),
  ADD KEY `REPORT_EVENT_STORE_ID` (`store_id`);

--
-- Indexes for table `report_event_types`
--
ALTER TABLE `report_event_types`
  ADD PRIMARY KEY (`event_type_id`);

--
-- Indexes for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD PRIMARY KEY (`index_id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  ADD KEY `REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `REVIEW_ENTITY_ID` (`entity_id`),
  ADD KEY `REVIEW_STATUS_ID` (`status_id`),
  ADD KEY `REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`);

--
-- Indexes for table `review_detail`
--
ALTER TABLE `review_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  ADD KEY `REVIEW_DETAIL_STORE_ID` (`store_id`),
  ADD KEY `REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `review_entity`
--
ALTER TABLE `review_entity`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD PRIMARY KEY (`primary_id`),
  ADD KEY `REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`);

--
-- Indexes for table `review_status`
--
ALTER TABLE `review_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `review_store`
--
ALTER TABLE `review_store`
  ADD PRIMARY KEY (`review_id`,`store_id`),
  ADD KEY `REVIEW_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `salesrule`
--
ALTER TABLE `salesrule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`);

--
-- Indexes for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `SALESRULE_COUPON_CODE` (`code`),
  ADD UNIQUE KEY `SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  ADD KEY `SALESRULE_COUPON_RULE_ID` (`rule_id`);

--
-- Indexes for table `salesrule_coupon_aggregated`
--
ALTER TABLE `salesrule_coupon_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALESRULE_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_RULE_NAME` (`rule_name`);

--
-- Indexes for table `salesrule_coupon_aggregated_order`
--
ALTER TABLE `salesrule_coupon_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_1094D1FBBCBB11704A29DEF3ACC37D2B` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`);

--
-- Indexes for table `salesrule_coupon_aggregated_updated`
--
ALTER TABLE `salesrule_coupon_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_7196FA120A4F0F84E1B66605E87E213E` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`);

--
-- Indexes for table `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD PRIMARY KEY (`coupon_id`,`customer_id`),
  ADD KEY `SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD PRIMARY KEY (`rule_customer_id`),
  ADD KEY `SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  ADD KEY `SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`);

--
-- Indexes for table `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`),
  ADD KEY `SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  ADD KEY `SALESRULE_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  ADD KEY `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  ADD KEY `SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `salesrule_website`
--
ALTER TABLE `salesrule_website`
  ADD PRIMARY KEY (`rule_id`,`website_id`),
  ADD KEY `SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_creditmemo`
--
ALTER TABLE `sales_creditmemo`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_CREDITMEMO_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_CREDITMEMO_STORE_ID` (`store_id`),
  ADD KEY `SALES_CREDITMEMO_ORDER_ID` (`order_id`),
  ADD KEY `SALES_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  ADD KEY `SALES_CREDITMEMO_STATE` (`state`),
  ADD KEY `SALES_CREDITMEMO_CREATED_AT` (`created_at`),
  ADD KEY `SALES_CREDITMEMO_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_CREDITMEMO_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_CREDITMEMO_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_creditmemo_comment`
--
ALTER TABLE `sales_creditmemo_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_creditmemo_grid`
--
ALTER TABLE `sales_creditmemo_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_CREDITMEMO_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  ADD KEY `SALES_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  ADD KEY `SALES_CREDITMEMO_GRID_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  ADD KEY `SALES_CREDITMEMO_GRID_STATE` (`state`),
  ADD KEY `SALES_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_STATUS` (`order_status`),
  ADD KEY `SALES_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  ADD KEY `SALES_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_BASE_GRAND_TOTAL` (`order_base_grand_total`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_ID` (`order_id`);
ALTER TABLE `sales_creditmemo_grid` ADD FULLTEXT KEY `FTI_32B7BA885941A8254EE84AE650ABDC86` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`);

--
-- Indexes for table `sales_creditmemo_item`
--
ALTER TABLE `sales_creditmemo_item`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_INVOICE_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_INVOICE_STORE_ID` (`store_id`),
  ADD KEY `SALES_INVOICE_GRAND_TOTAL` (`grand_total`),
  ADD KEY `SALES_INVOICE_ORDER_ID` (`order_id`),
  ADD KEY `SALES_INVOICE_STATE` (`state`),
  ADD KEY `SALES_INVOICE_CREATED_AT` (`created_at`),
  ADD KEY `SALES_INVOICE_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_INVOICE_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_INVOICE_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_invoice_comment`
--
ALTER TABLE `sales_invoice_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_INVOICE_COMMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_invoice_grid`
--
ALTER TABLE `sales_invoice_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_INVOICE_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_INVOICE_GRID_STORE_ID` (`store_id`),
  ADD KEY `SALES_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  ADD KEY `SALES_INVOICE_GRID_ORDER_ID` (`order_id`),
  ADD KEY `SALES_INVOICE_GRID_STATE` (`state`),
  ADD KEY `SALES_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  ADD KEY `SALES_INVOICE_GRID_CREATED_AT` (`created_at`),
  ADD KEY `SALES_INVOICE_GRID_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  ADD KEY `SALES_INVOICE_GRID_BILLING_NAME` (`billing_name`);
ALTER TABLE `sales_invoice_grid` ADD FULLTEXT KEY `FTI_95D9C924DD6A8734EB8B5D01D60F90DE` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`);

--
-- Indexes for table `sales_invoice_item`
--
ALTER TABLE `sales_invoice_item`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_INVOICE_ITEM_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_ORDER_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_ORDER_STATUS` (`status`),
  ADD KEY `SALES_ORDER_STATE` (`state`),
  ADD KEY `SALES_ORDER_STORE_ID` (`store_id`),
  ADD KEY `SALES_ORDER_CREATED_AT` (`created_at`),
  ADD KEY `SALES_ORDER_CUSTOMER_ID` (`customer_id`),
  ADD KEY `SALES_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  ADD KEY `SALES_ORDER_QUOTE_ID` (`quote_id`),
  ADD KEY `SALES_ORDER_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_ORDER_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_ORDER_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_order_address`
--
ALTER TABLE `sales_order_address`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_ORDER_ADDRESS_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_grid`
--
ALTER TABLE `sales_order_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_ORDER_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_ORDER_GRID_STATUS` (`status`),
  ADD KEY `SALES_ORDER_GRID_STORE_ID` (`store_id`),
  ADD KEY `SALES_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  ADD KEY `SALES_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  ADD KEY `SALES_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  ADD KEY `SALES_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  ADD KEY `SALES_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  ADD KEY `SALES_ORDER_GRID_BILLING_NAME` (`billing_name`),
  ADD KEY `SALES_ORDER_GRID_CREATED_AT` (`created_at`),
  ADD KEY `SALES_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  ADD KEY `SALES_ORDER_GRID_UPDATED_AT` (`updated_at`);
ALTER TABLE `sales_order_grid` ADD FULLTEXT KEY `FTI_65B9E9925EC58F0C7C2E2F6379C233E7` (`increment_id`,`billing_name`,`shipping_name`,`shipping_address`,`billing_address`,`customer_name`,`customer_email`);

--
-- Indexes for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `SALES_ORDER_ITEM_ORDER_ID` (`order_id`),
  ADD KEY `SALES_ORDER_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_payment`
--
ALTER TABLE `sales_order_payment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_ORDER_PAYMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_order_status`
--
ALTER TABLE `sales_order_status`
  ADD PRIMARY KEY (`status`);

--
-- Indexes for table `sales_order_status_history`
--
ALTER TABLE `sales_order_status_history`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  ADD KEY `SALES_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`);

--
-- Indexes for table `sales_order_status_label`
--
ALTER TABLE `sales_order_status_label`
  ADD PRIMARY KEY (`status`,`store_id`),
  ADD KEY `SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_status_state`
--
ALTER TABLE `sales_order_status_state`
  ADD PRIMARY KEY (`status`,`state`);

--
-- Indexes for table `sales_order_tax`
--
ALTER TABLE `sales_order_tax`
  ADD PRIMARY KEY (`tax_id`),
  ADD KEY `SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`);

--
-- Indexes for table `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  ADD PRIMARY KEY (`tax_item_id`),
  ADD UNIQUE KEY `SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  ADD KEY `SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`),
  ADD KEY `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` (`associated_item_id`);

--
-- Indexes for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD UNIQUE KEY `SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  ADD KEY `SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  ADD KEY `SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`);

--
-- Indexes for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_sequence_meta`
--
ALTER TABLE `sales_sequence_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD UNIQUE KEY `SALES_SEQUENCE_META_ENTITY_TYPE_STORE_ID` (`entity_type`,`store_id`);

--
-- Indexes for table `sales_sequence_profile`
--
ALTER TABLE `sales_sequence_profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD UNIQUE KEY `SALES_SEQUENCE_PROFILE_META_ID_PREFIX_SUFFIX` (`meta_id`,`prefix`,`suffix`);

--
-- Indexes for table `sales_shipment`
--
ALTER TABLE `sales_shipment`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_SHIPMENT_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_SHIPMENT_STORE_ID` (`store_id`),
  ADD KEY `SALES_SHIPMENT_TOTAL_QTY` (`total_qty`),
  ADD KEY `SALES_SHIPMENT_ORDER_ID` (`order_id`),
  ADD KEY `SALES_SHIPMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_SHIPMENT_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_SHIPMENT_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_SHIPMENT_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_shipment_comment`
--
ALTER TABLE `sales_shipment_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_shipment_grid`
--
ALTER TABLE `sales_shipment_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_SHIPMENT_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_SHIPMENT_GRID_STORE_ID` (`store_id`),
  ADD KEY `SALES_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  ADD KEY `SALES_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  ADD KEY `SALES_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  ADD KEY `SALES_SHIPMENT_GRID_ORDER_STATUS` (`order_status`),
  ADD KEY `SALES_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  ADD KEY `SALES_SHIPMENT_GRID_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  ADD KEY `SALES_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`),
  ADD KEY `SALES_SHIPMENT_GRID_BILLING_NAME` (`billing_name`);
ALTER TABLE `sales_shipment_grid` ADD FULLTEXT KEY `FTI_086B40C8955F167B8EA76653437879B4` (`increment_id`,`order_increment_id`,`shipping_name`,`customer_name`,`customer_email`,`billing_address`,`shipping_address`);

--
-- Indexes for table `sales_shipment_item`
--
ALTER TABLE `sales_shipment_item`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_SHIPMENT_ITEM_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_shipment_track`
--
ALTER TABLE `sales_shipment_track`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  ADD KEY `SALES_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  ADD KEY `SALES_SHIPMENT_TRACK_CREATED_AT` (`created_at`);

--
-- Indexes for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  ADD KEY `SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  ADD KEY `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Indexes for table `search_query`
--
ALTER TABLE `search_query`
  ADD PRIMARY KEY (`query_id`),
  ADD UNIQUE KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID` (`query_text`,`store_id`),
  ADD KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  ADD KEY `SEARCH_QUERY_STORE_ID` (`store_id`),
  ADD KEY `SEARCH_QUERY_IS_PROCESSED` (`is_processed`),
  ADD KEY `SEARCH_QUERY_SYNONYM_FOR` (`synonym_for`);

--
-- Indexes for table `sendfriend_log`
--
ALTER TABLE `sendfriend_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `SENDFRIEND_LOG_IP` (`ip`),
  ADD KEY `SENDFRIEND_LOG_TIME` (`time`);

--
-- Indexes for table `sequence_creditmemo_0`
--
ALTER TABLE `sequence_creditmemo_0`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_creditmemo_1`
--
ALTER TABLE `sequence_creditmemo_1`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_invoice_0`
--
ALTER TABLE `sequence_invoice_0`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_invoice_1`
--
ALTER TABLE `sequence_invoice_1`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_order_0`
--
ALTER TABLE `sequence_order_0`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_order_1`
--
ALTER TABLE `sequence_order_1`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_shipment_0`
--
ALTER TABLE `sequence_shipment_0`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_shipment_1`
--
ALTER TABLE `sequence_shipment_1`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `setup_module`
--
ALTER TABLE `setup_module`
  ADD PRIMARY KEY (`module`);

--
-- Indexes for table `shipping_tablerate`
--
ALTER TABLE `shipping_tablerate`
  ADD PRIMARY KEY (`pk`),
  ADD UNIQUE KEY `UNQ_D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`);

--
-- Indexes for table `sitemap`
--
ALTER TABLE `sitemap`
  ADD PRIMARY KEY (`sitemap_id`),
  ADD KEY `SITEMAP_STORE_ID` (`store_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`),
  ADD UNIQUE KEY `STORE_CODE` (`code`),
  ADD KEY `STORE_WEBSITE_ID` (`website_id`),
  ADD KEY `STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  ADD KEY `STORE_GROUP_ID` (`group_id`);

--
-- Indexes for table `store_group`
--
ALTER TABLE `store_group`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `STORE_GROUP_WEBSITE_ID` (`website_id`),
  ADD KEY `STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`);

--
-- Indexes for table `store_website`
--
ALTER TABLE `store_website`
  ADD PRIMARY KEY (`website_id`),
  ADD UNIQUE KEY `STORE_WEBSITE_CODE` (`code`),
  ADD KEY `STORE_WEBSITE_SORT_ORDER` (`sort_order`),
  ADD KEY `STORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`);

--
-- Indexes for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD PRIMARY KEY (`tax_calculation_id`),
  ADD KEY `TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  ADD KEY `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  ADD KEY `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  ADD KEY `TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`);

--
-- Indexes for table `tax_calculation_rate`
--
ALTER TABLE `tax_calculation_rate`
  ADD PRIMARY KEY (`tax_calculation_rate_id`),
  ADD KEY `TAX_CALCULATION_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  ADD KEY `TAX_CALCULATION_RATE_CODE` (`code`),
  ADD KEY `IDX_CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`);

--
-- Indexes for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD PRIMARY KEY (`tax_calculation_rate_title_id`),
  ADD KEY `TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  ADD KEY `TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `tax_calculation_rule`
--
ALTER TABLE `tax_calculation_rule`
  ADD PRIMARY KEY (`tax_calculation_rule_id`),
  ADD KEY `TAX_CALCULATION_RULE_PRIORITY_POSITION` (`priority`,`position`),
  ADD KEY `TAX_CALCULATION_RULE_CODE` (`code`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TAX_ORDER_AGGRED_CREATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  ADD KEY `TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`);

--
-- Indexes for table `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TAX_ORDER_AGGRED_UPDATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  ADD KEY `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `theme_file`
--
ALTER TABLE `theme_file`
  ADD PRIMARY KEY (`theme_files_id`),
  ADD KEY `THEME_FILE_THEME_ID_THEME_THEME_ID` (`theme_id`);

--
-- Indexes for table `translation`
--
ALTER TABLE `translation`
  ADD PRIMARY KEY (`key_id`),
  ADD UNIQUE KEY `TRANSLATION_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`);

--
-- Indexes for table `ui_bookmark`
--
ALTER TABLE `ui_bookmark`
  ADD PRIMARY KEY (`bookmark_id`),
  ADD KEY `UI_BOOKMARK_USER_ID_NAMESPACE_IDENTIFIER` (`user_id`,`namespace`,`identifier`);

--
-- Indexes for table `url_rewrite`
--
ALTER TABLE `url_rewrite`
  ADD PRIMARY KEY (`url_rewrite_id`),
  ADD UNIQUE KEY `URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  ADD KEY `URL_REWRITE_TARGET_PATH` (`target_path`),
  ADD KEY `URL_REWRITE_STORE_ID_ENTITY_ID` (`store_id`,`entity_id`);

--
-- Indexes for table `variable`
--
ALTER TABLE `variable`
  ADD PRIMARY KEY (`variable_id`),
  ADD UNIQUE KEY `VARIABLE_CODE` (`code`);

--
-- Indexes for table `variable_value`
--
ALTER TABLE `variable_value`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  ADD KEY `VARIABLE_VALUE_STORE_ID` (`store_id`);

--
-- Indexes for table `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `WEEE_TAX_WEBSITE_ID` (`website_id`),
  ADD KEY `WEEE_TAX_ENTITY_ID` (`entity_id`),
  ADD KEY `WEEE_TAX_COUNTRY` (`country`),
  ADD KEY `WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`widget_id`),
  ADD KEY `WIDGET_WIDGET_CODE` (`widget_code`);

--
-- Indexes for table `widget_instance`
--
ALTER TABLE `widget_instance`
  ADD PRIMARY KEY (`instance_id`),
  ADD KEY `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` (`theme_id`);

--
-- Indexes for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`);

--
-- Indexes for table `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD UNIQUE KEY `WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  ADD KEY `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD UNIQUE KEY `WISHLIST_CUSTOMER_ID` (`customer_id`),
  ADD KEY `WISHLIST_SHARED` (`shared`);

--
-- Indexes for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD PRIMARY KEY (`wishlist_item_id`),
  ADD KEY `WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  ADD KEY `WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `WISHLIST_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminnotification_inbox`
--
ALTER TABLE `adminnotification_inbox`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Notification id';
--
-- AUTO_INCREMENT for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  MODIFY `password_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Password Id';
--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'User ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `authorization_role`
--
ALTER TABLE `authorization_role`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Role ID', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `authorization_rule`
--
ALTER TABLE `authorization_rule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cataloginventory_stock`
--
ALTER TABLE `cataloginventory_stock`
  MODIFY `stock_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Stock Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id';
--
-- AUTO_INCREMENT for table `catalogrule`
--
ALTER TABLE `catalogrule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Id';
--
-- AUTO_INCREMENT for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  MODIFY `rule_product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id';
--
-- AUTO_INCREMENT for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  MODIFY `rule_product_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId';
--
-- AUTO_INCREMENT for table `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  MODIFY `catalog_compare_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID';
--
-- AUTO_INCREMENT for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id';
--
-- AUTO_INCREMENT for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  MODIFY `selection_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Selection Id';
--
-- AUTO_INCREMENT for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  MODIFY `record_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Record Id';
--
-- AUTO_INCREMENT for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  MODIFY `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_type`
--
ALTER TABLE `catalog_product_link_type`
  MODIFY `link_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  MODIFY `option_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  MODIFY `option_title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  MODIFY `option_type_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  MODIFY `option_type_title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  MODIFY `option_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID';
--
-- AUTO_INCREMENT for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  MODIFY `product_super_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID';
--
-- AUTO_INCREMENT for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID';
--
-- AUTO_INCREMENT for table `checkout_agreement`
--
ALTER TABLE `checkout_agreement`
  MODIFY `agreement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id';
--
-- AUTO_INCREMENT for table `cms_block`
--
ALTER TABLE `cms_block`
  MODIFY `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID', AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `cms_page`
--
ALTER TABLE `cms_page`
  MODIFY `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID', AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `core_config_data`
--
ALTER TABLE `core_config_data`
  MODIFY `config_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Config Id', AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `cron_schedule`
--
ALTER TABLE `cron_schedule`
  MODIFY `schedule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id';
--
-- AUTO_INCREMENT for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity`
--
ALTER TABLE `customer_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `customer_group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer_log`
--
ALTER TABLE `customer_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log ID';
--
-- AUTO_INCREMENT for table `customer_visitor`
--
ALTER TABLE `customer_visitor`
  MODIFY `visitor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `design_change`
--
ALTER TABLE `design_change`
  MODIFY `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id';
--
-- AUTO_INCREMENT for table `directory_country_format`
--
ALTER TABLE `directory_country_format`
  MODIFY `country_format_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id';
--
-- AUTO_INCREMENT for table `directory_country_region`
--
ALTER TABLE `directory_country_region`
  MODIFY `region_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Region Id', AUTO_INCREMENT=512;
--
-- AUTO_INCREMENT for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID';
--
-- AUTO_INCREMENT for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  MODIFY `price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Price ID';
--
-- AUTO_INCREMENT for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  MODIFY `purchased_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID';
--
-- AUTO_INCREMENT for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item ID';
--
-- AUTO_INCREMENT for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  MODIFY `title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Title ID';
--
-- AUTO_INCREMENT for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  MODIFY `sample_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Sample ID';
--
-- AUTO_INCREMENT for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  MODIFY `title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Title ID';
--
-- AUTO_INCREMENT for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  MODIFY `attribute_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id', AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  MODIFY `attribute_group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id', AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  MODIFY `attribute_label_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id';
--
-- AUTO_INCREMENT for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eav_attribute_option_swatch`
--
ALTER TABLE `eav_attribute_option_swatch`
  MODIFY `swatch_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Swatch ID';
--
-- AUTO_INCREMENT for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  MODIFY `attribute_set_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `eav_entity`
--
ALTER TABLE `eav_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  MODIFY `entity_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id', AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  MODIFY `entity_store_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id';
--
-- AUTO_INCREMENT for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_type`
--
ALTER TABLE `eav_entity_type`
  MODIFY `entity_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  MODIFY `element_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Element Id', AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  MODIFY `fieldset_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id';
--
-- AUTO_INCREMENT for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  MODIFY `type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Type Id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `template_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Template ID';
--
-- AUTO_INCREMENT for table `emthemes_config_data`
--
ALTER TABLE `emthemes_config_data`
  MODIFY `config_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Config Id';
--
-- AUTO_INCREMENT for table `flag`
--
ALTER TABLE `flag`
  MODIFY `flag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Flag Id';
--
-- AUTO_INCREMENT for table `gift_message`
--
ALTER TABLE `gift_message`
  MODIFY `gift_message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id';
--
-- AUTO_INCREMENT for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  MODIFY `code_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Google experiment code id';
--
-- AUTO_INCREMENT for table `importexport_importdata`
--
ALTER TABLE `importexport_importdata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `import_history`
--
ALTER TABLE `import_history`
  MODIFY `history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'History record Id';
--
-- AUTO_INCREMENT for table `indexer_state`
--
ALTER TABLE `indexer_state`
  MODIFY `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Indexer State Id', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `integration`
--
ALTER TABLE `integration`
  MODIFY `integration_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Integration ID';
--
-- AUTO_INCREMENT for table `layout_link`
--
ALTER TABLE `layout_link`
  MODIFY `layout_link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link Id', AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `layout_update`
--
ALTER TABLE `layout_update`
  MODIFY `layout_update_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id', AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `mview_state`
--
ALTER TABLE `mview_state`
  MODIFY `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'View State Id';
--
-- AUTO_INCREMENT for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  MODIFY `problem_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Problem Id';
--
-- AUTO_INCREMENT for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  MODIFY `queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Queue Id';
--
-- AUTO_INCREMENT for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  MODIFY `queue_link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id';
--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `subscriber_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id';
--
-- AUTO_INCREMENT for table `newsletter_template`
--
ALTER TABLE `newsletter_template`
  MODIFY `template_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Template ID';
--
-- AUTO_INCREMENT for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `oauth_token`
--
ALTER TABLE `oauth_token`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID';
--
-- AUTO_INCREMENT for table `oauth_token_request_log`
--
ALTER TABLE `oauth_token_request_log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Log Id';
--
-- AUTO_INCREMENT for table `paypal_billing_agreement`
--
ALTER TABLE `paypal_billing_agreement`
  MODIFY `agreement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id';
--
-- AUTO_INCREMENT for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  MODIFY `cert_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Cert Id';
--
-- AUTO_INCREMENT for table `paypal_payment_transaction`
--
ALTER TABLE `paypal_payment_transaction`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `paypal_settlement_report`
--
ALTER TABLE `paypal_settlement_report`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Report Id';
--
-- AUTO_INCREMENT for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  MODIFY `row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Row Id';
--
-- AUTO_INCREMENT for table `persistent_session`
--
ALTER TABLE `persistent_session`
  MODIFY `persistent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Session id';
--
-- AUTO_INCREMENT for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  MODIFY `alert_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id';
--
-- AUTO_INCREMENT for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  MODIFY `alert_stock_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id';
--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `quote_address`
--
ALTER TABLE `quote_address`
  MODIFY `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Address Id';
--
-- AUTO_INCREMENT for table `quote_address_item`
--
ALTER TABLE `quote_address_item`
  MODIFY `address_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id';
--
-- AUTO_INCREMENT for table `quote_id_mask`
--
ALTER TABLE `quote_id_mask`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `quote_item`
--
ALTER TABLE `quote_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id';
--
-- AUTO_INCREMENT for table `quote_item_option`
--
ALTER TABLE `quote_item_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id';
--
-- AUTO_INCREMENT for table `quote_payment`
--
ALTER TABLE `quote_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Payment Id';
--
-- AUTO_INCREMENT for table `quote_shipping_rate`
--
ALTER TABLE `quote_shipping_rate`
  MODIFY `rate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rate Id';
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rating Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rating_entity`
--
ALTER TABLE `rating_entity`
  MODIFY `entity_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rating_option`
--
ALTER TABLE `rating_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id', AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  MODIFY `vote_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Vote id';
--
-- AUTO_INCREMENT for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  MODIFY `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id';
--
-- AUTO_INCREMENT for table `reporting_counts`
--
ALTER TABLE `reporting_counts`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `reporting_module_status`
--
ALTER TABLE `reporting_module_status`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Module Id';
--
-- AUTO_INCREMENT for table `reporting_orders`
--
ALTER TABLE `reporting_orders`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `reporting_system_updates`
--
ALTER TABLE `reporting_system_updates`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `reporting_users`
--
ALTER TABLE `reporting_users`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  MODIFY `index_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Index Id';
--
-- AUTO_INCREMENT for table `report_event`
--
ALTER TABLE `report_event`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Event Id';
--
-- AUTO_INCREMENT for table `report_event_types`
--
ALTER TABLE `report_event_types`
  MODIFY `event_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  MODIFY `index_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Index Id';
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review id';
--
-- AUTO_INCREMENT for table `review_detail`
--
ALTER TABLE `review_detail`
  MODIFY `detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review detail id';
--
-- AUTO_INCREMENT for table `review_entity`
--
ALTER TABLE `review_entity`
  MODIFY `entity_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review entity id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  MODIFY `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id';
--
-- AUTO_INCREMENT for table `review_status`
--
ALTER TABLE `review_status`
  MODIFY `status_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Status id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `salesrule`
--
ALTER TABLE `salesrule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Id';
--
-- AUTO_INCREMENT for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  MODIFY `coupon_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id';
--
-- AUTO_INCREMENT for table `salesrule_coupon_aggregated`
--
ALTER TABLE `salesrule_coupon_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `salesrule_coupon_aggregated_order`
--
ALTER TABLE `salesrule_coupon_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `salesrule_coupon_aggregated_updated`
--
ALTER TABLE `salesrule_coupon_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  MODIFY `rule_customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id';
--
-- AUTO_INCREMENT for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  MODIFY `label_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Label Id';
--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_creditmemo`
--
ALTER TABLE `sales_creditmemo`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_creditmemo_comment`
--
ALTER TABLE `sales_creditmemo_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_creditmemo_item`
--
ALTER TABLE `sales_creditmemo_item`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_invoice_comment`
--
ALTER TABLE `sales_invoice_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_invoice_item`
--
ALTER TABLE `sales_invoice_item`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_order_address`
--
ALTER TABLE `sales_order_address`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id';
--
-- AUTO_INCREMENT for table `sales_order_payment`
--
ALTER TABLE `sales_order_payment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_order_status_history`
--
ALTER TABLE `sales_order_status_history`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_order_tax`
--
ALTER TABLE `sales_order_tax`
  MODIFY `tax_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Tax Id';
--
-- AUTO_INCREMENT for table `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  MODIFY `tax_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id';
--
-- AUTO_INCREMENT for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id';
--
-- AUTO_INCREMENT for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_sequence_meta`
--
ALTER TABLE `sales_sequence_meta`
  MODIFY `meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sales_sequence_profile`
--
ALTER TABLE `sales_sequence_profile`
  MODIFY `profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sales_shipment`
--
ALTER TABLE `sales_shipment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_shipment_comment`
--
ALTER TABLE `sales_shipment_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_shipment_item`
--
ALTER TABLE `sales_shipment_item`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_shipment_track`
--
ALTER TABLE `sales_shipment_track`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `search_query`
--
ALTER TABLE `search_query`
  MODIFY `query_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Query ID';
--
-- AUTO_INCREMENT for table `sendfriend_log`
--
ALTER TABLE `sendfriend_log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Log ID';
--
-- AUTO_INCREMENT for table `sequence_creditmemo_0`
--
ALTER TABLE `sequence_creditmemo_0`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_creditmemo_1`
--
ALTER TABLE `sequence_creditmemo_1`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_invoice_0`
--
ALTER TABLE `sequence_invoice_0`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_invoice_1`
--
ALTER TABLE `sequence_invoice_1`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_order_0`
--
ALTER TABLE `sequence_order_0`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_order_1`
--
ALTER TABLE `sequence_order_1`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_shipment_0`
--
ALTER TABLE `sequence_shipment_0`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_shipment_1`
--
ALTER TABLE `sequence_shipment_1`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shipping_tablerate`
--
ALTER TABLE `shipping_tablerate`
  MODIFY `pk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT for table `sitemap`
--
ALTER TABLE `sitemap`
  MODIFY `sitemap_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id';
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Store Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `store_group`
--
ALTER TABLE `store_group`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Group Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `store_website`
--
ALTER TABLE `store_website`
  MODIFY `website_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Website Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  MODIFY `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id';
--
-- AUTO_INCREMENT for table `tax_calculation_rate`
--
ALTER TABLE `tax_calculation_rate`
  MODIFY `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  MODIFY `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id';
--
-- AUTO_INCREMENT for table `tax_calculation_rule`
--
ALTER TABLE `tax_calculation_rule`
  MODIFY `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id';
--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `theme_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Theme identifier', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `theme_file`
--
ALTER TABLE `theme_file`
  MODIFY `theme_files_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Theme files identifier';
--
-- AUTO_INCREMENT for table `translation`
--
ALTER TABLE `translation`
  MODIFY `key_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation';
--
-- AUTO_INCREMENT for table `ui_bookmark`
--
ALTER TABLE `ui_bookmark`
  MODIFY `bookmark_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Bookmark identifier', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `url_rewrite`
--
ALTER TABLE `url_rewrite`
  MODIFY `url_rewrite_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `variable`
--
ALTER TABLE `variable`
  MODIFY `variable_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Variable Id';
--
-- AUTO_INCREMENT for table `variable_value`
--
ALTER TABLE `variable_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id';
--
-- AUTO_INCREMENT for table `weee_tax`
--
ALTER TABLE `weee_tax`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `widget_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Widget Id';
--
-- AUTO_INCREMENT for table `widget_instance`
--
ALTER TABLE `widget_instance`
  MODIFY `instance_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Instance Id', AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Page Id', AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID';
--
-- AUTO_INCREMENT for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  MODIFY `wishlist_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID';
--
-- AUTO_INCREMENT for table `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id';
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  ADD CONSTRAINT `ADMIN_PASSWORDS_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `authorization_rule`
--
ALTER TABLE `authorization_rule`
  ADD CONSTRAINT `AUTHORIZATION_RULE_ROLE_ID_AUTHORIZATION_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `authorization_role` (`role_id`) ON DELETE CASCADE;

--
-- Constraints for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD CONSTRAINT `CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD CONSTRAINT `CATALOGRULE_GROUP_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_GROUP_WS_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value_to_entity`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A6C6C8FAA386736921D3A7C4B50B1185` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value_video`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_video`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6FDF205946906B0E653E60AA769899F8` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `CAT_PRD_IDX_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `CATALOG_PRODUCT_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_url_rewrite_product_category`
--
ALTER TABLE `catalog_url_rewrite_product_category`
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BB79E64705D7F17FE181F23144528FC8` FOREIGN KEY (`url_rewrite_id`) REFERENCES `url_rewrite` (`url_rewrite_id`) ON DELETE CASCADE;

--
-- Constraints for table `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_BLOCK_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_PAGE_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `CUSTOMER_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD CONSTRAINT `CUSTOMER_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `CUSTOMER_ENTITY_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD CONSTRAINT `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `design_change`
--
ALTER TABLE `design_change`
  ADD CONSTRAINT `DESIGN_CHANGE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `DIR_COUNTRY_REGION_NAME_REGION_ID_DIR_COUNTRY_REGION_REGION_ID` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL;

--
-- Constraints for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_ORDER_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`order_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_PURCHASED_ID_DL_LNK_PURCHASED_PURCHASED_ID` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_option_swatch`
--
ALTER TABLE `eav_attribute_option_swatch`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD CONSTRAINT `EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `EAV_ENTITY_STORE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `EAV_FORM_TYPE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  ADD CONSTRAINT `GOOGLEOPTIMIZER_CODE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `integration`
--
ALTER TABLE `integration`
  ADD CONSTRAINT `INTEGRATION_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `layout_link`
--
ALTER TABLE `layout_link`
  ADD CONSTRAINT `LAYOUT_LINK_LAYOUT_UPDATE_ID_LAYOUT_UPDATE_LAYOUT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `NEWSLETTER_SUBSCRIBER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD CONSTRAINT `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD CONSTRAINT `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `paypal_billing_agreement`
--
ALTER TABLE `paypal_billing_agreement`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `paypal_billing_agreement_order`
--
ALTER TABLE `paypal_billing_agreement_order`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGRT_ORDER_AGRT_ID_PAYPAL_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `paypal_billing_agreement` (`agreement_id`) ON DELETE CASCADE;

--
-- Constraints for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD CONSTRAINT `PAYPAL_CERT_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE;

--
-- Constraints for table `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD CONSTRAINT `PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote`
--
ALTER TABLE `quote`
  ADD CONSTRAINT `QUOTE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_address`
--
ALTER TABLE `quote_address`
  ADD CONSTRAINT `QUOTE_ADDRESS_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_address_item`
--
ALTER TABLE `quote_address_item`
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`quote_address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`quote_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDR_ITEM_PARENT_ITEM_ID_QUOTE_ADDR_ITEM_ADDR_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_address_item` (`address_item_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_id_mask`
--
ALTER TABLE `quote_id_mask`
  ADD CONSTRAINT `QUOTE_ID_MASK_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_item`
--
ALTER TABLE `quote_item`
  ADD CONSTRAINT `QUOTE_ITEM_PARENT_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `quote_item_option`
--
ALTER TABLE `quote_item_option`
  ADD CONSTRAINT `QUOTE_ITEM_OPTION_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_payment`
--
ALTER TABLE `quote_payment`
  ADD CONSTRAINT `QUOTE_PAYMENT_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_shipping_rate`
--
ALTER TABLE `quote_shipping_rate`
  ADD CONSTRAINT `QUOTE_SHIPPING_RATE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_option`
--
ALTER TABLE `rating_option`
  ADD CONSTRAINT `RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_store`
--
ALTER TABLE `rating_store`
  ADD CONSTRAINT `RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_title`
--
ALTER TABLE `rating_title`
  ADD CONSTRAINT `RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `report_event`
--
ALTER TABLE `report_event`
  ADD CONSTRAINT `REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_EVENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION;

--
-- Constraints for table `review_detail`
--
ALTER TABLE `review_detail`
  ADD CONSTRAINT `REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_DETAIL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `REVIEW_ENTITY_SUMMARY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `review_store`
--
ALTER TABLE `review_store`
  ADD CONSTRAINT `REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_aggregated`
--
ALTER TABLE `salesrule_coupon_aggregated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_aggregated_order`
--
ALTER TABLE `salesrule_coupon_aggregated_order`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_aggregated_updated`
--
ALTER TABLE `salesrule_coupon_aggregated_updated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
  ADD CONSTRAINT `SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_website`
--
ALTER TABLE `salesrule_website`
  ADD CONSTRAINT `SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_creditmemo`
--
ALTER TABLE `sales_creditmemo`
  ADD CONSTRAINT `SALES_CREDITMEMO_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_CREDITMEMO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_creditmemo_comment`
--
ALTER TABLE `sales_creditmemo_comment`
  ADD CONSTRAINT `SALES_CREDITMEMO_COMMENT_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_creditmemo_item`
--
ALTER TABLE `sales_creditmemo_item`
  ADD CONSTRAINT `SALES_CREDITMEMO_ITEM_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  ADD CONSTRAINT `SALES_INVOICE_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_INVOICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_invoice_comment`
--
ALTER TABLE `sales_invoice_comment`
  ADD CONSTRAINT `SALES_INVOICE_COMMENT_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_invoice_item`
--
ALTER TABLE `sales_invoice_item`
  ADD CONSTRAINT `SALES_INVOICE_ITEM_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD CONSTRAINT `SALES_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `SALES_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_order_address`
--
ALTER TABLE `sales_order_address`
  ADD CONSTRAINT `SALES_ORDER_ADDRESS_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  ADD CONSTRAINT `SALES_ORDER_ITEM_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_order_payment`
--
ALTER TABLE `sales_order_payment`
  ADD CONSTRAINT `SALES_ORDER_PAYMENT_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_status_history`
--
ALTER TABLE `sales_order_status_history`
  ADD CONSTRAINT `SALES_ORDER_STATUS_HISTORY_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_status_label`
--
ALTER TABLE `sales_order_status_label`
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_status_state`
--
ALTER TABLE `sales_order_status_state`
  ADD CONSTRAINT `SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`associated_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_PAYMENT_ID_SALES_ORDER_PAYMENT_ENTT_ID` FOREIGN KEY (`payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_sequence_profile`
--
ALTER TABLE `sales_sequence_profile`
  ADD CONSTRAINT `SALES_SEQUENCE_PROFILE_META_ID_SALES_SEQUENCE_META_META_ID` FOREIGN KEY (`meta_id`) REFERENCES `sales_sequence_meta` (`meta_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_shipment`
--
ALTER TABLE `sales_shipment`
  ADD CONSTRAINT `SALES_SHIPMENT_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_SHIPMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_shipment_comment`
--
ALTER TABLE `sales_shipment_comment`
  ADD CONSTRAINT `SALES_SHIPMENT_COMMENT_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_shipment_item`
--
ALTER TABLE `sales_shipment_item`
  ADD CONSTRAINT `SALES_SHIPMENT_ITEM_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_shipment_track`
--
ALTER TABLE `sales_shipment_track`
  ADD CONSTRAINT `SALES_SHIPMENT_TRACK_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `search_query`
--
ALTER TABLE `search_query`
  ADD CONSTRAINT `SEARCH_QUERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sitemap`
--
ALTER TABLE `sitemap`
  ADD CONSTRAINT `SITEMAP_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `STORE_GROUP_ID_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `store_group` (`group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `STORE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `store_group`
--
ALTER TABLE `store_group`
  ADD CONSTRAINT `STORE_GROUP_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_RATE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `theme_file`
--
ALTER TABLE `theme_file`
  ADD CONSTRAINT `THEME_FILE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

--
-- Constraints for table `translation`
--
ALTER TABLE `translation`
  ADD CONSTRAINT `TRANSLATION_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `ui_bookmark`
--
ALTER TABLE `ui_bookmark`
  ADD CONSTRAINT `UI_BOOKMARK_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `variable_value`
--
ALTER TABLE `variable_value`
  ADD CONSTRAINT `VARIABLE_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `VARIABLE_VALUE_VARIABLE_ID_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`) ON DELETE CASCADE;

--
-- Constraints for table `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD CONSTRAINT `WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `widget_instance`
--
ALTER TABLE `widget_instance`
  ADD CONSTRAINT `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

--
-- Constraints for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE;

--
-- Constraints for table `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LYT_LYT_UPDATE_ID_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WISHLIST_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  ADD CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
