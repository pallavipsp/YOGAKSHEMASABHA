-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2020 at 02:17 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yogakshemasabha`
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
(24, 'Can view session', 6, 'view_session');

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
-- Table structure for table `bloddrequest`
--

CREATE TABLE `bloddrequest` (
  `br_id` int(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `br_date` date NOT NULL,
  `description` varchar(30) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `contact` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloddrequest`
--

INSERT INTO `bloddrequest` (`br_id`, `status`, `br_date`, `description`, `bloodgroup`, `contact`) VALUES
(5, 'active', '2020-03-15', 'asdfg', 'B+VE', '123456789'),
(6, 'good', '2020-04-08', '1 unit', 'A+VE', '84382374623'),
(7, 'Specil', '2020-04-08', '21 unit', 'A+VE', '84382374623');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE `camp` (
  `c_id` int(10) NOT NULL,
  `c_loc` varchar(30) NOT NULL,
  `c_date` date NOT NULL,
  `c_details` varchar(50) NOT NULL,
  `up_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`c_id`, `c_loc`, `c_date`, `c_details`, `up_name`) VALUES
(123, 'clt', '2020-02-03', 'abcdefgh', 'mkm'),
(127, 'dfghjdfghj', '2020-03-01', 'ddfgh', 'city'),
(128, 'omy', '2020-03-08', 'sssf', 'neeleswaram'),
(133, 'omy', '2020-03-29', 'qwert', 'mkm'),
(134, 'CALICUT', '2020-05-05', 'TESTING DEST', 'UPASABHA TESSTING');

-- --------------------------------------------------------

--
-- Table structure for table `camprequest`
--

CREATE TABLE `camprequest` (
  `cr_id` int(10) NOT NULL,
  `camp` varchar(500) NOT NULL,
  `u_id` int(10) NOT NULL,
  `cr_date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camprequest`
--

INSERT INTO `camprequest` (`cr_id`, `camp`, `u_id`, `cr_date`, `status`) VALUES
(1, '11', 12, '2020-02-02', 'pending'),
(2, '11', 12, '2020-02-02', 'pending'),
(6, '134', 9, '2020-04-08', 'approved'),
(7, '128', 9, '2020-04-08', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `comp` varchar(50) NOT NULL,
  `reply` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `uid`, `comp`, `reply`) VALUES
(1, 7, 'asdhgfashdv', 'pending'),
(2, 7, 'ok  \r\n', 'jhd'),
(3, 9, 'sir', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
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
(1, 'contenttypes', '0001_initial', '2020-02-23 09:34:22.738382'),
(2, 'auth', '0001_initial', '2020-02-23 09:34:25.238240'),
(3, 'admin', '0001_initial', '2020-02-23 09:34:33.378303'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-23 09:34:35.518764'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-23 09:34:35.565637'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-23 09:34:37.596732'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-23 09:34:37.815551'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-23 09:34:37.940542'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-23 09:34:38.034202'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-23 09:34:38.848552'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-23 09:34:38.895496'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-23 09:34:38.973559'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-23 09:34:39.145423'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-23 09:34:39.286082'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-23 09:34:39.426658'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-23 09:34:39.504774'),
(17, 'sessions', '0001_initial', '2020-02-23 09:34:39.754756');

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
('9yseaecse93y8n1uahv37hg8mot4a8i2', 'NTZhMjhhZDc4YTBjNzJhOGYzYTQxYjlhNjcxODQ4ZWFmOWUzMjg1Yjp7InVpZCI6OX0=', '2020-04-22 12:16:40.227828'),
('fhwdn1x3ser6nxwklt3iaz0j9fj0u562', 'MGYzNmNiMWY1MDVmMzE4MGY4NzhmY2M5M2Y3Y2JlMzZjYjQ3M2E1OTp7InVpZCI6Nn0=', '2020-04-07 14:59:02.272918'),
('lhb8ovr2wuei43sks4n25j6ct5f8sefs', 'Y2U2ZGQ0ZGI2MGEwNzJhZGE0MmQwZDBjNzE2NTY4ZWVjMmQ3ZWY4ZDp7InVpZCI6N30=', '2020-04-21 09:06:49.234327'),
('nd5n2mymvk7u31olfeupvknnqqqujdcx', 'MGYzNmNiMWY1MDVmMzE4MGY4NzhmY2M5M2Y3Y2JlMzZjYjQ3M2E1OTp7InVpZCI6Nn0=', '2020-03-14 03:44:53.740534'),
('rsandr80a5aakd7ph2r3em8atvcsxeyd', 'Y2U2ZGQ0ZGI2MGEwNzJhZGE0MmQwZDBjNzE2NTY4ZWVjMmQ3ZWY4ZDp7InVpZCI6N30=', '2020-04-21 13:33:01.314104');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `e_id` int(10) NOT NULL,
  `e_name` varchar(30) NOT NULL,
  `e_type` varchar(20) NOT NULL,
  `up_name` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`e_id`, `e_name`, `e_type`, `up_name`, `date`) VALUES
(1, 'hbjsdk', 'skjhdj', '54556', '2020-02-02'),
(2, 'hjgh', 'hgct', '54366', '2020-02-06'),
(3, 'hjdskjkj', 'hdsjk', 'calicut', '2020-02-02'),
(4, 'Cultura;', 'collll', 'waynad', '2020-04-10'),
(5, 'Cultura;', 'collll', '1', '2020-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(10) NOT NULL,
  `u_id` int(10) NOT NULL,
  `feedback` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `reply` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `u_id`, `feedback`, `date`, `reply`) VALUES
(10, 45, 'dfgh', '2020-02-02', ''),
(11, 12, 'good', '2020-02-03', 'thnks');

-- --------------------------------------------------------

--
-- Table structure for table `festival`
--

CREATE TABLE `festival` (
  `f_id` int(20) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `f_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `festival`
--

INSERT INTO `festival` (`f_id`, `f_name`, `f_date`) VALUES
(1, 'abc', '2020-02-01'),
(2, 'fghjk', '2020-02-02'),
(3, 'asd', '2020-03-01'),
(4, 'Festivl Testing', '2020-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `g_id` int(10) NOT NULL,
  `g_path` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`g_id`, `g_path`) VALUES
(6, 'img3.jpg'),
(7, '2867919.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `l_id` int(10) NOT NULL,
  `u_name` varchar(40) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL,
  `u_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`l_id`, `u_name`, `password`, `type`, `u_id`) VALUES
(1, 'ponnu', 'ponnu', 'user', 6),
(2, 'admin', 'admin', 'admin', 7),
(3, 'upa', 'upa', 'upasabha', 1),
(4, 'user', 'user', 'user', 9),
(5, 'ertyui', 'abc', 'user', 11),
(7, 'jhsdfh@gmailcom', 'hjsfj', 'upasabha', 5),
(8, 'jhsdfh@gmailcom', 'hjsfj', 'upasabha', 6),
(9, 'nbsdf', 'nsdf', 'user', 12);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `u_id` int(10) NOT NULL,
  `role` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `n_id` int(10) NOT NULL,
  `news` varchar(50) NOT NULL,
  `title` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`n_id`, `news`, `title`, `date`, `status`) VALUES
(1011, 'vghbjnk', 'ghj', '2020-03-08', 'approved'),
(1012, 'dxfghjk', 'dfghjk', '2020-03-01', 'approved'),
(1013, 'Due to Corona , Stay safe', 'Corona', '2020-04-08', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `p_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`p_id`, `date`, `title`, `description`) VALUES
(1, '2020-02-02', 'ghj', 'ajnsd'),
(2, '2020-03-01', 'bnm', 'asdfg'),
(3, '2020-04-07', 'Go Corona', 'go go corona'),
(4, '2020-04-07', 'Go Corona', 'go go corona'),
(5, '2020-04-12', 'Holiday ', 'chummaa');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `u_id` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `up_id` int(10) NOT NULL,
  `u_address` varchar(50) NOT NULL,
  `u_bg` varchar(5) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `age` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`u_id`, `uname`, `up_id`, `u_address`, `u_bg`, `gender`, `dob`, `age`, `mobile`, `email`) VALUES
