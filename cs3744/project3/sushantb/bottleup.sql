-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2016 at 11:36 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bottleup`
--

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_signup`
--

CREATE TABLE `newsletter_signup` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter_signup`
--

INSERT INTO `newsletter_signup` (`id`, `Name`, `Email`) VALUES
(1, 'Sushant Bhattarai', 'sushantb@vt.edu'),
(2, 'John Davis', 'jd@gmail.com'),
(3, 'Nishan Pokharel', 'nishan421@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `WineTitle` varchar(100) NOT NULL,
  `ShortDesc` text NOT NULL,
  `LongDesc` varchar(4096) NOT NULL DEFAULT 'From the 18th-century missionaries who planted vines to supply sacramental wine, to successive waves of immigrants for whom wine was an essential part of their culture, to the scholars and scientists who modernized viticulture, and the passionate winemakers who saw wine as their calling – all have contributed to making California the center of our domestic wine world.  				California wine history begins with the arrival of Franciscan missionaries who, beginning in 1769, built settlements along the coast from San Diego north to Sonoma. They planted a black grape they brought from Spain, now known as the Mission grape, producing a strong, sweet wine that defined California winemaking for decades. 				As the Spanish were setting up missions, a wave of French, German, Italian and Hungarian immigrants began to flow into California. They came from countries where wine was an integral part of everyday life, and planting grapes provided a link from their European heritage to the New World. 				When gold was discovered in Sutter’s Mill in 1848, California became the destination for many more thousands of immigrants. They came to pan for gold, work in mines and otherwise carve out a living for themselves and their families. They, too, planted vines, using European varietals, including Cabernet Sauvignon and Zinfandel, that are now flagship California grapes. 				Some opened wineries still in existence today. In 1857, Agoston Harazsthy, an importer of grapevine cuttings, founded Buena Vista Winery in Sonoma. In 1861, Charles Krug founded the first Napa Valley winery, near St. Helena. He was joined in 1862 by Jacob Schram, whose winery gave name to the town of Schramsberg. Other now-historic California wineries opened in that era: Beringer, which was established in 1876; Niebaum, in 1879; and Chateau Montelena in 1882. 				California’s growing population pushed adventurous winegrowers beyond the warm valleys to plant on the hillsides. Though these areas could be difficult to plant and harvest, the cool climate and poor soils yielded grapes that were dark in color and intensely flavored. A select few winemakers focused on improving the quality of wines being produced, but it was easy to produce grapes of mediocre quality in great quantities, and for the most part, California wines remained rustic. 				As the notion of fine wines began to take shape in the early 1900s, two disasters struck. The first was an infestation of phylloxera, the louse that attacks vine roots, which by 1915 destroyed 250,000 acres of California vineyards. Then, in 1919, Prohibition was enacted, outlawing the manufacture, transportation, sale and possession of alcoholic beverages. Hundreds of California wineries were forced to close. 				  				By the time Prohibition was repealed in 1933.',
  `Volumes` varchar(255) NOT NULL DEFAULT '750mL, 1L, 1.75L, 2L',
  `Price` float(10,2) NOT NULL,
  `Img_Url` varchar(200) DEFAULT NULL,
  `Date_Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_Id` int(11) NOT NULL,
  `Rating` float(10,1) DEFAULT '1.0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `WineTitle`, `ShortDesc`, `LongDesc`, `Volumes`, `Price`, `Img_Url`, `Date_Created`, `Creator_Id`, `Rating`) VALUES
(1, 'Meiomi Pinot Noir', 'Sonoma County, CA- Fifth-generation Belle Glos Wines winemaker.', 'Pinot Noir is the primary red grape in France''s Burgundy region, and it makes some of the world''s most sought-after and age-worthy wines particularly those from the limestone soils of the Or. Each village there claims to produce wines with unique characteristics related to its particular terroir.\r\nBut great Pinot Noir wine is made in many locations. There are excellent examples from California''s Carneros and Russian River Valley regions, as well as Oregon''s Willamette Valley and New Zealand. The best Pinot Noir boasts delicate, sometimes sour, cherry and strawberry flavors with some spice, presenting medium to low acidity and relatively light tannins. Oaked versions may also have smoke, vanilla and toast flavors, which develop with age. Winemakers rarely blend it, though Pinot Noir grapes are a key component in Champagne and other sparkling wines, where they add body and flavor, and color for rosy versions.\r\nPinot Noir, vulnerable to extreme cold, extreme heat, rot and vineyard pests, is relatively difficult to grow. The grapes thin skins demand exceptionally gentle handing to prevent damage to the final wine. The grape is so prone to mutation that it has even spawned entirely new varieties, including Pinot Gris, Pinot Blanc and Pinot Meunier. As a result, farmers must select from dozens of Pinot clones when planting (the best known is the Pommard clone, named for the fabled Burgundy appellation). But farmers and winemakers endure these challenges because the final result, as you''ll see, is often very rewarding.\r\n\r\n', '750mL,1L,1.75L', 15.97, 'Mpn.png', '2016-10-19 02:01:04', 1, 4.2),
(2, '1858 Cabernet Sauvignon Napa Valley', 'Napa, CA - This hand crafted Napa Cabernet is a powerhouse in flavor and texture.', 'The archetypal big red wine, Cabernet Sauvignon in its most prized form comes from world-famous wine regions such as Bordeaux and the Napa Valley. But this widely planted grape also makes Cabernet wine in delicious variations and a variety of prices in other wine-producing regions around the world.\r\nCabernet Sauvignon grapes emerged from a spontaneous crossing of the red Cabernet Franc and the white Sauvignon Blanc grapes, appearing in Bordeaux some time before the 18th century, according to The Oxford Companion to Wine.\r\nTiny, thick-skinned grapes are behind Cabernet''s deep color and extracted flavors. In moderate climates, like Bordeaux, they make full-bodied wines with a great concentration of black fruit flavors, high acidity and considerable tannins. In Bordeaux, where Cabernet is a late-ripening variety, winemakers often blend it with earlier-ripening grapes, such as Merlot and Cabernet Franc, to achieve the right balance of acidity and flavor complexity. Cabernet Sauvignon dominates the wines of Bordeaux''s Left Bank, particularly in the world-famous appellations of Margaux, Pauillac, St.-Julien, St.-Estphe and Graves.\r\nIn warmer climates like California, Cabernet grapes develop black cherry, blueberry and menthol flavors with medium acidity. The grapes can ripen more fully there, leading to wines with softer tannins, heavier fruit profiles and higher alcohol. In the United States, Cabernet is generally bottled as a varietal wine, though some winemakers emulate the Bordeaux style, blending the grape with Cabernet Franc and Merlot. You''ll occasionally see these blends classified as Meritage wines.\r\nHigh-quality Cabernets are typically aged in French or American oak barrels. The wine''s rich flavors marry with oak to develop a wide range of complex tastes, including vanilla, toast, char, cedar, tobacco, cigar box, leather, chocolate, coffee, spice and more. Some lighter, less-expensive Cabernet Sauvignon wines may be unoaked, aged in older, neutral oak or aged with oak staves or chips.\r\nWine lovers can discover a range of Cabernet Sauvignon styles and fine examples all over the world. In Italy, Cabernet is a key grape in internationally styled Super Tuscan wines. Australian winemakers sometimes blend it with Shiraz, and South African producers make Cabernet Sauvignon as a varietal wine and use it in Bordeaux-styled blends. Winemakers also produce exceptional examples of Cabernet Sauvignon wines in Washington, Chile and Argentina.', '1.75L, 2.5L', 49.99, '1858.png', '2016-10-19 02:01:55', 1, 5.0),
(3, 'Carson Ridge Cabernet Paso Robles', 'Paso Robles, Central Coast, CA- This medium to full-bodied Cabernet is balanced and richly colored.', 'The archetypal big red wine, Cabernet Sauvignon in its most prized form comes from world-famous wine regions such as Bordeaux and the Napa Valley. But this widely planted grape also makes Cabernet wine in delicious variations and a variety of prices in other wine-producing regions around the world.\r\nCabernet Sauvignon grapes emerged from a spontaneous crossing of the red Cabernet Franc and the white Sauvignon Blanc grapes, appearing in Bordeaux some time before the 18th century, according to The Oxford Companion to Wine.\r\nTiny, thick-skinned grapes are behind Cabernet''s deep color and extracted flavors. In moderate climates, like Bordeaux, they make full-bodied wines with a great concentration of black fruit flavors, high acidity and considerable tannins. In Bordeaux, where Cabernet is a late-ripening variety, winemakers often blend it with earlier-ripening grapes, such as Merlot and Cabernet Franc, to achieve the right balance of acidity and flavor complexity. Cabernet Sauvignon dominates the wines of Bordeaux''s Left Bank, particularly in the world-famous appellations of Margaux, Pauillac, St.-Julien, St.-Estphe and Graves.\r\nIn warmer climates like California, Cabernet grapes develop black cherry, blueberry and menthol flavors with medium acidity. The grapes can ripen more fully there, leading to wines with softer tannins, heavier fruit profiles and higher alcohol. In the United States, Cabernet is generally bottled as a varietal wine, though some winemakers emulate the Bordeaux style, blending the grape with Cabernet Franc and Merlot. You''ll occasionally see these blends classified as Meritage wines.\r\nHigh-quality Cabernets are typically aged in French or American oak barrels. The wine''s rich flavors marry with oak to develop a wide range of complex tastes, including vanilla, toast, char, cedar, tobacco, cigar box, leather, chocolate, coffee, spice and more. Some lighter, less-expensive Cabernet Sauvignon wines may be unoaked, aged in older, neutral oak or aged with oak staves or chips.\r\nWine lovers can discover a range of Cabernet Sauvignon styles and fine examples all over the world. In Italy, Cabernet is a key grape in internationally styled Super Tuscan wines. Australian winemakers sometimes blend it with Shiraz, and South African producers make Cabernet Sauvignon as a varietal wine and use it in Bordeaux-styled blends. Winemakers also produce exceptional examples of Cabernet Sauvignon wines in Washington, Chile and Argentina.\r\n', '750mL', 12.99, 'carsonRidge.png', '2016-10-19 02:03:33', 1, 3.6),
(4, 'D''Autrefois Pinot Noir, 2014', 'Beverage Dynamics-Vin de Pays, France- " Savory aromas and flavors of raspberry, cranberry and tea.', 'Pinot Noir is the primary red grape in France''s Burgundy region, and it makes some of the world''s most sought-after and age-worthy wines particularly those from the limestone soils of the Or. Each village there claims to produce wines with unique characteristics related to its particular terroir.\r\nBut great Pinot Noir wine is made in many locations. There are excellent examples from California''s Carneros and Russian River Valley regions, as well as Oregon''s Willamette Valley and New Zealand. The best Pinot Noir boasts delicate, sometimes sour, cherry and strawberry flavors with some spice, presenting medium to low acidity and relatively light tannins. Oaked versions may also have smoke, vanilla and toast flavors, which develop with age. Winemakers rarely blend it, though Pinot Noir grapes are a key component in Champagne and other sparkling wines, where they add body and flavor, and color for rosy versions.\r\nPinot Noir, vulnerable to extreme cold, extreme heat, rot and vineyard pests, is relatively difficult to grow. The grapes thin skins demand exceptionally gentle handing to prevent damage to the final wine. The grape is so prone to mutation that it has even spawned entirely new varieties, including Pinot Gris, Pinot Blanc and Pinot Meunier. As a result, farmers must select from dozens of Pinot clones when planting (the best known is the Pommard clone, named for the fabled Burgundy appellation). But farmers and winemakers endure these challenges because the final result, as you''ll see, is often very rewarding.', '750mL, 1.75L, 2.7L', 16.99, 'DAPN2014.png', '2016-10-19 02:05:53', 1, 4.8),
(5, 'D''Pahlmeyer Chardonnay Napa, 2013', 'Antonio Galloni-Napa, CA- "Pahlmeyer''s 2013 Chardonnay is deep, rich and textured.', 'The popular buttery Chardonnay, the oaky Chardonnay with its devoted followers, is created by aging the wine with oak. This process adds body and flavors that can include butterscotch, vanilla, spice, nuts, toast and, of course, oak. Malolactic fermentationâ€”a process that converts tart acids into softer, round onesâ€”adds creamy flavor and body. Aging the wine on its lees (the yeast from fermentation) adds bready, yeasty notes.\r\nThough it now grows in all the worldâ€™s major wine regions, Chardonnayâ€™s original home is in Burgundy, in France. (Though theyâ€™re usually labeled by appellation, not variety, the most renowned white Burgundies are Chardonnay.) At the most northern end of Burgundy, French Chardonnay winemakers make cool-climate, dry Chardonnay in the village of Chablis, where the wines are unoaked, crisp and steely. Moving south, winemakers of the CÃ´te dâ€™Or make some of the most exquisite examples within world-famous appellations. In Grapes & Wines: A Comprehensive Guide to Varieties and Flavour, Oz Clarke and Margaret Rand offer helpful descriptions of the differing styles: â€œMontrachet is smoky and immensely concentrated; Meursault buttery and oatmealy; Puligny-Montrachet structured, savoury and tight; Chassagne-Montrachet nuttier, and Corton-Charlemagne rich yet minerally.â€', '750mL', 74.99, 'chardon.png', '2016-10-19 02:07:25', 1, 4.9),
(6, 'Domaine Belland Chassagne Montrachet 1er Cru', 'Cote de Beaune, Burgundy, France - Floral aromas and citrus notes.', 'From the 18th-century missionaries who planted vines to supply sacramental wine, to successive waves of immigrants for whom wine was an essential part of their culture, to the scholars and scientists who modernized viticulture, and the passionate winemakers who saw wine as their calling all have contributed to making California the center of our domestic wine world. California wine history begins with the arrival of Franciscan missionaries who, beginning in 1769, built settlements along the coast from San Diego north to Sonoma. They planted a black grape they brought from Spain, now known as the Mission grape, producing a strong, sweet wine that defined California winemaking for decades. As the Spanish were setting up missions, a wave of French, German, Italian and Hungarian immigrants began to flow into California. They came from countries where wine was an integral part of everyday life, and planting grapes provided a link from their European heritage to the New World. 				\r\nWhen gold was discovered in Sutter''s Mill in 1848, California became the destination for many more thousands of immigrants. They came to pan for gold, work in mines and otherwise carve out a living for themselves and their families. They, too, planted vines, using European varietals, including Cabernet Sauvignon and Zinfandel, that are now flagship California grapes. Some opened wineries still in existence today. In 1857, Agoston Harazsthy, an importer of grapevine cuttings, founded Buena Vista Winery in Sonoma. In 1861, Charles Krug founded the first Napa Valley winery, near St. Helena. He was joined in 1862 by Jacob Schram, whose winery gave name to the town of Schramsberg. Other now-historic California wineries opened in that era: Beringer, which was established in 1876; Niebaum, in 1879; and Chateau Montelena in 1882. California''s growing population pushed adventurous winegrowers beyond the warm valleys to plant on the hillsides. Though these areas could be difficult to plant and harvest, the cool climate and poor soils yielded grapes that were dark in color and intensely flavored. A select few winemakers focused on improving the quality of wines being produced, but it was easy to produce grapes of mediocre quality in great quantities, and for the most part, California wines remained rustic. As the notion of fine wines began to take shape in the early 1900s, two disasters struck. The first was an infestation of phylloxera, the louse that attacks vine roots, which by 1915 destroyed 250,000 acres of California vineyards. Then, in 1919, Prohibition was enacted, outlawing the manufacture, transportation, sale and possession of alcoholic beverages. Hundreds of California wineries were forced to close.', '1.75L, 2.5L', 79.99, 'Domaine.png', '2016-10-19 02:07:54', 1, 4.9),
(7, 'Chateau Carbonnieux Blanc Pessac, 2013', 'Wine Spectator-Graves, Bordeaux, France - "This has lots of energy, with enticing thyme.', '\r\nThe Bordeaux wine map is centered on the historic port city of Bordeaux, off Franceâ€™s Atlantic coast. Two rivers, the Garonne and the Dordogne, meet near Bordeaux and form the Gironde, which flows west to the sea. These three waterways define the region and shape the renowned terroir that helps make Bordeaux wines some of the worldâ€™s best.\r\nThe Bordeaux wine regionâ€™s other advantage is its long history. Grapes have been grown in Bordeaux since Roman times, and Bordeaux production for export has been a serious business since the 1700s. So centuries of experience have proven which varietals perform best in specific locations. And the area itself attracts the worldâ€™s best winemakers, who in recent decades have worked to meld 21st-century vineyard management techniques with Bordelaise savoir-faire.', '750mL, 1.75L, 2.1L', 44.99, 'chateauCarbon.png', '2016-10-19 02:10:38', 1, 4.4),
(8, 'Oak Ridge Cabernet Lodi', 'Begins with a bounty of vanilla and cedar from the oak. Picking up flavors of ripe blackberry, dusty earth and green olive character in the modest tannins on the long finish.', 'The archetypal big red wine, Cabernet Sauvignon in its most prized form comes from world-famous wine regions such as Bordeaux and the Napa Valley. But this widely planted grape also makes Cabernet wine in delicious variations and a variety of prices in other wine-producing regions around the world.\r\nCabernet Sauvignon grapes emerged from a spontaneous crossing of the red Cabernet Franc and the white Sauvignon Blanc grapes, appearing in Bordeaux some time before the 18th century, according to The Oxford Companion to Wine.\r\nTiny, thick-skinned grapes are behind Cabernet''s deep color and extracted flavors. In moderate climates, like Bordeaux, they make full-bodied wines with a great concentration of black fruit flavors, high acidity and considerable tannins. In Bordeaux, where Cabernet is a late-ripening variety, winemakers often blend it with earlier-ripening grapes, such as Merlot and Cabernet Franc, to achieve the right balance of acidity and flavor complexity. Cabernet Sauvignon dominates the wines of Bordeaux''s Left Bank, particularly in the world-famous appellations of Margaux, Pauillac, St.-Julien, St.-Estphe and Graves.\r\nIn warmer climates like California, Cabernet grapes develop black cherry, blueberry and menthol flavors with medium acidity. The grapes can ripen more fully there, leading to wines with softer tannins, heavier fruit profiles and higher alcohol. In the United States, Cabernet is generally bottled as a varietal wine, though some winemakers emulate the Bordeaux style, blending the grape with Cabernet Franc and Merlot. You''ll occasionally see these blends classified as Meritage wines.\r\nHigh-quality Cabernets are typically aged in French or American oak barrels. The wine''s rich flavors marry with oak to develop a wide range of complex tastes, including vanilla, toast, char, cedar, tobacco, cigar box, leather, chocolate, coffee, spice and more. Some lighter, less-expensive Cabernet Sauvignon wines may be unoaked, aged in older, neutral oak or aged with oak staves or chips.\r\nWine lovers can discover a range of Cabernet Sauvignon styles and fine examples all over the world. In Italy, Cabernet is a key grape in internationally styled Super Tuscan wines. Australian winemakers sometimes blend it with Shiraz, and South African producers make Cabernet Sauvignon as a varietal wine and use it in Bordeaux-styled blends. Winemakers also produce exceptional examples of Cabernet Sauvignon wines in Washington, Chile and Argentina.', '1.75L', 14.49, 'lodi.png', '2016-10-19 02:13:02', 1, 3.7),
(9, 'Predator Zinfandel Old Vine Lodi', 'Deep ruby-cherry color. Some tobacco, spice and oak and vanilla on the nose. Black cherry, slightly jammy on the palate with hints of spicy notes. A drinkable, everyday glass of Zin.', 'Zinfandel is one of the classic wines of California, where it has been popular since Gold Rush days. The red Zinfandel grape thrives in warm climate regions, most notably portions of the Central and Sonoma valleys. When fully ripe, Zinfandel grapes contain high amounts of sugar, which can be completely fermented to create a dry and fairly high-alcohol wine, or be left in part as a trace of residual sweetness.\r\nZinfandel wine made in the traditional fashion may be unoaked, easy-drinking and jammy, or oak-aged and full bodied. Old-vine versions can be particularly intense and rich. Expect flavors of black fruits and spice in all. The full flavors and bit of sweetness make Zinfandel a great match for grilled and barbecued meats, especially those cooked in sweet or tomato-based sauces.', '1.75L, 2.5L', 12.79, 'pred.png', '2016-10-19 02:15:30', 1, 4.8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `username`, `pw`) VALUES
(1, 'Sushant', 'Bhattarai', 'sushantb@vt.edu', 'sushant94', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `newsletter_signup`
--
ALTER TABLE `newsletter_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added_by` (`Creator_Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `newsletter_signup`
--
ALTER TABLE `newsletter_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
