-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2021 at 02:53 PM
-- Server version: 10.3.27-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kucaree_kucc`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add carousel', 7, 'add_carousel'),
(26, 'Can change carousel', 7, 'change_carousel'),
(27, 'Can delete carousel', 7, 'delete_carousel'),
(28, 'Can view carousel', 7, 'view_carousel'),
(29, 'Can add contact us', 8, 'add_contactus'),
(30, 'Can change contact us', 8, 'change_contactus'),
(31, 'Can delete contact us', 8, 'delete_contactus'),
(32, 'Can view contact us', 8, 'view_contactus'),
(33, 'Can add event', 9, 'add_event'),
(34, 'Can change event', 9, 'change_event'),
(35, 'Can delete event', 9, 'delete_event'),
(36, 'Can view event', 9, 'view_event'),
(37, 'Can add fund', 10, 'add_fund'),
(38, 'Can change fund', 10, 'change_fund'),
(39, 'Can delete fund', 10, 'delete_fund'),
(40, 'Can view fund', 10, 'view_fund'),
(41, 'Can add notice', 11, 'add_notice'),
(42, 'Can change notice', 11, 'change_notice'),
(43, 'Can delete notice', 11, 'delete_notice'),
(44, 'Can view notice', 11, 'view_notice'),
(45, 'Can add photo gallery', 12, 'add_photogallery'),
(46, 'Can change photo gallery', 12, 'change_photogallery'),
(47, 'Can delete photo gallery', 12, 'delete_photogallery'),
(48, 'Can view photo gallery', 12, 'view_photogallery'),
(49, 'Can add resource', 13, 'add_resource'),
(50, 'Can change resource', 13, 'change_resource'),
(51, 'Can delete resource', 13, 'delete_resource'),
(52, 'Can view resource', 13, 'view_resource'),
(53, 'Can add settings', 14, 'add_settings'),
(54, 'Can change settings', 14, 'change_settings'),
(55, 'Can delete settings', 14, 'delete_settings'),
(56, 'Can view settings', 14, 'view_settings'),
(57, 'Can add profile', 15, 'add_profile'),
(58, 'Can change profile', 15, 'change_profile'),
(59, 'Can delete profile', 15, 'delete_profile'),
(60, 'Can view profile', 15, 'view_profile'),
(61, 'Can add fee', 16, 'add_fee'),
(62, 'Can change fee', 16, 'change_fee'),
(63, 'Can delete fee', 16, 'delete_fee'),
(64, 'Can view fee', 16, 'view_fee'),
(65, 'Can add donation', 17, 'add_donation'),
(66, 'Can change donation', 17, 'change_donation'),
(67, 'Can delete donation', 17, 'delete_donation'),
(68, 'Can view donation', 17, 'view_donation'),
(69, 'Can add about', 18, 'add_about'),
(70, 'Can change about', 18, 'change_about'),
(71, 'Can delete about', 18, 'delete_about'),
(72, 'Can view about', 18, 'view_about'),
(73, 'Can add designation', 19, 'add_designation'),
(74, 'Can change designation', 19, 'change_designation'),
(75, 'Can delete designation', 19, 'delete_designation'),
(76, 'Can view designation', 19, 'view_designation');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$CyjBjAUXvdWd$q7fwQRJfBw4HAUBPa8G4D7alF17PR2YwcUtCdx00fso=', '2021-01-29 06:28:31.334767', 1, 'abudawod4@gmail.com', '', '', 'abudawod4@gmail.com', 1, 1, '2021-01-22 07:51:58.364179'),
(4, 'pbkdf2_sha256$216000$eRWJrmvlZZRu$+kSndEFgJ/zc3My8LumBQoxqgxdO/y5oIneuGa2rtrE=', '2021-01-22 08:17:39.646693', 1, 'mrrtamimbd@gmail.com', '', '', 'mrrtamimbd@gmail.com', 1, 1, '2021-01-22 08:17:39.386477'),
(6, 'pbkdf2_sha256$216000$Mnn7E1wHhHPW$HkDNRlzng7KNDzieKJYDlPR5ALrRbVpDEAa7tRn74HU=', '2021-01-22 15:36:47.845807', 0, 'salauddin.tapu@gmail.com', '', '', 'salauddin.tapu@gmail.com', 0, 1, '2021-01-22 15:36:47.598073'),
(7, 'pbkdf2_sha256$216000$eexIgaFDI4GF$ZPqgks13A4aXKeCqzsqoi2DSBJYH+DtY1n78A0QZgvI=', '2021-01-23 16:58:53.720261', 0, 'kafi726726@gmail.com', '', '', 'kafi726726@gmail.com', 0, 1, '2021-01-22 15:47:41.502722'),
(8, 'pbkdf2_sha256$216000$uLFOPxmwEsQL$91u/c4pZI5wj+27R1lUuElJswyhwmSUzD6/xRMi8bcc=', '2021-01-23 16:04:53.617909', 0, 'asifanik547@gmail.com', '', '', 'asifanik547@gmail.com', 0, 1, '2021-01-23 16:04:53.360738'),
(9, 'pbkdf2_sha256$216000$yUL22oKxTZZQ$eAzpa1fTfafFbR3JUIAncNobLPfPOJ+uApjIQwgX5Hw=', '2021-01-23 16:26:08.335774', 0, 'moniruzzaman1928@gmail.com', '', '', 'moniruzzaman1928@gmail.com', 0, 1, '2021-01-23 16:26:08.041731'),
(10, 'pbkdf2_sha256$216000$lvls6SbYHXRx$0xFJcx0dv/b2PigNQVO9E78GwsCG6Z6y7qlQr+/5QEc=', '2021-01-23 17:18:33.209680', 0, 'tahsintabassum24@gmail.com', '', '', 'tahsintabassum24@gmail.com', 0, 1, '2021-01-23 17:18:32.904719'),
(11, 'pbkdf2_sha256$216000$aB3NXVPYOOq0$oRXadE0iIZ+G8l1p8SKoiXG43dgyGL5NJGl7yMmeQAA=', '2021-01-24 12:13:09.552117', 0, 'skrtanmoy@gmail.com', '', '', 'skrtanmoy@gmail.com', 0, 1, '2021-01-24 12:13:09.110944'),
(12, 'pbkdf2_sha256$216000$75gWWVCM5as2$NCFb/InWGbQLSZCwoSWZfH90ihge+q2erJQ0zT+by8E=', '2021-01-24 18:51:24.811688', 0, 'f.rabby47@hotmail.com', '', '', 'f.rabby47@hotmail.com', 0, 1, '2021-01-24 18:51:24.533820'),
(13, 'pbkdf2_sha256$216000$12xlMKoZmIIs$OAVakkF3DkTmCErcXg5zA8PWYdpbM1cNTzYZOl+0juc=', '2021-01-25 13:21:21.661078', 0, 'souravzx39@gmail.com', '', '', 'souravzx39@gmail.com', 0, 1, '2021-01-25 13:21:21.323728');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-01-22 08:15:39.495878', '2', 'mrrtamimbd@gmail.com', 3, '', 4, 1),
(2, '2021-01-22 08:16:56.902770', '3', 'mrrtamimbd@gmail.com', 3, '', 4, 1),
(3, '2021-01-22 08:40:41.614071', '1', 'KUCC', 2, '[{\"changed\": {\"fields\": [\"Org homepage description\", \"Org map location\"]}}]', 14, 1),
(4, '2021-01-22 13:09:17.934952', '5', 'kafi726727@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 4, 1),
(5, '2021-01-23 15:43:41.575991', '5', 'kafi726727@gmail.com', 3, '', 4, 1),
(6, '2021-01-24 18:16:58.338028', '1', 'Joddopi Amar Guru', 3, '', 13, 1),
(7, '2021-01-27 14:56:37.178276', '13', 'sourovzx39@gmail.com None', 2, '[{\"changed\": {\"fields\": [\"Full name\"]}}]', 15, 1),
(8, '2021-01-29 06:29:13.842256', '14', 'dawod1816@cseku.ac.bd', 3, '', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(18, 'org', 'about'),
(7, 'org', 'carousel'),
(8, 'org', 'contactus'),
(19, 'org', 'designation'),
(17, 'org', 'donation'),
(9, 'org', 'event'),
(16, 'org', 'fee'),
(10, 'org', 'fund'),
(11, 'org', 'notice'),
(12, 'org', 'photogallery'),
(15, 'org', 'profile'),
(13, 'org', 'resource'),
(14, 'org', 'settings'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-01-22 07:39:12.825316'),
(2, 'auth', '0001_initial', '2021-01-22 07:39:14.888183'),
(3, 'admin', '0001_initial', '2021-01-22 07:39:15.595009'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-01-22 07:39:15.625756'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-01-22 07:39:15.641522'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-01-22 07:39:15.680078'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-01-22 07:39:15.691515'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-01-22 07:39:15.702810'),
(9, 'auth', '0004_alter_user_username_opts', '2021-01-22 07:39:15.712894'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-01-22 07:39:15.728749'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-01-22 07:39:15.730590'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-01-22 07:39:15.749305'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-01-22 07:39:15.766730'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-01-22 07:39:15.783503'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-01-22 07:39:15.800912'),
(16, 'auth', '0011_update_proxy_permissions', '2021-01-22 07:39:15.812789'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-01-22 07:39:15.823513'),
(18, 'org', '0001_initial', '2021-01-22 07:39:24.317175'),
(19, 'org', '0002_donation_method', '2021-01-22 07:39:24.493519'),
(20, 'org', '0003_auto_20210109_1724', '2021-01-22 07:39:24.508414'),
(21, 'org', '0004_auto_20210109_1724', '2021-01-22 07:39:24.522788'),
(22, 'org', '0005_delete_participate', '2021-01-22 07:39:24.527375'),
(23, 'org', '0006_designation', '2021-01-22 07:39:24.772287'),
(24, 'org', '0007_auto_20210111_2037', '2021-01-22 07:39:24.787131'),
(25, 'org', '0008_auto_20210122_1339', '2021-01-22 07:39:24.792954'),
(26, 'sessions', '0001_initial', '2021-01-22 07:39:25.039799'),
(27, 'org', '0009_auto_20210124_1257', '2021-01-24 06:57:45.081172'),
(28, 'org', '0010_auto_20210129_1223', '2021-01-29 06:23:23.763937'),
(29, 'org', '0011_auto_20210129_1225', '2021-01-29 06:26:00.581622');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1idx91pcgaiurqbuv39te0fgr2ob1s7y', '.eJxVjDsOwjAQBe_iGlleZZ3YlPScwdqPjQMokeKkQtwdIqWA9s3Me5lE21rT1vKSRjVnA86cfkcmeeRpJ3qn6TZbmad1Gdnuij1os9dZ8_NyuH8HlVr91szQkXMgikU5FlTFXgKwR2ZB38WS0QfoXEDJzC7SwCJAoYfBx2jeHyXkOIY:1l3MYT:utvZuG3oTJIT4rFJkY4fH8SMujg6lBANURP3JHbgwwQ', '2021-02-06 17:18:33.268598'),
('28qzheu7m7f65wafstp2g5qhdyfxsgw6', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k1d2ItOTVjYTkyMDQ0Y2FjMWZkMmRhZjMwMzIzOTMxZTlmNTAifQ:1l3KiQ:lyz-9n7wirZ63PYnDnNzEADACbn2U9BwpVjUhdkB9wc', '2021-02-06 15:20:42.268638'),
('4e8uahd1b06vx38bneqjnize0su3kl65', '.eJxVjDsOwjAQBe_iGllxnNhrSnrOED3vrkkAJVI-FeLuECkFtG9m3st02Na-2xadu0HM2ZA5_W4Z_NBxB3LHeJssT-M6D9nuij3oYq-T6PNyuH8HPZb-W1ce3IARYyuSlKj2Vco1gm80OKRalB0lKCDkc-FSWB0hhuJal8m8PwN4OPc:1l3LPB:cbepNznpaaJrbuhfxCHJJaaui8vGlXXMr-5FB58abYU', '2021-02-06 16:04:53.676980'),
('4jmtr1mmwntjex52ibr0inyf75emnsfn', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k1aXUtMDNlNmJhOTU5YzU3ZmQzMTViZmYwNzM2OTRmMTdmNWIifQ:1l3Kaa:3OxbpXZqCEpSYp55FTL-muhbQzymi6v5pw0FtFTRRhg', '2021-02-06 15:12:36.772319'),
('5bwscjkrkf7g8066tsguzcrgculifpjz', '.eJxVjEEOwiAQRe_C2hBoB-i4dO8ZyMAMtmpoUtqV8e7apAvd_vfef6lI2zrGrckSJ1ZnBer0uyXKD6k74DvV26zzXNdlSnpX9EGbvs4sz8vh_h2M1MZvLUX6knq2LmPoLIsTh5QD9OIRDNmOgIygBxkYOzCYSAoG8F4G61i9P_unOBk:1l2rdT:GMJka1Fo-9xJqta8w75igxwLL9LUSNum9D71Kn9w9cs', '2021-02-05 08:17:39.709052'),
('61w32zqqcm50kpl3p85kxdq8osvzqdi8', '.eJxVjM0OwiAQhN-FsyFh-Sl69O4zkIVdpGogKe3J-O7SpAfN3Ob7Zt4i4LaWsHVewkziIpQSp98yYnpy3Qk9sN6bTK2uyxzlrsiDdnlrxK_r4f4dFOxlrCcdvTeaI6kRAzlpShE9OADOpIzyE1sAYxwigAUzMGt7Bswqaic-Xw7OOBs:1l3eGT:2WLkP6UpNmPCFjyX856lNQdV5IpZD0CqhYnW3vCDLcc', '2021-02-07 12:13:09.557469'),
('63hca3xa6oppo57q8oxirm5min058tk5', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k3dHUtNGMwZDMxMzY5ZDQ0MmJhZjAzNGJjMzVhMTA4MGZmNmUifQ:1l3LMW:iavsxZemE0eBIieEmFM7sN0P95z0RgCUWa9dq0FMTAU', '2021-02-06 16:02:08.183933'),
('97z439j6ksjx7d070mqiwrc2r9jbh5em', '.eJxVjMEOwiAQRP-FsyFQWECP3v0GsrBbqRpISnsy_rtt0oNe5jDvzbxFxHUpce08x4nERYA4_XYJ85PrDuiB9d5kbnWZpyR3RR60y1sjfl0P9--gYC_b2uJIRg1GATOBD1pbMJ5YqazIkVOQAdCGEOwWCbSxZxqcZ5sSoR_F5wvIGTdF:1l2seG:I7UCLk-_oAhIWdmUgtx33IdEA4ibKThRaR0ulttf6cg', '2021-02-05 09:22:32.693995'),
('9hsiqwj881fjzbxddgkswhuzsa0usrej', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3lrbjctOWUzNGNmODlmMTRlMjU1N2RmMjQyYzAwYmQ5MjYzMTIifQ:1l3Pft:aSpTiOUMG3zlIhMPOsYVh420UCQBtIyPHxfbc5O8TLI', '2021-02-06 20:38:25.274759'),
('a6vpr7gucbdoe45bx1l8pmu8gxste59m', '.eJxVjDEOwjAMRe-SGUWJcFqHkZ0zRLbjkAJqpaadKu4OlTrA-t97fzOJ1qWmtemchmwuxpvT78YkTx13kB803icr07jMA9tdsQdt9jZlfV0P9--gUqvfOnhHEDJkdOKUkVFDD4URGDzErhSUTjxSod6doUQVwRAyRS6kMZj3B-v6OKU:1l5NGh:1TNRVwvxZomN3hRPhbBwPNw-mjaiTE246LLoEhBPZcE', '2021-02-12 06:28:31.339678'),
('aks80urzlnaidj44bty25jry6ssuno6x', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k2anAtNWU5ZDM1OGQ3OTY3MDJiYzE3N2ZmYzQxNzYyODY5ZWYifQ:1l3KvN:DeLhUXJVBuOUlCbore6uqKKDiOwNXXe5hpFcaKgwX9I', '2021-02-06 15:34:05.185624'),
('c1iifb2qvmjpj2ea4sbxvu5apuu1zrbv', '.eJxVjEsOwjAMBe-SNVRJ67QOS_acIbJjh_JRA00RC8TdKRIbtm9m3svEG9X6LLPEWasucSkXnczO0IjXcN9CR9IrDS2LB2vRcW4hUM8OqG2zmI2J9FjG-Kg6x5OspfvfmNL6-AVypulYmlSmZT5x81WaH63NoYhe9z_372CkOq61d5bACwjaZJWRUf0AmREYHIQ-Z0x9ckiZBttBDpoSei8UOJMGb94f6c1NiA:1l5NGD:ymBWcvBvj1k1gpt7ESK452NdNFJVuYuyBkONKjQEF9U', '2021-02-12 06:28:01.053651'),
('drcctyp30vaqzjpj2hpn61mg3w64i64r', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k1aXUtMDNlNmJhOTU5YzU3ZmQzMTViZmYwNzM2OTRmMTdmNWIifQ:1l3KbM:38Yy6AfJMMZ2nAeUkTEwqV9Iahe2p5GHHk_rNug67Vk', '2021-02-06 15:13:24.910324'),
('e46pg9vc4keqygkw2xky5jj8fxgbgftu', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k3dHUtNGMwZDMxMzY5ZDQ0MmJhZjAzNGJjMzVhMTA4MGZmNmUifQ:1l3LNl:lN4M61KZVLmGJ1xf91QUldaEgl56pdbK-RI-G4uorBQ', '2021-02-06 16:03:25.601143'),
('e4lfkjxq2fdwu1cxtz751f0dersbgbx3', '.eJxVjEEOwiAQRe_C2hCm4kBduvcMZAYGqRpISrsy3l2bdKHb_977LxVoXUpYu8xhSuqsBnX43ZjiQ-oG0p3qrenY6jJPrDdF77Tra0vyvOzu30GhXr61AwRLVigDWjSZgdhjJjDR-ciOCGG0lD0nb2WEwZrE6SgG2QnhSb0_60o4UQ:1l2raI:J-IvxIhSQ4Gwa1xC-23Qa5C3LIhN0mgnGBgEnvBxpbg', '2021-02-05 08:14:22.957424'),
('een1znqfuuz726jk9hh1g7hy7qkup6ii', '.eJxVjEEOwiAQRe_C2hBgCoJL9z0Dmc6AVA0kpV0Z765NutDtf-_9l4i4rSVuPS1xZnERQZx-twnpkeoO-I711iS1ui7zJHdFHrTLsXF6Xg_376BgL98aTM5Ayhnr2QQeIHskztY55ZPTTjOytkxMIUGAQQOTQnJgzww5K_H-AOzcODg:1l3Ljk:6DsHLvg5bM5RkDyLgyN4NtSk7Tv3QImiytbu1ENNro0', '2021-02-06 16:26:08.338532'),
('g16qs4qnr9hasswk8zvv8eb8eyfhz3sy', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3pvMm8tNjY2OWI1MmQ3OGFkYTc1NjM0ODU1Y2I5MjFlOWYwNDkifQ:1l3cy3:PAgnFj8ZxDYvJT0ZYxZulm1oxgJoyIHWdSorCErDHq4', '2021-02-07 10:50:03.504617'),
('gd7os4toaur9divaoe0xwfdf9xhzygin', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k3dHUtNGMwZDMxMzY5ZDQ0MmJhZjAzNGJjMzVhMTA4MGZmNmUifQ:1l3LNK:3wkoV70AQ-ZLdA7p294fAAZ2HqJj-ckS7kdH_h4MznM', '2021-02-06 16:02:58.505542'),
('gyrvcgrf1dz98wjrzunyt2v83ujd52ds', '.eJxVjMtuwjAQRf_F6zaywY9xl933G6zxPAi0ilEchBDi3xukbLK955z7NOWKvd_bzGWWLktZ2q9M5svg6REv188gmY8BOOWY7KGSS0mVvEvxADGLmg9T8LaM5dZlLmdeS7ffKtL6-AZ8wenUBmrTMp_r8FaGjfbhp7H8fW_u7mDEPq51cBZ9YM9gyUqFChKS1wq-eudzVAWK5AAVkz16zUIEITDmqig5mNc_1elNaA:1l3KxY:QJLyqiRZPs0TmM7Ax9RANSSuY_sOu9ELnWxRYI3o_ho', '2021-02-06 15:36:20.327277'),
('kg1nwo72x2n4p9zaghm4blnyigc46x2y', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k1d2ItOTVjYTkyMDQ0Y2FjMWZkMmRhZjMwMzIzOTMxZTlmNTAifQ:1l3KiX:2CfEY-0LCSy4sosqN9-606-Ksh5uNEFxZfIDkNeOe20', '2021-02-06 15:20:49.847072'),
('kz7orb65p69l0c5f4cl00ktdn48sd3w5', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k1aXUtMDNlNmJhOTU5YzU3ZmQzMTViZmYwNzM2OTRmMTdmNWIifQ:1l3KaH:X1GyItTWyPElT-b7Rc2QrGQmj4FsN6eJL1biezM_-tM', '2021-02-06 15:12:17.975068'),
('l5jrynsuaqsbx6bo1c35btr840l9231e', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k2anAtNWU5ZDM1OGQ3OTY3MDJiYzE3N2ZmYzQxNzYyODY5ZWYifQ:1l3Kwn:FvbCA8DoHNWvFuqBDfQLQOg1OHH0ft5_1nnRyxL9hzA', '2021-02-06 15:35:33.135291'),
('lgn6d5hmlj5sy6lyj4r8dj2ksgpaegog', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3puc2ktNGE3OGZkZjdlNGZjNWNmODM4ZDdlMTA2YTUzNjFlNWEifQ:1l3csE:rMroZHRK-1bpz9W3NIZKGjh90Zrxn637j6aqukurdEw', '2021-02-07 10:44:02.621240'),
('myvnpz7gyx87cs23jrjhvaiof7jd5253', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k1aXUtMDNlNmJhOTU5YzU3ZmQzMTViZmYwNzM2OTRmMTdmNWIifQ:1l3KgC:etmS0fovrzoq5rE2EnNlCaMY5Hi2ULNw2UOb-iD3Dtw', '2021-02-06 15:18:24.303249'),
('n6vfz7fgcema2p6xumrcoyl0si6lzlym', '.eJxVjDsOwjAQBe_iGln-xbumpM8ZrPUPB5AjxUmFuDuJlALaNzPvzTxta_Vbz4ufErsyYJffLVB85naA9KB2n3mc27pMgR8KP2nn45zy63a6fweVet1rZ4GcVKiUQQAtBg0ioJCQaCemYJSIwQwkNUQsWWkyOllnMUttXWGfL6E8NnI:1l3MFR:PJ7tgkr37aOqk9q06N_OtIAqlLha3TGKcMURNFZxxZ0', '2021-02-06 16:58:53.769141'),
('ng7tqtg6iokc2e4qyqp8z6rcec8lzyyb', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k2N3AtNzU1ZDJkYjMxM2NmZDdmMDI5Y2IxZjhjMTg3NzQxMjUifQ:1l3KrG:78TLRT6rIKti9WhJBIYVV2-xktRmAj_Z-_gddb7I7SI', '2021-02-06 15:29:50.191444'),
('nmqqq4k8jlw427ur167f627nm715x7rg', '.eJxVjEEOwiAQRe_C2hAoDCUu3XsGwjCDVA0kpV013t026UK3773_NxHiupSwdp7DROIqnLj8MozpxfUQ9Iz10WRqdZknlEciT9vlvRG_b2f7d1BiL_t6BMraJ41M4EkrzYlhUBl3bllbNMQ2WnCGwNnoxzRYIlQMJntjnPh8AQLbOF4:1l2yUR:-kAqVUHCM7gBMBxoaXfHynuaqAdGhRdAcjsZbanYv44', '2021-02-05 15:36:47.902671'),
('nqxnsuj3s4nel1jlpr19t0vcu78ygcqq', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k1aXUtMDNlNmJhOTU5YzU3ZmQzMTViZmYwNzM2OTRmMTdmNWIifQ:1l3KaF:jhBUncO6Be3_rE8NOgbXbwgpv5IkfJhPeDPEOCG5kvM', '2021-02-06 15:12:15.937917'),
('t710yogp741o75ndgclahyk6o2wgw9x2', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k1aXUtMDNlNmJhOTU5YzU3ZmQzMTViZmYwNzM2OTRmMTdmNWIifQ:1l3Kal:L1XMnUou-Yr0nRwGAMrYfuKY0syd_iFAQlcBoCiV-rU', '2021-02-06 15:12:47.095127'),
('tn16wukh2xltkj4o73dis9m9w2c8e0xx', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3pvMm8tNjY2OWI1MmQ3OGFkYTc1NjM0ODU1Y2I5MjFlOWYwNDkifQ:1l3cy3:PAgnFj8ZxDYvJT0ZYxZulm1oxgJoyIHWdSorCErDHq4', '2021-02-07 10:50:03.413135'),
('x70nezg8ujdyp5a7tmx2jd65uks6gdrs', '.eJxVjMsOwiAQRf-FtSHQaXm4dO83EJgZpGogKe3K-O_apAvd3nPOfYkQt7WErfMSZhJnoUGcfscU8cF1J3SP9dYktrouc5K7Ig_a5bURPy-H-3dQYi_fWsHEnvJkBh50UtkCJsPeRbRZeTYevCNnkHjMYJ0dEcEqVJ40aB2deH8ACy437g:1l41o1:gRAkvu-7IENITrJwh3CVYS7OriE3GGfSZMAlIXZSX6Q', '2021-02-08 13:21:21.731922'),
('y1jdv4udx0fet7hvjr1jxp67q6qdnwtk', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3lrbjctOWUzNGNmODlmMTRlMjU1N2RmMjQyYzAwYmQ5MjYzMTIifQ:1l3Pft:aSpTiOUMG3zlIhMPOsYVh420UCQBtIyPHxfbc5O8TLI', '2021-02-06 20:38:25.216452'),
('z1xljx6rodzu4sg50nmjua5hs1iamgnk', '.eJxVjEEOwiAQAP_C2RAWykI9evcNBFiQqoGktCfj35WkB73OTObFnN-34vaeVrcQOzOQ7PQLg4-PVIehu6-3xmOr27oEPhJ-2M6vjdLzcrR_g-J7GV-rSAFlC9kg6KANEEoPFueAQpJQWURrlVao4Yu0QcpiMibOavKE7P0B2KA2wQ:1l3kTs:bUQfab7cvZEeiXNJ7iOq4hOTm3sSuX_fFgIWfkMlxis', '2021-02-07 18:51:24.871046'),
('zi0jt7sm5ui8sklsrodav75cb0pihdzp', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZ3k2N3AtNzU1ZDJkYjMxM2NmZDdmMDI5Y2IxZjhjMTg3NzQxMjUifQ:1l3KtX:sCSj_DxshW-92VTFU1BcCz6EN4x6aJqS3pPRttw5X_w', '2021-02-06 15:32:11.537622');

-- --------------------------------------------------------

--
-- Table structure for table `org_about`
--

CREATE TABLE `org_about` (
  `id` int(11) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `active_session` varchar(100) DEFAULT NULL,
  `designation_priority` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_about`