(8, 'dggh', 1, 'hgjh', 'B+VE', 'Female', '56564', '11', '68668869', 'jhgsad'),
(9, 'gm', 8, 'qwert', 'A+VE', 'Male', '12-23-11', '12', '12345678', 'qw@qw'),
(10, 'a', 112, 'qwerty', 'B+VE', 'Female', '145669', '20', '65987456', 'ertyui'),
(11, 'v', 112, 'qwerty', 'B+VE', 'Female', '145669', '20', '65987456', 'ertyui'),
(12, 'fd', 1, 'nsbdf', 'A+VE', 'Male', '21-02-1998', '22', '95455468', 'nbsdf');

-- --------------------------------------------------------

--
-- Table structure for table `upasabha`
--

CREATE TABLE `upasabha` (
  `up_id` int(15) NOT NULL,
  `up_name` varchar(30) NOT NULL,
  `up_loc` varchar(40) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upasabha`
--

INSERT INTO `upasabha` (`up_id`, `up_name`, `up_loc`, `contact`, `email`, `description`) VALUES
(1, 'mkm', 'mukkam', '5365', 'sdjhs', 'jhdjkkja'),
(2, 'hgja', 'hjaw', '5456', 'ahjadasdhjaash', 'sahhj'),
(5, 'ncbv', 'hjsf', 'jhfh', 'jhsdfh@gmailcom', 'hjfsd'),
(6, 'ncbv', 'hjsf', 'jhfh', 'jhsdfh@gmailcom', 'hjfsd');

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
-- Indexes for table `bloddrequest`
--
ALTER TABLE `bloddrequest`
  ADD PRIMARY KEY (`br_id`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `camprequest`
--
ALTER TABLE `camprequest`
  ADD PRIMARY KEY (`cr_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `festival`
--
ALTER TABLE `festival`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `upasabha`
--
ALTER TABLE `upasabha`
  ADD PRIMARY KEY (`up_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
-- AUTO_INCREMENT for table `bloddrequest`
--
ALTER TABLE `bloddrequest`
  MODIFY `br_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `camprequest`
--
ALTER TABLE `camprequest`
  MODIFY `cr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `e_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `festival`
--
ALTER TABLE `festival`
  MODIFY `f_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `g_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `l_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `n_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1014;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `upasabha`
--
ALTER TABLE `upasabha`
  MODIFY `up_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
