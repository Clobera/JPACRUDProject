-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema artgallerydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `artgallerydb` ;

-- -----------------------------------------------------
-- Schema artgallerydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `artgallerydb` DEFAULT CHARACTER SET utf8 ;
USE `artgallerydb` ;

-- -----------------------------------------------------
-- Table `gallery_room`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gallery_room` ;

CREATE TABLE IF NOT EXISTS `gallery_room` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `art_style` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art_gallery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `art_gallery` ;

CREATE TABLE IF NOT EXISTS `art_gallery` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `room_name` VARCHAR(45) NOT NULL,
  `gallery_room_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_art_gallery_gallery_room_idx` (`gallery_room_id` ASC),
  CONSTRAINT `fk_art_gallery_gallery_room`
    FOREIGN KEY (`gallery_room_id`)
    REFERENCES `gallery_room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art_piece`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `art_piece` ;

CREATE TABLE IF NOT EXISTS `art_piece` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `piece_name` VARCHAR(45) NOT NULL,
  `artist_name` VARCHAR(45) NOT NULL,
  `description` TEXT(400) NOT NULL,
  `art_movement` VARCHAR(45) NOT NULL,
  `medium` VARCHAR(45) NOT NULL,
  `dimension_height` DECIMAL(6,2) NULL,
  `dimension_width` DECIMAL(6,2) NULL,
  `year_created` VARCHAR(4) NULL,
  `picture_url` VARCHAR(3000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `artist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `artist` ;

CREATE TABLE IF NOT EXISTS `artist` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `middle_name` VARCHAR(45) NULL,
  `country_from` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS artgallery@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'artgallery'@'localhost' IDENTIFIED BY 'artgallery';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'artgallery'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `gallery_room`
-- -----------------------------------------------------
START TRANSACTION;
USE `artgallerydb`;
INSERT INTO `gallery_room` (`id`, `art_style`) VALUES (1, 'Abstract');
INSERT INTO `gallery_room` (`id`, `art_style`) VALUES (2, 'Contemporary');
INSERT INTO `gallery_room` (`id`, `art_style`) VALUES (3, 'Realism');
INSERT INTO `gallery_room` (`id`, `art_style`) VALUES (4, 'Surrealism');
INSERT INTO `gallery_room` (`id`, `art_style`) VALUES (5, 'Modern');
INSERT INTO `gallery_room` (`id`, `art_style`) VALUES (6, 'Portrait');
INSERT INTO `gallery_room` (`id`, `art_style`) VALUES (7, 'Sculpture');

COMMIT;


-- -----------------------------------------------------
-- Data for table `art_gallery`
-- -----------------------------------------------------
START TRANSACTION;
USE `artgallerydb`;
INSERT INTO `art_gallery` (`id`, `room_name`, `gallery_room_id`) VALUES (1, 'Abstract Room', 1);
INSERT INTO `art_gallery` (`id`, `room_name`, `gallery_room_id`) VALUES (2, 'Contemporary Room', 2);
INSERT INTO `art_gallery` (`id`, `room_name`, `gallery_room_id`) VALUES (3, 'Realism Room', 3);
INSERT INTO `art_gallery` (`id`, `room_name`, `gallery_room_id`) VALUES (4, 'Surrealism Room', 4);
INSERT INTO `art_gallery` (`id`, `room_name`, `gallery_room_id`) VALUES (5, 'Modern Room', 5);
INSERT INTO `art_gallery` (`id`, `room_name`, `gallery_room_id`) VALUES (6, 'Portraits Room', 6);

COMMIT;


