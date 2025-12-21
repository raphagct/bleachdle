DROP TABLE IF EXISTS techniques CASCADE;
DROP TABLE IF EXISTS citations CASCADE;
DROP TABLE IF EXISTS bankai CASCADE;
DROP TABLE IF EXISTS personnages CASCADE;

CREATE TABLE personnages (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(20),
    age VARCHAR(20),
    race VARCHAR(200),
    affiliation VARCHAR(200),
    evolutive_forms VARCHAR(200),
    rank VARCHAR(200),
    introduction_arc VARCHAR(100),
    image VARCHAR(200)
    );

CREATE TABLE bankai (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    personnage_id INT NOT NULL REFERENCES personnages(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE citations (
    id SERIAL PRIMARY KEY,
    contenu TEXT NOT NULL,
    destinataire VARCHAR(200),
    personnage_id INT NOT NULL REFERENCES personnages(id) ON DELETE CASCADE
);

CREATE TABLE techniques (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    gif_url VARCHAR(255) NOT NULL,
    personnage_id INT NOT NULL REFERENCES personnages(id) ON DELETE CASCADE
);


INSERT INTO personnages (name, gender, age, race, affiliation, evolutive_forms, rank, introduction_arc, image) VALUES
    ('Ichigo Kurosaki', 'Homme', '17', 'Humain, Shinigami, Hollow, Fullbringer, Quincy', 'Ville de Karakura', 'Shikai, Bankai, Fullbring', 'Lycéen, Shinigami remplaçant', 'Prélude', 'assets/img/ichigo'),
    ('Rukia Kuchiki', 'Femme', '150', 'Shinigami', 'Gotei 13 (13ème division)', 'Shikai, Bankai', 'Vice-capitaine', 'Prélude', 'assets/img/rukia'),
    ('Renji Abarai', 'Homme', '150', 'Shinigami', 'Gotei 13 (6ème division)', 'Shikai, Bankai', 'Vice-capitaine', 'Prélude', 'assets/img/renji'),
    ('Byakuya Kuchiki', 'Homme', '200', 'Shinigami', 'Gotei 13 (6ème division)', 'Shikai, Bankai', 'Capitaine', 'Prélude', 'assets/img/byakuya'),
    ('Orihime Inoue', 'Femme', '17', 'Humain', 'Ville de Karakura', 'Aucune', 'Lycéenne', 'Prélude', 'assets/img/orihime'),
    ('Yasutora Sado', 'Homme', '18', 'Humain, Fullbringer', 'Ville de Karakura', 'Fullbring', 'Lycéen', 'Prélude', 'assets/img/chad'),
    ('Toshiro Hitsugaya', 'Homme', '100', 'Shinigami', 'Gotei 13 (10ème division)', 'Shikai, Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/toshiro'),
    ('Kisuke Urahara', 'Homme', '300', 'Shinigami', 'Ville de Karakura', 'Shikai, Bankai', 'Propriétaire d''un magasin', 'Prélude', 'assets/img/urahara'),
    ('Shunsui Kyoraku', 'Homme', '200', 'Shinigami', 'Gotei 13 (1ère division)', 'Shikai, Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/shunsui'),
    ('Uryū Ishida', 'Homme', '17', 'Quincy', 'Wandenreich', 'Vollständig', 'Sternritter "A"', 'Prélude', 'assets/img/uryu'),
    ('Jūshirō Ukitake', 'Homme', '200', 'Shinigami', 'Gotei 13 (13ème division)', 'Shikai, Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/jushiro'),
    ('Mayuri Kurotsuchi', 'Homme', '200', 'Shinigami', 'Gotei 13 (12ème division)', 'Shikai, Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/mayuri'),
    ('Shinji Hirako', 'Homme', 'Unknown', 'Shinigami, Vizard', 'Gotei 13 (5ème division)', 'Shikai, Bankai', 'Capitaine', 'Arc de l''Invasion des Arrancars', 'assets/img/shinji'),
    ('Love Aikawa', 'Homme', 'Unknown', 'Shinigami, Vizard', 'Vizard', 'Shikai', 'Ancien Capitaine', 'Arc de l''Invasion des Arrancars', 'assets/img/love'),
    ('Hiyori Sarugaki', 'Femme', 'Unknown', 'Shinigami, Vizard', 'Vizard', 'Shikai', 'Ancienne Vice-capitaine', 'Arc de l''Invasion des Arrancars', 'assets/img/hyori'),
    ('Bazz-B', 'Homme', 'Unknown', 'Quincy', 'Wandenreich', 'Vollständig', 'Sternritter "H"', 'Arc de la Guerre sanglante Millénaire', 'assets/img/bazzb'),
    ('Askin Nakk Le Vaar', 'Homme', 'Unknown', 'Quincy', 'Wandenreich', 'Vollständig', 'Sternritter "D"', 'Arc de la Guerre sanglante Millénaire', 'assets/img/askin'),
    ('Yukio Hans Vorarlberna', 'Homme', '17', 'Humain, Fullbringer', 'Xcution', 'Fullbring', 'Membre', 'Arc Fullbringer', 'assets/img/yukio'),
    ('Jackie Tristan', 'Femme', '19', 'Humaine, Fullbringer', 'Xcution', 'Fullbring', 'Membre', 'Arc Fullbringer', 'assets/img/jackie'),
    ('Kon', 'Homme', 'Inconnu', 'Mod Soul', 'Ville de Karakura', 'Aucune', 'Peluche', 'Prélude', 'assets/img/kon'),
    ('Yoruichi Shihouin', 'Femme', 'Unknown', 'Shinigami', 'Ville de Karakura', 'Shunkō', 'Ancienne Capitaine', 'Prélude', 'assets/img/yoruichi'),
    ('Ulquiorra Cifer', 'Homme', 'Inconnu', 'Arrancar', 'Arc de l''Assaut du Hueco Mundo (Espada #4)', 'Resurrección, Segunda Etapa', 'Espada #4', 'Arc de l''Assaut du Hueco Mundo', 'assets/img/ulquiorra'),
    ('Grimmjow Jaegerjaquez', 'Homme', 'Inconnu', 'Arrancar', 'Arc de l''Assaut du Hueco Mundo (Espada #6)', 'Resurrección', 'Espada #6', 'Arc de l''Assaut du Hueco Mundo', 'assets/img/grimmjow'),
    ('Nnoitra Gilga', 'Homme', 'Inconnu', 'Arrancar', 'Arc de l''Assaut du Hueco Mundo (Espada #5)', 'Resurrección', 'Espada #5', 'Arc de l''Assaut du Hueco Mundo', 'assets/img/nnoitra'),
    ('Tier Harribel', 'Femme', 'Inconnu', 'Arrancar', 'Arc de l''Assaut du Hueco Mundo (Espada #3)', 'Resurrección', 'Espada #3', 'Arc de l''Assaut du Hueco Mundo', 'assets/img/hallibel'),
    ('Coyote Starrk', 'Homme', 'Inconnu', 'Arrancar', 'Arc de l''Assaut du Hueco Mundo (Espada #1)', 'Resurrección', 'Espada #1', 'Arc de l''Assaut du Hueco Mundo', 'assets/img/starrk'),
    ('Ichibei Hyōsube', 'Homme', 'Inconnu', 'Shinigami', 'Division 0', 'True Name Release', 'Chef de la Division 0', 'Arc de la Guerre sanglante Millénaire', 'assets/img/ichibe'),
    ('Senjumaru Shutara', 'Femme', 'Inconnu', 'Shinigami', 'Division 0', 'Inconnu', 'Membre Division 0', 'Arc de la Guerre sanglante Millénaire', 'assets/img/senjumaru'),
    ('Ōetsu Nimaiya', 'Homme', 'Inconnu', 'Shinigami', 'Division 0', 'Inconnu', 'Membre Division 0', 'Arc de la Guerre sanglante Millénaire', 'assets/img/oetsu'),
    ('Tenjirō Kirinji', 'Homme', 'Inconnu', 'Shinigami', 'Division 0', 'Inconnu', 'Membre Division 0', 'Arc de la Guerre sanglante Millénaire', 'assets/img/tenjiro'),
    ('Kirio Hikifune', 'Femme', 'Inconnu', 'Shinigami', 'Division 0', 'Inconnu', 'Membre Division 0', 'Arc de la Guerre sanglante Millénaire', 'assets/img/kirio'),
    ('Soi Fon', 'Femme', 'Inconnu', 'Shinigami', 'Gotei 13 (2ème division)', 'Shikai, Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/soifon'),
    ('Ikkaku Madarame', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (11ème division)', 'Shikai, Bankai', '3ème siège', 'Arc de la Soul Society', 'assets/img/ikkaku'),
    ('Yumichika Ayasegawa', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (11ème division)', 'Shikai caché', '5ème siège', 'Arc de la Soul Society', 'assets/img/yumichika'),
    ('Rangiku Matsumoto', 'Femme', 'Inconnu', 'Shinigami', 'Gotei 13 (10ème division)', 'Shikai', 'Lieutenant', 'Arc de la Soul Society', 'assets/img/rangiku'),
    ('Izuru Kira', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (3ème division)', 'Shikai', 'Lieutenant', 'Arc de la Soul Society', 'assets/img/kira');

INSERT INTO personnages (name, gender, age, race, affiliation, evolutive_forms, rank, introduction_arc, image) VALUES
    ('Sōsuke Aizen', 'Homme', 'Inconnu', 'Shinigami, Hollow', 'Ancien capitaine du Gotei 13 (5ème division), Arc de l''Assaut du Hueco Mundo', 'Fusion Hōgyoku', 'Ancien Capitaine', 'Arc de la Soul Society', 'assets/img/aizen'),
    ('Genryūsai Shigekuni Yamamoto', 'Homme', '2100+', 'Shinigami', 'Gotei 13 (1ère division)', 'Shikai, Bankai', 'Capitaine-commandant', 'Arc de la Soul Society', 'assets/img/yamamoto'),
    ('Kūgo Ginjō', 'Homme', 'Inconnu', 'Humain, Fullbringer, Shinigami', 'Xcution', 'Fullbring', 'Leader', 'Arc Fullbringer', 'assets/img/ginjo'),
    ('Shūkurō Tsukishima', 'Homme', 'Inconnu', 'Humain, Fullbringer', 'Xcution', 'Fullbring', 'Membre', 'Arc Fullbringer', 'assets/img/tsukishima'),
    ('Baraggan Louisenbairn', 'Homme', 'Inconnu', 'Arrancar', 'Arc de l''Assaut du Hueco Mundo (Espada #2)', 'Resurrección', 'Espada #2', 'Arc de l''Assaut du Hueco Mundo', 'assets/img/barragan'),
    ('Kaname Tōsen', 'Homme', 'Inconnu', 'Shinigami, Hollow', 'Ancien Gotei 13 (9ème division)', 'Resurrección', 'Ancien Capitaine', 'Arc de la Soul Society', 'assets/img/tosen'),
    ('Gin Ichimaru', 'Homme', 'Inconnu', 'Shinigami', 'Ancien Gotei 13 (3ème division)', 'Shikai, Bankai', 'Ancien Capitaine', 'Arc de la Soul Society', 'assets/img/gin'),
    ('Kensei Muguruma', 'Homme', 'Inconnu', 'Shinigami, Vizard', 'Gotei 13 (9ème division)', 'Shikai, Bankai', 'Capitaine', 'Arc de l''Invasion des Arrancars', 'assets/img/kensei'),
    ('Kenpachi Zaraki', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (11ème division)', 'Shikai, Shikai, Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/zaraki'),
    ('Retsu Unohana', 'Femme', 'Inconnu', 'Shinigami', 'Gotei 13 (4ème division)', 'Shikai, Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/unohana'),
    ('Zangetsu', 'Homme', 'Inconnu', 'Manifestation spirituelle', 'Aucun', 'Shikai, Shikai, Bankai', 'Aucun', 'Prélude', 'assets/img/zangetsu'),
    ('Yhwach', 'Homme', '1000+', 'Quincy', 'Wandenreich', 'The Almighty', 'Empereur', 'Arc de la Guerre sanglante Millénaire', 'assets/img/yhwach'),
    ('Yammy Llargo', 'Homme', 'Inconnu', 'Arrancar', 'Arc de l''Assaut du Hueco Mundo (Espada #0)', 'Resurrección', 'Espada #0', 'Arc de l''Assaut du Hueco Mundo', 'assets/img/yammy'),
    ('Szayelaporro Granz', 'Homme', 'Inconnu', 'Arrancar', 'Arc de l''Assaut du Hueco Mundo (Espada #8)', 'Resurrección', 'Espada #8', 'Arc de l''Assaut du Hueco Mundo', 'assets/img/szayelaporro'),
    ('Shūhei Hisagi', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (9ème division)', 'Shikai', 'Lieutenant', 'Arc de la Soul Society', 'assets/img/shuhei'),
    ('Ryūken Ishida', 'Homme', 'Inconnu', 'Quincy', 'Hopital d''Ishida', 'Aucune', 'Aucun', 'Prélude', 'assets/img/ryuken'),
    ('Rōjūrō Ōtoribashi (Rose)', 'Homme', 'Inconnu', 'Shinigami, Vizard', 'Gotei 13 (3ème division)', 'Shikai, Bankai', 'Capitaine', 'Arc de l''Invasion des Arrancars', 'assets/img/rose'),
    ('Riruka Dokugamine', 'Femme', 'Inconnu', 'Humaine, Fullbringer', 'Xcution', 'Fullbring', 'Membre', 'Arc Fullbringer', 'assets/img/riruka'),
    ('Pernida Parnkgjas', 'Inconnu', 'Inconnu', 'Quincy, Main du roi des esprits', 'Wandenreich', 'Évolution biologique', 'Sternritter "C"', 'Arc de la Guerre sanglante Millénaire', 'assets/img/pernida'),
    ('Nelliel Tu Odelschwanck', 'Femme', 'Inconnu', 'Arrancar', 'Arc de l''Assaut du Hueco Mundo (ancienne Espada #3)', 'Resurrección', 'Ancienne Espada', 'Arc de l''Assaut du Hueco Mundo', 'assets/img/nelliel'),
    ('Masaki Kurosaki', 'Femme', 'Décédée', 'Quincy', 'Famille Kurosaki', 'Aucune', 'Aucun', 'Prélude', 'assets/img/masaki'),
    ('Lille Barro', 'Homme', 'Inconnu', 'Quincy', 'Wandenreich', 'The X-Axis', 'Sternritter "X"', 'Arc de la Guerre sanglante Millénaire', 'assets/img/lille'),
    ('Gerard Valkyrie', 'Homme', 'Inconnu', 'Quincy', 'Wandenreich', 'The Miracle', 'Sternritter "M"', 'Arc de la Guerre sanglante Millénaire', 'assets/img/gerard'),
    ('Nemu Kurotsuchi', 'Femme', 'Inconnu', 'Mod Soul', 'Gotei 13 (12ème division)', 'Aucune', 'Vice-capitaine', 'Arc de la Soul Society', 'assets/img/nemu'),
    ('Kaien Shiba', 'Homme', 'Décédé', 'Shinigami', 'Gotei 13 (13ème division)', 'Shikai', 'Vice-capitaine', 'Arc de la Soul Society', 'assets/img/kaien'),
    ('Sajin Komamura', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (7ème division)', 'Shikai, Bankai, Transformation humaine', 'Capitaine', 'Arc de la Soul Society', 'assets/img/komamura'),
    ('Isshin Kurosaki', 'Homme', 'Inconnu', 'Shinigami', 'Famille Kurosaki, ancien Gotei 13 (10ème division)', 'Shikai, Bankai', 'Ancien Capitaine', 'Prélude', 'assets/img/isshin'),
    ('Kūkaku Shiba', 'Femme', 'Inconnu', 'Humaine', 'Famille Shiba', 'Aucune', 'Aucun', 'Arc de la Soul Society', 'assets/img/kukaku'),
    ('Jugram Haschwalth', 'Homme', 'Inconnu', 'Quincy', 'Wandenreich', 'The Balance', 'Sternritter "B"', 'Arc de la Guerre sanglante Millénaire', 'assets/img/jugram'),
    ('Bambietta Basterbine', 'Femme', 'Inconnu', 'Quincy', 'Wandenreich', 'The Explode', 'Sternritter "E"', 'Arc de la Guerre sanglante Millénaire', 'assets/img/bambietta'),
    ('Ganju Shiba', 'Homme', 'Inconnu', 'Humain', 'Famille Shiba', 'Aucune', 'Aucun', 'Arc de la Soul Society', 'assets/img/ganju');

INSERT INTO personnages (name, gender, age, race, affiliation, evolutive_forms, rank, introduction_arc, image) VALUES
    ('Soul King', 'Inconnu', 'Inconnu', 'Divinité', 'Palais Royal', 'Aucune', 'Roi des âmes', 'Arc de la Guerre sanglante Millénaire', 'assets/img/soulking');




INSERT INTO bankai (nom, type, personnage_id) VALUES
    ('Tensa Zangetsu', 'Vitesse / Compression de Reiatsu', (SELECT id FROM personnages WHERE name = 'Ichigo Kurosaki')),
    ('Hakka no Togame', 'Glace / Zéro Absolu', (SELECT id FROM personnages WHERE name = 'Rukia Kuchiki')),
    ('Sōō Zabimaru', 'Physique / Os de Babouin', (SELECT id FROM personnages WHERE name = 'Renji Abarai')),
    ('Shirafude Ichimonji', 'Encre / Réécriture de nom', (SELECT id FROM personnages WHERE name = 'Ichibei Hyōsube')),
    ('Shatatsu Karagara Shigarami no Tsuji', 'Tissage / Manipulation de la réalité', (SELECT id FROM personnages WHERE name = 'Senjumaru Shutara')),
    ('Zanka no Tachi', 'Feu / Chaleur solaire (15 millions degrés)', (SELECT id FROM personnages WHERE name = 'Genryūsai Shigekuni Yamamoto')),
    ('Senbonzakura Kageyoshi', 'Lames multiples / Zone', (SELECT id FROM personnages WHERE name = 'Byakuya Kuchiki')),
    ('Katen Kyōkotsu: Karamatsu Shinjū', 'Matérialisation de jeux / Réalité', (SELECT id FROM personnages WHERE name = 'Shunsui Kyoraku')),
    ('Daiguren Hyōrinmaru', 'Glace / Gel des 4 éléments', (SELECT id FROM personnages WHERE name = 'Toshiro Hitsugaya')),
    ('Konjiki Ashisogi Jizō: Matai Fukuin Shōtai', 'Biologique / Adaptation constante', (SELECT id FROM personnages WHERE name = 'Mayuri Kurotsuchi')),
    ('Sakashima Yokoshima Happōfusagari', 'Inversion / Manipulation mentale de zone', (SELECT id FROM personnages WHERE name = 'Shinji Hirako')),
    ('Jakuhō Raikōben', 'Missile / Explosif', (SELECT id FROM personnages WHERE name = 'Soi Fon')),
    ('Minazuki', 'Acide / Sang', (SELECT id FROM personnages WHERE name = 'Retsu Unohana')),
    ('Kokujō Tengen Myō''ō: Dangai Jōe', 'Armure géante / Lien vital sans armure', (SELECT id FROM personnages WHERE name = 'Sajin Komamura')),
    ('Kinshara Butōdan', 'Son / Illusion physique', (SELECT id FROM personnages WHERE name = 'Rōjūrō Ōtoribashi (Rose)')),
    ('Tekken Tachikaze', 'Vent / Impact explosif continu', (SELECT id FROM personnages WHERE name = 'Kensei Muguruma')),
    ('Kamishini no Yari', 'Extension rapide / Poison cellulaire', (SELECT id FROM personnages WHERE name = 'Gin Ichimaru')),
    ('Suzumushi Tsuishiki: Enma Kōrogi', 'Privation sensorielle', (SELECT id FROM personnages WHERE name = 'Kaname Tōsen')),
    ('Kannonbiraki Benihime Aratame', 'Restructuration de la matière', (SELECT id FROM personnages WHERE name = 'Kisuke Urahara')),
    ('Ryūmon Hōzukimaru', 'Physique / Puissance progressive', (SELECT id FROM personnages WHERE name = 'Ikkaku Madarame'));

INSERT INTO personnages (name, gender, age, race, affiliation, evolutive_forms, rank, introduction_arc, image) VALUES
    ('Chōjirō Sasakibe', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (1ère division)', 'Shikai, Bankai', 'Vice-capitaine', 'Arc de la Soul Society', 'assets/img/chojiro');

INSERT INTO bankai (nom, type, personnage_id) VALUES
    ('Kōkō Gonryō Rikyū', 'Foudre / Contrôle météo', (SELECT id FROM personnages WHERE name = 'Chōjirō Sasakibe'));

INSERT INTO citations (contenu, destinataire, personnage_id) VALUES

    ('Personne n''a jamais commencé au sommet du monde. Ni toi, ni moi, ni même Dieu. Mais ce vide insupportable sur le trône du ciel est révolu. Désormais, je me tiendrai au-dessus des cieux.',
    'Jūshirō Ukitake',
    (SELECT id FROM personnages WHERE name = 'Sōsuke Aizen')),

    ('La perfection n''existe pas. Ce monde est imparfait. C''est pour ça qu''il est beau.',
    'Szayelaporro Granz',
    (SELECT id FROM personnages WHERE name = 'Mayuri Kurotsuchi')),

    ('Si je pouvais vivre cinq vies, je serais née dans cinq villes différentes, j''aurais mangé cinq plats différents, j''aurais eu cinq métiers différents... et je serais tombée amoureuse de la même personne, cinq fois.',
    'Ichigo Kurosaki',
    (SELECT id FROM personnages WHERE name = 'Orihime Inoue')),

    ('Si je t''ouvre la poitrine, verrais-je ton cœur ? Si je t''ouvre le crâne, verrais-je tes espoirs ? C''est donc cela... un coeur.',
    'Orihime Inoue',
    (SELECT id FROM personnages WHERE name = 'Ulquiorra Cifer')),

    ('Si tu te transformais en serpent demain et que tu commençais à dévorer des humains, et qu''avec cette même bouche tu me disais "Je t''aime", serais-je encore capable de dire "Je t''aime" en retour ?',
    'Rangiku Matsumoto',
    (SELECT id FROM personnages WHERE name = 'Gin Ichimaru')),

    ('À partir du moment où l''on entre en guerre, les deux camps sont en tort.',
    'Coyote Starrk',
    (SELECT id FROM personnages WHERE name = 'Shunsui Kyoraku')),

    ('Pourquoi penses-tu que je suis le capitaine-commandant du Gotei 13 depuis mille ans ? C''est parce qu''aucun Shinigami plus fort que moi n''est né durant tout ce temps.',
    'Sōsuke Aizen',
    (SELECT id FROM personnages WHERE name = 'Genryūsai Shigekuni Yamamoto'));

INSERT INTO citations (contenu, destinataire, personnage_id) VALUES
    ('Pourquoi penses-tu que je mens ? Est-ce que j''ai l''air de mentir ? Ou est-ce que tu as peur que je dise la vérité ?',
    'Shinji Hirako',
    (SELECT id FROM personnages WHERE name = 'Sōsuke Aizen')),

    ('Tu pensais vraiment que ta rencontre avec Rukia Kuchiki était un hasard ? Tout ce qui t''est arrivé, chacun de tes combats, c''est moi qui les ai planifiés depuis le début.',
    'Ichigo Kurosaki',
    (SELECT id FROM personnages WHERE name = 'Sōsuke Aizen')),

    ('Si la justice ne suffit pas à vaincre le mal, alors je deviendrai un mal capable de vaincre le mal. C''est cela, ma justice.',
    'Sajin Komamura',
    (SELECT id FROM personnages WHERE name = 'Kaname Tōsen')),

    ('Ceux qui ne connaissent pas la peur ne sont pas aptes à combattre.',
    'Shūhei Hisagi',
    (SELECT id FROM personnages WHERE name = 'Kaname Tōsen')),

    ('Je me souviens... Quand je t''ai rencontré pour la première fois, la pluie qui tombait dans mon cœur s''est arrêtée.',
    'Ichigo Kurosaki',
    (SELECT id FROM personnages WHERE name = 'Rukia Kuchiki'));

INSERT INTO techniques (nom, gif_url, personnage_id) VALUES
    -- Ichigo
    ('Getsuga Tenshō', 'assets/gif/getsuga_tensho',
    (SELECT id FROM personnages WHERE name = 'Ichigo Kurosaki')),

    -- Byakuya
    ('Senbonzakura Kageyoshi', 'assets/gif/senbonzakura',
    (SELECT id FROM personnages WHERE name = 'Byakuya Kuchiki')),

    -- Aizen (Hadō #90)
    ('Hadō #90 : Kurohitsugi', 'assets/gif/kurohitsugi',
    (SELECT id FROM personnages WHERE name = 'Sōsuke Aizen')),

    -- Rukia
    ('Tsugi no Mai, Hakuren', 'assets/gif/hakuren',
    (SELECT id FROM personnages WHERE name = 'Rukia Kuchiki'));