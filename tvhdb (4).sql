-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 08:58 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tvhdb`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `fnStripTags` (`Dirty` VARCHAR(4000)) RETURNS VARCHAR(4000) CHARSET utf8mb4 BEGIN
  DECLARE iStart, iEnd, iLength int;
    WHILE Locate( '<', Dirty ) > 0 And Locate( '>', Dirty, Locate( '<', Dirty )) > 0 DO
      BEGIN
        SET iStart = Locate( '<', Dirty ), iEnd = Locate( '>', Dirty, Locate('<', Dirty ));
        SET iLength = ( iEnd - iStart) + 1;
        IF iLength > 0 THEN
          BEGIN
            SET Dirty = Insert( Dirty, iStart, iLength, '');
          END;
        END IF;
      END;
    END WHILE;
    RETURN Dirty;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `admin_id` int(11) NOT NULL,
  `admin_name` text NOT NULL,
  `admin_surname` text NOT NULL,
  `admin_email` text NOT NULL,
  `admin_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`admin_id`, `admin_name`, `admin_surname`, `admin_email`, `admin_password`) VALUES
(1, 'nich', 'chauke', 'chauke@gmail.com', 'chauke'),
(2, 'Lindelani', 'Mthethwa', 'lindelani4435@gmail.com', 'Mthethwa@4435'),
(3, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` varchar(2000) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `title`, `message`, `date`) VALUES
(12, 'Schedules of hackathon', 'From the 13th of May to 26 June 2022 we are hosting Hackathon\r\n', '2022-04-29 00:00:00'),
(72, 'test', '<p>yoh</p>\n', '2022-05-25 00:00:00'),
(73, 'Testing 2', '<p>Forces</p>\n', '2022-05-25 00:00:00'),
(75, 'You', '<p>Mo</p>\n', '2022-06-10 00:00:00'),
(77, 'TVH', '<p>Second meeting</p>\n', '2022-06-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(11) NOT NULL,
  `announcement_name` text NOT NULL,
  `announcement_body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `announcement_name`, `announcement_body`) VALUES
