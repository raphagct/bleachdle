DROP TABLE IF EXISTS personnages;

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

INSERT INTO personnages (name, gender, age, race, affiliation, evolutive_forms, rank, introduction_arc, image) VALUES
    ('Ichigo Kurosaki', 'Homme', '17', 'Humain, Shinigami, Hollow, Fullbringer, Quincy', 'Ville de Karakura', 'Bankai, Fullbring', 'Lycéen, Shinigami remplaçant', 'Prélude', 'assets/img/ichigo'),
    ('Rukia Kuchiki', 'Femme', '150', 'Shinigami', 'Gotei 13 (13ème division)', 'Shikai', 'Lieutenant', 'Prélude', 'assets/img/rukia'),
    ('Renji Abarai', 'Homme', '150', 'Shinigami', 'Gotei 13 (6ème division)', 'Bankai', 'Vice-capitaine', 'Prélude', 'assets/img/renji'),
    ('Byakuya Kuchiki', 'Homme', '200', 'Shinigami', 'Gotei 13 (6ème division)', 'Bankai', 'Capitaine', 'Prélude', 'assets/img/byakuya'),
    ('Orihime Inoue', 'Femme', '17', 'Humain', 'Ville de Karakura', 'Aucune', 'Lycéenne', 'Prélude', 'assets/img/orihime'),
    ('Yasutora Sado', 'Homme', '18', 'Humain, Fullbringer', 'Ville de Karakura', 'Fullbring', 'Lycéen', 'Prélude', 'assets/img/yasutora'),
    ('Toshiro Hitsugaya', 'Homme', '100', 'Shinigami', 'Gotei 13 (10ème division)', 'Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/toshiro'),
    ('Kisuke Urahara', 'Homme', '300', 'Shinigami', 'Ville de Karakura', 'Bankai', 'Propriétaire d'' un magasin', 'Prélude', 'assets/img/kisuke'),
    ('Shunsui Kyoraku', 'Homme', '200', 'Shinigami', 'Gotei 13 (1ère division)', 'Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/shunsui'),
    ('Uryū Ishida', 'Homme', '17', 'Quincy', 'Wandenreich', 'Vollständig', 'Sternritter "A"', 'Prélude', 'assets/img/uryū'),
    ('Jūshirō Ukitake', 'Homme', '200', 'Shinigami', 'Gotei 13 (13ème division)', 'Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/jūshirō'),
    ('Mayuri Kurotsuchi', 'Homme', '200', 'Shinigami', 'Gotei 13 (12ème division)', 'Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/mayuri'),
    ('Shinji Hirako', 'Homme', 'Unknown', 'Shinigami, Visored', 'Gotei 13 (5ème division)', 'Bankai', 'Capitaine', 'Arc des Visored', 'assets/img/shinji'),
    ('Love Aikawa', 'Homme', 'Unknown', 'Shinigami, Visored', 'Visored', 'Shikai', 'Ancien Capitaine', 'Arc des Visored', 'assets/img/love'),
    ('Hiyori Sarugaki', 'Femme', 'Unknown', 'Shinigami, Visored', 'Visored', 'Shikai', 'Ancienne Vice-capitaine', 'Arc des Visored', 'assets/img/hiyori'),
    ('Bazz-B', 'Homme', 'Unknown', 'Quincy', 'Wandenreich', 'Vollständig', 'Sternritter "H"', 'Guerre sanglante', 'assets/img/bazz-b'),
    ('Askin Nakk Le Vaar', 'Homme', 'Unknown', 'Quincy', 'Wandenreich', 'Vollständig', 'Sternritter "D"', 'Guerre sanglante', 'assets/img/askin'),
    ('Yukio Hans Vorarlberna', 'Homme', '17', 'Humain, Fullbringer', 'Xcution', 'Fullbring', 'Membre', 'Arc Fullbringer', 'assets/img/yukio'),
    ('Jackie Tristan', 'Femme', '19', 'Humaine, Fullbringer', 'Xcution', 'Fullbring', 'Membre', 'Arc Fullbringer', 'assets/img/jackie'),
    ('Kon', 'Homme', 'N/A', 'Mod Soul', 'Ville de Karakura', 'Aucune', 'Peluche', 'Prélude', 'assets/img/kon'),
    ('Yoruichi Shihouin', 'Femme', 'Unknown', 'Shinigami', 'Ville de Karakura', 'Shunkō', 'Ancienne Capitaine', 'Prélude', 'assets/img/yoruichi'),
    ('Ulquiorra Cifer', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #4)', 'Resurrección, Segunda Etapa', 'Espada #4', 'Hueco Mundo', 'assets/img/ulquiorra'),
    ('Grimmjow Jaegerjaquez', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #6)', 'Resurrección', 'Espada #6', 'Hueco Mundo', 'assets/img/grimmjow'),
    ('Nnoitra Gilga', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #5)', 'Resurrección', 'Espada #5', 'Hueco Mundo', 'assets/img/nnoitra'),
    ('Tier Harribel', 'Femme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #3)', 'Resurrección', 'Espada #3', 'Hueco Mundo', 'assets/img/tier'),
    ('Coyote Starrk', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #1)', 'Resurrección', 'Espada #1', 'Hueco Mundo', 'assets/img/starrk'),
    ('Ichibei Hyōsube', 'Homme', 'Inconnu', 'Shinigami', 'Division 0', 'True Name Release', 'Chef de la Division 0', 'Guerre sanglante', 'assets/img/ichibei'),
    ('Senjumaru Shutara', 'Femme', 'Inconnu', 'Shinigami', 'Division 0', 'Inconnu', 'Membre Division 0', 'Guerre sanglante', 'assets/img/senjumaru'),
    ('Ōetsu Nimaiya', 'Homme', 'Inconnu', 'Shinigami', 'Division 0', 'Inconnu', 'Membre Division 0', 'Guerre sanglante', 'assets/img/oetsu'),
    ('Tenjirō Kirinji', 'Homme', 'Inconnu', 'Shinigami', 'Division 0', 'Inconnu', 'Membre Division 0', 'Guerre sanglante', 'assets/img/tenjiro'),
    ('Kirio Hikifune', 'Femme', 'Inconnu', 'Shinigami', 'Division 0', 'Inconnu', 'Membre Division 0', 'Guerre sanglante', 'assets/img/kirio'),
    ('Soi Fon', 'Femme', 'Inconnu', 'Shinigami', 'Gotei 13 (2ème division)', 'Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/soi'),
    ('Ikkaku Madarame', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (11ème division)', 'Bankai', '3ème siège', 'Arc de la Soul Society', 'assets/img/ikkaku'),
    ('Yumichika Ayasegawa', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (11ème division)', 'Shikai caché', '5ème siège', 'Arc de la Soul Society', 'assets/img/yumichika'),
    ('Rangiku Matsumoto', 'Femme', 'Inconnu', 'Shinigami', 'Gotei 13 (10ème division)', 'Shikai', 'Lieutenant', 'Arc de la Soul Society', 'assets/img/rangiku'),
    ('Izuru Kira', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (3ème division)', 'Shikai', 'Lieutenant', 'Arc de la Soul Society', 'assets/img/izuru');

INSERT INTO personnages (name, gender, age, race, affiliation, evolutive_forms, rank, introduction_arc, image) VALUES
    ('Sōsuke Aizen', 'Homme', 'Inconnu', 'Shinigami, Hollow', 'Ancien capitaine du Gotei 13 (5ème division), Hueco Mundo', 'Fusion Hōgyoku', 'Ancien Capitaine', 'Arc de la Soul Society', 'assets/img/aizen'),
    ('Genryūsai Shigekuni Yamamoto', 'Homme', '2100+', 'Shinigami', 'Gotei 13 (1ère division)', 'Bankai', 'Capitaine-commandant', 'Arc de la Soul Society', 'assets/img/yamamoto'),
    ('Kūgo Ginjō', 'Homme', 'Inconnu', 'Humain, Fullbringer, Shinigami', 'Xcution', 'Fullbring', 'Leader', 'Arc Fullbringer', 'assets/img/kugo'),
    ('Shūkurō Tsukishima', 'Homme', 'Inconnu', 'Humain, Fullbringer', 'Xcution', 'Fullbring', 'Membre', 'Arc Fullbringer', 'assets/img/tsukishima'),
    ('Baraggan Louisenbairn', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #2)', 'Resurrección', 'Espada #2', 'Hueco Mundo', 'assets/img/barragan'),
    ('Kaname Tōsen', 'Homme', 'Inconnu', 'Shinigami, Hollow', 'Ancien Gotei 13 (9ème division)', 'Resurrección', 'Ancien Capitaine', 'Arc de la Soul Society', 'assets/img/tosen'),
    ('Gin Ichimaru', 'Homme', 'Inconnu', 'Shinigami', 'Ancien Gotei 13 (3ème division)', 'Bankai', 'Ancien Capitaine', 'Arc de la Soul Society', 'assets/img/gin'),
    ('Kensei Muguruma', 'Homme', 'Inconnu', 'Shinigami, Visored', 'Gotei 13 (9ème division)', 'Bankai', 'Capitaine', 'Arc des Visored', 'assets/img/kensei'),
    ('Kenpachi Zaraki', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (11ème division)', 'Shikai, Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/zaraki'),
    ('Retsu Unohana', 'Femme', 'Inconnu', 'Shinigami', 'Gotei 13 (4ème division)', 'Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/unoha'),
    ('Zangetsu', 'Homme', 'Inconnu', 'Manifestation spirituelle', 'Aucun', 'Shikai, Bankai', 'Esprit d’Ichigo', 'Prélude', 'assets/img/zangetsu'),
    ('Yhwach', 'Homme', '1000+', 'Quincy', 'Wandenreich', 'The Almighty', 'Empereur', 'Guerre sanglante', 'assets/img/yhwach'),
    ('Yammy Llargo', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #0)', 'Resurrección', 'Espada #0', 'Hueco Mundo', 'assets/img/yammy'),
    ('Szayelaporro Granz', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #8)', 'Resurrección', 'Espada #8', 'Hueco Mundo', 'assets/img/szayelapporo'),
    ('Shūhei Hisagi', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (9ème division)', 'Shikai', 'Lieutenant', 'Arc de la Soul Society', 'assets/img/shuei'),
    ('Ryūken Ishida', 'Homme', 'Inconnu', 'Quincy', 'Hopital d’Ishida', 'Aucune', 'Père d’Uryū', 'Prélude', 'assets/img/ryuken'),
    ('Rōjūrō Ōtoribashi (Rose)', 'Homme', 'Inconnu', 'Shinigami, Visored', 'Gotei 13 (3ème division)', 'Bankai', 'Capitaine', 'Arc des Visored', 'assets/img/rose'),
    ('Riruka Dokugamine', 'Femme', 'Inconnu', 'Humaine, Fullbringer', 'Xcution', 'Fullbring', 'Membre', 'Arc Fullbringer', 'assets/img/riruka'),
    ('Pernida Parnkgjas', 'Inconnu', 'Inconnu', 'Quincy, Main du roi des esprits', 'Wandenreich', 'Évolution biologique', 'Sternritter "C"', 'Guerre sanglante', 'assets/img/pernida'),
    ('Nelliel Tu Odelschwanck', 'Femme', 'Inconnu', 'Arrancar', 'Hueco Mundo (ancienne Espada #3)', 'Resurrección', 'Ancienne Espada', 'Hueco Mundo', 'assets/img/nelliel'),
    ('Masaki Kurosaki', 'Femme', 'Décédée', 'Quincy', 'Famille Kurosaki', 'Aucune', 'Mère d’Ichigo', 'Flashback', 'assets/img/masaki'),
    ('Lille Barro', 'Homme', 'Inconnu', 'Quincy', 'Wandenreich', 'The X-Axis', 'Sternritter "X"', 'Guerre sanglante', 'assets/img/lille'),
    ('Gerard Valkyrie', 'Homme', 'Inconnu', 'Quincy', 'Wandenreich', 'The Miracle', 'Sternritter "M"', 'Guerre sanglante', 'assets/img/gerard'),
    ('Nemu Kurotsuchi', 'Femme', 'Inconnu', 'Mod Soul', 'Gotei 13 (12ème division)', 'Renforcement biologique', 'Vice-capitaine', 'Arc de la Soul Society', 'assets/img/nemu'),
    ('Kaien Shiba', 'Homme', 'Décédé', 'Shinigami', 'Gotei 13 (13ème division)', 'Shikai', 'Vice-capitaine', 'Flashback', 'assets/img/kaien'),
    ('Sajin Komamura', 'Homme', 'Inconnu', 'Shinigami (homme-loup)', 'Gotei 13 (7ème division)', 'Bankai, Transformation humaine', 'Capitaine', 'Arc de la Soul Society', 'assets/img/komamura'),
    ('Isshin Kurosaki', 'Homme', 'Inconnu', 'Shinigami', 'Famille Kurosaki, ancien Gotei 13 (10ème division)', 'Bankai', 'Ancien Capitaine', 'Flashback', 'assets/img/isshin'),
    ('Kūkaku Shiba', 'Femme', 'Inconnu', 'Humaine', 'Famille Shiba', 'Aucune', 'Chef de clan', 'Arc de la Soul Society', 'assets/img/kukaku'),
    ('Jugram Haschwalth', 'Homme', 'Inconnu', 'Quincy', 'Wandenreich', 'The Balance', 'Sternritter "B", Bras droit de Yhwach', 'Guerre sanglante', 'assets/img/jugram'),
    ('Bambietta Basterbine', 'Femme', 'Inconnu', 'Quincy', 'Wandenreich', 'The Explode', 'Sternritter "E"', 'Guerre sanglante', 'assets/img/bambietta'),
    ('Ganju Shiba', 'Homme', 'Inconnu', 'Humain', 'Famille Shiba', 'Aucune', 'Combattant', 'Arc de la Soul Society', 'assets/img/ganju');

INSERT INTO personnages (name, gender, age, race, affiliation, evolutive_forms, rank, introduction_arc, image) VALUES
    ('Soul King', 'Inconnu', 'Inconnu', 'Divinité', 'Palais Royal', 'Aucune', 'Roi des âmes', 'Guerre sanglante', 'assets/img/soulking');


CREATE TABLE bankai (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    personnage_id INT NOT NULL REFERENCES personnages(id) ON DELETE CASCADE ON UPDATE CASCADE
);

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
    ('Chōjirō Sasakibe', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (1ère division)', 'Bankai', 'Vice-capitaine', 'Arc de la Soul Society', 'assets/img/chojiro');

INSERT INTO bankai (nom, type, personnage_id) VALUES
    ('Kōkō Gonryō Rikyū', 'Foudre / Contrôle météo', (SELECT id FROM personnages WHERE name = 'Chōjirō Sasakibe'));

-- Création de la table citations
CREATE TABLE citations (
    id SERIAL PRIMARY KEY,
    contenu TEXT NOT NULL,
    personnage_id INT NOT NULL REFERENCES personnages(id) ON DELETE CASCADE
);

-- Insertion des citations
INSERT INTO citations (contenu, personnage_id) VALUES
    ('Je ne me bats pas parce que je veux gagner. Je me bats parce que je dois gagner !',
    (SELECT id FROM personnages WHERE name = 'Ichigo Kurosaki')),
    ('Personne n''a jamais commencé au sommet du monde. Ni toi, ni moi, ni même Dieu. Mais ce vide insupportable sur le trône du ciel est révolu. Désormais, je me tiendrai au-dessus des cieux.',
    (SELECT id FROM personnages WHERE name = 'Sōsuke Aizen')),
    ('La perfection n''existe pas. Ce monde est imparfait. C''est pour ça qu''il est beau.',
    (SELECT id FROM personnages WHERE name = 'Mayuri Kurotsuchi')),
    ('Si je pouvais vivre cinq vies, je serais née dans cinq villes différentes, j''aurais mangé cinq plats différents, j''aurais eu cinq métiers différents... et je serais tombée amoureuse de la même personne, cinq fois.',
    (SELECT id FROM personnages WHERE name = 'Orihime Inoue')),
    ('L''arrogance consiste à croire que l''on est capable de me vaincre.',
    (SELECT id FROM personnages WHERE name = 'Byakuya Kuchiki')),
    ('Si je t''ouvre la poitrine, verrais-je ton cœur ? Si je t''ouvre le crâne, verrais-je tes espoirs ? C''est donc cela... un coeur.',
    (SELECT id FROM personnages WHERE name = 'Ulquiorra Cifer')),
    ('La mort et la douleur ne sont qu''un prix dérisoire à payer pour le plaisir du combat !',
    (SELECT id FROM personnages WHERE name = 'Kenpachi Zaraki')),
    ('Si tu te transformais en serpent demain et que tu commençais à dévorer des humains, et qu''avec cette même bouche tu me disais "Je t''aime", serais-je encore capable de dire "Je t''aime" en retour ?',
    (SELECT id FROM personnages WHERE name = 'Gin Ichimaru')),
    ('À partir du moment où l''on entre en guerre, les deux camps sont en tort.',
    (SELECT id FROM personnages WHERE name = 'Shunsui Kyoraku')),

    -- 12. Kaien Shiba (Le coeur / transmission)
    ('Le cœur n''est pas à l''intérieur de nous. Il se crée quand nous pensons aux autres.',
    (SELECT id FROM personnages WHERE name = 'Kaien Shiba')),

    -- 13. Kisuke Urahara (Le futur)
    ('Il n''y a rien de plus ennuyeux qu''un combat dont l''issue est déjà décidée.',
    (SELECT id FROM personnages WHERE name = 'Kisuke Urahara')),

    -- 14. Rukia Kuchiki (La pluie/Espoir)
    ('Les gens ont de l''espoir parce que la mort est invisible.',
    (SELECT id FROM personnages WHERE name = 'Rukia Kuchiki')),

    -- 15. Genryūsai Shigekuni Yamamoto (La force)
    ('Pourquoi penses-tu que je suis le capitaine-commandant du Gotei 13 depuis mille ans ? C''est parce qu''aucun Shinigami plus fort que moi n''est né durant tout ce temps.',
    (SELECT id FROM personnages WHERE name = 'Genryūsai Shigekuni Yamamoto')),

    -- 16. Grimmjow Jaegerjaquez (Roi)
    ('Peu importe qui ils sont. Ceux qui nous regardent de haut, je les écraserai tous jusqu''au dernier.',
    (SELECT id FROM personnages WHERE name = 'Grimmjow Jaegerjaquez')),

    -- 17. Toshiro Hitsugaya
    ('Nous ne brandissons pas nos épées par fierté, mais pour protéger ce qui nous est cher.',
    (SELECT id FROM personnages WHERE name = 'Toshiro Hitsugaya')),

    -- 18. Renji Abarai (Vers le ciel)
    ('Même si je n''arrive pas à l''atteindre... mes crocs, eux, l''atteindront !',
    (SELECT id FROM personnages WHERE name = 'Renji Abarai')),

    -- 19. Kaname Tōsen (La justice)
    ('Ceux qui ne craignent pas leur propre épée ne méritent pas de la brandir.',
    (SELECT id FROM personnages WHERE name = 'Kaname Tōsen')),

    -- 20. Yhwach (La paix)
    ('La paix n''est rien d''autre qu''une illusion créée par les faibles pour se protéger.',
    (SELECT id FROM personnages WHERE name = 'Yhwach'));

INSERT INTO citations (contenu, personnage_id) VALUES
    -- === SŌSUKE AIZEN (Le Maître de la manipulation) ===
    -- Sur la compréhension
    ('L''admiration est le sentiment le plus éloigné de la compréhension.',
    (SELECT id FROM personnages WHERE name = 'Sōsuke Aizen')),

    -- Sur la vérité/le mensonge (Ce que tu demandais)
    ('Pourquoi penses-tu que je mens ? Est-ce que j''ai l''air de mentir ? Ou est-ce que tu as peur que je dise la vérité ?',
    (SELECT id FROM personnages WHERE name = 'Sōsuke Aizen')),

    -- Sur le contrôle de la vie d'Ichigo (La paume de la main)
    ('Tu pensais vraiment que ta rencontre avec Rukia Kuchiki était un hasard ? Tout ce qui t''est arrivé, chacun de tes combats, c''est moi qui les ai planifiés depuis le début.',
    (SELECT id FROM personnages WHERE name = 'Sōsuke Aizen')),

    -- Sur la confiance
    ('Faire confiance à quelqu''un, c''est se remettre entièrement à lui. C''est l''acte le plus lâche qui soit.',
    (SELECT id FROM personnages WHERE name = 'Sōsuke Aizen')),

    -- === KANAME TŌSEN (La Justice aveugle) ===
    -- Sa vision radicale de la justice
    ('Si la justice ne suffit pas à vaincre le mal, alors je deviendrai un mal capable de vaincre le mal. C''est cela, ma justice.',
    (SELECT id FROM personnages WHERE name = 'Kaname Tōsen')),

    -- Sur la peur
    ('Ceux qui ne connaissent pas la peur ne sont pas aptes à combattre.',
    (SELECT id FROM personnages WHERE name = 'Kaname Tōsen')),

    -- === RUKIA KUCHIKI (Poésie et Mélancolie) ===
    -- Sur la pluie (Emblématique - lien avec Ichigo)
    ('Je me souviens... Quand je t''ai rencontré pour la première fois, la pluie qui tombait dans mon cœur s''est arrêtée.',
    (SELECT id FROM personnages WHERE name = 'Rukia Kuchiki')),

    -- Poème du Tome 1 (La peur de l'invisible)
    ('Nous craignons ce que nous ne pouvons voir... Et nous respectons ce que nous ne pouvons voir.',
    (SELECT id FROM personnages WHERE name = 'Rukia Kuchiki')),

    -- Sur le lien
    ('Les liens qui nous unissent ne disparaîtront jamais, même si nos corps sont séparés.',
    (SELECT id FROM personnages WHERE name = 'Rukia Kuchiki')),

    -- === GIN ICHIMARU (Le Serpent) ===
    -- La description effrayante de lui-même
    ('Je suis un serpent. J''ai la peau froide, je n''ai pas de cœur. Je me glisse partout en cherchant une proie, et quand je la trouve... je l''avale d''un coup.',
    (SELECT id FROM personnages WHERE name = 'Gin Ichimaru')),

    -- === BYAKUYA KUCHIKI (L'Honneur et la Loi) ===
    -- Sur l'écart de puissance
    ('La différence de niveau entre toi et moi est aussi grande que celle qui sépare la terre du ciel.',
    (SELECT id FROM personnages WHERE name = 'Byakuya Kuchiki')),

    -- === ICHIGO KUROSAKI (Le Protecteur) ===
    -- Sur le pouvoir (à Zangetsu)
    ('Je ne demande pas "Pourquoi ?"... Je demande juste la force de protéger tout le monde !',
    (SELECT id FROM personnages WHERE name = 'Ichigo Kurosaki')),

    -- === ULQUIORRA CIFER (Le Nihilisme) ===
    -- Sur le vide
    ('Ce qui se reflète dans mes yeux n''a aucun sens. Ce qui ne s''y reflète pas n''existe pas.',
    (SELECT id FROM personnages WHERE name = 'Ulquiorra Cifer'));