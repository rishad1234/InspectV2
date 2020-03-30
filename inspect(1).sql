-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2019 at 06:12 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inspect`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_p`
--

CREATE TABLE `about_p` (
  `about_id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_p`
--

INSERT INTO `about_p` (`about_id`, `content`) VALUES
(1, '                <p>\r\n                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ipsum amet iure delectus, sequi tempora\r\n                    quia accusantium maiores, dolorem laudantium, neque eveniet repudiandae eum. Accusamus similique ut\r\n                    eius vero amet incidunt voluptates totam, harum, nesciunt, dolorum odit atque quo officia aut dolor\r\n                    hic iste nemo commodi deleniti. Obcaecati debitis quisquam incidunt aperiam magnam quis aspernatur\r\n                    deserunt tempora nulla repellat omnis reprehenderit harum itaque ipsam dicta rerum praesentium saepe\r\n                    optio dolorem culpa, quam necessitatibus eius esse labore. Atque amet incidunt officia eius illo\r\n                    quia neque quibusdam ipsa porro aut?\r\n\r\n                    <br><br>\r\n\r\n                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ipsum amet iure delectus, sequi tempora\r\n                    quia accusantium maiores, dolorem laudantium, neque eveniet repudiandae eum. Accusamus similique ut\r\n                    eius vero amet incidunt voluptates totam, harum, nesciunt, dolorum odit atque quo officia aut dolor\r\n                    hic iste nemo commodi deleniti. Obcaecati debitis quisquam incidunt aperiam magnam quis aspernatur\r\n                    deserunt tempora nulla repellat omnis reprehenderit harum itaque ipsam dicta rerum praesentium saepe\r\n                    optio dolorem culpa, quam necessitatibus eius esse labore. Atque amet incidunt officia eius illo\r\n                    quia neque quibusdam ipsa porro aut?\r\n                </p>');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Rishadul Islam', 'rishadulislam@outlook.com', 'vghuujhbhuyguy', '2019-10-03'),
(2, 'Rishadul Islam', 'rishadulislam@outlook.com', 'adfagfshrtyrrewrtyeew', '2019-10-03'),
(3, 'Shafayet Ul Islam', 'shafayet@gmail.com', 'Hello Again', '2019-10-12');

-- --------------------------------------------------------

--
-- Table structure for table `co_founders`
--

CREATE TABLE `co_founders` (
  `co_founder_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `co_founders`
--

INSERT INTO `co_founders` (`co_founder_name`, `image`) VALUES
('Shafayet-Ul-Islam', 'img-1.jpg'),
('Rishadul Islam Khan', 'img-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `documentaries`
--

CREATE TABLE `documentaries` (
  `documentary_id` int(11) NOT NULL,
  `thumbnail_image` varchar(255) NOT NULL,
  `documentary_video` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documentaries`
--

INSERT INTO `documentaries` (`documentary_id`, `thumbnail_image`, `documentary_video`, `title`, `created_at`) VALUES
(1, 'doc-img-2.jpg', 'documentary.mp4', 'How Apple got here? September Event shakes the things up', '2019-10-11 11:18:00'),
(2, 'doc-img-1.jpg', 'documentary.mp4', 'Solving polio problem at the border of Nigeria, using Data Analysis!', '2019-10-11 00:00:00'),
(3, 'doc-img-3.jpg', 'documentary.mp4', 'Allen\'s Contribution at Microsoft was much more complicated than Bills\'', '2019-10-10 00:00:00'),
(4, 'doc-img-4.jpg', 'documentary.mp4', 'Allen\'s Contribution at Microsoft was much more complicated than Bills\'', '2019-10-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `editor_panel`
--

CREATE TABLE `editor_panel` (
  `editor_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editor_panel`
--

INSERT INTO `editor_panel` (`editor_name`, `image`) VALUES
('Synthia', 'editor-1.jpg'),
('John', 'editor-2.jpg'),
('Jane', 'editor-3.jpg'),
('James', 'editor-4.jpg'),
('Jordan', 'editor-5.jpg'),
('Paul', 'editor-6.jpg'),
('Steve', 'editor-7.jpg'),
('Jobs', 'editor-8.jpg'),
('Wozniak', 'editor-9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `job_posts`
--

CREATE TABLE `job_posts` (
  `id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `deadline` date NOT NULL,
  `requirements` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_posts`
--

INSERT INTO `job_posts` (`id`, `company`, `position`, `deadline`, `requirements`, `link`, `created_at`) VALUES
(1, 'NewsCreed', 'Inbound Product Manager', '2019-10-25', '<ul>\r\n                            <li>Work with designers and engineers to conceptualize and document new features and\r\n                                products.\r\n                            </li>\r\n                            <li>\r\n                                Organize and lead cross-functional agile software development teams.\r\n                            </li>\r\n                            <li>Moderate ideation of new products and features.</li>\r\n                            <li>Contribute to strategic decisions with the product and executive teams.</li>\r\n                            <li>Provide support to NewsCred\'s sales & marketing teams during new business development,\r\n                                client support challenges and creation of product marketing collateral.</li>\r\n                            <li>Measure adoption of capabilities across its lifecycle from concept to launch to maturity\r\n                            </li>\r\n                            <li>Give and solicit feedback from other team members with the aim of producing the highest\r\n                                quality work.</li>\r\n                            <li>Academic background in Engineering, Computer Science, Electrical/Computer Engineering or\r\n                                a related field (or substantial relevant experience).</li>\r\n                            <li>Minimum of 3-5 years in product management.</li>\r\n                            <li>Proven expertise in Agile software development processes.</li>\r\n                        </ul>', 'https://www.newscred.com/careers/?gh_jid=1651744', '2019-10-11'),
(2, 'bKash', 'Quality Assurance, Technology', '2019-10-25', '                        <ul>\r\n                            <li>Responsible for the quality assurance of bKash products and systems, include Android/iOS\r\n                                APP, web APIs, server side applications.\r\n                            </li>\r\n                            <li>\r\n                                Make project test plan, manage project quality risk.\r\n                            </li>\r\n                            <li>Participate in testing tools and platform development and maintenance.</li>\r\n                        </ul>', 'https://www.linkedin.com/jobs/view/1506008542/', '2019-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `sponsored` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `excerpt`, `body`, `image`, `created_at`, `sponsored`, `category_id`) VALUES
(1, 'Facebook relaunches Oculus for Business, coming this fall, with a new software suite and UX customized for business use cases, adds support for the Oculus Quest.', 'In December of 2018, Google’s CEO, Sundar Pichai, was asked a set of questions by the United States Congress. His responses left… a lot… to be desired. ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus magni odio, esse dolores ea assumenda placeat atque illo nisi quasi in corporis vel odit molestias, porro quae. Dignissimos repellat ad fugit enim neque repudiandae.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam officia culpa omnis tempore est non aliquam obcaecati deleniti perferendis fugiat fugit deserunt voluptatibus error facilis amet aspernatur assumenda, asperiores mollitia similique, eum, esse laborum totam suscipit. Quidem optio porro, omnis numquam libero, obcaecati a quis voluptatum velit natus exercitationem, deleniti ullam dolorem voluptates! Velit tempora id perferendis exercitationem aspernatur, voluptatem ad voluptate facere vel sint quae minima sequi, debitis praesentium repellat beatae necessitatibus autem laudantium. Ipsum nemo iusto adipisci alias laboriosam quo nulla, totam minima reiciendis illum expedita in labore tempore inventore dolores hic enim sed! Nisi error nesciunt quisquam quos expedita quo vero deserunt dignissimos? Iure, perspiciatis vel commodi doloremque veritatis sequi ipsum, incidunt quos ab eius magni dignissimos! Velit, veniam.Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iusto id itaque nostrum ea. Deleniti libero magni asperiores quaerat laudantium, soluta dolores dolorum quisquam. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil eos iste odit quam dolorem provident magnam aliquid, perspiciatis illo consequuntur reprehenderit amet itaque culpa deleniti, harum eaque ad recusandae accusamus repudiandae, et quae modi! Provident eos voluptatum alias cupiditate error sint, modi quibusdam recusandae illum quod quasi aspernatur. Id labore facilis rerum tempore, vero officiis ea rem iusto voluptatibus enim mollitia doloribus optio. Animi quam nisi voluptates eligendi, minus, nulla ex possimus eius ducimus laudantium quae corporis numquam harum esse perspiciatis sequi, dolores accusamus in! Rem hic quidem sit laboriosam, tempore molestias corrupti earum aperiam, iusto consequatur quam fugiat molestiae. Sequi quo et dicta eligendi, non minima ex atque consectetur? Fuga suscipit in aut maxime dolor consectetur, illum quaerat tempore praesentium illo rem laborum culpa nulla sint? Odio maiores officia blanditiis id soluta, nisi ipsa eligendi cumque corporis, dolorem placeat? Nihil adipisci magni est hic numquam necessitatibus expedita. Perspiciatis ipsum reiciendis, aliquid obcaecati cum quo reprehenderit facilis tempore ad modi, veritatis saepe in nihil nostrum accusantium voluptas possimus quos dolor vero voluptatum alias! Maxime possimus nobis molestias nihil ex exercitationem pariatur sit corporis labore voluptatem consequatur, dicta aut commodi dolorum doloremque eos hic obcaecati, voluptate distinctio iusto vero unde aperiam omnis! Nulla eligendi nobis ab voluptatibus suscipit pariatur voluptatem eaque atque accusantium deleniti omnis unde aspernatur reiciendis odit quam voluptates nostrum nam molestiae magni aliquid delectus ipsam, quisquam quos. Harum libero sit dolores repellendus quam excepturi animi sapiente eius esse!\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Et saepe commodi necessitatibus. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus id sequi pariatur!', 'cover-1.jpg', '2019-10-03 00:00:00', 0, 6),
(2, 'Facebook relaunches Oculus for Business, coming this fall, with a new software suite and UX customized for business use cases, adds support for the Oculus Quest.', 'In December of 2018, Google’s CEO, Sundar Pichai, was asked a set of questions by the United States Congress. His responses left… a lot… to be desired. ', '                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus magni odio, esse dolores ea\r\n                    assumenda placeat atque illo nisi quasi in corporis vel odit molestias, porro quae. Dignissimos\r\n                    repellat ad fugit enim neque repudiandae.\r\n                    <br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam officia culpa omnis tempore\r\n                    est non aliquam obcaecati deleniti perferendis fugiat fugit deserunt voluptatibus error facilis amet\r\n                    aspernatur assumenda, asperiores mollitia similique, eum, esse laborum totam suscipit. Quidem optio\r\n                    porro, omnis numquam libero, obcaecati a quis voluptatum velit natus exercitationem, deleniti ullam\r\n                    dolorem voluptates! Velit tempora id perferendis exercitationem aspernatur, voluptatem ad voluptate\r\n                    facere vel sint quae minima sequi, debitis praesentium repellat beatae necessitatibus autem\r\n                    laudantium. Ipsum nemo iusto adipisci alias laboriosam quo nulla, totam minima reiciendis illum\r\n                    expedita in labore tempore inventore dolores hic enim sed! Nisi error nesciunt quisquam quos\r\n                    expedita quo vero deserunt dignissimos? Iure, perspiciatis vel commodi doloremque veritatis sequi\r\n                    ipsum, incidunt quos ab eius magni dignissimos! Velit, veniam.\r\n                    <br><br>                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iusto id itaque nostrum ea. Deleniti\r\n                    libero magni asperiores quaerat laudantium, soluta dolores dolorum quisquam. Lorem ipsum dolor sit\r\n                    amet consectetur adipisicing elit. Nihil eos iste odit quam dolorem provident magnam aliquid,\r\n                    perspiciatis illo consequuntur reprehenderit amet itaque culpa deleniti, harum eaque ad recusandae\r\n                    accusamus repudiandae, et quae modi! Provident eos voluptatum alias cupiditate error sint, modi\r\n                    quibusdam recusandae illum quod quasi aspernatur. Id labore facilis rerum tempore, vero officiis ea\r\n                    rem iusto voluptatibus enim mollitia doloribus optio. Animi quam nisi voluptates eligendi, minus,\r\n                    nulla ex possimus eius ducimus laudantium quae corporis numquam harum esse perspiciatis sequi,\r\n                    dolores accusamus in! Rem hic quidem sit laboriosam, tempore molestias corrupti earum aperiam, iusto\r\n                    consequatur quam fugiat molestiae. Sequi quo et dicta eligendi, non minima ex atque consectetur?\r\n                    Fuga suscipit in aut maxime dolor consectetur, illum quaerat tempore praesentium illo rem laborum\r\n                    culpa nulla sint? Odio maiores officia blanditiis id soluta, nisi ipsa eligendi cumque corporis,\r\n                    dolorem placeat? Nihil adipisci magni est hic numquam necessitatibus expedita. Perspiciatis ipsum\r\n                    reiciendis, aliquid obcaecati cum quo reprehenderit facilis tempore ad modi, veritatis saepe in\r\n                    nihil nostrum accusantium voluptas possimus quos dolor vero voluptatum alias! Maxime possimus nobis\r\n                    molestias nihil ex exercitationem pariatur sit corporis labore voluptatem consequatur, dicta aut\r\n                    commodi dolorum doloremque eos hic obcaecati, voluptate distinctio iusto vero unde aperiam omnis!\r\n                    Nulla eligendi nobis ab voluptatibus suscipit pariatur voluptatem eaque atque accusantium deleniti\r\n                    omnis unde aspernatur reiciendis odit quam voluptates nostrum nam molestiae magni aliquid delectus\r\n                    ipsam, quisquam quos. Harum libero sit dolores repellendus quam excepturi animi sapiente eius esse!\r\n                    <br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Et saepe commodi necessitatibus.\r\n                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus id sequi pariatur!\r\n                    <br><br>', 'cover-1.jpg', '2019-10-03 00:00:00', 0, 6),
(3, 'Google Fi - a phone plan, by Google ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus magni odio, esse dolores ea\r\n                    assumenda placeat atque illo nisi quasi in corporis vel odit molestias, porro quae.', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus magni odio, esse dolores ea\r\n                    assumenda placeat atque illo nisi quasi in corporis vel odit molestias, porro quae. Dignissimos\r\n                    repellat ad fugit enim neque repudiandae.\r\n                    <br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam officia culpa omnis tempore\r\n                    est non aliquam obcaecati deleniti perferendis fugiat fugit deserunt voluptatibus error facilis amet\r\n                    aspernatur assumenda, asperiores mollitia similique, eum, esse laborum totam suscipit. Quidem optio\r\n                    porro, omnis numquam libero, obcaecati a quis voluptatum velit natus exercitationem, deleniti ullam\r\n                    dolorem voluptates! Velit tempora id perferendis exercitationem aspernatur, voluptatem ad voluptate\r\n                    facere vel sint quae minima sequi, debitis praesentium repellat beatae necessitatibus autem\r\n                    laudantium. Ipsum nemo iusto adipisci alias laboriosam quo nulla, totam minima reiciendis illum\r\n                    expedita in labore tempore inventore dolores hic enim sed! Nisi error nesciunt quisquam quos\r\n                    expedita quo vero deserunt dignissimos? Iure, perspiciatis vel commodi doloremque veritatis sequi\r\n                    ipsum, incidunt quos ab eius magni dignissimos! Velit, veniam.\r\n                    <br><br>', 'logo-1.png', '2019-10-04 00:00:00', 1, 6),
(4, 'Adobe\'s After Effects adds Content-Aware Fill for videos, which can intelligently remove\r\n                                and\r\n                                replace objects in a scene', 'We felt that most phone plans just weren\'t made with you in mind. So that\'s why we built\r\n                            Google\r\n                            Fi with features that real people actually want. Click to learn more.', '                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus magni odio, esse dolores ea\r\n                    assumenda placeat atque illo nisi quasi in corporis vel odit molestias, porro quae. Dignissimos\r\n                    repellat ad fugit enim neque repudiandae.\r\n                    <br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam officia culpa omnis tempore\r\n                    est non aliquam obcaecati deleniti perferendis fugiat fugit deserunt voluptatibus error facilis amet\r\n                    aspernatur assumenda, asperiores mollitia similique, eum, esse laborum totam suscipit. Quidem optio\r\n                    porro, omnis numquam libero, obcaecati a quis voluptatum velit natus exercitationem, deleniti ullam\r\n                    dolorem voluptates! Velit tempora id perferendis exercitationem aspernatur, voluptatem ad voluptate\r\n                    facere vel sint quae minima sequi, debitis praesentium repellat beatae necessitatibus autem\r\n                    laudantium. Ipsum nemo iusto adipisci alias laboriosam quo nulla, totam minima reiciendis illum\r\n                    expedita in labore tempore inventore dolores hic enim sed! Nisi error nesciunt quisquam quos\r\n                    expedita quo vero deserunt dignissimos? Iure, perspiciatis vel commodi doloremque veritatis sequi\r\n                    ipsum, incidunt quos ab eius magni dignissimos! Velit, veniam.\r\n                    <br><br>\r\n                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iusto id itaque nostrum ea. Deleniti\r\n                    libero magni asperiores quaerat laudantium, soluta dolores dolorum quisquam. Lorem ipsum dolor sit\r\n                    amet consectetur adipisicing elit. Nihil eos iste odit quam dolorem provident magnam aliquid,\r\n                    perspiciatis illo consequuntur reprehenderit amet itaque culpa deleniti, harum eaque ad recusandae\r\n                    accusamus repudiandae, et quae modi! Provident eos voluptatum alias cupiditate error sint, modi\r\n                    quibusdam recusandae illum quod quasi aspernatur. Id labore facilis rerum tempore, vero officiis ea\r\n                    rem iusto voluptatibus enim mollitia doloribus optio. Animi quam nisi voluptates eligendi, minus,\r\n                    nulla ex possimus eius ducimus laudantium quae corporis numquam harum esse perspiciatis sequi,\r\n                    dolores accusamus in! Rem hic quidem sit laboriosam, tempore molestias corrupti earum aperiam, iusto\r\n                    consequatur quam fugiat molestiae. Sequi quo et dicta eligendi, non minima ex atque consectetur?\r\n                    Fuga suscipit in aut maxime dolor consectetur, illum quaerat tempore praesentium illo rem laborum\r\n                    culpa nulla sint? Odio maiores officia blanditiis id soluta, nisi ipsa eligendi cumque corporis,\r\n                    dolorem placeat? Nihil adipisci magni est hic numquam necessitatibus expedita. Perspiciatis ipsum\r\n                    reiciendis, aliquid obcaecati cum quo reprehenderit facilis tempore ad modi, veritatis saepe in\r\n                    nihil nostrum accusantium voluptas possimus quos dolor vero voluptatum alias! Maxime possimus nobis\r\n                    molestias nihil ex exercitationem pariatur sit corporis labore voluptatem consequatur, dicta aut\r\n                    commodi dolorum doloremque eos hic obcaecati, voluptate distinctio iusto vero unde aperiam omnis!\r\n                    Nulla eligendi nobis ab voluptatibus suscipit pariatur voluptatem eaque atque accusantium deleniti\r\n                    omnis unde aspernatur reiciendis odit quam voluptates nostrum nam molestiae magni aliquid delectus\r\n                    ipsam, quisquam quos. Harum libero sit dolores repellendus quam excepturi animi sapiente eius esse!\r\n                    <br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Et saepe commodi necessitatibus.\r\n                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus id sequi pariatur!\r\n                    <br><br>', 'logo-2.png', '2019-10-03 00:00:00', 1, 3),
(5, '                                AMD CEO talks about plans to quickly ramp up production of EPYC server chips, launched\r\n                                this\r\n                                week, and sustaining the advantage created by Intel\'s stumbles', 'With Intel struggling to get to the next generation of chipmaking technology, AMD has an\r\n                            opportunity to gain some ground on its longtime rival.', '                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus magni odio, esse dolores ea\r\n                    assumenda placeat atque illo nisi quasi in corporis vel odit molestias, porro quae. Dignissimos\r\n                    repellat ad fugit enim neque repudiandae.\r\n                    <br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam officia culpa omnis tempore\r\n                    est non aliquam obcaecati deleniti perferendis fugiat fugit deserunt voluptatibus error facilis amet\r\n                    aspernatur assumenda, asperiores mollitia similique, eum, esse laborum totam suscipit. Quidem optio\r\n                    porro, omnis numquam libero, obcaecati a quis voluptatum velit natus exercitationem, deleniti ullam\r\n                    dolorem voluptates! Velit tempora id perferendis exercitationem aspernatur, voluptatem ad voluptate\r\n                    facere vel sint quae minima sequi, debitis praesentium repellat beatae necessitatibus autem\r\n                    laudantium. Ipsum nemo iusto adipisci alias laboriosam quo nulla, totam minima reiciendis illum\r\n                    expedita in labore tempore inventore dolores hic enim sed! Nisi error nesciunt quisquam quos\r\n                    expedita quo vero deserunt dignissimos? Iure, perspiciatis vel commodi doloremque veritatis sequi\r\n                    ipsum, incidunt quos ab eius magni dignissimos! Velit, veniam.\r\n                    <br><br>\r\n                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iusto id itaque nostrum ea. Deleniti\r\n                    libero magni asperiores quaerat laudantium, soluta dolores dolorum quisquam. Lorem ipsum dolor sit\r\n                    amet consectetur adipisicing elit. Nihil eos iste odit quam dolorem provident magnam aliquid,\r\n                    perspiciatis illo consequuntur reprehenderit amet itaque culpa deleniti, harum eaque ad recusandae\r\n                    accusamus repudiandae, et quae modi! Provident eos voluptatum alias cupiditate error sint, modi\r\n                    quibusdam recusandae illum quod quasi aspernatur. Id labore facilis rerum tempore, vero officiis ea\r\n                    rem iusto voluptatibus enim mollitia doloribus optio. Animi quam nisi voluptates eligendi, minus,\r\n                    nulla ex possimus eius ducimus laudantium quae corporis numquam harum esse perspiciatis sequi,\r\n                    dolores accusamus in! Rem hic quidem sit laboriosam, tempore molestias corrupti earum aperiam, iusto\r\n                    consequatur quam fugiat molestiae. Sequi quo et dicta eligendi, non minima ex atque consectetur?\r\n                    Fuga suscipit in aut maxime dolor consectetur, illum quaerat tempore praesentium illo rem laborum\r\n                    culpa nulla sint? Odio maiores officia blanditiis id soluta, nisi ipsa eligendi cumque corporis,\r\n                    dolorem placeat? Nihil adipisci magni est hic numquam necessitatibus expedita. Perspiciatis ipsum\r\n                    reiciendis, aliquid obcaecati cum quo reprehenderit facilis tempore ad modi, veritatis saepe in\r\n                    nihil nostrum accusantium voluptas possimus quos dolor vero voluptatum alias! Maxime possimus nobis\r\n                    molestias nihil ex exercitationem pariatur sit corporis labore voluptatem consequatur, dicta aut\r\n                    commodi dolorum doloremque eos hic obcaecati, voluptate distinctio iusto vero unde aperiam omnis!\r\n                    Nulla eligendi nobis ab voluptatibus suscipit pariatur voluptatem eaque atque accusantium deleniti\r\n                    omnis unde aspernatur reiciendis odit quam voluptates nostrum nam molestiae magni aliquid delectus\r\n                    ipsam, quisquam quos. Harum libero sit dolores repellendus quam excepturi animi sapiente eius esse!\r\n                    <br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Et saepe commodi necessitatibus.\r\n                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus id sequi pariatur!\r\n                    <br><br>', 'news-1.jpg', '2019-10-02 00:00:00', 0, 2),
(6, '                            At F8, Facebook announced a launch date for the Oculus Quest and Rift S, as well as\r\n                            completely new enterprise-grade Oculus for ', '                                Synergy Research: enterprise SaaS revenue will hit $100B annual run rate in Q2, with\r\n                                Microsoft, Salesforce, and Adobe accounting for nearly 40% of the market', '                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus magni odio, esse dolores ea\r\n                    assumenda placeat atque illo nisi quasi in corporis vel odit molestias, porro quae. Dignissimos\r\n                    repellat ad fugit enim neque repudiandae.\r\n                    <br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam officia culpa omnis tempore\r\n                    est non aliquam obcaecati deleniti perferendis fugiat fugit deserunt voluptatibus error facilis amet\r\n                    aspernatur assumenda, asperiores mollitia similique, eum, esse laborum totam suscipit. Quidem optio\r\n                    porro, omnis numquam libero, obcaecati a quis voluptatum velit natus exercitationem, deleniti ullam\r\n                    dolorem voluptates! Velit tempora id perferendis exercitationem aspernatur, voluptatem ad voluptate\r\n                    facere vel sint quae minima sequi, debitis praesentium repellat beatae necessitatibus autem\r\n                    laudantium. Ipsum nemo iusto adipisci alias laboriosam quo nulla, totam minima reiciendis illum\r\n                    expedita in labore tempore inventore dolores hic enim sed! Nisi error nesciunt quisquam quos\r\n                    expedita quo vero deserunt dignissimos? Iure, perspiciatis vel commodi doloremque veritatis sequi\r\n                    ipsum, incidunt quos ab eius magni dignissimos! Velit, veniam.\r\n                    <br><br>\r\n                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iusto id itaque nostrum ea. Deleniti\r\n                    libero magni asperiores quaerat laudantium, soluta dolores dolorum quisquam. Lorem ipsum dolor sit\r\n                    amet consectetur adipisicing elit. Nihil eos iste odit quam dolorem provident magnam aliquid,\r\n                    perspiciatis illo consequuntur reprehenderit amet itaque culpa deleniti, harum eaque ad recusandae\r\n                    accusamus repudiandae, et quae modi! Provident eos voluptatum alias cupiditate error sint, modi\r\n                    quibusdam recusandae illum quod quasi aspernatur. Id labore facilis rerum tempore, vero officiis ea\r\n                    rem iusto voluptatibus enim mollitia doloribus optio. Animi quam nisi voluptates eligendi, minus,\r\n                    nulla ex possimus eius ducimus laudantium quae corporis numquam harum esse perspiciatis sequi,\r\n                    dolores accusamus in! Rem hic quidem sit laboriosam, tempore molestias corrupti earum aperiam, iusto\r\n                    consequatur quam fugiat molestiae. Sequi quo et dicta eligendi, non minima ex atque consectetur?\r\n                    Fuga suscipit in aut maxime dolor consectetur, illum quaerat tempore praesentium illo rem laborum\r\n                    culpa nulla sint? Odio maiores officia blanditiis id soluta, nisi ipsa eligendi cumque corporis,\r\n                    dolorem placeat? Nihil adipisci magni est hic numquam necessitatibus expedita. Perspiciatis ipsum\r\n                    reiciendis, aliquid obcaecati cum quo reprehenderit facilis tempore ad modi, veritatis saepe in\r\n                    nihil nostrum accusantium voluptas possimus quos dolor vero voluptatum alias! Maxime possimus nobis\r\n                    molestias nihil ex exercitationem pariatur sit corporis labore voluptatem consequatur, dicta aut\r\n                    commodi dolorum doloremque eos hic obcaecati, voluptate distinctio iusto vero unde aperiam omnis!\r\n                    Nulla eligendi nobis ab voluptatibus suscipit pariatur voluptatem eaque atque accusantium deleniti\r\n                    omnis unde aspernatur reiciendis odit quam voluptates nostrum nam molestiae magni aliquid delectus\r\n                    ipsam, quisquam quos. Harum libero sit dolores repellendus quam excepturi animi sapiente eius esse!\r\n                    <br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Et saepe commodi necessitatibus.\r\n                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus id sequi pariatur!\r\n                    <br><br>', 'news-2.jpg', '2019-10-04 00:00:00', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `category_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`category_id`, `category`) VALUES
(1, 'OS Talk'),
(2, 'Hardware'),
(3, 'Software'),
(4, 'Cloud'),
(5, 'Skills'),
(6, 'Big 4'),
(7, 'Big 5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `organization`, `age`, `address`, `phone_number`, `gender`, `user_image`, `full_name`) VALUES
(10, 'rishadulislam@outlook.com', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', 'exosmic', 23, '105/B, west monipur, mirpur, Dhaka', '01780238213', 'M', '10exosmic.JPG', 'Rishadul Islam'),
(11, 'shafayet@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Symbl', 20, '268, Elephat Road', '01558787475', 'M', '11Symbl.jpg', 'Shafayet'),
(12, 'a@gmail.com', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', 'A', 0, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_p`
--
ALTER TABLE `about_p`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documentaries`
--
ALTER TABLE `documentaries`
  ADD PRIMARY KEY (`documentary_id`);

--
-- Indexes for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_p`
--
ALTER TABLE `about_p`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `documentaries`
--
ALTER TABLE `documentaries`
  MODIFY `documentary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