(6, '(Daily Scrum)', '(Scope of the meeting)');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `stud_number` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `stud_email` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `campus` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `stud_number`, `name`, `surname`, `gender`, `age`, `stud_email`, `faculty`, `mobile_number`, `skills`, `level`, `specialization`, `campus`, `status`) VALUES
(2, '225457856', 'sanele', 'madlopha', 'male', 80, 'sanele@gmail.com', 'Faculty Of Information And Communication Technology', '0820495064', 'Frontend Developer', 'Second Year', 'software', 'Soshanguve Campus', 'Pending...'),
(3, '2135585856', 'sanele', 'madlopha', 'male', 40, 'sanel@gmail.com', 'Faculty Of Information And Communication Technology', '08245235856', 'Frontend Developer', 'Second Year', 'software', 'Soshanguve Campus', 'Pending...'),
(4, '216558254', 'sanele ', 'madlopha', 'male', 50, '216558254@tut4life.ac.za', 'Faculty Of Information And Communication Technology', '0820495064', 'Backend Developer', 'First Year', 'software', 'Soshanguve Campus', 'Pending...'),
(5, '216122405', 'Nicholas', 'Chauke', 'male', 50, '216122405@tut4life.ac.za', 'Faculty Of Information And Communication Technology', '0820495064', 'Frontend Developer', 'Second Year', 'software', 'Soshanguve Campus', 'Pending...'),
(6, '568486', 'wd', 'sdfsfd', 'male', 445, '568486@tut4life.ac.za', 'Faculty Of Information And Communication Technology', '0820495064', 'Analyst', 'First Year', 'sofr', 'Soshanguve Campus', 'Pending...'),
(7, '216332520', 'lindelani', 'Mthethwa', 'male', 24, '216332520@tut4life.ac.za', 'Faculty Of Information And Communication Technology', '0649204435', 'Backend Developer', 'Final Year', 'Software', 'Soshanguve Campus', 'Pending...'),
(8, '216122404', 'Sanele', 'Madlopha', 'male', 56, '216122404@tut4life.ac.za', 'Faculty Of Information And Communication Technology', '0820495064', 'Frontend Developer', 'Second Year', 'software', 'Emalahleni Campus', 'Pending...'),
(9, '216122401', 'Sanele', 'Madlopha', 'male', 50, '216122401@tut4life.ac.za', 'Faculty Of Information And Communication Technology', '0820495064', 'Frontend Developer', 'Second Year', 'software', 'Emalahleni Campus', 'Pending...'),
(10, '216122402', 'sanele', 'madlopha', 'male', 60, '216122402@tut4life.ac.za', 'Faculty Of Information And Communication Technology', '0820495064', 'Backend Developer', 'Second Year', 'soft', 'Emalahleni Campus', 'Pending...'),
(11, '216122408', 'Nhlaka', 'Makhaza', 'male', 60, '216122408@tut4life.ac.za', 'Faculty Of Information And Communication Technology', '0802458648', 'UX &UI Designer', 'First Year', 'software', 'Soshanguve Campus', 'Pending...'),
(12, '216122096', 'Vuyelo', 'Chauke', 'male', 80, '216122096@tut4life.ac.za', 'Faculty Of Information And Communication Technology', '0820495064', 'Frontend Developer', 'Second Year', 'Multimedia', 'Soshanguve Campus', 'Pending...');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `application_id` int(11) NOT NULL,
  `student_number` int(11) NOT NULL,
  `student_name` text NOT NULL,
  `student_surname` text NOT NULL,
  `student_gender` text NOT NULL,
  `student_dob` text NOT NULL,
  `student_email` text NOT NULL,
  `student_cellno` int(11) NOT NULL,
  `participant_skills` varchar(255) NOT NULL,
  `student_faculty` text NOT NULL,
  `specialization` text NOT NULL,
  `student_level` text NOT NULL,
  `student_campus` text NOT NULL,
  `student_hobby` text NOT NULL,
  `application_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`application_id`, `student_number`, `student_name`, `student_surname`, `student_gender`, `student_dob`, `student_email`, `student_cellno`, `participant_skills`, `student_faculty`, `specialization`, `student_level`, `student_campus`, `student_hobby`, `application_status`) VALUES
(25, 215558, 'sanele', 'madlopha', 'M', '2022-01-04', 'khemfamadlopha@gmail.com', 820495038, 'Backend Developer', 'Faculty Of Information And Communication Technology', 'software', 'Final Year', 'Emalahleni Campus', 'programming', 'Panding!!!!'),
(26, 216122405, 'Sanele', 'Madlopha', 'M', '2022-04-05', 'mzwendodamadlopha@gmail.com', 820495064, 'Analyst', 'Faculty Of Management Sciences', 'Software', 'Final Year', 'Soshanguve Campus', 'programming', 'Panding!!!!');

-- --------------------------------------------------------

--
-- Table structure for table `deletedapplications`
--

CREATE TABLE `deletedapplications` (
  `application_id` int(11) NOT NULL,
  `student_number` text NOT NULL,
  `student_name` text NOT NULL,
  `student_surname` text NOT NULL,
  `student_gender` text NOT NULL,
  `student_dob` date NOT NULL,
  `student_email` text NOT NULL,
  `student_cellno` int(11) NOT NULL,
  `student_faculty` text NOT NULL,
  `specialization` text NOT NULL,
  `student_level` text NOT NULL,
  `student_campus` text NOT NULL,
  `student_hobby` text NOT NULL,
  `application_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deletedapplications`
--

INSERT INTO `deletedapplications` (`application_id`, `student_number`, `student_name`, `student_surname`, `student_gender`, `student_dob`, `student_email`, `student_cellno`, `student_faculty`, `specialization`, `student_level`, `student_campus`, `student_hobby`, `application_status`) VALUES
(3, 'undefined', 'undefined', 'undefined', 'undefined', '0000-00-00', 'undefined', 0, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '');

-- --------------------------------------------------------

--
-- Table structure for table `deletedteam`
--

CREATE TABLE `deletedteam` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deletedteam`
--

