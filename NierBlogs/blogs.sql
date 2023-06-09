-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 01:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(2, 'Wild Life', 'This is the description for wild life category'),
(4, 'Science &amp; Technology', 'This is the description or science and technology'),
(5, 'Uncategorized', 'This is the description for uncategorized category'),
(7, 'Art', 'This is the description for the art category'),
(8, 'Food', 'This is the description food category'),
(9, 'Travel', 'This is the description for travel category\r\n'),
(10, 'Animals', 'Description for animals category');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(16, 'Lorem ipsum dolor ', 'Lorem ipsum dolor sit amet consectetur adipiscing elit leo, nulla nullam pellentesque etiam penatibus facilisis condimentum. Semper hac imperdiet tellus sociis himenaeos aliquam varius eget inceptos, vehicula natoque ac dictumst tincidunt sagittis tempor tristique, eleifend aenean massa luctus gravida primis aptent mollis. Tristique platea eu litora eleifend nullam faucibus nostra urna odio, penatibus mattis enim inceptos eros dis dui proin ullamcorper, hac semper viverra ultricies sollicitudin a taciti senectus. Orci leo urna lacus vitae rutrum, dignissim tellus nulla fermentum auctor laoreet, quam nisl nec duis. Auctor nunc hac maecenas faucibus mollis venenatis lacus euismod, ligula pharetra rutrum malesuada sem integer sed, diam orci nulla ultricies bibendum curabitur erat. Venenatis augue cras suscipit nisi est tristique faucibus, consequat purus at sed mi. Cursus tellus torquent varius nisl magnis ultrices placerat, ante turpis egestas mattis eget. Et per facilisis hendrerit accumsan diam tincidunt etiam rhoncus mattis ultricies, tellus nulla mauris vestibulum eget pulvinar natoque mi. Interdum ut nisi laoreet ultricies leo purus porta metus, accumsan vehicula nec aliquet vitae aptent tristique.\r\n\r\nPulvinar facilisis blandit gravida luctus tincidunt pretium duis pellentesque habitasse, natoque rhoncus cras egestas risus faucibus sapien. Dictumst dictum bibendum iaculis cursus curae a ornare, per senectus ligula mi aptent luctus sodales, sapien ante imperdiet nascetur orci diam. Pellentesque dictum mollis ad auctor ridiculus rutrum convallis per himenaeos morbi ut, urna etiam tortor vel nunc facilisi sociis quis imperdiet senectus volutpat, hendrerit tristique semper mattis justo suspendisse platea ornare primis dui. Dui blandit parturient varius mi faucibus quam fames orci per, lobortis dictum tincidunt vel hendrerit nunc class sollicitudin tempor, erat sed cum congue pharetra libero fringilla neque. Duis per commodo sociosqu interdum sollicitudin habitant, magna vel rutrum sodales mi himenaeos conubia, aenean tortor lacinia ac massa.', '1686349582pexels-janko-ferlic-1068554.jpg', '2023-06-09 22:26:22', 2, 14, 0),
(17, 'Gravida inceptos interdum', 'Lorem ipsum dolor sit amet consectetur adipiscing elit, libero nec non felis dui a conubia, sagittis dapibus mauris eget tempus nascetur. Himenaeos pharetra viverra enim facilisi cras ridiculus convallis platea egestas, turpis praesent curae nam aliquet venenatis cursus gravida, taciti tempor netus a mollis duis sodales dapibus. Nam nibh mattis venenatis hendrerit eros duis quam sociis tortor vel mauris volutpat, aliquam justo class phasellus cursus nascetur nisi fames mi sociosqu libero, taciti habitasse iaculis sodales egestas suspendisse pretium himenaeos parturient ac tristique. Primis dis tortor laoreet at tempor luctus duis iaculis, fringilla magnis taciti nisi penatibus ultrices natoque, class varius est orci sem dictumst netus. Arcu porta non eros suspendisse feugiat pellentesque in phasellus nibh ad vehicula sed sagittis, penatibus semper potenti lacus cras orci rutrum ridiculus metus nam dapibus. Nullam aptent penatibus fusce taciti massa molestie ad cubilia pulvinar vel, himenaeos hendrerit potenti sollicitudin arcu diam tincidunt mauris etiam turpis praesent, varius faucibus orci nisi bibendum curabitur montes aliquam porttitor. Vestibulum platea odio dis mus ante lacus condimentum primis, potenti vel parturient curae mattis ligula nascetur, ultricies natoque torquent tempor laoreet quisque magna. Aliquet laoreet neque quam a porta habitasse primis aliquam, nisl accumsan tristique eu ante felis donec vel, feugiat nisi dignissim venenatis platea suspendisse porttitor. Euismod imperdiet egestas justo facilisis vel sed nisl platea, orci libero tristique aliquet at pharetra ad phasellus, integer erat arcu nullam gravida urna ultricies.\r\n\r\nNibh justo lobortis sed sem facilisis, mauris nec diam sociis libero risus, varius primis accumsan pulvinar. Iaculis sollicitudin semper lacinia nunc eros suspendisse facilisis scelerisque suscipit, pretium egestas neque hac habitasse eu tristique vel aliquet feugiat, vitae odio ante massa erat ac dictum cursus. Quis faucibus viverra nascetur scelerisque gravida mus vel commodo praesent convallis, porta ultricies conubia sociis pellentesque pulvinar sed aliquam cras, bibendum a platea facilisis fames consequat velit erat enim. Varius purus venenatis metus ultricies urna cum montes convallis ornare euismod, in inceptos at bibendum torquent cursus erat himenaeos eleifend, laoreet eu hendrerit fames semper aenean orci class suspendisse. Et potenti commodo cras ullamcorper, mattis magna neque, tristique faucibus habitasse. Praesent nullam gravida sociosqu fringilla cubilia malesuada dictumst dictum lectus, magna morbi risus at hendrerit hac orci neque porta vitae, erat nisi himenaeos ad nulla est mattis magnis.\r\n\r\nEleifend quisque nascetur vivamus tristique nulla semper magnis donec turpis, placerat parturient aliquam risus conubia vestibulum ridiculus. Ante erat purus tortor vitae faucibus dapibus gravida suscipit augue lacinia id magna, aptent luctus massa consequat platea tellus ornare neque dis iaculis. Sem imperdiet rutrum mollis vivamus purus felis interdum arcu ullamcorper, odio tristique at tempus sociis fringilla praesent. Imperdiet arcu enim integer feugiat dui cubilia massa fusce est a, convallis accumsan fermentum lacus tellus nisi laoreet taciti curabitur, rhoncus commodo id faucibus habitant non mattis sociis egestas. Vel turpis mus molestie quam lectus sollicitudin tristique iaculis magnis, taciti massa dictumst per nisl mattis phasellus eu, vivamus himenaeos dignissim et at sagittis rhoncus condimentum. Tempus gravida nullam purus cubilia consequat sociis felis fermentum nostra sem torquent, leo volutpat velit suspendisse magnis eros rhoncus sed nascetur platea tellus litora, phasellus vel condimentum ut quis nisl habitasse augue mi class. Ac in feugiat fringilla nascetur sodales mi, proin urna blandit venenatis pharetra, lacinia condimentum vel sapien molestie. Facilisi rutrum nibh scelerisque natoque dictumst, commodo ac primis ad, urna auctor vivamus lobortis. Elementum cras torquent curae commodo turpis enim sem viverra faucibus justo id lobortis, arcu congue ligula iaculis sagittis platea nunc rhoncus morbi vehicula facilisis.', '1686349642pexels-chokniti-khongchum-2280571.jpg', '2023-06-09 22:27:22', 4, 14, 0),
(18, 'Volutpat cum felis ad commodo', 'Lorem ipsum dolor sit amet consectetur adipiscing elit hendrerit, mus habitant cursus vehicula molestie congue mauris, sed felis a cubilia ridiculus risus sociis. Vel ridiculus orci nisi varius magna rhoncus tellus mi leo aliquam malesuada, nibh ligula platea bibendum nec non et convallis class mus, inceptos sociis erat a nostra facilisis morbi magnis sagittis velit. Donec proin at lectus ligula dui ultrices curabitur dis massa, rhoncus class himenaeos nulla praesent vestibulum iaculis tempor, sem aliquam facilisis penatibus elementum sagittis convallis conubia. Est nibh pulvinar porttitor nec mauris senectus hac leo, et commodo nostra purus quam congue risus. Primis condimentum suscipit eget nibh feugiat purus lectus nisl, risus consequat urna a euismod hac parturient imperdiet fringilla, cursus egestas torquent luctus laoreet dis sagittis. Laoreet enim sem ante egestas id metus tempus dapibus sociis facilisi mollis tortor et, penatibus torquent lacinia felis ultrices dis risus maecenas dictumst magna proin. Volutpat fames laoreet venenatis at pharetra phasellus litora varius, dui ornare eleifend hendrerit nascetur nisl nullam, hac fringilla quam leo dignissim ad auctor.\r\n\r\nMassa eget bibendum mattis nostra magnis eleifend et suspendisse, platea proin convallis sodales ornare inceptos eros vitae lobortis, tortor volutpat vivamus sed vulputate ligula ultrices. Tristique ligula ornare facilisis ut parturient molestie lobortis habitasse placerat suspendisse integer nisi urna, ac vivamus donec viverra consequat porta pretium cubilia cras himenaeos facilisi arcu. Ante magnis duis massa in aenean tempus ligula sollicitudin lobortis mus scelerisque quisque lacus, dis natoque mauris porta nisi congue primis urna gravida iaculis eu. Varius proin maecenas natoque interdum torquent euismod tincidunt, inceptos metus magnis dis vitae a blandit rhoncus, sagittis dictumst tempus vulputate curabitur dignissim.\r\n\r\nEros gravida justo tellus rhoncus quisque hac at lectus tempus, volutpat diam in nostra lobortis sem scelerisque interdum, parturient bibendum ante porta libero dictumst et placerat. Sed fermentum congue conubia senectus metus suscipit luctus fringilla phasellus tristique, mattis ullamcorper condimentum faucibus suspendisse posuere nibh aliquet. Parturient dignissim tristique aptent metus id pulvinar libero leo iaculis, potenti cursus mi gravida turpis facilisis bibendum. Aliquet nullam urna vel aptent orci semper curabitur, morbi commodo ligula suspendisse lectus pulvinar quis nibh, justo rutrum sollicitudin pharetra platea potenti phasellus, dapibus consequat imperdiet integer leo viverra. Commodo ullamcorper vulputate etiam vel nisi natoque justo per leo, sociis hendrerit lobortis bibendum consequat pharetra mauris sodales, tortor nam neque elementum habitant vestibulum nascetur sed. Torquent mus commodo non nisi bibendum lectus laoreet metus diam luctus elementum dignissim potenti sollicitudin at, vivamus consequat mollis augue urna inceptos eu fringilla aliquet pellentesque ultricies nullam libero. Curae magna placerat sapien a est sed sociis parturient, aliquet ridiculus maecenas vestibulum ad aliquam dignissim, duis fermentum velit condimentum habitant ut cursus. Cum placerat augue nec pellentesque odio porttitor mauris, nascetur aliquet at dictum vitae dis, fermentum ridiculus nullam scelerisque vel risus donec, montes neque luctus commodo rutrum. Tempor eget porta hendrerit ultrices rhoncus feugiat facilisi eu nunc pulvinar, enim inceptos felis pharetra nibh dapibus facilisis platea malesuada. Nunc ut urna vestibulum potenti sollicitudin tellus praesent tempor class sociosqu bibendum, fames conubia etiam litora montes dui fusce est rutrum.', '1686349694artem-kniaz-DqgMHzeio.jpg', '2023-06-09 22:28:14', 5, 14, 1),
(19, 'Commodo ullamcorper vulputate', 'Lorem ipsum dolor sit amet consectetur adipiscing elit hendrerit, mus habitant cursus vehicula molestie congue mauris, sed felis a cubilia ridiculus risus sociis. Vel ridiculus orci nisi varius magna rhoncus tellus mi leo aliquam malesuada, nibh ligula platea bibendum nec non et convallis class mus, inceptos sociis erat a nostra facilisis morbi magnis sagittis velit. Donec proin at lectus ligula dui ultrices curabitur dis massa, rhoncus class himenaeos nulla praesent vestibulum iaculis tempor, sem aliquam facilisis penatibus elementum sagittis convallis conubia. Est nibh pulvinar porttitor nec mauris senectus hac leo, et commodo nostra purus quam congue risus. Primis condimentum suscipit eget nibh feugiat purus lectus nisl, risus consequat urna a euismod hac parturient imperdiet fringilla, cursus egestas torquent luctus laoreet dis sagittis. Laoreet enim sem ante egestas id metus tempus dapibus sociis facilisi mollis tortor et, penatibus torquent lacinia felis ultrices dis risus maecenas dictumst magna proin. Volutpat fames laoreet venenatis at pharetra phasellus litora varius, dui ornare eleifend hendrerit nascetur nisl nullam, hac fringilla quam leo dignissim ad auctor.\r\n\r\nMassa eget bibendum mattis nostra magnis eleifend et suspendisse, platea proin convallis sodales ornare inceptos eros vitae lobortis, tortor volutpat vivamus sed vulputate ligula ultrices. Tristique ligula ornare facilisis ut parturient molestie lobortis habitasse placerat suspendisse integer nisi urna, ac vivamus donec viverra consequat porta pretium cubilia cras himenaeos facilisi arcu. Ante magnis duis massa in aenean tempus ligula sollicitudin lobortis mus scelerisque quisque lacus, dis natoque mauris porta nisi congue primis urna gravida iaculis eu. Varius proin maecenas natoque interdum torquent euismod tincidunt, inceptos metus magnis dis vitae a blandit rhoncus, sagittis dictumst tempus vulputate curabitur dignissim.\r\n\r\nEros gravida justo tellus rhoncus quisque hac at lectus tempus, volutpat diam in nostra lobortis sem scelerisque interdum, parturient bibendum ante porta libero dictumst et placerat. Sed fermentum congue conubia senectus metus suscipit luctus fringilla phasellus tristique, mattis ullamcorper condimentum faucibus suspendisse posuere nibh aliquet. Parturient dignissim tristique aptent metus id pulvinar libero leo iaculis, potenti cursus mi gravida turpis facilisis bibendum. Aliquet nullam urna vel aptent orci semper curabitur, morbi commodo ligula suspendisse lectus pulvinar quis nibh, justo rutrum sollicitudin pharetra platea potenti phasellus, dapibus consequat imperdiet integer leo viverra. Commodo ullamcorper vulputate etiam vel nisi natoque justo per leo, sociis hendrerit lobortis bibendum consequat pharetra mauris sodales, tortor nam neque elementum habitant vestibulum nascetur sed. Torquent mus commodo non nisi bibendum lectus laoreet metus diam luctus elementum dignissim potenti sollicitudin at, vivamus consequat mollis augue urna inceptos eu fringilla aliquet pellentesque ultricies nullam libero. Curae magna placerat sapien a est sed sociis parturient, aliquet ridiculus maecenas vestibulum ad aliquam dignissim, duis fermentum velit condimentum habitant ut cursus. Cum placerat augue nec pellentesque odio porttitor mauris, nascetur aliquet at dictum vitae dis, fermentum ridiculus nullam scelerisque vel risus donec, montes neque luctus commodo rutrum. Tempor eget porta hendrerit ultrices rhoncus feugiat facilisi eu nunc pulvinar, enim inceptos felis pharetra nibh dapibus facilisis platea malesuada. Nunc ut urna vestibulum potenti sollicitudin tellus praesent tempor class sociosqu bibendum, fames conubia etiam litora montes dui fusce est rutrum.', '1686349725family-kids.jpg', '2023-06-09 22:28:45', 5, 14, 0),
(20, 'Praesent sagittis quam id consequat', 'Lorem ipsum dolor sit amet consectetur adipiscing elit hendrerit, mus habitant cursus vehicula molestie congue mauris, sed felis a cubilia ridiculus risus sociis. Vel ridiculus orci nisi varius magna rhoncus tellus mi leo aliquam malesuada, nibh ligula platea bibendum nec non et convallis class mus, inceptos sociis erat a nostra facilisis morbi magnis sagittis velit. Donec proin at lectus ligula dui ultrices curabitur dis massa, rhoncus class himenaeos nulla praesent vestibulum iaculis tempor, sem aliquam facilisis penatibus elementum sagittis convallis conubia. Est nibh pulvinar porttitor nec mauris senectus hac leo, et commodo nostra purus quam congue risus. Primis condimentum suscipit eget nibh feugiat purus lectus nisl, risus consequat urna a euismod hac parturient imperdiet fringilla, cursus egestas torquent luctus laoreet dis sagittis. Laoreet enim sem ante egestas id metus tempus dapibus sociis facilisi mollis tortor et, penatibus torquent lacinia felis ultrices dis risus maecenas dictumst magna proin. Volutpat fames laoreet venenatis at pharetra phasellus litora varius, dui ornare eleifend hendrerit nascetur nisl nullam, hac fringilla quam leo dignissim ad auctor.\r\n\r\nMassa eget bibendum mattis nostra magnis eleifend et suspendisse, platea proin convallis sodales ornare inceptos eros vitae lobortis, tortor volutpat vivamus sed vulputate ligula ultrices. Tristique ligula ornare facilisis ut parturient molestie lobortis habitasse placerat suspendisse integer nisi urna, ac vivamus donec viverra consequat porta pretium cubilia cras himenaeos facilisi arcu. Ante magnis duis massa in aenean tempus ligula sollicitudin lobortis mus scelerisque quisque lacus, dis natoque mauris porta nisi congue primis urna gravida iaculis eu. Varius proin maecenas natoque interdum torquent euismod tincidunt, inceptos metus magnis dis vitae a blandit rhoncus, sagittis dictumst tempus vulputate curabitur dignissim.\r\n\r\nEros gravida justo tellus rhoncus quisque hac at lectus tempus, volutpat diam in nostra lobortis sem scelerisque interdum, parturient bibendum ante porta libero dictumst et placerat. Sed fermentum congue conubia senectus metus suscipit luctus fringilla phasellus tristique, mattis ullamcorper condimentum faucibus suspendisse posuere nibh aliquet. Parturient dignissim tristique aptent metus id pulvinar libero leo iaculis, potenti cursus mi gravida turpis facilisis bibendum. Aliquet nullam urna vel aptent orci semper curabitur, morbi commodo ligula suspendisse lectus pulvinar quis nibh, justo rutrum sollicitudin pharetra platea potenti phasellus, dapibus consequat imperdiet integer leo viverra. Commodo ullamcorper vulputate etiam vel nisi natoque justo per leo, sociis hendrerit lobortis bibendum consequat pharetra mauris sodales, tortor nam neque elementum habitant vestibulum nascetur sed. Torquent mus commodo non nisi bibendum lectus laoreet metus diam luctus elementum dignissim potenti sollicitudin at, vivamus consequat mollis augue urna inceptos eu fringilla aliquet pellentesque ultricies nullam libero. Curae magna placerat sapien a est sed sociis parturient, aliquet ridiculus maecenas vestibulum ad aliquam dignissim, duis fermentum velit condimentum habitant ut cursus. Cum placerat augue nec pellentesque odio porttitor mauris, nascetur aliquet at dictum vitae dis, fermentum ridiculus nullam scelerisque vel risus donec, montes neque luctus commodo rutrum. Tempor eget porta hendrerit ultrices rhoncus feugiat facilisi eu nunc pulvinar, enim inceptos felis pharetra nibh dapibus facilisis platea malesuada. Nunc ut urna vestibulum potenti sollicitudin tellus praesent tempor class sociosqu bibendum, fames conubia etiam litora montes dui fusce est rutrum.', '1686349829pexels-steve-johnson-1145720.jpg', '2023-06-09 22:30:29', 7, 15, 0),
(21, 'Praesent sagittis quam id consequat', 'Lorem ipsum dolor sit amet consectetur adipiscing elit hendrerit, mus habitant cursus vehicula molestie congue mauris, sed felis a cubilia ridiculus risus sociis. Vel ridiculus orci nisi varius magna rhoncus tellus mi leo aliquam malesuada, nibh ligula platea bibendum nec non et convallis class mus, inceptos sociis erat a nostra facilisis morbi magnis sagittis velit. Donec proin at lectus ligula dui ultrices curabitur dis massa, rhoncus class himenaeos nulla praesent vestibulum iaculis tempor, sem aliquam facilisis penatibus elementum sagittis convallis conubia. Est nibh pulvinar porttitor nec mauris senectus hac leo, et commodo nostra purus quam congue risus. Primis condimentum suscipit eget nibh feugiat purus lectus nisl, risus consequat urna a euismod hac parturient imperdiet fringilla, cursus egestas torquent luctus laoreet dis sagittis. Laoreet enim sem ante egestas id metus tempus dapibus sociis facilisi mollis tortor et, penatibus torquent lacinia felis ultrices dis risus maecenas dictumst magna proin. Volutpat fames laoreet venenatis at pharetra phasellus litora varius, dui ornare eleifend hendrerit nascetur nisl nullam, hac fringilla quam leo dignissim ad auctor.\r\n\r\nMassa eget bibendum mattis nostra magnis eleifend et suspendisse, platea proin convallis sodales ornare inceptos eros vitae lobortis, tortor volutpat vivamus sed vulputate ligula ultrices. Tristique ligula ornare facilisis ut parturient molestie lobortis habitasse placerat suspendisse integer nisi urna, ac vivamus donec viverra consequat porta pretium cubilia cras himenaeos facilisi arcu. Ante magnis duis massa in aenean tempus ligula sollicitudin lobortis mus scelerisque quisque lacus, dis natoque mauris porta nisi congue primis urna gravida iaculis eu. Varius proin maecenas natoque interdum torquent euismod tincidunt, inceptos metus magnis dis vitae a blandit rhoncus, sagittis dictumst tempus vulputate curabitur dignissim.\r\n\r\nEros gravida justo tellus rhoncus quisque hac at lectus tempus, volutpat diam in nostra lobortis sem scelerisque interdum, parturient bibendum ante porta libero dictumst et placerat. Sed fermentum congue conubia senectus metus suscipit luctus fringilla phasellus tristique, mattis ullamcorper condimentum faucibus suspendisse posuere nibh aliquet. Parturient dignissim tristique aptent metus id pulvinar libero leo iaculis, potenti cursus mi gravida turpis facilisis bibendum. Aliquet nullam urna vel aptent orci semper curabitur, morbi commodo ligula suspendisse lectus pulvinar quis nibh, justo rutrum sollicitudin pharetra platea potenti phasellus, dapibus consequat imperdiet integer leo viverra. Commodo ullamcorper vulputate etiam vel nisi natoque justo per leo, sociis hendrerit lobortis bibendum consequat pharetra mauris sodales, tortor nam neque elementum habitant vestibulum nascetur sed. Torquent mus commodo non nisi bibendum lectus laoreet metus diam luctus elementum dignissim potenti sollicitudin at, vivamus consequat mollis augue urna inceptos eu fringilla aliquet pellentesque ultricies nullam libero. Curae magna placerat sapien a est sed sociis parturient, aliquet ridiculus maecenas vestibulum ad aliquam dignissim, duis fermentum velit condimentum habitant ut cursus. Cum placerat augue nec pellentesque odio porttitor mauris, nascetur aliquet at dictum vitae dis, fermentum ridiculus nullam scelerisque vel risus donec, montes neque luctus commodo rutrum. Tempor eget porta hendrerit ultrices rhoncus feugiat facilisi eu nunc pulvinar, enim inceptos felis pharetra nibh dapibus facilisis platea malesuada. Nunc ut urna vestibulum potenti sollicitudin tellus praesent tempor class sociosqu bibendum, fames conubia etiam litora montes dui fusce est rutrum.', '1686349872pexels-ash-376464.jpg', '2023-06-09 22:31:12', 8, 15, 0),
(22, 'Sagittis quam id consequat', 'Lorem ipsum dolor sit amet consectetur adipiscing elit hendrerit, mus habitant cursus vehicula molestie congue mauris, sed felis a cubilia ridiculus risus sociis. Vel ridiculus orci nisi varius magna rhoncus tellus mi leo aliquam malesuada, nibh ligula platea bibendum nec non et convallis class mus, inceptos sociis erat a nostra facilisis morbi magnis sagittis velit. Donec proin at lectus ligula dui ultrices curabitur dis massa, rhoncus class himenaeos nulla praesent vestibulum iaculis tempor, sem aliquam facilisis penatibus elementum sagittis convallis conubia. Est nibh pulvinar porttitor nec mauris senectus hac leo, et commodo nostra purus quam congue risus. Primis condimentum suscipit eget nibh feugiat purus lectus nisl, risus consequat urna a euismod hac parturient imperdiet fringilla, cursus egestas torquent luctus laoreet dis sagittis. Laoreet enim sem ante egestas id metus tempus dapibus sociis facilisi mollis tortor et, penatibus torquent lacinia felis ultrices dis risus maecenas dictumst magna proin. Volutpat fames laoreet venenatis at pharetra phasellus litora varius, dui ornare eleifend hendrerit nascetur nisl nullam, hac fringilla quam leo dignissim ad auctor.\r\n\r\nMassa eget bibendum mattis nostra magnis eleifend et suspendisse, platea proin convallis sodales ornare inceptos eros vitae lobortis, tortor volutpat vivamus sed vulputate ligula ultrices. Tristique ligula ornare facilisis ut parturient molestie lobortis habitasse placerat suspendisse integer nisi urna, ac vivamus donec viverra consequat porta pretium cubilia cras himenaeos facilisi arcu. Ante magnis duis massa in aenean tempus ligula sollicitudin lobortis mus scelerisque quisque lacus, dis natoque mauris porta nisi congue primis urna gravida iaculis eu. Varius proin maecenas natoque interdum torquent euismod tincidunt, inceptos metus magnis dis vitae a blandit rhoncus, sagittis dictumst tempus vulputate curabitur dignissim.\r\n\r\nEros gravida justo tellus rhoncus quisque hac at lectus tempus, volutpat diam in nostra lobortis sem scelerisque interdum, parturient bibendum ante porta libero dictumst et placerat. Sed fermentum congue conubia senectus metus suscipit luctus fringilla phasellus tristique, mattis ullamcorper condimentum faucibus suspendisse posuere nibh aliquet. Parturient dignissim tristique aptent metus id pulvinar libero leo iaculis, potenti cursus mi gravida turpis facilisis bibendum. Aliquet nullam urna vel aptent orci semper curabitur, morbi commodo ligula suspendisse lectus pulvinar quis nibh, justo rutrum sollicitudin pharetra platea potenti phasellus, dapibus consequat imperdiet integer leo viverra. Commodo ullamcorper vulputate etiam vel nisi natoque justo per leo, sociis hendrerit lobortis bibendum consequat pharetra mauris sodales, tortor nam neque elementum habitant vestibulum nascetur sed. Torquent mus commodo non nisi bibendum lectus laoreet metus diam luctus elementum dignissim potenti sollicitudin at, vivamus consequat mollis augue urna inceptos eu fringilla aliquet pellentesque ultricies nullam libero. Curae magna placerat sapien a est sed sociis parturient, aliquet ridiculus maecenas vestibulum ad aliquam dignissim, duis fermentum velit condimentum habitant ut cursus. Cum placerat augue nec pellentesque odio porttitor mauris, nascetur aliquet at dictum vitae dis, fermentum ridiculus nullam scelerisque vel risus donec, montes neque luctus commodo rutrum. Tempor eget porta hendrerit ultrices rhoncus feugiat facilisi eu nunc pulvinar, enim inceptos felis pharetra nibh dapibus facilisis platea malesuada. Nunc ut urna vestibulum potenti sollicitudin tellus praesent tempor class sociosqu bibendum, fames conubia etiam litora montes dui fusce est rutrum.', '1686349907Group 7436 (1).png', '2023-06-09 22:31:47', 2, 15, 0),
(23, 'Sid taciti sociosqu maecenas vel malesuada odio sem', 'Vehicula molestie risus lectus torquent sed id natoque mattis tincidunt tortor viverra dignissim leo accumsan feugiat morbi, magna dictumst duis venenatis suspendisse egestas quisque eget nascetur velit pellentesque sollicitudin taciti porta habitant. Facilisi odio cubilia nunc nam libero lacinia fermentum tempus arcu tempor curae quam habitant, at tellus viverra rhoncus venenatis suspendisse fames donec molestie per condimentum. Nunc aenean venenatis cras eu luctus himenaeos augue, pulvinar enim maecenas tempus cubilia orci.', '1686350055pexels-rachel-claire-4825701.jpg', '2023-06-09 22:34:15', 9, 16, 0),
(24, ' Nunc aenean venenatis cras eu luctus himenaeos augue', 'Vehicula molestie risus lectus torquent sed id natoque mattis tincidunt tortor viverra dignissim leo accumsan feugiat morbi, magna dictumst duis venenatis suspendisse egestas quisque eget nascetur velit pellentesque sollicitudin taciti porta habitant. Facilisi odio cubilia nunc nam libero lacinia fermentum tempus arcu tempor curae quam habitant, at tellus viverra rhoncus venenatis suspendisse fames donec molestie per condimentum. Nunc aenean venenatis cras eu luctus himenaeos augue, pulvinar enim maecenas tempus cubilia orci.\r\n\r\nLorem ipsum dolor sit amet consectetur adipiscing elit potenti taciti, ac ad vitae aliquam vestibulum auctor senectus facilisi, nascetur proin torquent ridiculus pulvinar primis ornare venenatis. Laoreet feugiat inceptos sem lacus arcu parturient, potenti maecenas vulputate vitae montes praesent, natoque nec aenean ultricies class. Torquent velit porttitor odio enim potenti nisi lacus habitasse egestas vitae imperdiet ultricies tortor ante, dui sapien risus neque tellus dapibus dis est lacinia euismod taciti tincidunt maecenas. Id ut interdum inceptos ullamcorper lacinia elementum penatibus tempus, nisi facilisi quam gravida ultrices metus felis tincidunt magnis, augue fermentum quis scelerisque torquent egestas odio.', '1686350111family-kids.jpg', '2023-06-09 22:35:11', 10, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(14, 'REYNIER JOHN', 'PORTUGALIZA', 'nier123', 'reynierportugaliza@gmail.com', '$2y$10$rlaH2Xob44G6o1MW/FhNH.l.uDLOCuV6OPl9X1vlIhcMvhvq6QLxK', '1686335873pi-cuatropuntocero-DIhUtRCBsWA-unsplash.jpg', 1),
(15, 'Angelo', 'Valuenzuela', 'gelo', 'angelovaluenzuela@gmail.com', '$2y$10$f5iVvdo/8a9vD2PiamXuQ.1nFLuL9fPZRiXpni2VoM3fBArbd0wJK', '1686349244Mask group (1).png', 1),
(16, 'Russel', 'Pagtakhan', 'russel', 'russel@gmail.com', '$2y$10$o3RIsJrkJJIrwOr5BoHhtO1MRj0F/ciEv/ufDA4W489t.kR7e5oyy', '1686349461Mask group (6).png', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
