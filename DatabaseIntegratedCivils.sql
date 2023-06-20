-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 03:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--
CREATE DATABASE IF NOT EXISTS `akademik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `akademik`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`) VALUES
('22/233345/SV/23143', 'Meses Ceres', 'Jalan Sudirman'),
('22/1728382/SV/28793', 'Joko Purwadi', 'Jalan Hadiningrat'),
('21/798723/TK/019833', 'Sri Hardiyanti', 'Jalan Kebenaran Km 7'),
('22/233345/SV/23143', 'Meses Ceres', 'Jalan Sudirman');
--
-- Database: `oceanone`
--
CREATE DATABASE IF NOT EXISTS `oceanone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oceanone`;

-- --------------------------------------------------------

--
-- Table structure for table `sectionfour`
--

CREATE TABLE `sectionfour` (
  `group` varchar(20) NOT NULL,
  `problem` text NOT NULL,
  `solution` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sectionfour`
--

INSERT INTO `sectionfour` (`group`, `problem`, `solution`) VALUES
('Project1', 'Plastic recycling generates plastic waste effluent as a standard part of the process. This dirty discharge known as \"Mud\" is at risk of being discharged into the wastewater and, in the best-case, is usually taken to the nearest landfill.', 'Repurposes the “Mud” into useful building materials. It\'s composition is perfect for producing bricks! Unfortunately, these recycled plastic compound bricks are slightly more expensive than standard building bricks, so Impac+ program incentivizes the reuse of the “Mud” in the bricks by making them competitive on the open market.'),
('Project2', 'Fishing gear - nets and ropes - pose a significant risk to sea life if cut away in the ocean. Unfortunately, incentives do not exist to recover this gear so at the end of its life, most gets landfilled or simply cut away at sea. It\'s a huge reason for why fishing nets are the largest ocean plastic polluter.', 'We provides the funds needed to incentivize collection and recycling of this gear. This program creates a pathway for the reclamation of end of life fishing gear.');

-- --------------------------------------------------------

--
-- Table structure for table `sectiontwo`
--

CREATE TABLE `sectiontwo` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `body` text NOT NULL,
  `caption` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sectiontwo`
--

INSERT INTO `sectiontwo` (`id`, `title`, `body`, `caption`) VALUES
(1, 'ALIGN', '66% of people (73% of Millennials) are willing to pay more for products and services from companies committed to positive social and environmental impact.', 'LEARN MORE'),
(2, 'KICKSTART', 'Ocean One are a turnkey solution to begin the journey of reducing your business’s environmental footprint or going plastic neutral.', 'START ACTION'),
(3, 'AMPLIFY', 'Is your actions already making strides in its commitment to sustainability? Measure your action success using IMPACT.', 'SEE HOW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sectionfour`
--
ALTER TABLE `sectionfour`
  ADD PRIMARY KEY (`group`);

--
-- Indexes for table `sectiontwo`
--
ALTER TABLE `sectiontwo`
  ADD PRIMARY KEY (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `playground`
--
CREATE DATABASE IF NOT EXISTS `playground` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `playground`;
--
-- Database: `project_uas_scp`
--
CREATE DATABASE IF NOT EXISTS `project_uas_scp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project_uas_scp`;

-- --------------------------------------------------------

--
-- Table structure for table `akses`
--

CREATE TABLE `akses` (
  `id_akses` varchar(20) NOT NULL,
  `id_public_facility` varchar(20) NOT NULL,
  `id_citizen` char(16) NOT NULL,
  `status` varchar(16) DEFAULT 'GRANTED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akses`
--

INSERT INTO `akses` (`id_akses`, `id_public_facility`, `id_citizen`, `status`) VALUES
('EF01', 'PF_EF_01', '5566770101100001', 'GRANTED'),
('EF02', 'PF_EF_01', '1122334712030001', 'GRANTED'),
('EF03', 'PF_EF_01', '2525252810070001', 'NOT GRANTED'),
('EF04', 'PF_EF_01', '5154241708090001', 'GRANTED'),
('EF05', 'PF_EF_01', '1289546704040001', 'NOT GRANTED'),
('EF06', 'PF_EF_01', '9584514605060002', 'GRANTED'),
('EF07', 'PF_EF_01', '2561426002030002', 'GRANTED'),
('EF08', 'PF_EF_01', '8541721705060002', 'GRANTED'),
('EF09', 'PF_EF_01', '6845100505050005', 'GRANTED'),
('EF10', 'PF_EF_01', '8412350707070007', 'NOT GRANTED'),
('HF01', 'PF_HC_01', '5566770101100001', 'GRANTED'),
('HF02', 'PF_HC_01', '1122334712030001', 'GRANTED'),
('HF03', 'PF_HC_01', '2525252810070001', 'NOT GRANTED'),
('HF04', 'PF_HC_01', '5154241708090001', 'GRANTED'),
('HF05', 'PF_HC_01', '1289546704040001', 'NOT GRANTED'),
('HF06', 'PF_HC_01', '9584514605060002', 'GRANTED'),
('HF07', 'PF_HC_01', '2561426002030002', 'GRANTED'),
('HF08', 'PF_HC_01', '8541721705060002', 'GRANTED'),
('HF09', 'PF_HC_01', '6845100505050005', 'GRANTED'),
('HF10', 'PF_HC_01', '8412350707070007', 'NOT GRANTED'),
('LF01', 'PF_LF_01', '5566770101100001', 'GRANTED'),
('LF02', 'PF_LF_01', '1122334712030001', 'GRANTED'),
('LF03', 'PF_LF_01', '2525252810070001', 'NOT GRANTED'),
('LF04', 'PF_LF_01', '5154241708090001', 'GRANTED'),
('LF05', 'PF_LF_01', '1289546704040001', 'NOT GRANTED'),
('LF06', 'PF_LF_01', '9584514605060002', 'GRANTED'),
('LF07', 'PF_LF_01', '2561426002030002', 'GRANTED'),
('LF08', 'PF_LF_01', '8541721705060002', 'GRANTED'),
('LF09', 'PF_LF_01', '6845100505050005', 'GRANTED'),
('LF10', 'PF_LF_01', '8412350707070007', 'NOT GRANTED'),
('TS01', 'PF_TS_01', '5566770101100001', 'GRANTED'),
('TS02', 'PF_TS_01', '1122334712030001', 'GRANTED'),
('TS03', 'PF_TS_01', '2525252810070001', 'NOT GRANTED'),
('TS04', 'PF_TS_01', '5154241708090001', 'GRANTED'),
('TS05', 'PF_TS_01', '1289546704040001', 'NOT GRANTED'),
('TS06', 'PF_TS_01', '9584514605060002', 'GRANTED'),
('TS07', 'PF_TS_01', '2561426002030002', 'GRANTED'),
('TS08', 'PF_TS_01', '8541721705060002', 'GRANTED'),
('TS09', 'PF_TS_01', '6845100505050005', 'GRANTED'),
('TS10', 'PF_TS_01', '8412350707070007', 'NOT GRANTED');

-- --------------------------------------------------------

--
-- Stand-in structure for view `basic_lives_details`
-- (See below for the actual view)
--
CREATE TABLE `basic_lives_details` (
`id_house` varchar(20)
,`id_citizen` char(16)
,`name_citizen` varchar(100)
,`gender_citizen` varchar(6)
,`phone_number` varchar(16)
,`id_house_owner` char(16)
,`owner_name` varchar(100)
,`owner_phone_number` varchar(16)
,`address` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE `citizen` (
  `id_citizen` char(16) NOT NULL,
  `name_citizen` varchar(100) NOT NULL,
  `gender_citizen` varchar(6) NOT NULL,
  `phone_number` varchar(16) DEFAULT NULL,
  `social_credit_point` decimal(10,2) DEFAULT 1000.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`id_citizen`, `name_citizen`, `gender_citizen`, `phone_number`, `social_credit_point`) VALUES
('1122334712030001', 'Sherina Stephen', 'female', '068455348462', '1000.00'),
('1245125685452365', 'Manis Ku', 'male', '025685452365', '925.00'),
('1289546704040001', 'Sharika Jayhem', 'female', '061541745147', '-400.00'),
('14562510064580', 'Sakirma Datak', 'male', '062510064580', '950.00'),
('2512421005860005', 'Coki Pardede', 'male', '021005860005', '900.00'),
('2525252810070001', 'Verly Jambo', 'male', '065432153486', '-400.00'),
('2561426002030002', 'Melisa Belakping', 'female', '056854135545', '1000.00'),
('3154875421000123', 'Moderna Pfizer', 'female', '075421000123', '1000.00'),
('3154875421000144', 'Moderna Johnson', 'female', '054210001444', '950.00'),
('3154875421000145', 'Medica Johnson', 'female', '075421000145', '950.00'),
('40511605791234', 'Melika Sajidah', 'female', '011605791234', '900.00'),
('5154241708090001', 'Joko Gunawan', 'male', '061535751879', '1000.00'),
('5566770101100001', 'Setia Budi', 'male', '063544265856', '1000.00'),
('6845100505050005', 'Maul Verdict', 'male', '075321385724', '1000.00'),
('8412350707070007', 'Levy Ossa', 'male', '012531215452', '400.00'),
('8541721705060002', 'Stephen Hawkeye', 'male', '015635743515', '1000.00'),
('9584514605060002', 'Nurul Setiawati', 'female', '051354356811', '1000.00');

--
-- Triggers `citizen`
--
DELIMITER $$
CREATE TRIGGER `access_update` AFTER UPDATE ON `citizen` FOR EACH ROW BEGIN
    IF NEW.social_credit_point < 500 THEN
        UPDATE akses
        SET status = 'NOT GRANTED'
        WHERE id_citizen = NEW.id_citizen;
    ELSE
        UPDATE akses
        SET status = 'GRANTED'
        WHERE id_citizen = NEW.id_citizen;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

CREATE TABLE `crime` (
  `id_crime` char(20) NOT NULL,
  `guilty_point` decimal(10,2) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crime`
--

INSERT INTO `crime` (`id_crime`, `guilty_point`, `kategori`, `lokasi`) VALUES
('Abu20230615191103315', '50.00', 'Abusing The Law', 'Mabes Polri'),
('Hat20230615192159251', '100.00', 'Hate Speech', 'Dungeon'),
('Hat20230615192438405', '100.00', 'Hate Speech', 'Soloisme'),
('opt20230615190539315', '0.00', 'option2', 'Jakarta Pusat'),
('The20230619170050124', '75.00', 'Theft', 'Surabaya'),
('TPKJ/2023/06/19/D001', '300.00', 'Kejahatan Jalanan', 'Yogyakarta'),
('TPKK/2023/05/19/N001', '700.00', 'Korupsi', 'Negara'),
('Vio20230615191336315', '50.00', 'Violence', 'Janment'),
('Vio20230615192528145', '50.00', 'Violence', 'Yogyika');

-- --------------------------------------------------------

--
-- Table structure for table `crime_records`
--

CREATE TABLE `crime_records` (
  `id_crime_records` char(20) NOT NULL,
  `id_crime` char(20) NOT NULL,
  `id_citizen` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crime_records`
--

INSERT INTO `crime_records` (`id_crime_records`, `id_crime`, `id_citizen`) VALUES
('2023/05/19/N001/0001', 'TPKK/2023/05/19/N001', '2525252810070001'),
('2023/05/19/N001/0002', 'TPKK/2023/05/19/N001', '1289546704040001'),
('2023/06/19/D001/0001', 'TPKJ/2023/06/19/D001', '8412350707070007'),
('20230615190539315Jok', 'opt20230615190539315', '3154875421000123'),
('20230615191103315Jok', 'Abu20230615191103315', '3154875421000144'),
('20230615191336315Jok', 'Vio20230615191336315', '3154875421000145'),
('20230615192159251Jok', 'Hat20230615192159251', '2512421005860005'),
('20230615192438405Jok', 'Hat20230615192438405', '40511605791234'),
('20230615192528145Jok', 'Vio20230615192528145', '14562510064580'),
('20230619170050124Jok', 'The20230619170050124', '1245125685452365');

--
-- Triggers `crime_records`
--
DELIMITER $$
CREATE TRIGGER `scp_update` AFTER INSERT ON `crime_records` FOR EACH ROW BEGIN
    DECLARE gp INT;
    DECLARE new_scp INT;
    DECLARE citizen_scp INT;

    -- Get the social credit point of the citizen
    SELECT social_credit_point INTO citizen_scp
    FROM citizen
    WHERE id_citizen = NEW.id_citizen;

    -- Get the guilty point of the crime
    SELECT guilty_point INTO gp
    FROM crime
    WHERE id_crime = NEW.id_crime;

    -- Calculate the new social credit point
    SET new_scp = citizen_scp - gp;

    -- Update the citizen table
    UPDATE citizen
    SET social_credit_point = new_scp
    WHERE id_citizen = NEW.id_citizen;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fleets_deployment`
--

CREATE TABLE `fleets_deployment` (
  `id_fleet` varchar(20) NOT NULL,
  `id_transportation` varchar(50) NOT NULL,
  `id_public_facility` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fleets_deployment`
--

INSERT INTO `fleets_deployment` (`id_fleet`, `id_transportation`, `id_public_facility`) VALUES
('JTE01', 'AV_PF_LF_01', 'PF_LF_01'),
('UGM01', 'LV_HC_01', 'PF_HC_01'),
('UGM02', 'LV_PF_TS_01', 'PF_TS_01');

-- --------------------------------------------------------

--
-- Stand-in structure for view `homeless_citizen`
-- (See below for the actual view)
--
CREATE TABLE `homeless_citizen` (
`id_citizen` char(16)
,`name_citizen` varchar(100)
,`gender_citizen` varchar(6)
,`phone_number` varchar(16)
,`social_credit_point` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `id_house` varchar(20) NOT NULL,
  `id_house_owner` char(16) NOT NULL,
  `address` varchar(100) NOT NULL,
  `house_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`id_house`, `id_house_owner`, `address`, `house_value`) VALUES
('h01', '5566770101100001', 'Jalan Kebenaran 7', 5000000),
('h02', '1122334712030001', 'Jalan Kacau Balau 2', 10000000),
('h03', '2525252810070001', 'Jalan Gepeer 45', 700000000);

-- --------------------------------------------------------

--
-- Table structure for table `lives`
--

CREATE TABLE `lives` (
  `id_lives` varchar(20) NOT NULL,
  `id_citizen` char(16) NOT NULL,
  `id_house` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lives`
--

INSERT INTO `lives` (`id_lives`, `id_citizen`, `id_house`) VALUES
('l01', '5566770101100001', 'h01'),
('l02', '1122334712030001', 'h02'),
('l03', '2525252810070001', 'h03'),
('l04', '5154241708090001', 'h01'),
('l05', '1289546704040001', 'h02'),
('l06', '9584514605060002', 'h03'),
('l07', '2561426002030002', 'h02'),
('l08', '8541721705060002', 'h03'),
('l09', '6845100505050005', 'h03');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id_office` varchar(20) NOT NULL,
  `id_ceo` char(16) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id_office`, `id_ceo`, `address`) VALUES
('o01', '2525252810070001', 'Jalan Pekerja Muda'),
('o02', '5154241708090001', 'Jalan Pekerja Keras'),
('o03', '1289546704040001', 'Jalan Malas Malasan');

-- --------------------------------------------------------

--
-- Table structure for table `public_facilities`
--

CREATE TABLE `public_facilities` (
  `id_public_facility` varchar(20) NOT NULL,
  `name_facility` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `public_facilities`
--

INSERT INTO `public_facilities` (`id_public_facility`, `name_facility`, `address`, `kategori`) VALUES
('PF_EF_01', 'Pakuwon Mall Jogja', 'Jalan Kali', 'Entertainment'),
('PF_HC_01', 'RS UGM', 'Jalan Kaliurang', 'HEALTH CARE'),
('PF_LF_01', 'JTE Express', 'Jalan Modern', 'Logistic'),
('PF_TS_01', 'Trans Gadjah Mada', 'Jalan Sekip', 'Public Transport');

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE `transportation` (
  `id_transportation` varchar(20) NOT NULL,
  `fleet_name` varchar(50) NOT NULL,
  `id_pic` char(16) NOT NULL,
  `quantities` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`id_transportation`, `fleet_name`, `id_pic`, `quantities`) VALUES
('AV_PF_LF_01', 'Pesawat Logistik', '1289546704040001', 10),
('LV_HC_01', 'Ambulan', '1122334712030001', 22),
('LV_PF_TS_01', 'Bus Listrik', '8541721705060002', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_fleet_deployment_basic`
-- (See below for the actual view)
--
CREATE TABLE `view_fleet_deployment_basic` (
`id_fleet` varchar(20)
,`fleet_name` varchar(50)
,`quantities` int(11)
,`PIC` varchar(100)
,`gender_citizen` varchar(6)
,`phone_number` varchar(16)
);

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id_works` varchar(20) NOT NULL,
  `id_worker` char(16) NOT NULL,
  `id_office` varchar(20) NOT NULL,
  `division` varchar(20) NOT NULL,
  `hour_rate` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id_works`, `id_worker`, `id_office`, `division`, `hour_rate`) VALUES
('w01', '2525252810070001', 'o01', 'CEO', '500000.00'),
('w02', '5154241708090001', 'o02', 'CEO', '700000.00'),
('w03', '1289546704040001', 'o03', 'CEO', '5000000.00'),
('w04', '9584514605060002', 'o01', 'HRD', '50000.00'),
('w05', '2561426002030002', 'o02', 'PEMASARAN', '10000.00'),
('w06', '8541721705060002', 'o03', 'KEAMANAN', '5000.00'),
('w07', '5566770101100001', 'o02', 'KEAMANAN', '6000.00'),
('w08', '1122334712030001', 'o03', 'KEAMANAN', '5000.00');

-- --------------------------------------------------------

--
-- Structure for view `basic_lives_details`
--
DROP TABLE IF EXISTS `basic_lives_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `basic_lives_details`  AS SELECT `h`.`id_house` AS `id_house`, `l`.`id_citizen` AS `id_citizen`, `c`.`name_citizen` AS `name_citizen`, `c`.`gender_citizen` AS `gender_citizen`, `c`.`phone_number` AS `phone_number`, `h`.`id_house_owner` AS `id_house_owner`, `c_owner`.`name_citizen` AS `owner_name`, `c_owner`.`phone_number` AS `owner_phone_number`, `h`.`address` AS `address` FROM (((`lives` `l` join `citizen` `c` on(`l`.`id_citizen` = `c`.`id_citizen`)) join `house` `h` on(`l`.`id_house` = `h`.`id_house`)) join `citizen` `c_owner` on(`h`.`id_house_owner` = `c_owner`.`id_citizen`)) ORDER BY `h`.`id_house` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `homeless_citizen`
--
DROP TABLE IF EXISTS `homeless_citizen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `homeless_citizen`  AS SELECT `c`.`id_citizen` AS `id_citizen`, `c`.`name_citizen` AS `name_citizen`, `c`.`gender_citizen` AS `gender_citizen`, `c`.`phone_number` AS `phone_number`, `c`.`social_credit_point` AS `social_credit_point` FROM `citizen` AS `c` WHERE !(`c`.`id_citizen` in (select `l`.`id_citizen` from `lives` `l`))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_fleet_deployment_basic`
--
DROP TABLE IF EXISTS `view_fleet_deployment_basic`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_fleet_deployment_basic`  AS SELECT `fd`.`id_fleet` AS `id_fleet`, `t`.`fleet_name` AS `fleet_name`, `t`.`quantities` AS `quantities`, `c`.`name_citizen` AS `PIC`, `c`.`gender_citizen` AS `gender_citizen`, `c`.`phone_number` AS `phone_number` FROM ((`fleets_deployment` `fd` join `transportation` `t` on(`fd`.`id_transportation` = `t`.`id_transportation`)) join `citizen` `c` on(`t`.`id_pic` = `c`.`id_citizen`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses`
--
ALTER TABLE `akses`
  ADD PRIMARY KEY (`id_akses`),
  ADD KEY `id_public_facility` (`id_public_facility`),
  ADD KEY `id_citizen` (`id_citizen`);

--
-- Indexes for table `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`id_citizen`);

--
-- Indexes for table `crime`
--
ALTER TABLE `crime`
  ADD PRIMARY KEY (`id_crime`);

--
-- Indexes for table `crime_records`
--
ALTER TABLE `crime_records`
  ADD PRIMARY KEY (`id_crime_records`),
  ADD KEY `id_crime` (`id_crime`),
  ADD KEY `id_citizen` (`id_citizen`);

--
-- Indexes for table `fleets_deployment`
--
ALTER TABLE `fleets_deployment`
  ADD PRIMARY KEY (`id_fleet`),
  ADD KEY `id_transportation` (`id_transportation`),
  ADD KEY `id_public_facility` (`id_public_facility`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id_house`),
  ADD KEY `id_house_owner` (`id_house_owner`);

--
-- Indexes for table `lives`
--
ALTER TABLE `lives`
  ADD PRIMARY KEY (`id_lives`),
  ADD KEY `id_citizen` (`id_citizen`),
  ADD KEY `id_house` (`id_house`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id_office`),
  ADD KEY `id_ceo` (`id_ceo`);

--
-- Indexes for table `public_facilities`
--
ALTER TABLE `public_facilities`
  ADD PRIMARY KEY (`id_public_facility`);

--
-- Indexes for table `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`id_transportation`),
  ADD KEY `id_pic` (`id_pic`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id_works`),
  ADD KEY `id_worker` (`id_worker`),
  ADD KEY `id_office` (`id_office`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akses`
--
ALTER TABLE `akses`
  ADD CONSTRAINT `akses_ibfk_1` FOREIGN KEY (`id_public_facility`) REFERENCES `public_facilities` (`id_public_facility`),
  ADD CONSTRAINT `akses_ibfk_2` FOREIGN KEY (`id_citizen`) REFERENCES `citizen` (`id_citizen`);

--
-- Constraints for table `crime_records`
--
ALTER TABLE `crime_records`
  ADD CONSTRAINT `crime_records_ibfk_1` FOREIGN KEY (`id_crime`) REFERENCES `crime` (`id_crime`),
  ADD CONSTRAINT `crime_records_ibfk_2` FOREIGN KEY (`id_citizen`) REFERENCES `citizen` (`id_citizen`);

--
-- Constraints for table `fleets_deployment`
--
ALTER TABLE `fleets_deployment`
  ADD CONSTRAINT `fleets_deployment_ibfk_1` FOREIGN KEY (`id_transportation`) REFERENCES `transportation` (`id_transportation`),
  ADD CONSTRAINT `fleets_deployment_ibfk_2` FOREIGN KEY (`id_public_facility`) REFERENCES `public_facilities` (`id_public_facility`);

--
-- Constraints for table `house`
--
ALTER TABLE `house`
  ADD CONSTRAINT `house_ibfk_1` FOREIGN KEY (`id_house_owner`) REFERENCES `citizen` (`id_citizen`);

--
-- Constraints for table `lives`
--
ALTER TABLE `lives`
  ADD CONSTRAINT `lives_ibfk_1` FOREIGN KEY (`id_citizen`) REFERENCES `citizen` (`id_citizen`),
  ADD CONSTRAINT `lives_ibfk_2` FOREIGN KEY (`id_house`) REFERENCES `house` (`id_house`);

--
-- Constraints for table `office`
--
ALTER TABLE `office`
  ADD CONSTRAINT `office_ibfk_1` FOREIGN KEY (`id_ceo`) REFERENCES `citizen` (`id_citizen`);

--
-- Constraints for table `transportation`
--
ALTER TABLE `transportation`
  ADD CONSTRAINT `transportation_ibfk_1` FOREIGN KEY (`id_pic`) REFERENCES `citizen` (`id_citizen`);

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `works_ibfk_1` FOREIGN KEY (`id_worker`) REFERENCES `citizen` (`id_citizen`),
  ADD CONSTRAINT `works_ibfk_2` FOREIGN KEY (`id_office`) REFERENCES `office` (`id_office`);
--
-- Database: `sistem_penjualan`
--
CREATE DATABASE IF NOT EXISTS `sistem_penjualan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistem_penjualan`;

-- --------------------------------------------------------

--
-- Table structure for table `m_brand`
--

CREATE TABLE `m_brand` (
  `id_brand` int(11) NOT NULL,
  `nama_brand` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_brand`
--

INSERT INTO `m_brand` (`id_brand`, `nama_brand`) VALUES
(1, 'Richeese'),
(2, 'Tango'),
(3, 'Indomie'),
(4, 'Indomilk'),
(5, 'Pepsi');

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `id_kategori` int(11) NOT NULL,
  `jenis_kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`id_kategori`, `jenis_kategori`) VALUES
(1, 'Makanan'),
(2, 'Minuman');

-- --------------------------------------------------------

--
-- Table structure for table `m_konsumen`
--

CREATE TABLE `m_konsumen` (
  `id_konsumen` int(11) NOT NULL,
  `nama_konsumen` varchar(100) DEFAULT NULL,
  `no_telp` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_konsumen`
--

INSERT INTO `m_konsumen` (`id_konsumen`, `nama_konsumen`, `no_telp`) VALUES
(1, 'Orang1', '08123121'),
(2, 'Orang2', '08123'),
(3, 'Orang3', '081923');

-- --------------------------------------------------------

--
-- Table structure for table `m_produk`
--

CREATE TABLE `m_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga_jual` varchar(255) DEFAULT NULL,
  `harga_beli` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `id_brand` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_produk`
--

INSERT INTO `m_produk` (`id_produk`, `nama_produk`, `id_kategori`, `harga_jual`, `harga_beli`, `jumlah`, `id_brand`) VALUES
(1, 'Nabati Keju', 1, '2000', '1800', 100, 1),
(3, 'Tango Coklat', 1, '2000', '1800', 90, 1),
(4, 'Pepsi', 2, '8000', '7500', 100, 5),
(5, 'Indomie Goreng', 1, '2000', '1900', 100, 3),
(6, 'Indomilk Original', 2, '7500', '7000', 100, 4);

--
-- Triggers `m_produk`
--
DELIMITER $$
CREATE TRIGGER `hapus_produk` BEFORE DELETE ON `m_produk` FOR EACH ROW BEGIN
    DECLARE jumlah_produk INT;

    -- Mengecek apakah ada transaksi yang terkait dengan produk yang akan dihapus
    SELECT COUNT(*) INTO jumlah_produk FROM t_detail_transaksi WHERE id_produk = OLD.id_produk;

    IF jumlah_produk > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Produk tidak bisa dihapus karena sudah terdapat transaksi.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `t_detail_transaksi`
--

CREATE TABLE `t_detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `harga_beli` varchar(255) DEFAULT NULL,
  `harga_jual` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_detail_transaksi`
--

INSERT INTO `t_detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_produk`, `harga_beli`, `harga_jual`, `jumlah`, `total`) VALUES
(1, 1, 1, '1800', '2000', '3', '6000'),
(2, 2, 3, '1800', '2000', '5', '10000'),
(3, 2, 4, '7500', '8000', '2', '16000'),
(4, 2, 5, '1900', '2000', '3', '6000'),
(5, 3, 6, '7000', '7500', '1', '7500'),
(6, 4, 1, '1800', '2000', '50', '100000'),
(7, 4, 3, '1800', '2000', '10', '20000');

--
-- Triggers `t_detail_transaksi`
--
DELIMITER $$
CREATE TRIGGER `insert_detail_transaksi` AFTER INSERT ON `t_detail_transaksi` FOR EACH ROW BEGIN
    DECLARE produk_id INT;
    DECLARE jumlah_produk INT;

    SET produk_id = NEW.id_produk;
    SET jumlah_produk = NEW.jumlah;

    UPDATE m_produk
    SET jumlah = jumlah - jumlah_produk
    WHERE id_produk = produk_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `t_transaksi`
--

CREATE TABLE `t_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_konsumen` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis_pembayaran` varchar(255) DEFAULT NULL,
  `kode_kasir` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_transaksi`
--

INSERT INTO `t_transaksi` (`id_transaksi`, `id_konsumen`, `tanggal`, `jenis_pembayaran`, `kode_kasir`, `total`) VALUES
(1, 1, '2023-06-08', '1', '001', '6000'),
(2, 2, '2023-06-08', '1', '002', '32000'),
(3, 3, '2023-06-08', '1', '003', '7500'),
(4, 1, '2023-06-08', '1', '003', '100000');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_detail_transaksi`
-- (See below for the actual view)
--
CREATE TABLE `view_detail_transaksi` (
`nama_konsumen` varchar(100)
,`id_transaksi` int(11)
,`tanggal` date
,`jenis_pembayaran` varchar(255)
,`kode_kasir` varchar(255)
,`id_detail_transaksi` int(11)
,`id_produk` int(11)
,`nama_produk` varchar(255)
,`harga_beli` varchar(255)
,`harga_jual` varchar(255)
,`jumlah` varchar(255)
,`total` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_produk`
-- (See below for the actual view)
--
CREATE TABLE `view_produk` (
`id_produk` int(11)
,`nama_produk` varchar(255)
,`id_kategori` int(11)
,`jenis_kategori` varchar(255)
,`harga_jual` varchar(255)
,`harga_beli` varchar(255)
,`jumlah` int(11)
,`id_brand` int(11)
,`nama_brand` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `view_detail_transaksi`
--
DROP TABLE IF EXISTS `view_detail_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_detail_transaksi`  AS SELECT `m_konsumen`.`nama_konsumen` AS `nama_konsumen`, `t_transaksi`.`id_transaksi` AS `id_transaksi`, `t_transaksi`.`tanggal` AS `tanggal`, `t_transaksi`.`jenis_pembayaran` AS `jenis_pembayaran`, `t_transaksi`.`kode_kasir` AS `kode_kasir`, `t_detail_transaksi`.`id_detail_transaksi` AS `id_detail_transaksi`, `t_detail_transaksi`.`id_produk` AS `id_produk`, `m_produk`.`nama_produk` AS `nama_produk`, `t_detail_transaksi`.`harga_beli` AS `harga_beli`, `t_detail_transaksi`.`harga_jual` AS `harga_jual`, `t_detail_transaksi`.`jumlah` AS `jumlah`, `t_detail_transaksi`.`total` AS `total` FROM (((`t_transaksi` join `m_konsumen` on(`t_transaksi`.`id_konsumen` = `m_konsumen`.`id_konsumen`)) join `t_detail_transaksi` on(`t_transaksi`.`id_transaksi` = `t_detail_transaksi`.`id_transaksi`)) join `m_produk` on(`t_detail_transaksi`.`id_produk` = `m_produk`.`id_produk`))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_produk`
--
DROP TABLE IF EXISTS `view_produk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_produk`  AS SELECT `m_produk`.`id_produk` AS `id_produk`, `m_produk`.`nama_produk` AS `nama_produk`, `m_produk`.`id_kategori` AS `id_kategori`, `m_kategori`.`jenis_kategori` AS `jenis_kategori`, `m_produk`.`harga_jual` AS `harga_jual`, `m_produk`.`harga_beli` AS `harga_beli`, `m_produk`.`jumlah` AS `jumlah`, `m_produk`.`id_brand` AS `id_brand`, `m_brand`.`nama_brand` AS `nama_brand` FROM ((`m_produk` join `m_kategori` on(`m_produk`.`id_kategori` = `m_kategori`.`id_kategori`)) join `m_brand` on(`m_produk`.`id_brand` = `m_brand`.`id_brand`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_brand`
--
ALTER TABLE `m_brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `m_konsumen`
--
ALTER TABLE `m_konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indexes for table `m_produk`
--
ALTER TABLE `m_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `t_detail_transaksi`
--
ALTER TABLE `t_detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`);

--
-- Indexes for table `t_transaksi`
--
ALTER TABLE `t_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_brand`
--
ALTER TABLE `m_brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_konsumen`
--
ALTER TABLE `m_konsumen`
  MODIFY `id_konsumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_produk`
--
ALTER TABLE `m_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_detail_transaksi`
--
ALTER TABLE `t_detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_transaksi`
--
ALTER TABLE `t_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `tes`
--
CREATE DATABASE IF NOT EXISTS `tes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tes`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