-- -----------------------------------------------------
-- Data for table `art_piece`
-- -----------------------------------------------------
START TRANSACTION;
USE `artgallerydb`;
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (1, 'The Starry Night', 'Vincent van Gogh', 'The Starry Night is an oil-on-canvas painting by the Dutch Post-Impressionist painter Vincent van Gogh. Painted in June 1889, it depicts the view from the east-facing window of his asylum room at Saint-Rémy-de-Provence, just before sunrise, with the addition of an imaginary village.', 'Modern', 'Oil Paint', 73.7, 92.1, '1889', 'https://mymodernmet.com/wp/wp-content/uploads/2017/05/van-gogh-starry-night.jpg');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (2, 'El Cargador de Flores', 'Diego Rivera', 'Los dos personas en el mural representan personas de pocos recursos. Los colores deben ser más obscuro, porque ser pobre es una cosa muy triste, y no bueno como los colores brillantes. El propósito de la obra de arte es que la vida es más difícil sin dinero, y necesitas trabajar muy duro cuando no tienen dinero.', 'Mexican Muralism/ Social Realism', 'Oil Paint', 121.92, 121.29, '1935', 'https://www.diegorivera.org/images/famous/flower-vendor.jpg');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (3, 'View of Toledo', 'Diego Rivera', 'A stunning tribute to three of Rivera\'s favorite masters - El Greco, Francisco Goya, and Paul Cézanne - View of Toledo exemplifies Rivera\'s tendency to unite traditional and more modern approaches in his work. The landscape is a reworking of the famous 1597 landscape painting by El Greco, whose work Rivera studied during his time in Spain; Rivera\'s version even deploys the same viewpoint as the Spanish Old Master. At the same time, the subdued palette, flattened forms, and unconventional use of perspective suggest the artist\'s reverence for Cézanne, his L\'Estaque Landscapes. This artwork also documents the beginning of Rivera\'s Cubist phase.', 'Cubism', 'Oil Paint', 112, 91, '1912', 'https://www.diegorivera.org/images/famous/view-of-toledo.jpg');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (4, 'House over the Bridge', 'Diego Rivera', 'The House on the Bridge was completed by Diego Rivera in 1909. It resides today within the Museo Nacional de Arte in Mexico City, Mexico. It is rare to find a famous Mexican painter based in Northern Europe, creating depictions of its famous architecture but that is precisely what can be found here.', 'Social Realism', 'Oil Paint', 147, 120, '1909', 'https://www.diegorivera.org/images/paintings/House-over-the-Bridge-1909.jpg');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (5, 'The Two Fridas', 'Frida Kahlo', 'The Two Fridas is an oil painting by Mexican artist Frida Kahlo. The painting was the first large-scale work done by Kahlo and is considered one of her most notable paintings. It is a double self-portrait, depicting two versions of Kahlo seated together.', 'Self-Portrait/Allegory', 'Oil Paint', 172.72, 172.72, '1939', 'https://uploads5.wikiart.org/images/magdalena-carmen-frieda-kahlo-y-calder%C3%B3n-de-rivera/the-two-fridas-1939.jpg');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (6, 'Viva la Vida, Watermelons', 'Frida Kahlo', 'Viva la Vida, Watermelons is the last painting that Frida Kahlo did. A vibrant conclusion to the short life of Frida Kahlo, Viva la Vida, Watermelons features rich color contrasts, curves and angles, and a final message from the artist herself.', 'Modern/Symbolism', 'Oil Paint', 60, 51, '1954', 'https://www.museofridakahlo.org.mx/wp/wp-content/uploads/2022/05/1.jpg');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (7, 'Self Portrait with Curly Hair', 'Frida Kahlo', 'In Self Portrait with Curly Hair, Frida portrays herself with short curly hair, most likely to spite Diego who was very fond of her long flowing hair. Later Frida admitted it expressed her desperation and loneliness with the separation from Diego.', 'Self-Portrait', 'Oil Paint', 18.3, 14.6, '1935', 'https://uploads2.wikiart.org/images/magdalena-carmen-frieda-kahlo-y-calder%C3%B3n-de-rivera/self-portrait-with-curly-hair-1935.jpg');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (8, 'CLIMATIC ERUPTION', 'Dr. Atl', 'In 1943, a volcano formed in Michoacán, west of Mexico City, just outside the cabin where painter, writer, volcanologist, philosopher and scientist Dr. Atl— born Gerardo Murillo—lived. For two years, he recorded the daily evolution of the volcano, making drawings and paintings including Erupción del Paricutín. For the first time in modern science, one could study and record a volcano’s creation. Learn more about this masterpiece with Carmen Gaitán Rojo, Director of Museo Nacional De Arte.', 'Landscape', 'Oil Paint', 93, 122, '1960', 'https://lh3.googleusercontent.com/ci/AC_FhM_uRODK98ThTI4f35cZFYC73JqIrn0fKyCkZWF4Bp_xh55bICoQ28biX7UisfUzkstfi_nEP7uq');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (9, 'La Calavera Catrina', 'José Guadalupe Posada', 'Garbancera is a 1910–1913 zinc etching by the Mexican printmaker, cartoon illustrator and lithographer José Guadalupe Posada. Originally a satirization of an upper class woman of the Porfiriato, the character of La Catrina has become an icon of the Mexican Day of the Dead.', 'Symbolism', 'Zinc Etching', 11, 15.6, '1873', 'https://upload.wikimedia.org/wikipedia/commons/a/ac/Posada2.Catrina.jpeg');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (10, 'Van Gogh self-portrait', 'Vincent van Gogh', 'Dutch Post-Impressionist painter Vincent van Gogh painted a self-portrait in oil on canvas in September 1889. The work, which may have been Van Gogh\'s last self-portrait, was painted shortly before he left Saint-Rémy-de-Provence in southern France. The painting is now at the Musée d\'Orsay in Paris.', 'Self-Portrait', 'Oil Paint', 66.04, 53.34, '1889', 'https://cdn.mediatheque.epmoo.fr/link/gkx189jpz7bcbkw.jpg');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (11, 'Sunflowers', 'Vincent van Gogh', 'Van Gogh painted four still lifes of sunflowers in Paris in late summer 1887. There is an oil sketch for this picture (Van Gogh Museum, Amsterdam) as well as another painting of two sunflowers also signed and dated 1887 (Kunstmuseum Bern), and a larger canvas showing four sunflower heads (Kröller-Müller Museum, Otterlo). Paul Gauguin acquired the two smaller works, and until the mid-1890s, when he sold his most prized possessions to finance his South Seas voyage, they held pride of place above the bed in his Paris apartment.', 'Post-Impressionism', 'Oil Paint', 43.2, 61, '1887', 'https://collectionapi.metmuseum.org/api/collection/v1/iiif/436524/800285/main-image');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (12, 'Calm Sea', 'Simon de Vlieger', 'On the left the horizon line dissolves into a vast becalmed sea, while fishermen ply their trade on the right. De Vlieger influenced later marine painters by working with a limited tonal range to achieve precisely calibrated effects of light in the sky and water. His observations of northern light established him as the master of a particularly local landscape, affirmed by the Dutch flag fluttering above the boat on the right.', 'Realism', 'Oil Paint', 37.5, 44.5, '1640', 'https://collectionapi.metmuseum.org/api/collection/v1/iiif/437914/795889/main-image');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (13, 'Nighthawks', 'Edward Hopper', 'Nighthawks is a 1942 oil on canvas painting by Edward Hopper that portrays four people in a downtown diner late at night as viewed through the diner\'s large glass window. The light coming from the diner illuminates a darkened and deserted urban streetscape.', 'Modern/ Realism', 'Oil Paint', 83.82, 152.4, '1942', 'https://blog.artsper.com/wp-content/uploads/2020/08/Nighthawks_by_Edward_Hopper_1942-1-644x352.jpg');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (14, 'Girl with a Pearl Earring', 'Johannes Vermeer', 'Girl with a Pearl Earring is Vermeer’s most famous painting. It is not a portrait, but a ‘tronie’ – a painting of an imaginary figure. Tronies depict a certain type or character; in this case a girl in exotic dress, wearing an oriental turban and an improbably large pearl in her ear.', 'Baroque', 'Oil Paint', 45.72, 38.1, '1665', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/1665_Girl_with_a_Pearl_Earring.jpg/800px-1665_Girl_with_a_Pearl_Earring.jpg');
INSERT INTO `art_piece` (`id`, `piece_name`, `artist_name`, `description`, `art_movement`, `medium`, `dimension_height`, `dimension_width`, `year_created`, `picture_url`) VALUES (15, 'Impression, Sunrise', 'Claude Monet', 'mpression, Sunrise (French: Impression, soleil levant) is an 1872 painting by Claude Monet first shown at what would become known as the \"Exhibition of the Impressionists\" in Paris in April, 1874. The painting is credited with inspiring the name of the Impressionist movement.', 'Impressionism', 'Oil Paint', 48, 63, '1872', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Monet_-_Impression%2C_Sunrise.jpg/1280px-Monet_-_Impression%2C_Sunrise.jpg');

COMMIT;

