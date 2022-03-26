-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2022 at 04:09 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be15_cr11_petadoption_richardszigethy`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoption`
--

CREATE TABLE `adoption` (
  `adoption_id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adoption`
--

INSERT INTO `adoption` (`adoption_id`, `animal_id`, `user_id`, `date`) VALUES
(80, 10, 2, '2019-12-31 23:00:00'),
(81, 10, 4, '2022-03-26 15:01:40'),
(82, 10, 4, '2022-03-26 15:01:44'),
(83, 10, 4, '2022-03-26 15:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `animal_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `orgin_and_treatment` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `size` enum('small','big') NOT NULL,
  `age` varchar(255) NOT NULL,
  `hobbies` varchar(255) NOT NULL,
  `breed` varchar(255) NOT NULL,
  `status` enum('available','unavailable') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`animal_id`, `name`, `picture`, `orgin_and_treatment`, `description`, `size`, `age`, `hobbies`, `breed`, `status`) VALUES
(10, 'Garfield', 'Garfield.jpeg', 'Austria. Profesionnal breeding. All vaccinations available', 'Very sweet kitten.', 'small', '2', 'Laserpointer, eating', 'cat ', 'unavailable'),
(11, 'Hachi', 'Hachi.jpg', 'Hungary. Profesionnal breeding. Enjoyed good training', 'Very stubborn and aggresive behavior against strangers. Very loyal family dog and security dog.', 'big', '7', 'Sleeping, petting', 'dog', 'available'),
(12, 'Hector', 'Hector.jpg', 'Austria. An accident in a farm. All vaccinations available', 'Very sweet kitten.', 'big', '1', 'Playing, sleeping', 'cat ', 'available'),
(13, 'Arslan', 'Kalb.jpg', 'Austria. Born on a farm. Much outlet', 'Very sweet puppy.', 'big', '10', 'Fetching, horseback riding', 'calf ', 'available'),
(14, 'Keksie', 'Keksie.jpg', 'Bulgaria. From the streets. All vaccinations available', 'Experianced cat, breeded once.', 'big', '4', 'Hiding, sleeping', 'cat ', 'available'),
(15, 'Kira', 'Kira.jpg', 'Austria. Accident in a Farm. All vaccinations available. Training also available, but not finished due to her ADHS', 'Very smart but goofy dog. Hyperactive, loveable but sometimes demanding. Needs training and long walks.', 'big', '10', 'Eating, fetching, ball games, hiding, puzzles, cuddling. Always around one of the owners or people. Very lovable', 'dog', 'unavailable'),
(16, 'Ohrwaschl', 'Ohrwaschl.jpg', 'Bulgaria. From an animal shelter. All vaccinations available', 'Kind hearted.', 'small', '12', 'Cuddles, playing', 'dog ', 'available'),
(17, 'Ka', 'Schlange.jpg', 'Burma. From the rainforrest. All vaccinations available', 'Very sweet.', 'big', '5', 'Killing', 'snake ', 'available'),
(18, 'Bacon', 'Schweinchen.jpg', 'Austria. Profesionnal breeding. All vaccinations available', 'Little Pig Boy. He comes from the dirt', 'small', '1', 'Dirt, eating', 'Pig ', 'available'),
(19, 'Xena', 'Xena.jpg', 'Hungary. Unwanted after a child. I mean how you can not love her? You could give away the kid but not Xena. All vaccinations available', 'Very Loveable and literally the best dog ever. I never understood the movie \"John Wick\" until I got her.', 'small', '10', 'Cuddles, love, treats', 'dog ', 'unavailable');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `u_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `password`, `u_address`, `email`, `picture`, `phone`, `status`) VALUES
(1, 'Richard', 'Szigethy', '123456', 'St. Pölten', 'richard@gmail.com', 'Richard.jpg', '6064565845', 'adm'),
(2, 'Dummy', 'Data', '123456', 'Karlstetten', 'dummy@gmail.com', 'Dummy.png', '8064565845', 'user'),
(3, 'Richard', 'Berento', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'rew4234', 'rerqqrq@gmail.com', 'Richard.jpg', '34455566', 'adm'),
(4, 'Richard', 'Borticiello', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Maximilianstraße 122', 'richardb@gmail.com', '623f177b55359.jpg', '065499949499', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoption`
--
ALTER TABLE `adoption`
  ADD PRIMARY KEY (`adoption_id`),
  ADD KEY `animal_id` (`animal_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`animal_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoption`
--
ALTER TABLE `adoption`
  MODIFY `adoption_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `animal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adoption`
--
ALTER TABLE `adoption`
  ADD CONSTRAINT `adoption_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`animal_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `adoption_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
