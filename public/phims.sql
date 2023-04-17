-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2020 at 04:40 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phims`
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
(25, 'Can add tbl_login', 7, 'add_tbl_login'),
(26, 'Can change tbl_login', 7, 'change_tbl_login'),
(27, 'Can delete tbl_login', 7, 'delete_tbl_login'),
(28, 'Can view tbl_login', 7, 'view_tbl_login'),
(29, 'Can add tbl_complaints', 8, 'add_tbl_complaints'),
(30, 'Can change tbl_complaints', 8, 'change_tbl_complaints'),
(31, 'Can delete tbl_complaints', 8, 'delete_tbl_complaints'),
(32, 'Can view tbl_complaints', 8, 'view_tbl_complaints'),
(33, 'Can add tbl_diagnosis', 9, 'add_tbl_diagnosis'),
(34, 'Can change tbl_diagnosis', 9, 'change_tbl_diagnosis'),
(35, 'Can delete tbl_diagnosis', 9, 'delete_tbl_diagnosis'),
(36, 'Can view tbl_diagnosis', 9, 'view_tbl_diagnosis'),
(37, 'Can add tbl_hos_cat', 10, 'add_tbl_hos_cat'),
(38, 'Can change tbl_hos_cat', 10, 'change_tbl_hos_cat'),
(39, 'Can delete tbl_hos_cat', 10, 'delete_tbl_hos_cat'),
(40, 'Can view tbl_hos_cat', 10, 'view_tbl_hos_cat'),
(41, 'Can add tbl_hos_man', 11, 'add_tbl_hos_man'),
(42, 'Can change tbl_hos_man', 11, 'change_tbl_hos_man'),
(43, 'Can delete tbl_hos_man', 11, 'delete_tbl_hos_man'),
(44, 'Can view tbl_hos_man', 11, 'view_tbl_hos_man'),
(45, 'Can add tbl_lab', 12, 'add_tbl_lab'),
(46, 'Can change tbl_lab', 12, 'change_tbl_lab'),
(47, 'Can delete tbl_lab', 12, 'delete_tbl_lab'),
(48, 'Can view tbl_lab', 12, 'view_tbl_lab'),
(49, 'Can add tbl_lab_test_request', 13, 'add_tbl_lab_test_request'),
(50, 'Can change tbl_lab_test_request', 13, 'change_tbl_lab_test_request'),
(51, 'Can delete tbl_lab_test_request', 13, 'delete_tbl_lab_test_request'),
(52, 'Can view tbl_lab_test_request', 13, 'view_tbl_lab_test_request'),
(53, 'Can add tbl_lab_test_result', 14, 'add_tbl_lab_test_result'),
(54, 'Can change tbl_lab_test_result', 14, 'change_tbl_lab_test_result'),
(55, 'Can delete tbl_lab_test_result', 14, 'delete_tbl_lab_test_result'),
(56, 'Can view tbl_lab_test_result', 14, 'view_tbl_lab_test_result'),
(57, 'Can add tbl_messages', 15, 'add_tbl_messages'),
(58, 'Can change tbl_messages', 15, 'change_tbl_messages'),
(59, 'Can delete tbl_messages', 15, 'delete_tbl_messages'),
(60, 'Can view tbl_messages', 15, 'view_tbl_messages'),
(61, 'Can add tbl_notification', 16, 'add_tbl_notification'),
(62, 'Can change tbl_notification', 16, 'change_tbl_notification'),
(63, 'Can delete tbl_notification', 16, 'delete_tbl_notification'),
(64, 'Can view tbl_notification', 16, 'view_tbl_notification'),
(65, 'Can add tbl_opticket', 17, 'add_tbl_opticket'),
(66, 'Can change tbl_opticket', 17, 'change_tbl_opticket'),
(67, 'Can delete tbl_opticket', 17, 'delete_tbl_opticket'),
(68, 'Can view tbl_opticket', 17, 'view_tbl_opticket'),
(69, 'Can add tbl_patient', 18, 'add_tbl_patient'),
(70, 'Can change tbl_patient', 18, 'change_tbl_patient'),
(71, 'Can delete tbl_patient', 18, 'delete_tbl_patient'),
(72, 'Can view tbl_patient', 18, 'view_tbl_patient'),
(73, 'Can add tbl_referral', 19, 'add_tbl_referral'),
(74, 'Can change tbl_referral', 19, 'change_tbl_referral'),
(75, 'Can delete tbl_referral', 19, 'delete_tbl_referral'),
(76, 'Can view tbl_referral', 19, 'view_tbl_referral'),
(77, 'Can add tbl_staff', 20, 'add_tbl_staff'),
(78, 'Can change tbl_staff', 20, 'change_tbl_staff'),
(79, 'Can delete tbl_staff', 20, 'delete_tbl_staff'),
(80, 'Can view tbl_staff', 20, 'view_tbl_staff'),
(81, 'Can add tbl_treatment', 21, 'add_tbl_treatment'),
(82, 'Can change tbl_treatment', 21, 'change_tbl_treatment'),
(83, 'Can delete tbl_treatment', 21, 'delete_tbl_treatment'),
(84, 'Can view tbl_treatment', 21, 'view_tbl_treatment'),
(85, 'Can add tbl_mcpatient', 22, 'add_tbl_mcpatient'),
(86, 'Can change tbl_mcpatient', 22, 'change_tbl_mcpatient'),
(87, 'Can delete tbl_mcpatient', 22, 'delete_tbl_mcpatient'),
(88, 'Can view tbl_mcpatient', 22, 'view_tbl_mcpatient');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(8, 'health', 'tbl_complaints'),
(9, 'health', 'tbl_diagnosis'),
(10, 'health', 'tbl_hos_cat'),
(11, 'health', 'tbl_hos_man'),
(12, 'health', 'tbl_lab'),
(13, 'health', 'tbl_lab_test_request'),
(14, 'health', 'tbl_lab_test_result'),
(7, 'health', 'tbl_login'),
(22, 'health', 'tbl_mcpatient'),
(15, 'health', 'tbl_messages'),
(16, 'health', 'tbl_notification'),
(17, 'health', 'tbl_opticket'),
(18, 'health', 'tbl_patient'),
(19, 'health', 'tbl_referral'),
(20, 'health', 'tbl_staff'),
(21, 'health', 'tbl_treatment'),
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
(1, 'contenttypes', '0001_initial', '2019-10-13 16:24:28.139496'),
(2, 'auth', '0001_initial', '2019-10-13 16:24:30.100732'),
(3, 'admin', '0001_initial', '2019-10-13 16:24:37.135264'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-10-13 16:24:39.549911'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-10-13 16:24:39.604057'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-10-13 16:24:40.594009'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-10-13 16:24:41.575370'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-10-13 16:24:42.717751'),
(9, 'auth', '0004_alter_user_username_opts', '2019-10-13 16:24:42.774892'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-10-13 16:24:43.747141'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-10-13 16:24:43.795274'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-10-13 16:24:43.853427'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-10-13 16:24:44.634650'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-10-13 16:24:45.497440'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-10-13 16:24:46.264108'),
(16, 'auth', '0011_update_proxy_permissions', '2019-10-13 16:24:46.358782'),
(17, 'health', '0001_initial', '2019-10-13 16:24:46.709549'),
(18, 'sessions', '0001_initial', '2019-10-13 16:24:47.120263'),
(19, 'health', '0002_tbl_complaints_tbl_diagnosis_tbl_hos_cat_tbl_hos_man_tbl_lab_tbl_lab_test_request_tbl_lab_test_resul', '2019-10-13 16:26:34.398733'),
(20, 'health', '0003_tbl_mcpatient', '2019-10-14 11:35:55.993901'),
(21, 'health', '0004_tbl_staff_staff_photo', '2019-10-15 15:08:33.087316'),
(22, 'health', '0005_auto_20191024_1012', '2019-10-24 04:42:54.559615'),
(23, 'health', '0006_tbl_treatment_patient_name', '2019-10-24 06:58:58.647409'),
(24, 'health', '0007_tbl_diagnosis_patient_name', '2019-10-24 07:54:21.676658'),
(25, 'health', '0008_auto_20191024_1726', '2019-10-24 11:56:33.526907'),
(26, 'health', '0009_auto_20191025_1241', '2019-10-25 07:11:32.409372'),
(27, 'health', '0010_tbl_patient_pat_age', '2019-10-28 06:27:02.462087'),
(28, 'health', '0011_auto_20191125_2132', '2019-11-25 16:02:33.006531'),
(29, 'health', '0012_auto_20191125_2134', '2019-11-25 16:05:09.573969'),
(30, 'health', '0013_auto_20191128_1901', '2019-11-28 13:32:15.698480'),
(31, 'health', '0014_remove_tbl_lab_test_request_patient_id', '2019-11-28 14:23:00.272537'),
(32, 'health', '0015_tbl_lab_test_request_opticket_id', '2019-11-28 14:24:25.922879'),
(33, 'health', '0016_remove_tbl_lab_test_result_patient_id', '2019-11-29 15:28:47.118623'),
(34, 'health', '0017_tbl_lab_test_result_opticket_id', '2019-11-29 15:29:36.607716'),
(35, 'health', '0018_auto_20191129_2208', '2019-11-29 16:38:22.836788');

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
('dhry6aegrwhin5d2nmu4ko2ni7d540b8', 'MTkyYjJlNjQ4YzE3OTg5MWE5MjFjZGVmYWEyMmQ5ZmE5ZjY3MzQxNTp7InNpZCI6MiwiaGlkIjoyLCJjYXQiOiJNZWRpY2FsX0NvbGxhZ2UiLCJwaWQiOjl9', '2019-11-08 08:04:28.733279'),
('fjk8hxf6z76zia0grxcd5m59nmvzcbaj', 'OGYwNzE1MDA4Yjk2ZThkYmIxMjViNzhhY2VjNTc5ZWNkNmJkMGUxZTp7InNpZCI6ImFzaG9AZ21haWwuY29tIiwiaGlkIjozLCJjYXQiOiJNZWRpY2FsX0NvbGxhZ2UifQ==', '2019-11-06 06:08:42.165002'),
('ijgheig9whlyhf677u9tmwowll4nfmpy', 'OGJmNjc4NDc1NThkNGYyN2UwOWYyNmE1YzI5NzdmOGRlOTNmMGZjZDp7fQ==', '2019-12-09 15:13:39.423858'),
('wwt2hcqw60xdepg5ocjy2tmyen03oivt', 'ZjM4ZGU5ZjEzNDYyZDA0MjA5ZTJlMGNlMWEyMWZhY2M2YzAwZWJhNTp7InBpZCI6MSwic2lkIjoxLCJoaWQiOjEsImNhdCI6IlByaW1hcnlfSGVhbHRoX0NlbnRyZSIsImhpZDEiOjF9', '2019-12-15 16:22:44.394030');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaints`
--