--

INSERT INTO `org_about` (`id`, `designation`, `active_session`, `designation_priority`, `user_id`) VALUES
(1, 'President ', '2020-2021', 1, 4),
(2, 'Director of IT Segment', '2020-2021', 5, 1),
(5, 'Co-director of IT Segment ', '2020-2021', 8, 9),
(7, 'Treasurer ', '2020-2021', 4, 7),
(9, 'Director of Language Segment ', '2020-2021', 5, 10),
(11, 'Publication Secretary', '2020-2021', 10, 8),
(12, 'Co-director of IT Segment ', '2020-2021', 8, 11),
(13, 'Office Secretary', '2020-2021', 9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `org_carousel`
--

CREATE TABLE `org_carousel` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_carousel`
--

INSERT INTO `org_carousel` (`id`, `image`, `image_name`, `date`, `status`) VALUES
(1, 'carousel/21.01/20200120155955_IMG_2713.JPG', 'Career Development Workshop', '2021-01-22 08:48:11.648877', 1),
(2, 'carousel/21.01/20200109171355_IMG_2665.JPG', 'U', '2021-01-22 09:26:00.063714', 1),
(3, 'carousel/21.01/20200120161128_IMG_2733.JPG', 'J', '2021-01-22 09:27:50.680266', 1),
(4, 'carousel/21.01/IMG_20200227_173738.jpg', 'Y', '2021-01-22 09:31:48.379935', 0),
(5, 'carousel/21.01/IMG_20200227_173729.jpg', 'Y', '2021-01-22 09:33:04.836453', 1);

-- --------------------------------------------------------

--
-- Table structure for table `org_contactus`
--

CREATE TABLE `org_contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `comment` longtext NOT NULL,
  `visited` tinyint(1) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_contactus`
--

INSERT INTO `org_contactus` (`id`, `name`, `email`, `phone`, `comment`, `visited`, `date`) VALUES
(1, 'MD. Abdur Rakib', 'abdurrakibnobel@gmail.com', '01787201460', 'wonderful ', 0, '2021-01-24 18:50:01.592330'),
(2, 'Abu Dawod Rahman', 'abudawod4@gmail.com', '+8801755273417', 'hiii', 0, '2021-01-25 06:59:13.917460'),
(3, 'Eric Jones', 'ericjonesonline@outlook.com', '555-555-1212', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - kucareerclub.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across kucareerclub.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=kucareerclub.com\r\n', 0, '2021-01-29 03:00:48.188001');

-- --------------------------------------------------------

--
-- Table structure for table `org_designation`
--

CREATE TABLE `org_designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_designation`
--

INSERT INTO `org_designation` (`id`, `designation`, `priority`) VALUES
(1, 'President ', 1),
(2, 'Vice-president ', 2),
(3, 'General Secretary ', 3),
(4, 'Treasurer ', 4),
(5, 'Director of IT Segment', 5),
(6, 'Director of Scholar Segment ', 5),
(7, 'Director of Governor Segment ', 5),
(8, 'Director of Language Segment ', 5),
(9, 'Joint Secretary ', 6),
(10, 'Co-director of Language Segment ', 8),
(11, 'Co-director of IT Segment ', 8),
(12, 'Co-director of Governor Segment ', 8),
(13, 'Co-director of Scholar Segment ', 8),
(14, 'Organizing Secretary', 7),
(15, 'Office Secretary', 9),
(16, 'Publication Secretary', 10);

-- --------------------------------------------------------

--
-- Table structure for table `org_donation`
--

CREATE TABLE `org_donation` (
  `id` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `transaction` varchar(500) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `org_event`
--

CREATE TABLE `org_event` (
  `id` int(11) NOT NULL,
  `event_type` varchar(100) DEFAULT NULL,
  `event_location` varchar(500) DEFAULT NULL,
  `event_platform` varchar(100) DEFAULT NULL,
  `target_amount` int(11) DEFAULT NULL,
  `current_amount` int(11) DEFAULT NULL,
  `online_event_link` varchar(1000) DEFAULT NULL,
  `event_name` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `participation_fee` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `facebook_link` varchar(200) DEFAULT NULL,
  `youtube_link` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `contact_number` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `org_fee`
--

CREATE TABLE `org_fee` (
  `id` int(11) NOT NULL,
  `feetype` varchar(100) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `txnid` varchar(100) DEFAULT NULL,
  `recived` tinyint(1) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `depositdate` datetime(6) NOT NULL,
  `member_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `org_fund`
--

CREATE TABLE `org_fund` (
  `id` int(11) NOT NULL,
  `current_balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_fund`
--

INSERT INTO `org_fund` (`id`, `current_balance`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `org_notice`
--

CREATE TABLE `org_notice` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `text` varchar(20000) NOT NULL,
  `date` datetime(6) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `registration_link` varchar(200) DEFAULT NULL,
  `facebook_link` varchar(200) DEFAULT NULL,
  `youtube_link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `org_photogallery`
--

CREATE TABLE `org_photogallery` (
  `id` int(11) NOT NULL,
  `image_caption` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `home_visibility_status` tinyint(1) NOT NULL,
  `category` varchar(100) NOT NULL,
  `category_visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `org_profile`
--

CREATE TABLE `org_profile` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `university_or_institute` varchar(200) DEFAULT NULL,
  `discipline` varchar(200) DEFAULT NULL,
  `batch` varchar(200) DEFAULT NULL,
  `student_id` varchar(200) DEFAULT NULL,
  `blood_group` varchar(200) DEFAULT NULL,
  `contact_number` varchar(200) DEFAULT NULL,
  `profession` varchar(200) DEFAULT NULL,
  `hometown` varchar(200) DEFAULT NULL,
  `current_city` varchar(200) DEFAULT NULL,
  `fb_link` varchar(200) DEFAULT NULL,
  `linkedin` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_profile`
--

INSERT INTO `org_profile` (`id`, `full_name`, `image`, `university_or_institute`, `discipline`, `batch`, `student_id`, `blood_group`, `contact_number`, `profession`, `hometown`, `current_city`, `fb_link`, `linkedin`, `user_id`) VALUES
(1, 'Md. Abu Dawod Rahman', 'users/21.01/IMG_20200925_123312.jpg', 'Khulna University', 'Computer Science & Engineering Discipline', '18 Batch', '180216', 'B+', '01755273417', 'Student', '', 'baghabari ', 'https://facebook.com/abu.dawod.rahman', 'https://www.linkedin.com/in/abudawod/', 1),
(4, 'Md. Rakibur Rahman Tamim', 'users/21.01/120220104_360289748676204_7707700603322468062_n.jpg', 'Khulna University ', 'Mass Communication and Journalism Discipline', '18', '182602', 'B+', '', '', '', '', 'https://facebook.com/mrrtamimbd', 'https://linkedin.com/mrrtamimbd', 4),
(6, 'Salauddin Tapu', 'users/21.01/73495107_2328355844047919_6464972240671735808_o.jpg', 'Khulna University', 'Electronics & Communication Engineering', '18', '180923', 'A+', '01730869549', 'Student', 'Malibag, Dhaka', 'Bangabandhu Hall, Khulna University', 'https://www.facebook.com/su.tapu', 'https://www.linkedin.com/in/salauddin-tapu-7a53401b1/', 6),
(7, 'Md.Waliul Islam Kafi', 'users/21.01/74605577_2516114112002998_2633951125916614656_o_4.jpg', 'Khulna University ', 'Forestry and Wood Technology ', '18', '180520', 'B+', '01521422734', 'Student ', 'Ullapara, Sirajganj ', 'Khan Bahadhur Ahsanullah Hall ', 'https://www.facebook.com/waliul.islamkafi', 'https://www.linkedin.com/in/md-waliul-islam-kafi-bb402a179', 7),
(8, 'MD. AL ASIF ANIK', 'users/21.01/inbound1547002485980688929.jpg', 'Khulna University ', 'Mass Communication and Journalism ', '18', '182611', 'O+', '01521115267', 'Student', 'Village: Chandpur, Post: Noongola, Bogura Sadar, Bogura', 'Muktijoddha Chattrabash, Islamnagar road, Gollamari, Khulna', 'https://www.facebook.com/asif.anik.14', 'https://www.linkedin.com/in/sm-asif-anik-5bb9751b7', 8),
(9, 'Moniruzzaman', 'users/21.01/asd.jpg', 'Khulna University', 'Computer Science and Engineering', '2019', '190231', 'B+', '01762052126', 'Student', 'Ashrom road, jashore-7400.', 'Bangabandhu hall, Room No-418', 'https://www.facebook.com/monir.31.khan/', 'https://www.linkedin.com/in/moniruzzaman31/', 9),
(10, 'Tahsin Tabassum Tasin', 'users/21.01/inbound3527264208093859139.jpg', 'Khulna University', 'Mass Communication and Journalism', '18', '182624', 'B+', '01716821233', 'Student', 'Sonadanga Residential Area', 'Sonadanga Residential Area', 'https://www.facebook.com/tahsin.tabassumtasin', '', 10),
(11, 'Tanmoy Sarkar', 'avatar.png', 'Khulna University', 'Pharmacy', '18', '181130', 'O+', '01925219166', 'Student', 'Satkhita', 'khulna university', 'http://www.facebook.com/skrtanmoy', '', 11),
(12, 'Fozlay Rabby', 'users/21.01/fozlay_Rabby.JPG', 'Khulna University', 'Forestry and Wood Technology', '18', '180547', 'B+', '01718119202', 'Student', 'Tarakandi, Sharisabari, jamalpur', 'Tarakandi, Sharisabari, jamalpur', 'https://www.facebook.com/fozlayrabby47/', 'https://www.linkedin.com/in/fozlayrabby47/', 12),
(13, 'sourovzx39@gmail.com', 'avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13);

-- --------------------------------------------------------

--
-- Table structure for table `org_resource`
--

CREATE TABLE `org_resource` (
  `id` int(11) NOT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `file_cover_photo` varchar(100) DEFAULT NULL,
  `file_type` varchar(100) NOT NULL,
  `file_drive_link` varchar(5000) DEFAULT NULL,
  `file_youtube_link` varchar(5000) DEFAULT NULL,
  `file_tag` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_resource`
--

INSERT INTO `org_resource` (`id`, `file_name`, `file`, `file_cover_photo`, `file_type`, `file_drive_link`, `file_youtube_link`, `file_tag`) VALUES
(2, 'Joddopi Amar Guru', '', 'resource/21.01/Screenshot_464_8WRygsd.png', 'PDF', 'https://drive.google.com/file/d/1JTnKNLSUbAa8AHJ5f875h_0ra5t8gyYw/view?usp=sharing', '', 'Bangla'),
(3, 'Osomapto Attojiboni', '', 'resource/21.01/Screenshot_465.png', 'PDF', 'https://drive.google.com/file/d/1CeYkwkidc2yX-WM4aggVhtCYCfpCc0SO/view?usp=sharing', '', 'Bangla'),
(4, 'Maa', '', 'resource/21.01/Screenshot_466.png', 'PDF', 'https://drive.google.com/file/d/1F50T7FPFriuLWV_32fMDRd10HjPvhNxI/view?usp=sharing', '', 'Bangla'),
(5, 'A Golden Age', '', 'resource/21.01/Screenshot_467.png', 'PDF', 'https://drive.google.com/file/d/10ygXTntLT2Q3QR1iyhwql4Cob3cCtGBo/view?usp=sharing', '', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `org_settings`
--

CREATE TABLE `org_settings` (
  `id` int(11) NOT NULL,
  `org_full_name` varchar(100) DEFAULT NULL,
  `org_nickname` varchar(100) DEFAULT NULL,
  `org_mail` varchar(254) DEFAULT NULL,
  `org_institution` varchar(100) DEFAULT NULL,
  `org_fb_link` varchar(500) DEFAULT NULL,
  `org_linkedin_link` varchar(500) DEFAULT NULL,
  `org_youtube_link` varchar(500) DEFAULT NULL,
  `org_icon_image` varchar(100) DEFAULT NULL,
  `org_location` varchar(1000) DEFAULT NULL,
  `org_contact_number` varchar(20) DEFAULT NULL,
  `org_homepage_description` longtext DEFAULT NULL,
  `org_map_location` varchar(5000) DEFAULT NULL,
  `org_active_session` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_settings`
--

INSERT INTO `org_settings` (`id`, `org_full_name`, `org_nickname`, `org_mail`, `org_institution`, `org_fb_link`, `org_linkedin_link`, `org_youtube_link`, `org_icon_image`, `org_location`, `org_contact_number`, `org_homepage_description`, `org_map_location`, `org_active_session`) VALUES
(1, 'Khulna University Career Club', 'KUCC', 'kuccofficial@gmail.com', 'Khulna University', 'https://facebook.com/kuccofficial', 'https://www.linkedin.com/company/kuccofficial', 'https://www.youtube.com/channel/UCwQokSu2wMnd8uQ9PwdyxZg', 'settings/01.21/KUCC_logo_lZjhPkh.png', 'Khulna', '+8801766119230', 'Khulna University Career Club (KUCC) has been established for the students of Khulna University (KU), to encourage their excellence & co-curricular activities to facilitate their career paths as well as develop students\' experiences both on and off the classroom. \r\nThe founding day is October 14, 2019.\r\nSince the journey of KUCC has begun, is focused on the development of student’s careers and so on. We have segmented our club so that the students can meet the vast requirements of the modern era. It has set its vision to reveal the students of KU as a competent and qualified product in Bangladesh. And its mission is to ensure the professional skills, academic qualifications & personal advancement of the students of KU by arranging different events & programs.\r\n...\r\n\r\n\r\nMotto: Intensify Your Ability Towards Destination', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1591.7246427027337!2d89.53406252659816!3d22.80221967975987!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1608746889184!5m2!1sen!2sbd', '2020-2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `org_about`
--
ALTER TABLE `org_about`
  ADD PRIMARY KEY (`id`),
  ADD KEY `org_about_user_id_da8c3ae0_fk_org_profile_id` (`user_id`);

--
-- Indexes for table `org_carousel`
--
ALTER TABLE `org_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_contactus`
--
ALTER TABLE `org_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_designation`
--
ALTER TABLE `org_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_donation`
--
ALTER TABLE `org_donation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `org_donation_event_id_7068f2ee_fk_org_event_id` (`event_id`),
  ADD KEY `org_donation_user_id_d6d8e887_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `org_event`
--
ALTER TABLE `org_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_fee`
--
ALTER TABLE `org_fee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `org_fee_member_id_cbe76ed3_fk_org_profile_id` (`member_id`);

--
-- Indexes for table `org_fund`
--
ALTER TABLE `org_fund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_notice`
--
ALTER TABLE `org_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_photogallery`
--
ALTER TABLE `org_photogallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_profile`
--
ALTER TABLE `org_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `org_resource`
--
ALTER TABLE `org_resource`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_settings`
--
ALTER TABLE `org_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `org_about`
--
ALTER TABLE `org_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `org_carousel`
--
ALTER TABLE `org_carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `org_contactus`
--
ALTER TABLE `org_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `org_designation`
--
ALTER TABLE `org_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `org_donation`
--
ALTER TABLE `org_donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `org_event`
--
ALTER TABLE `org_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `org_fee`
--
ALTER TABLE `org_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `org_fund`
--
ALTER TABLE `org_fund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `org_notice`
--
ALTER TABLE `org_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `org_photogallery`
--
ALTER TABLE `org_photogallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `org_profile`
--
ALTER TABLE `org_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `org_resource`
--
ALTER TABLE `org_resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `org_settings`
--
ALTER TABLE `org_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `org_about`
--
ALTER TABLE `org_about`
  ADD CONSTRAINT `org_about_user_id_da8c3ae0_fk_org_profile_id` FOREIGN KEY (`user_id`) REFERENCES `org_profile` (`id`);

--
-- Constraints for table `org_donation`
--
ALTER TABLE `org_donation`
  ADD CONSTRAINT `org_donation_event_id_7068f2ee_fk_org_event_id` FOREIGN KEY (`event_id`) REFERENCES `org_event` (`id`),
  ADD CONSTRAINT `org_donation_user_id_d6d8e887_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `org_fee`
--
ALTER TABLE `org_fee`
  ADD CONSTRAINT `org_fee_member_id_cbe76ed3_fk_org_profile_id` FOREIGN KEY (`member_id`) REFERENCES `org_profile` (`id`);

--
-- Constraints for table `org_profile`
--
ALTER TABLE `org_profile`
  ADD CONSTRAINT `org_profile_user_id_97dcd3bf_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