INSERT INTO `deletedteam` (`id`, `name`, `surname`, `occupation`, `catagory`, `description`, `file`) VALUES
(76, 'Mash', 'Phurutsi', 'First Year and Foundation Unit Manager (TUT)', 'Leading Organizing Team', 'Mash is a cool husband and a funny daddy to two lovely kids. He is a big brother to many people and a transformation agent who is fully against the abuse of women and children.', 'http://localhost:9002/public/uploads/1a550bda6f48e42d058a033c5446d537.jpg'),
(77, 'Tinus', 'Kruger', 'Scrum Master, Coach  IQ Business', 'Industry Volunteer', 'Experienced Scrum Master with a demonstrated history of working in the management consulting industry. Skilled in Facilitation, Coaching/Mentoring, a Servant leader, Jira and Microsoft Word and Excel.', 'http://localhost:9002/public/uploads/8a4f2884bb55b8d578658c9a9384168d.jpg'),
(78, 'Simon ', 'Sekele', 'Lecturer ( TUT)', 'Organizing Team', 'Simon is a BTech Information Technology (Intelligent Industrial Systems) Graduate', 'http://localhost:9002/public/uploads/7ae33adf81e365b234a32858c3a82fa2.jpg'),
(80, 'Simon ', 'Sekele', 'Lecturer ( TUT)', 'Organizing Team', 'Simon is a BTech Information Technology (Intellige...', 'http://localhost:9002/public/uploads/7ae33adf81e365b234a32858c3a82fa2.jpg'),
(83, 'sddfsdf', 'dfsdfdf', 'fdfsdfsdf', 'Industry Volunteer', 'ki,yioio', 'http://localhost:9002/public/uploads/e96fcc576e9f3775f7e385c7c714be5d.jpeg'),
(84, 'sddfsdf', 'dfsdfdf', 'fdfsdfsdf', 'Industry Volunteer', 'kiyioio', 'http://localhost:9002/public/uploads/af819f49155994b30f6696db6e0005d9.jpg'),
(85, 'wdaw', 'asdas', 'sdadas', 'Leading Organizing Team', 'asddss', 'http://localhost:9002/public/uploads/babb09ce4a3c966a6aeaab941c62437f.jpeg'),
(86, 'wdaw', 'asdas', 'sdadas', 'Leading Organizing Team', 'asddss', 'http://localhost:9002/public/uploads/babb09ce4a3c966a6aeaab941c62437f.jpeg'),
(88, 'check', 'fdfd', 'dsfsdf', 'Mentor', 'dfsdfd', 'http://localhost:9002/public/uploads/66f358d6d9d39fcfc2e9b36d6330fa11.jpg'),
(89, 'Sanele', 'Madlopha', 'ICEP Intern', 'Mentor', 'Software developer', 'http://localhost:9002/public/uploads/e5f5916482e000b3c3a81544cf92de17.jpg'),
(90, 'Sanele', 'Madlopha', 'ICEP Intern', 'Mentor', 'Sanele is a Software developer', 'http://localhost:9002/public/uploads/17a9386662bee1baf9ed24f65256a1e8.jpg'),
(91, 'sa', 'cd', 'cd', 'Mentor', 'csdcdcds', 'http://localhost:9002/public/uploads/abf3a50540a6bb52f7b6460850c5af84.gif'),
(92, 'Vuyelo', 'Chauke', 'Frontend', 'Leading Organizing Team', 'ICEP intern', 'http://localhost:9002/public/uploads/17a9386662bee1baf9ed24f65256a1e8.jpg'),
(93, 'test', 'dsdsd', 'sdf', 'Industry Volunteer', 'dsfdf', 'http://localhost:9002/public/uploads/17a9386662bee1baf9ed24f65256a1e8.jpg'),
(94, 'sdff', 'dsffds', 'dfsfd', 'Industry Volunteer', 'fsdfdsdf', 'http://localhost:9002/public/uploads/17a9386662bee1baf9ed24f65256a1e8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `deletedusers`
--

CREATE TABLE `deletedusers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `surname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `passcorn` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deletedusers`
--

INSERT INTO `deletedusers` (`id`, `name`, `surname`, `email`, `password`, `passcorn`) VALUES
(1, 'Doz', 'Nyambose', 'doz@gmail.com', '$2b$08$saA.z30.1bhaM9NotMhzM.5fZ7SyBQEuWIfGmqRPoaSHUOj2UNwgW', '$2b$08$fmkd16hFvVBjcSkhMFUx0.AUoAWMbNAYNodkZOSCYhm4xUExgxKou'),
(2, 'Lindelani', 'Nyambose', 'lindelani4435@gmail.com', '$2b$08$bkQdOYewsCVfZpYXnfLcj.oqK/kTmWBjUYiJGs58xbfIb85aib0Lu', '$2b$08$hlqKcMOkEZvD8kcxF.ZmXO/3vmpsC63Hl6.goxg3zZ15oqrLIrHva'),
(3, 'Lindelani', 'Nyambose', 'lindelani4435@gmail.com', '$2b$08$qbynIARa1wWs7zJJWKsFcu2ShQg4z0smaVZEbuGp8tUNxW9yCm7AW', '$2b$08$DH/u7Ty7gRONchvGP0HOT.N90oi5.5WOfGOdoP82pMN47QAK5pLB.'),
(4, 'Lindelani', 'Nyambose', 'lindelani4435@gmail.com', '$2b$08$GEFH0YQl3Lk0nqzhY6WRzOvEh7x3u7S3QoLjbkWcqJ0gLkrk6Kk/K', '$2b$08$SMgg7rYwnupB2PWrexZo0Ol7Og9/ANESqzlte2Pj/AiHbjQeIaI46'),
(5, 'Lindelani', 'Nyambose', 'lindelani4435@gmail.com', '$2b$08$fkvMXWMZIvshkpcdKmcpteORyChW8MnpCRJBaYru8SZmQBYkW/LCG', '$2b$08$6kxLCs2yWzrDLsjgrqg1PeUufUNYlDl9skR7iurenZZKWvoHgVaPi');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` int(11) NOT NULL,
  `picturePath` varchar(255) NOT NULL,
  `topic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `picturePath`, `topic`) VALUES
(5, 'http://localhost:9002/public/rewards/17a9386662bee1baf9ed24f65256a1e8.jpg', 'test5');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `surname`, `occupation`, `catagory`, `description`, `file`) VALUES
(79, 'Mash', 'Phurutsi', 'First Year and Foundation Unit Manager (TUT)', 'Leading Organizing Team', 'Mash is a cool husband and a funny daddy to two lovely kids. He is a big brother to many people and a transformation agent who is fully against the abuse of women and children.', 'http://localhost:9002/public/uploads/1a550bda6f48e42d058a033c5446d537.jpg'),
(81, 'Tinus', 'Kruger', 'Scrum Master, Coach  IQ Business', 'Industry Volunteer', 'Experienced Scrum Master with a demonstrated history of working in the management consulting industry. Skilled in Facilitation, Coaching/Mentoring, a Servant leader, Jira and Microsoft Word and Excel.', 'http://localhost:9002/public/uploads/8a4f2884bb55b8d578658c9a9384168d.jpg'),
(82, 'Simon', 'Sekele', 'lecture (TUT)', 'Organizing Team', 'Simon is a BTech Information Technology (Intelligent Industrial Systems) Graduate', 'http://localhost:9002/public/uploads/7ae33adf81e365b234a32858c3a82fa2.jpg'),
(95, 'Vuyelo ', 'Chauke', 'Frontend developer', 'Mentor', 'ICEP Intern', 'http://localhost:9002/public/uploads/17a9386662bee1baf9ed24f65256a1e8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `password`) VALUES
(109, 'Lindelani', 'Nyambose', 'lindelani4435@gmail.com', 'Ntando@KaBayanda'),
(110, 'Nicholas', 'Chauke', 'chaukevn4@gmail.com', 'Chauke@4'),
(112, 'sa', 'mad', 'sanele@gmail.com', 'sanele'),
(113, 'mzwe', 'madlopha', 'mzwe@gmail.com', '123456'),
(114, 'qo', 'mac', 'qo@gmail.com', '123456'),
(123, 'zad', 'mad', 'mzwendodamadlopha@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `deletedapplications`
--
ALTER TABLE `deletedapplications`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `deletedteam`
--
ALTER TABLE `deletedteam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deletedusers`
--
ALTER TABLE `deletedusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `deletedapplications`
--
ALTER TABLE `deletedapplications`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deletedteam`
--
ALTER TABLE `deletedteam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `deletedusers`
--
ALTER TABLE `deletedusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