CREATE TABLE `tbl_complaints` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `complaint` varchar(500) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_complaints`
--

INSERT INTO `tbl_complaints` (`id`, `patient_id`, `hospital_id`, `doctor_id`, `complaint`, `status`) VALUES
(1, 2, 7, 7, 'bad character', 'not verified');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diagnosis`
--

CREATE TABLE `tbl_diagnosis` (
  `id` int(11) NOT NULL,
  `lab_test_result_id` varchar(30) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `treatment_id` int(11) NOT NULL,
  `opticket_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `diagnosis1` varchar(500) NOT NULL,
  `medicines` varchar(500) NOT NULL,
  `patient_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_diagnosis`
--

INSERT INTO `tbl_diagnosis` (`id`, `lab_test_result_id`, `patient_id`, `doctor_id`, `treatment_id`, `opticket_id`, `hospital_id`, `diagnosis1`, `medicines`, `patient_name`) VALUES
(1, '1', 1, 1, 1, 1, 1, 'fever due to urine infection', 'antibiotics', 'fathima'),
(2, '2', 3, 7, 2, 3, 7, '  high typhoid ', 'paracetamol', 'saleena'),
(3, 'nil', 2, 8, 3, 4, 7, 'nippa nippa', 'anti--biotics,pentocid', 'abu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hos_cat`
--

CREATE TABLE `tbl_hos_cat` (
  `id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hos_cat`
--

INSERT INTO `tbl_hos_cat` (`id`, `category_name`, `description`) VALUES
(1, 'Primary_Health_Centre', 'PHC is the basic structural and functional unit of public health service in developing countries to provide primary health care'),
(2, 'District_Hospitals', 'A DH typically is the major health care facility in its region  with intensive care,critical  care and long term care'),
(3, 'Medical_Collage', 'A MC is a trade association that brings together practitioners of a particular geographical area');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hos_man`
--

CREATE TABLE `tbl_hos_man` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `hos_name` varchar(30) NOT NULL,
  `hos_address` varchar(500) NOT NULL,
  `hos_email` varchar(30) NOT NULL,
  `hos_phone` varchar(30) NOT NULL,
  `hos_local_body` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hos_man`
--

INSERT INTO `tbl_hos_man` (`id`, `category_id`, `hos_name`, `hos_address`, `hos_email`, `hos_phone`, `hos_local_body`) VALUES
(1, 1, 'primary health centre,valanche', 'valanchery,malappuram 676552', 'phcv@gmail.com', '04942646374', 'govt of kerala'),
(2, 1, 'primary health centre,feroke', 'feroke,calicut 673631', 'phcf@gmail.com', '04952462203', 'govt of kerala'),
(3, 1, 'primary health centre,ayyantho', 'ayyanthole,trissur 680012', 'phct@gmail.com', '04972462267', 'govt of kerala'),
(4, 2, 'Thrissur District Hospital', 'Palakkal Angadi Road, Near Josco Jewellers, Thrissur, Kerala 680001', 'dht@gmail.com', '04872427383', 'govt of kerala'),
(5, 2, ' District Hospital Tirur', 'Tirur,malappuram  676101', 'dhti@gmail.com', '04942422044', 'govt of kerala'),
(6, 2, 'District Hospital Calicut', 'eranhippalam,kozhikode 673006', 'dhc@gmail.com', '04952709300', 'govt of kerala'),
(7, 3, 'Calicut Medical College', 'near police station,kozhikode kerala 673008', 'mcc@gmail.com', '04952350216', 'govt of kerala'),
(8, 3, 'JMMCRI trissur', 'east fort,trissur  680005', 'mct@gmail.com', '04872432200', 'govt of kerala'),
(9, 3, 'Govt Medical College Kannur', 'pariyaram ,Kannur 670503', 'mck@gmail.com', '04972808111', 'govt of kerala');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lab`
--

CREATE TABLE `tbl_lab` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `lab_phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_lab`
--

INSERT INTO `tbl_lab` (`id`, `category_id`, `hospital_id`, `lab_phone`) VALUES
(1, 1, 1, '8086797170'),
(2, 1, 2, '8086797171'),
(3, 1, 3, '8086797172'),
(4, 2, 4, '8086797173'),
(5, 2, 5, '8086797174'),
(6, 2, 6, '8086797175'),
(7, 3, 7, '8086797176'),
(8, 3, 8, '8086797177'),
(9, 3, 9, '8086797178');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lab_test_request`
--

CREATE TABLE `tbl_lab_test_request` (
  `id` int(11) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `treatment_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `test_name` varchar(30) NOT NULL,
  `opticket_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_lab_test_request`
--

INSERT INTO `tbl_lab_test_request` (`id`, `lab_id`, `doctor_id`, `treatment_id`, `hospital_id`, `test_name`, `opticket_id`) VALUES
(1, 1, 1, 1, 1, 'urine culture', '1'),
(2, 7, 7, 2, 7, 'blood count', '3'),
(3, 6, 17, 4, 6, 'stomach scan', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lab_test_result`
--

CREATE TABLE `tbl_lab_test_result` (
  `id` int(11) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `lab_test_request_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `treatment_id` int(11) NOT NULL,
  `lab_result` varchar(500) NOT NULL,
  `test_name` varchar(30) NOT NULL,
  `opticket_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_lab_test_result`
--

INSERT INTO `tbl_lab_test_result` (`id`, `lab_id`, `lab_test_request_id`, `doctor_id`, `treatment_id`, `lab_result`, `test_name`, `opticket_id`) VALUES
(1, 1, 1, 1, 1, 'infection', 'urine culture', '1'),
(2, 7, 2, 7, 2, 'positive', 'blood count', '3'),
(3, 6, 3, 17, 4, ' ulser positive', 'stomach scan', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `username`, `password`, `category`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'rahu@gmail.com', '8129825245', 'doctor'),
(3, 'rohi@gmail.com', '8129825244', 'office'),
(4, 'ree@gmail.com', '8129825243', 'lab'),
(5, 'shahu@gmail.com', '8129825234', 'doctor'),
(6, 'shiha@gmail.com', '8086797190', 'office'),
(7, 'shee@gmail.com', '9995263565', 'lab'),
(8, 'mkshohan@gmail.com', '8520625989', 'doctor'),
(9, 'munna@gmail.com', '9895260258', 'doctor'),
(10, 'rihan@gmail.com', '9895260259', 'office'),
(11, 'eva@gmail.com', '9895260251', 'lab'),
(12, 'ashik@gmail.com', '9895260252', 'doctor'),
(13, 'subin@gmail.com', '9895260254', 'office'),
(14, 'keer@gmail.com', '9895260255', 'lab'),
(15, 'sawad@gmail.com', '9895260250', 'doctor'),
(16, 'aman@gmail.com', '9895260256', 'office'),
(17, 'afi@gmail.com', '9895260253', 'lab'),
(18, 'rah@gmail.com', '9995263564', 'doctor'),
(19, 'rahe@gmail.com', '9995263561', 'office'),
(20, 'raheena@gmail.com', '9995263567', 'lab'),
(25, 'rohi@gmail.com', '8129825244', 'office'),
(26, 'fa@gmail.com', '9995263545', 'patient'),
(27, 'ab@gmail.com', '9995263546', 'patient'),
(28, 'sal@gmail.com', '8086797169', 'patient'),
(29, 'maj@gmail.com', '9876543212', 'patient'),
(30, 'mmm@gmail.com', '8888888888', 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mcpatient`
--

CREATE TABLE `tbl_mcpatient` (
  `id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `pat_name` varchar(30) NOT NULL,
  `pat_address` varchar(30) NOT NULL,
  `pat_gender` varchar(30) NOT NULL,
  `pat_email` varchar(30) NOT NULL,
  `pat_phone` int(11) NOT NULL,
  `pat_dob` date NOT NULL,
  `pat_photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_messages`
--

CREATE TABLE `tbl_messages` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `msg_date` date NOT NULL,
  `msg_time` int(11) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int(11) NOT NULL,
  `notification` varchar(900) NOT NULL,
  `noti_date` varchar(30) NOT NULL,
  `noti_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `notification`, `noti_date`, `noti_status`) VALUES
(1, 'HPSC can now provide, on a wee', '19-11-28', 'not verified'),
(2, 'Many infectious notifiable con', '19-11-28', 'not verified'),
(3, 'fttrdtrdrctvtrdesxsdcfffffffff', '19-11-29', 'not verified');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_opticket`
--

CREATE TABLE `tbl_opticket` (
  `id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `op_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_opticket`
--

INSERT INTO `tbl_opticket` (`id`, `hospital_id`, `patient_id`, `doctor_id`, `op_date`) VALUES
(1, 1, 1, 1, '19-11-29'),
(2, 1, 2, 1, '19-11-29'),
(3, 7, 3, 7, '19-11-29'),
(4, 7, 2, 8, '19-11-29'),
(5, 6, 4, 17, '19-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_patient`
--

CREATE TABLE `tbl_patient` (
  `id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `pat_name` varchar(30) NOT NULL,
  `pat_address` varchar(30) NOT NULL,
  `pat_gender` varchar(30) NOT NULL,
  `pat_email` varchar(30) NOT NULL,
  `pat_phone` varchar(30) NOT NULL,
  `pat_dob` date NOT NULL,
  `pat_photo` varchar(500) NOT NULL,
  `pat_age` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_patient`
--

INSERT INTO `tbl_patient` (`id`, `hospital_id`, `pat_name`, `pat_address`, `pat_gender`, `pat_email`, `pat_phone`, `pat_dob`, `pat_photo`, `pat_age`) VALUES
(1, 1, 'fathima', 'haradaen', 'Female', 'fa@gmail.com', '9995263545', '1990-11-26', '/media/_20180622_140630_utDY85C.jpg', '29'),
(2, 1, 'abu', 'karadan', 'Male', 'ab@gmail.com', '9995263546', '1990-12-29', '/media/_20180601_212259_Bc2zQD8.jpg', '29'),
(3, 7, 'saleena', 'mangat', 'Female', 'sal@gmail.com', '8086797169', '2019-11-29', '/media/_20180710_180838_GrvoscW.jpg', '26'),
(4, 6, 'majeed', 'karadan', 'Male', 'maj@gmail.com', '9876543212', '2014-11-30', '/media/2018-06-18-18-25-20-810_VkK2XTe.jpg', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_referral`
--

CREATE TABLE `tbl_referral` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `referred_hos_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `doctor_views` varchar(500) NOT NULL,
  `ref_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_referral`
--

INSERT INTO `tbl_referral` (`id`, `patient_id`, `hospital_id`, `referred_hos_id`, `doctor_id`, `doctor_views`, `ref_date`) VALUES
(1, 2, 1, 7, 1, 'danger', '19-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `staff_role` varchar(30) NOT NULL,
  `staff_specialization` varchar(30) NOT NULL,
  `staff_name` varchar(30) NOT NULL,
  `staff_address` varchar(500) NOT NULL,
  `staff_email` varchar(30) NOT NULL,
  `staff_phone` varchar(30) NOT NULL,
  `staff_photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`id`, `category_id`, `hospital_id`, `staff_role`, `staff_specialization`, `staff_name`, `staff_address`, `staff_email`, `staff_phone`, `staff_photo`) VALUES
(1, 1, 1, 'doctor', 'MBBS,MD', 'rahul', 'thekkadi house ,tirur', 'rahu@gmail.com', '8129825245', '/media/IMG-20180704-WA0000.jpg'),
(2, 1, 1, 'office', 'management', 'rohit', 'thennala house,tirur', 'rohi@gmail.com', '8129825244', '/media/2018-06-18-18-25-20-810_dFzM7hc.jpg'),
(3, 1, 1, 'lab', 'lab assistant', 'reema', 'thookadi house,tirur', 'ree@gmail.com', '8129825243', '/media/2018-07-14-18-02-04-914.jpg'),
(4, 2, 4, 'doctor', 'MBBS,MD', 'shahul', 'thennali house,karad', 'shahu@gmail.com', '8129825234', '/media/IMG-20180715-WA0005.jpg'),
(5, 2, 4, 'office', 'management', 'shihan', 'thekkara  house,trissur', 'shiha@gmail.com', '8086797190', '/media/IMG-20180622-WA0008%20(2).jpg'),
(6, 2, 4, 'lab', 'lab assistant', 'sheena', 'mangat house,vadakara', 'shee@gmail.com', '9995263565', '/media/_20180622_140630_Z9eZ4oc.jpg'),
(7, 3, 7, 'doctor', 'nuro', 'shohan', 'karadan house ,malappuram', 'mkshohan@gmail.com', '8520625989', '/media/2017-12-02-12-25-07-885.jpg'),
(8, 3, 7, 'doctor', 'ortho', 'munna', 'karadan house,tirur', 'munna@gmail.com', '9895260258', '/media/1530183769228.jpg'),
(9, 3, 7, 'office', 'management', 'rihan', 'karada house,tirurangadi', 'rihan@gmail.com', '9895260259', '/media/doctor.png'),
(10, 3, 7, 'lab', 'management', 'eva', 'karadan house', 'eva@gmail.com', '9895260251', '/media/d3.jpg'),
(11, 3, 8, 'doctor', 'MBBS,MD', 'ashik', 'manaku house,trissyr', 'ashik@gmail.com', '9895260252', '/media/d5.jpg'),
(12, 3, 8, 'office', 'management', 'subin', 'mangat,pamtheerangav', 'subin@gmail.com', '9895260254', '/media/patients-2.jpg'),
(13, 3, 8, 'lab', 'lab assistant', 'keerthana', 'Vadakara house,vadakara', 'keer@gmail.com', '9895260255', '/media/doctor-1.jpg'),
(14, 1, 2, 'doctor', 'MBBS,MD', 'sawad', 'mangat house kunathod', 'sawad@gmail.com', '9895260250', '/media/patients-3.jpg'),
(15, 1, 2, 'office', 'management', 'aman', 'mangat house', 'aman@gmail.com', '9895260256', '/media/patients-2_IjwkpFj.jpg'),
(16, 1, 2, 'lab', 'lab assistant', 'afsina', 'Vadakara house vadakara', 'afi@gmail.com', '9895260253', '/media/doctor-1_klUAJko.jpg'),
(17, 2, 6, 'doctor', 'MBBS,MD', 'rahman', 'karadan house,cherthala', 'rah@gmail.com', '9995263564', '/media/doctor-2.jpg'),
(18, 2, 6, 'office', 'management', 'raheem', 'uduppi house,ooty', 'rahe@gmail.com', '9995263561', '/media/small-blog-img2.jpg'),
(19, 2, 6, 'lab', 'lab assistant', 'raheena', 'cherthal house,vadakara', 'raheena@gmail.com', '9995263567', '/media/doctor-3.jpg'),
(20, 3, 7, 'doctor', 'nuro', 'fcfc', 'n mn n', 'mmm@gmail.com', '8888888888', '/media/_20180601_212259_x5nTfHa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_treatment`
--

CREATE TABLE `tbl_treatment` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `opticket_id` int(11) NOT NULL,
  `diagnosis` varchar(500) NOT NULL,
  `patient_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_treatment`
--

INSERT INTO `tbl_treatment` (`id`, `doctor_id`, `patient_id`, `hospital_id`, `opticket_id`, `diagnosis`, `patient_name`) VALUES
(1, 1, 1, 1, 1, 'fever', 'fathima'),
(2, 7, 3, 7, 3, 'typhoid', 'saleena'),
(3, 8, 2, 7, 4, 'nippa', 'abu'),
(4, 17, 4, 6, 5, 'ulser', 'majeed');

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
-- Indexes for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_diagnosis`
--
ALTER TABLE `tbl_diagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hos_cat`
--
ALTER TABLE `tbl_hos_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hos_man`
--
ALTER TABLE `tbl_hos_man`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lab`
--
ALTER TABLE `tbl_lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lab_test_request`
--
ALTER TABLE `tbl_lab_test_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lab_test_result`
--
ALTER TABLE `tbl_lab_test_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mcpatient`
--
ALTER TABLE `tbl_mcpatient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_messages`
--
ALTER TABLE `tbl_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_opticket`
--
ALTER TABLE `tbl_opticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_patient`
--
ALTER TABLE `tbl_patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_referral`
--
ALTER TABLE `tbl_referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_treatment`
--
ALTER TABLE `tbl_treatment`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_diagnosis`
--
ALTER TABLE `tbl_diagnosis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_hos_cat`
--
ALTER TABLE `tbl_hos_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_hos_man`
--
ALTER TABLE `tbl_hos_man`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_lab`
--
ALTER TABLE `tbl_lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_lab_test_request`
--
ALTER TABLE `tbl_lab_test_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_lab_test_result`
--
ALTER TABLE `tbl_lab_test_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_mcpatient`
--
ALTER TABLE `tbl_mcpatient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_messages`
--
ALTER TABLE `tbl_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_opticket`
--
ALTER TABLE `tbl_opticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_patient`
--
ALTER TABLE `tbl_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_referral`
--
ALTER TABLE `tbl_referral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_treatment`
--
ALTER TABLE `tbl_treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
