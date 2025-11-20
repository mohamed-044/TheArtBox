-- Création de la base
CREATE DATABASE IF NOT EXISTS artbox CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE artbox;

-- Suppression de la table si elle existe déjà
DROP TABLE IF EXISTS oeuvres;

-- Création de la table oeuvres
CREATE TABLE oeuvres (
    id INT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    artiste VARCHAR(255) NOT NULL,
    image VARCHAR(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insertion des données
INSERT INTO oeuvres (id, titre, description, artiste, image) VALUES
(1, 'Dodomu', 'Mia Tozerski est une artiste peintre ukrainienne réfugiée de la guerre. Sur cette œuvre, Dodomu ("domicile" en ukrainien), elle nous montre la tristesse du peuple ukrainien qu''elle partage, ayant elle-même dû quitter son foyer. L''œuvre évoque le drapeau liquéfié d''une Ukraine en souffrance, pleurant la mort de ses compatriotes. Ce travail chargé d''émotion est le symbole d''un événement qui marquera l''Histoire. Cette peinture à l''acrylique rayonne grâce à son fond lisse et ses mélanges de couleurs éclatantes.', 'Mia Tozerski', 'http://localhost/TheArtBox/img/clark-van-der-beken.png'),

(2, 'Aashaaheen Baadal', 'Sur cette oeuvre conceptuelle à la fois organique, minérale et liquide, Anaisha Devi nous transporte dans un nuage noir envoûtant. Un sombre tableau qui, par son verni éclatant, rayonne tel un marbre poli. Une oeuvre à la cohérence transcendantale, exécutée à la perfection', 'Anaisha Devi', 'http://localhost/TheArtBox/img/pawel-czerwinski-3.png'),

(3, 'Nightlife Traffic', 'Quisque accumsan ultrices ligula vestibulum posuere. Aliquam feugiat ligula eget massa blandit condimentum. Morbi volutpat erat luctus suscipit pellentesque. Quisque cursus tempor nibh at sollicitudin. Sed blandit libero velit. Etiam tincidunt facilisis mollis. Ut mollis nunc sit amet lacinia luctus. Suspendisse volutpat enim semper arcu rutrum, et iaculis risus interdum. Duis at libero.', 'Andrew Forsythe', 'http://localhost/TheArtBox/img/dan-cristian-padure.png'),

(4, 'Le refuge de l''Havre', 'Nam tempus neque nec felis venenatis auctor. Nam velit risus, lobortis eu quam non, interdum efficitur nibh. Phasellus a augue ac orci lacinia mattis et vel lectus. Sed nec tellus urna. Donec at turpis turpis. Cras quam tellus, imperdiet vitae finibus id, varius quis felis. Maecenas blandit eleifend risus, vel hendrerit erat dignissim id. Nullam at laoreet nibh. Nulla gravida varius sollicitudin. Etiam non aliquam diam, tempor varius sapien. Aenean et velit eu nisi lobortis massa nunc.', 'Simon Pelletier', 'http://localhost/TheArtBox/img/steve-johnson-5.png'),

(5, 'Red Washover', 'Nunc euismod ullamcorper tortor, id efficitur ante interdum in. Integer eu condimentum nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras viverra suscipit feugiat. Mauris vehicula luctus tellus, eu hendrerit libero laoreet ut. In tristique vehicula nisl in tempus. Morbi tempus aliquet gravida. In eget est congue, rhoncus sapien at, cursus metus.', 'Kit Van Der Borght', 'http://localhost/TheArtBox/img/steve-johnson.png'),

(6, 'Chromatics', 'Vivamus commodo non libero at hendrerit. In lacinia dui sit amet pellentesque iaculis. Donec at ultricies sem porttitor.', 'Jean-Michel Delatronchette', 'http://localhost/TheArtBox/img/pawel-czerwinski.png'),

(7, 'Digital Negative', 'Integer in nisl posuere, pulvinar ex ac, tincidunt risus. Nullam vel lorem et leo dignissim accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tempor, magna non consectetur dapibus, est libero iaculis lacus, eget semper turpis orci vitae felis. Fusce eget molestie.', 'Hamish McKee', 'http://localhost/TheArtBox/img/jazmin-quaynor.png'),

(8, 'Blast from the past', 'Nunc fermentum purus dapibus justo fermentum auctor. Maecenas non tincidunt leo. Morbi vitae iaculis sem. Donec quis scelerisque massa. Fusce quis accumsan diam, et interdum lectus. Suspendisse mattis pulvinar vehicula. Duis nisi.', 'Juliette Baskerville', 'http://localhost/TheArtBox/img/steve-johnson-6.png'),

(9, 'Hurricane', 'Aliquam tristique tempus molestie. Nulla nisl eros, dapibus eu lectus in, cursus accumsan arcu. Suspendisse bibendum diam dignissim porta maximus. Praesent sollicitudin consectetur faucibus. Cras pulvinar massa a orci rutrum, id blandit enim viverra. Praesent sed congue augue. Suspendisse efficitur, nisl quis finibus faucibus, lacus felis bibendum leo, eu euismod lacus mauris in felis.', 'Natalie Wellington', 'http://localhost/TheArtBox/img/victor-grabarczyk.png'),

(10, 'La marée rouge', 'Vivamus quis odio vel ligula feugiat facilisis. Donec eleifend pellentesque massa, ut malesuada est bibendum sit amet. Morbi tincidunt nec tellus vel ornare. Mauris dolor tellus, gravida eget euismod eu, viverra eget urna.', 'Martin Rodriguez', 'http://localhost/TheArtBox/img/pawel-czerwinski-2.png'),

(11, 'Asimilacion', 'Mauris ut justo ac mi pretium eleifend. Curabitur sed magna ut elit facilisis pharetra. Maecenas tincidunt fermentum ipsum ut sollicitudin. Nullam feugiat, neque vel egestas sollicitudin, quam leo mattis mauris, in lacinia sem mi id risus.', 'Angel Sanchez-Fernandez', 'http://localhost/TheArtBox/img/steve-johnson-2.png'),

(12, 'La Galaxia Gialla', 'Mauris maximus, orci sollicitudin ultrices elementum, tellus neque feugiat leo, quis lobortis purus neque vel lectus. Ut sagittis eros id lectus porttitor tincidunt. Donec scelerisque diam nec felis egestas, eget finibus ante porttitor.', 'Eduardo Tancredi', 'http://localhost/TheArtBox/img/fly-d.png'),

(13, 'Puffy Amalgamate', 'Donec semper a massa quis congue. In malesuada lorem ligula, ut posuere magna pulvinar in. Proin vitae enim gravida, commodo odio.', 'Sandro De Blasi', 'http://localhost/TheArtBox/img/orfeas-green.png'),

(14, 'Mirage', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam iaculis lorem ac ex tristique egestas et nec sapien. Donec tincidunt id erat sit amet tempus. Nullam vel molestie dui. Duis a neque massa.', 'Stéphanie Kaiser', 'http://localhost/TheArtBox/img/steve-johnson-4.png'),

(15, 'Blaue Gelbe Muster', 'Curabitur dui odio, porta vel tempor sed, consectetur vitae mi. Interdum et malesuada fames ac ante ipsum primis in faucibus.', 'Adelheid Von Schreiber', 'http://localhost/TheArtBox/img/steve-johnson-3.png');
