-- Малый театр (Москва)

INSERT INTO Theater (name, description, address, city) VALUES ('Малый театр', 'Государственный академический Малый театр России — драматический театр в Москве. Один из старейших театров России, сыгравший выдающуюся роль в развитии русской национальной культуры.', 'Ордынка Б. ул., 69', 'Москва');

-- Сердце не камень

INSERT INTO person (name, surname, info) VALUES ('Владимир', 'Драгунов', 'Заслуженный артист России');
INSERT INTO person (name, surname, info) VALUES ('Мария', 'Рыбасова', 'РЫБАСОВА, МАРИЯ ДМИТРИЕВНА (р. 1953), русский художник театра. Родилась 23 апреля 1953. В 1977 окончила Школу-студию МХАТ им. Вл.И.Немировича-Данченко.

Дебютом на профессиональной сцене стала сценография к спектаклю Чайка А.П.Чехова в минском Театре юного зрителя. Оформила также спектакль Юность отцов по Б.Горбатову.

В 1980–1990-е годы активно работала в московских театрах. Автор декораций к ряду спектаклей Театра им. Вл.Маяковского: Деньги для Марии, Антоний и Клеопатра, Золушка, Игра теней, Подземный переход, Шутка мецената, Комедия о принце датском, Кин IV, Любовный напиток. В основе ее сценографии, как правило, лежит организующая пространство архитектурная форма, создающая эмоциональное пространство спектакля. В Чайке основа решения – застекленная веранда старой дачи, в Юности отцов – маленький железнодорожный вокзал, в Антонии и Клеопатре – игрушечные египетские пирамиды и синее «Тирренское море», в Деньгах для Марии – деревенская улица с избами. Рыбасову отличает и внимание к деталям быта, вызывающим цепь образных ассоциаций. Так, в Золушке декорация построена как старинная механическая игрушка, валик, поворот которого открывал перед зрителем новое место действия. Золушка изобилует сказочными сценическими превращениями: сыплются звезды и снег, тыква превращается в карету, за окнами светится игрушечный замок. В спектакле Шутка мецената декорации выдержаны в цветовой гамме и орнаментах стиля «модерн». В Кине IV на сцене возникают очертания старинного английского театра с позолотой портала и темно-красной обивкой кресел.');

INSERT INTO scenarist (pid) VALUES (1); -- Владимир Драгунов
INSERT INTO producer (pid) VALUES (1); -- Владимир Драгунов
INSERT INTO producer (pid) VALUES (2); -- Мария Рыбасова

INSERT INTO performance (name, description) VALUES ('Сердце не камень', 'Сюжет пьесы может показаться простым и незатейливым: богатый купец болен и хочет составить завещание, но его гложут сомнения, кому оставить свое нешуточное состояние – молодой жене, ленивому племяннику, бедным, чтобы ежедневно поминали его в молитвах? История, как, впрочем, всегда у Островского, современна и созвучна любому времени. В исполнении Василия Бочкарёва купец Каркунов не просто капризный самодур, а делец, оригинал и коллекционер, наживший богатство благодаря мудрости, азарту и хитрости. Лишь перед лицом внезапной болезни он спасует и, подтачиваемый жадными до денег родственниками, усомнится в чистоте и верности своей жены (Лидия Милюзина). Молодая женщина ведет скромный затворнический образ жизни, не принимая ухаживаний со стороны, но совесть не позволяет ей солгать мужу и сказать, что после его смерти она больше никогда никого не полюбит. В чью пользу Каркунов решит завещание, остается загадкой до самого конца спектакля.

В декабре 2015 года спектакль удостоен 5-ти «Золотых дипломов» XIII Международного театрального форума «Золотой Витязь»:

- народный артист России Василий Бочкарёв за роль Потапа Потапыча Каркунова
- заслуженный артист России Глеб Подгородинский за роль Константина Лукича Каркунова
- народный артист России Владимир Дубровский за роль Исая Данилыча Халымова
- художник по костюмам Оксана Ярмольник
- художник-постановщик Мария Рыбасова за лучшую сценографию



Режиссёр-постановщик - заслуженный артист России В.Н.Драгунов

Художник-постановщик - лауреат Государственной премии России, народный художник России М.Д.Рыбасова

Композитор - народный артист России Г.Я.Гоберник

Художник по костюмам - О.П.Ярмольник

Художник по свету - заслуженный работник культуры России А.Е.Изотов

Помощники режиссёра - Н.И.Демидова, заслуженный работник культуры России В.М.Егоров

Суфлёры - заслуженный работник культуры России Л.И.Меркулова, Д.Е. Сидорова


Предпремьерный показ - 27 июня 2015 года.

Премьера - 16 октября 2015 года.'); 

INSERT INTO perf_prod (per_id, pid, role) VALUES (1,1,'Режиссёр-постановщик'); -- Владимир Драгунов продюсирует 'Сердце не камень'
INSERT INTO perf_prod (per_id, pid, role) VALUES (1,2,'Художник-постановщик'); -- Мария Рыбасова продюсирует 'Сердце не камень'

INSERT INTO perf_scen (per_id, pid) VALUES (1,1); -- Владимир Драгунов - сценарист 'Сердце не камень'

INSERT INTO person (name, surname) VALUES ('Вера', 'Ефремова');
INSERT INTO actor (pid) VALUES (3);
INSERT INTO person (name, surname) VALUES ('Илья', 'Старосельский');
INSERT INTO actor (pid) VALUES (4);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-20', '18:00:00', 200, 1, 1);
INSERT INTO a_p (sid, pid) VALUES (1, 3);
INSERT INTO a_p (sid, pid) VALUES (1, 4);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-06', '19:00:00', 600, 1, 1);
INSERT INTO a_p (sid, pid) VALUES (2, 3);
INSERT INTO a_p (sid, pid) VALUES (2, 4);

-- Школа налогоплательщиков 

INSERT INTO person (name, surname, info) VALUES ('Владимир', 'Бейлис', 'Cоветский и российский театральный режиссёр, театральный педагог, Народный артист России');

INSERT INTO scenarist (pid) VALUES (5); -- Владимир Бейлис
INSERT INTO producer (pid) VALUES (5); -- Владимир Бейлис

INSERT INTO performance (name, description) VALUES ('Школа налогоплательщиков', 'Новая постановка Владимира Бейлиса – комедия о хитроумном проходимце Гастоне Вальтье, создавшем «Школу налогоплательщиков» и обучавшем французов законным способам уклонения от налогов под носом у собственного тестя – директора департамента подоходного налога. Махинации господина Вальтье почти разорили казну, а ему самому позволили стать единоличным владельцем главного символа Парижа – Эйфелевой башни…');

INSERT INTO perf_prod (per_id, pid) VALUES (2,5); -- Владимир Бейлис - продюсер 'Школа налогоплательщиков'

INSERT INTO perf_scen (per_id, pid) VALUES (2,5); -- Владимир Бейлис - сценарист 'Школа налогоплательщиков'

INSERT INTO person (name, surname) VALUES ('Александр', 'Вершинин');
INSERT INTO actor (pid) VALUES (6);

INSERT INTO person (name, surname) VALUES ('Полина', 'Долинская');
INSERT INTO actor (pid) VALUES (7);

INSERT INTO person (name, surname) VALUES ('Борис', 'Клюев');
INSERT INTO actor (pid) VALUES (8);

INSERT INTO person (name, surname) VALUES ('Глеб', 'Подгородинский');
INSERT INTO actor (pid) VALUES (9);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-22', '19:00:00', 600, 1, 2);
INSERT INTO a_p (sid, pid) VALUES (3, 6);
INSERT INTO a_p (sid, pid) VALUES (3, 7);
INSERT INTO a_p (sid, pid) VALUES (3, 8);
INSERT INTO a_p (sid, pid) VALUES (3, 9);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-28', '19:00:00', 300, 1, 2);
INSERT INTO a_p (sid, pid) VALUES (4, 6);
INSERT INTO a_p (sid, pid) VALUES (4, 7);
INSERT INTO a_p (sid, pid) VALUES (4, 8);
INSERT INTO a_p (sid, pid) VALUES (4, 9);

--Свои люди - сочтёмся!

INSERT INTO person (name, surname, info) VALUES ('Александр', 'Островский', 'Русский драматург, творчество которого стало важнейшим этапом развития русского национального театра. Член-корреспондент Петербургской Академии наук.');
INSERT INTO person (name, surname) VALUES ('Сергей', 'Попов');

INSERT INTO scenarist (pid) VALUES (10); -- авто пьесы - Островский
INSERT INTO producer (pid) VALUES (11); -- продюсер Сергей Попов

INSERT INTO performance (name, description) VALUES ('Свои люди - сочтёмся!', 'Комедия в 4-х действиях по пьесе А. Н. Островского

Очень хитро поступил купец Большов, объявив себя банкротом и положившись во всем на своего преданного приказчика. Да только не перехитрил ли он самого себя? Случается, плут сталкивается с еще более искусным плутом — и эта история, рассказанная Островским, не теряет, к сожалению, своей актуальности. 

Спектакль идет с одним антрактом');

INSERT INTO perf_prod (per_id, pid) VALUES (3,11); -- Сергей Попов - продюсер 'Свои люди - сочтёмся!'

INSERT INTO perf_scen (per_id, pid) VALUES (3,10); -- авто пьесы - Островский

INSERT INTO person (name, surname) VALUES ('Варвара', 'Андреева');
INSERT INTO actor (pid) VALUES (12);

INSERT INTO person (name, surname) VALUES ('Александр', 'Четверкин');
INSERT INTO actor (pid) VALUES (13);

INSERT INTO person (name, surname) VALUES ('Екатерина', 'Базарова');
INSERT INTO actor (pid) VALUES (14);

INSERT INTO person (name, surname) VALUES ('Клавдия', 'Блохина');
INSERT INTO actor (pid) VALUES (15);

INSERT INTO person (name, surname) VALUES ('Анастасия', 'Дубровская');
INSERT INTO actor (pid) VALUES (16);

INSERT INTO person (name, surname) VALUES ('Ирина', 'Жерякова');
INSERT INTO actor (pid) VALUES (17);

INSERT INTO person (name, surname) VALUES ('Лариса', 'Кичанова');
INSERT INTO actor (pid) VALUES (18);

INSERT INTO person (name, surname) VALUES ('Татьяна', 'Короткова');
INSERT INTO actor (pid) VALUES (19);

INSERT INTO person (name, surname) VALUES ('Алексей', 'Кудинович');
INSERT INTO actor (pid) VALUES (20);

INSERT INTO person (name, surname) VALUES ('Владимир', 'Носик');
INSERT INTO actor (pid) VALUES (21);

INSERT INTO person (name, surname) VALUES ('Виталий', 'Петров');
INSERT INTO actor (pid) VALUES (22);

INSERT INTO person (name, surname) VALUES ('Людмила', 'Полякова');
INSERT INTO actor (pid) VALUES (23);

INSERT INTO person (name, surname) VALUES ('Александр', 'Потапов');
INSERT INTO actor (pid) VALUES (24);

INSERT INTO person (name, surname) VALUES ('Сергей', 'Потапов');
INSERT INTO actor (pid) VALUES (25);

INSERT INTO person (name, surname) VALUES ('Инесса', 'Рахвалова');
INSERT INTO actor (pid) VALUES (26);

INSERT INTO person (name, surname) VALUES ('Дмитрий', 'Солодовник');
INSERT INTO actor (pid) VALUES (27);

INSERT INTO person (name, surname) VALUES ('Сергей', 'Тезов');
INSERT INTO actor (pid) VALUES (28);

INSERT INTO person (name, surname) VALUES ('Наталья', 'Титаева');
INSERT INTO actor (pid) VALUES (29);

INSERT INTO person (name, surname) VALUES ('Антон', 'Хомяков');
INSERT INTO actor (pid) VALUES (30);

INSERT INTO person (name, surname) VALUES ('Наталья', 'Швец');
INSERT INTO actor (pid) VALUES (31);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-21', '19:00:00', 1600, 1, 3);
INSERT INTO a_p (sid, pid) VALUES (5, 12);
INSERT INTO a_p (sid, pid) VALUES (5, 13);
INSERT INTO a_p (sid, pid) VALUES (5, 14);
INSERT INTO a_p (sid, pid) VALUES (5, 15);
INSERT INTO a_p (sid, pid) VALUES (5, 16);
INSERT INTO a_p (sid, pid) VALUES (5, 17);
INSERT INTO a_p (sid, pid) VALUES (5, 18);
INSERT INTO a_p (sid, pid) VALUES (5, 19);
INSERT INTO a_p (sid, pid) VALUES (5, 20);
INSERT INTO a_p (sid, pid) VALUES (5, 21);
INSERT INTO a_p (sid, pid) VALUES (5, 22);
INSERT INTO a_p (sid, pid) VALUES (5, 23);
INSERT INTO a_p (sid, pid) VALUES (5, 24);
INSERT INTO a_p (sid, pid) VALUES (5, 25);
INSERT INTO a_p (sid, pid) VALUES (5, 26);
INSERT INTO a_p (sid, pid) VALUES (5, 27);
INSERT INTO a_p (sid, pid) VALUES (5, 28);
INSERT INTO a_p (sid, pid) VALUES (5, 29);
INSERT INTO a_p (sid, pid) VALUES (5, 30);
INSERT INTO a_p (sid, pid) VALUES (5, 31);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-24', '18:00:00', 300, 1, 3);
INSERT INTO a_p (sid, pid) VALUES (6, 12);
INSERT INTO a_p (sid, pid) VALUES (6, 13);
INSERT INTO a_p (sid, pid) VALUES (6, 14);
INSERT INTO a_p (sid, pid) VALUES (6, 15);
INSERT INTO a_p (sid, pid) VALUES (6, 16);
INSERT INTO a_p (sid, pid) VALUES (6, 17);
INSERT INTO a_p (sid, pid) VALUES (6, 18);
INSERT INTO a_p (sid, pid) VALUES (6, 19);
INSERT INTO a_p (sid, pid) VALUES (6, 20);
INSERT INTO a_p (sid, pid) VALUES (6, 21);
INSERT INTO a_p (sid, pid) VALUES (6, 22);
INSERT INTO a_p (sid, pid) VALUES (6, 23);
INSERT INTO a_p (sid, pid) VALUES (6, 24);
INSERT INTO a_p (sid, pid) VALUES (6, 25);
INSERT INTO a_p (sid, pid) VALUES (6, 26);
INSERT INTO a_p (sid, pid) VALUES (6, 27);
INSERT INTO a_p (sid, pid) VALUES (6, 28);
INSERT INTO a_p (sid, pid) VALUES (6, 29);
INSERT INTO a_p (sid, pid) VALUES (6, 30);
INSERT INTO a_p (sid, pid) VALUES (6, 31);

--Тайны мадридского двора

INSERT INTO person (name, surname, info) VALUES ('Эжен', 'Скриб', 'Французский драматург, специализировавшийся на комедиях и водевилях.');
INSERT INTO person (name, surname, info) VALUES ('Эрнест', 'Легуве', 'Французский прозаик и драматург, член Французской академии (1855).');

INSERT INTO scenarist (pid) VALUES (32); -- Эжен Скриб
INSERT INTO scenarist (pid) VALUES (33); -- Эрнест Легуве

INSERT INTO performance (name, description) VALUES ('Тайны мадридского двора', 'Комедия в 2-х действиях по пьесе Э.Скриба, Е.Легуве
Перевод с французского С.Борового и С.Радзинского
Сценический вариант Малого театра

Эжен Скриб и Малый театр рассказывают нам увлекательную историю о том, как в ХVI веке французская принцесса Маргарита, умная и очаровательная, освободила из испанского плена своего брата-короля. Все герои этой блестящей комедии влюблены, и у каждого есть своя тайна…');

INSERT INTO perf_prod (per_id, pid) VALUES (4,11); -- Сергей Попов - продюсер 'Свои люди - сочтёмся!'

INSERT INTO perf_scen (per_id, pid) VALUES (4,32); -- соавтор пьесы Эжен Скриб
INSERT INTO perf_scen (per_id, pid) VALUES (4,33); -- соавтор пьесы Эрнест Легуве


INSERT INTO actor (pid) VALUES (5); -- Владимир Бейлис

INSERT INTO person (name, surname) VALUES ('Де Лука', 'Стафано');
INSERT INTO actor (pid) VALUES (34);

INSERT INTO person (name, surname) VALUES ('Виктор', 'Андрианов');
INSERT INTO actor (pid) VALUES (35);

INSERT INTO person (name, surname) VALUES ('Виктор', 'Бунаков');
INSERT INTO actor (pid) VALUES (36);

INSERT INTO person (name, surname) VALUES ('Наталья', 'Верещенко');
INSERT INTO actor (pid) VALUES (37);

INSERT INTO person (name, surname) VALUES ('Сергей', 'Вещев');
INSERT INTO actor (pid) VALUES (38);

INSERT INTO person (name, surname) VALUES ('Вячеслав', 'Езепов');
INSERT INTO actor (pid) VALUES (39);

INSERT INTO person (name, surname) VALUES ('Тальяна', 'Лебедева');
INSERT INTO actor (pid) VALUES (40);

INSERT INTO person (name, surname) VALUES ('Ольга', 'Молочная');
INSERT INTO actor (pid) VALUES (41);

INSERT INTO person (name, surname) VALUES ('Виктор', 'Низовой');
INSERT INTO actor (pid) VALUES (42);

INSERT INTO person (name, surname) VALUES ('Людмила', 'Пашкова');
INSERT INTO actor (pid) VALUES (43);

INSERT INTO person (name, surname) VALUES ('Ольга', 'Пашкова');
INSERT INTO actor (pid) VALUES (44);

INSERT INTO person (name, surname) VALUES ('Татьяна', 'Скиба');
INSERT INTO actor (pid) VALUES (45);

INSERT INTO person (name, surname) VALUES ('Михаил', 'Фоменко');
INSERT INTO actor (pid) VALUES (46);

INSERT INTO person (name, surname) VALUES ('Елена', 'Харитонова');
INSERT INTO actor (pid) VALUES (47);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-27', '18:00:00', 2100, 1, 4);

INSERT INTO a_p (sid, pid) VALUES (7, 12); -- Варвара Андреева
INSERT INTO a_p (sid, pid) VALUES (7, 14); -- Екатерина Базарова
INSERT INTO a_p (sid, pid) VALUES (7, 6); -- Александр Вершинин
INSERT INTO a_p (sid, pid) VALUES (7, 22); -- Виталий Петров
INSERT INTO a_p (sid, pid) VALUES (7, 24); -- Александр Потапов
INSERT INTO a_p (sid, pid) VALUES (7, 25); -- Сергей Потапов
INSERT INTO a_p (sid, pid) VALUES (7, 5); -- Владимир Бейлис
INSERT INTO a_p (sid, pid) VALUES (7, 34);
INSERT INTO a_p (sid, pid) VALUES (7, 35);
INSERT INTO a_p (sid, pid) VALUES (7, 36);
INSERT INTO a_p (sid, pid) VALUES (7, 37);
INSERT INTO a_p (sid, pid) VALUES (7, 38);
INSERT INTO a_p (sid, pid) VALUES (7, 39);
INSERT INTO a_p (sid, pid) VALUES (7, 40);
INSERT INTO a_p (sid, pid) VALUES (7, 41);
INSERT INTO a_p (sid, pid) VALUES (7, 42);
INSERT INTO a_p (sid, pid) VALUES (7, 43);
INSERT INTO a_p (sid, pid) VALUES (7, 44);
INSERT INTO a_p (sid, pid) VALUES (7, 45);
INSERT INTO a_p (sid, pid) VALUES (7, 46);
INSERT INTO a_p (sid, pid) VALUES (7, 47);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-02', '19:00:00', 600, 1, 4);

INSERT INTO a_p (sid, pid) VALUES (8, 12); -- Варвара Андреева
INSERT INTO a_p (sid, pid) VALUES (8, 14); -- Екатерина Базарова
INSERT INTO a_p (sid, pid) VALUES (8, 6); -- Александр Вершинин
INSERT INTO a_p (sid, pid) VALUES (8, 22); -- Виталий Петров
INSERT INTO a_p (sid, pid) VALUES (8, 24); -- Александр Потапов
INSERT INTO a_p (sid, pid) VALUES (8, 25); -- Сергей Потапов
INSERT INTO a_p (sid, pid) VALUES (8, 5); -- Владимир Бейлис
INSERT INTO a_p (sid, pid) VALUES (8, 34);
INSERT INTO a_p (sid, pid) VALUES (8, 35);
INSERT INTO a_p (sid, pid) VALUES (8, 36);
INSERT INTO a_p (sid, pid) VALUES (8, 37);
INSERT INTO a_p (sid, pid) VALUES (8, 38);
INSERT INTO a_p (sid, pid) VALUES (8, 39);
INSERT INTO a_p (sid, pid) VALUES (8, 40);
INSERT INTO a_p (sid, pid) VALUES (8, 41);
INSERT INTO a_p (sid, pid) VALUES (8, 42);
INSERT INTO a_p (sid, pid) VALUES (8, 43);
INSERT INTO a_p (sid, pid) VALUES (8, 44);
INSERT INTO a_p (sid, pid) VALUES (8, 45);
INSERT INTO a_p (sid, pid) VALUES (8, 46);
INSERT INTO a_p (sid, pid) VALUES (8, 47);

--Вишневый сад

INSERT INTO person (name, surname, info) VALUES ('Антон', 'Чехов', 'Русский писатель, прозаик, драматург. Общепризнанный классик мировой литературы. По профессии врач. Почётный академик Императорской Академии наук по разряду изящной словесности (1900—1902). Один из самых известных драматургов мира. Его произведения переведены более чем на 100 языков. Его пьесы, в особенности «Чайка», «Три сестры» и «Вишнёвый сад», на протяжении более 100 лет ставятся во многих театрах мира.');

INSERT INTO person (name, surname) VALUES ('Петр', 'Камнев');

INSERT INTO scenarist (pid) VALUES (48); -- Чехов

INSERT INTO producer (pid) VALUES (49); -- Петр Камнев

INSERT INTO performance (name, description) VALUES ('Вишневый сад', 'Комедия А.П. Чехова в 4-х действиях

Спектакль о смене эпох, которая отзывается болью в каждом сердце. Уходит поколение Раневской и Гаева, старых русских дворян, сентиментальных и непрактичных. Они должны уступить дорогу деловому напору Лопахиных.

Спектакль идёт с одним антрактом');

INSERT INTO perf_scen (per_id, pid) VALUES (5,48); -- автор пьесы Чехов
INSERT INTO perf_prod (per_id, pid) VALUES (5,49); -- Камнев ставит

INSERT INTO person (name, surname) VALUES ('Зинаида', 'Андреева');
INSERT INTO actor (pid) VALUES (50);

INSERT INTO person (name, surname) VALUES ('Игорь', 'Ильинский');
INSERT INTO actor (pid) VALUES (51);

INSERT INTO person (name, surname) VALUES ('Петр', 'Абрамов');
INSERT INTO actor (pid) VALUES (52);

INSERT INTO person (name, surname) VALUES ('Ольга', 'Абрамова');
INSERT INTO actor (pid) VALUES (53);

INSERT INTO person (name, surname) VALUES ('Светлана', 'Аманова');
INSERT INTO actor (pid) VALUES (54);

INSERT INTO person (name, surname) VALUES ('Валерий', 'Бабятинский');
INSERT INTO actor (pid) VALUES (55);

INSERT INTO person (name, surname) VALUES ('Сергей', 'Видинеев');
INSERT INTO actor (pid) VALUES (56);

INSERT INTO person (name, surname) VALUES ('Игорь', 'Григорьев');
INSERT INTO actor (pid) VALUES (57);

INSERT INTO person (name, surname) VALUES ('Сергей', 'Еремеев');
INSERT INTO actor (pid) VALUES (58);

INSERT INTO person (name, surname) VALUES ('Петр', 'Жихарев');
INSERT INTO actor (pid) VALUES (59);

INSERT INTO person (name, surname) VALUES ('Юрий', 'Каюров');
INSERT INTO actor (pid) VALUES (60);

INSERT INTO person (name, surname) VALUES ('Алена', 'Колесникова');
INSERT INTO actor (pid) VALUES (61);

INSERT INTO person (name, surname) VALUES ('Виктор', 'Коршунов');
INSERT INTO actor (pid) VALUES (62);

INSERT INTO person (name, surname) VALUES ('Степан', 'Коршунов');
INSERT INTO actor (pid) VALUES (63);

INSERT INTO person (name, surname) VALUES ('Денис', 'Курочка');
INSERT INTO actor (pid) VALUES (64);

INSERT INTO person (name, surname) VALUES ('Андрей', 'Манке');
INSERT INTO actor (pid) VALUES (65);

INSERT INTO person (name, surname) VALUES ('Дмитрий', 'Марин');
INSERT INTO actor (pid) VALUES (66);

INSERT INTO person (name, surname) VALUES ('Михаил', 'Мартьянов');
INSERT INTO actor (pid) VALUES (67);

INSERT INTO person (name, surname) VALUES ('Олег', 'Мартьянов');
INSERT INTO actor (pid) VALUES (68);

INSERT INTO person (name, surname) VALUES ('Алексей', 'Фаддеев');
INSERT INTO actor (pid) VALUES (69);

INSERT INTO person (name, surname) VALUES ('Людмила', 'Щербинина');
INSERT INTO actor (pid) VALUES (70);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-30', '19:00:00', 200, 1, 5);

INSERT INTO a_p (sid, pid) VALUES (9, 12); -- Варвара Андреева
INSERT INTO a_p (sid, pid) VALUES (9, 39); -- Вячеслав Езепов
INSERT INTO a_p (sid, pid) VALUES (9, 17); -- Ирина Жерякова 
INSERT INTO a_p (sid, pid) VALUES (9, 4); -- Илья Старосельский 

INSERT INTO a_p (sid, pid) VALUES (9, 50);
INSERT INTO a_p (sid, pid) VALUES (9, 51);
INSERT INTO a_p (sid, pid) VALUES (9, 52);
INSERT INTO a_p (sid, pid) VALUES (9, 53);
INSERT INTO a_p (sid, pid) VALUES (9, 54);
INSERT INTO a_p (sid, pid) VALUES (9, 55);
INSERT INTO a_p (sid, pid) VALUES (9, 56);
INSERT INTO a_p (sid, pid) VALUES (9, 57);
INSERT INTO a_p (sid, pid) VALUES (9, 58);
INSERT INTO a_p (sid, pid) VALUES (9, 59);
INSERT INTO a_p (sid, pid) VALUES (9, 60);
INSERT INTO a_p (sid, pid) VALUES (9, 61);
INSERT INTO a_p (sid, pid) VALUES (9, 62);
INSERT INTO a_p (sid, pid) VALUES (9, 63);
INSERT INTO a_p (sid, pid) VALUES (9, 64);
INSERT INTO a_p (sid, pid) VALUES (9, 65);
INSERT INTO a_p (sid, pid) VALUES (9, 66);
INSERT INTO a_p (sid, pid) VALUES (9, 67);
INSERT INTO a_p (sid, pid) VALUES (9, 68);
INSERT INTO a_p (sid, pid) VALUES (9, 69);
INSERT INTO a_p (sid, pid) VALUES (9, 70);


-- Мастерская (Петербург)

INSERT INTO Theater (name, description, address, city) VALUES ('Театр Мастерская', 'Профессиональный драматический театр под руководством Григория Козлова, основанный в 2010 году на базе актёрско-режиссёрского курса Санкт-Петербургской государственной академии театрального искусства (СПГАТИ) по инициативе театральной общественности Москвы и Санкт-Петербурга.', 'ул. Народная, 1', 'Санкт-Петербург');

-- Письмовник

INSERT INTO person (name, surname, info) VALUES ('Григорий', 'Козлов', 'Петербургский театральный режиссёр, театральный педагог, заслуженный деятель искусств России (2006), лауреат Государственной премии России (2000).');
INSERT INTO person (name, surname, info) VALUES ('Михаил', 'Шишкин', 'Русский писатель. Пишет также на немецком языке.');

INSERT INTO scenarist (pid) VALUES (72); -- автор Михаил Шишкин
INSERT INTO producer (pid) VALUES (71); -- продюсер Григорий Козлов

INSERT INTO performance (name, description) VALUES ('Письмовник', 'Новая премьера Санкт-Петербургского театра «Мастерская» – инсценировка романа знаменитого современного российского писателя Михаила Шишкина «Письмовник».

 Простая, старая, как мир, история: Он и Она, они любят друг друга, они разлучены судьбой, они пишут друг другу письма, передавая свою любовь через пространство. Сложная, как мир, история: Он в казарме русской армии на русско-китайской войне, Она в гамаке на даче эпохи миллениума, они пишут друг другу письма, передавая свою любовь через время. Время сжимается, а пространство расширяется, они рядом и одновременно далеко, они слышат друг друга, но никогда друг друга не увидят, они не могут жить друг без друга, и уже неважно, кто умер и когда.');

INSERT INTO perf_prod (per_id, pid) VALUES (6,71);  -- продюсер Григорий Козлов

INSERT INTO perf_scen (per_id, pid) VALUES (6,72); -- автор - Шишкин

INSERT INTO person (name, surname) VALUES ('Андрей', 'Аладьин');
INSERT INTO actor (pid) VALUES (73);

INSERT INTO person (name, surname) VALUES ('Алена', 'Артемова');
INSERT INTO actor (pid) VALUES (74);

INSERT INTO person (name, surname) VALUES ('Ольга', 'Афанасьева');
INSERT INTO actor (pid) VALUES (75);

INSERT INTO person (name, surname) VALUES ('Илья', 'Борисов');
INSERT INTO actor (pid) VALUES (76);

INSERT INTO person (name, surname) VALUES ('Константин', 'Гришанов');
INSERT INTO actor (pid) VALUES (77);

INSERT INTO person (name, surname) VALUES ('Федор', 'Климов');
INSERT INTO actor (pid) VALUES (78);

INSERT INTO person (name, surname) VALUES ('Александра', 'Мареева');
INSERT INTO actor (pid) VALUES (79);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-22', '19:00:00', 800, 2, 6);

INSERT INTO a_p (sid, pid) VALUES (10, 73);
INSERT INTO a_p (sid, pid) VALUES (10, 74);
INSERT INTO a_p (sid, pid) VALUES (10, 75);
INSERT INTO a_p (sid, pid) VALUES (10, 76);
INSERT INTO a_p (sid, pid) VALUES (10, 77);
INSERT INTO a_p (sid, pid) VALUES (10, 78);
INSERT INTO a_p (sid, pid) VALUES (10, 79);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-15', '19:00:00', 800, 2, 6);

INSERT INTO a_p (sid, pid) VALUES (11, 73);
INSERT INTO a_p (sid, pid) VALUES (11, 74);
INSERT INTO a_p (sid, pid) VALUES (11, 75);
INSERT INTO a_p (sid, pid) VALUES (11, 76);
INSERT INTO a_p (sid, pid) VALUES (11, 77);
INSERT INTO a_p (sid, pid) VALUES (11, 78);
INSERT INTO a_p (sid, pid) VALUES (11, 79);

-- Тихий Дон

INSERT INTO person (name, surname, info) VALUES ('Михаил', 'Шолохов', 'Русский советский писатель, киносценарист. Лауреат Нобелевской премии по литературе (1965 год — «за художественную силу и цельность эпоса о донском казачестве в переломное для России время»), Сталинской премии (1941), Ленинской премии (1960). Действительный член АН СССР (1939). Дважды Герой Социалистического Труда (1967, 1980). Полковник (1943).');

INSERT INTO scenarist (pid) VALUES (80);

INSERT INTO performance (name, description) VALUES ('Тихий Дон', 'Мы хотим, чтоб земли у всех было поровну».

У них все хорошо. Крепкие хозяйства, ладные дома, дружные и большие семьи. Празднично живут в станице Татарской, на берегу великой реки. Но гражданская война не за горами.

Смешливые девки и задорные парни залихватски танцуют и поют протяжные казацкие песни. Скоро многие из них поженятся и станут домовитыми бабами и надежными мужиками. И будут и дальше жить в горе и радости, если не погибнут в боях.

«Когда мы были на войне, когда мы были на войне, там каждый думал о своей любимой или о жене');

INSERT INTO perf_prod (per_id, pid) VALUES (7,71);  -- продюсер Григорий Козлов

INSERT INTO perf_scen (per_id, pid) VALUES (7,80); -- Михаил Шолохов - автор

INSERT INTO actor (pid) VALUES (71);

INSERT INTO person (name, surname) VALUES ('Михаил', 'Бархин');
INSERT INTO actor (pid) VALUES (81);

INSERT INTO person (name, surname) VALUES ('Андрей', 'Горбатый');
INSERT INTO actor (pid) VALUES (82);

INSERT INTO person (name, surname) VALUES ('Дмитрий', 'Белякин');
INSERT INTO actor (pid) VALUES (83);

INSERT INTO person (name, surname) VALUES ('Вера', 'Латышева');
INSERT INTO actor (pid) VALUES (84);

INSERT INTO person (name, surname) VALUES ('Есения', 'Раевская');
INSERT INTO actor (pid) VALUES (85);

INSERT INTO person (name, surname) VALUES ('Мария', 'Русских');
INSERT INTO actor (pid) VALUES (86);

INSERT INTO person (name, surname) VALUES ('Наталья', 'Шулина');
INSERT INTO actor (pid) VALUES (87);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-26', '14:00:00', 900, 2, 7);

INSERT INTO a_p (sid, pid) VALUES (12, 71);
INSERT INTO a_p (sid, pid) VALUES (12, 75);
INSERT INTO a_p (sid, pid) VALUES (12, 81);
INSERT INTO a_p (sid, pid) VALUES (12, 82);
INSERT INTO a_p (sid, pid) VALUES (12, 83);
INSERT INTO a_p (sid, pid) VALUES (12, 84);
INSERT INTO a_p (sid, pid) VALUES (12, 85);
INSERT INTO a_p (sid, pid) VALUES (12, 86);
INSERT INTO a_p (sid, pid) VALUES (12, 87);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-27', '14:00:00', 900, 2, 7);

INSERT INTO a_p (sid, pid) VALUES (13, 71);
INSERT INTO a_p (sid, pid) VALUES (13, 75);
INSERT INTO a_p (sid, pid) VALUES (13, 81);
INSERT INTO a_p (sid, pid) VALUES (13, 82);
INSERT INTO a_p (sid, pid) VALUES (13, 83);
INSERT INTO a_p (sid, pid) VALUES (13, 84);
INSERT INTO a_p (sid, pid) VALUES (13, 85);
INSERT INTO a_p (sid, pid) VALUES (13, 86);
INSERT INTO a_p (sid, pid) VALUES (13, 87);

-- Диалоги по поводу американского джаза

INSERT INTO person (name, surname) VALUES ('Елена', 'Ерпылева');

INSERT INTO scenarist (pid) VALUES (88);
INSERT INTO producer (pid) VALUES (88);


INSERT INTO performance (name, description) VALUES ('Диалоги по поводу американского джаза', 'Моноспектакль "Диалоги по поводу американского джаза" по пьесе Елены Ерпылевой.
Это актуальная, современная, жесткая история о том, как выжить в эпоху, когда всё рушится, когда рвутся человеческие связи и когда причина этого разрушения - ты сам.   В центре происходящего - молодая женщина, которая к своим 34 годам имеет дорогую недвижимость, хорошую машину, возможность обладания дорогими, брендовыми вещами, стабильный денежный доход, но при этом теряет вкус жизни и ее смысл.
"Самое печальное, что однажды ты обнаруживаешь:мир вдруг, перестает с тобой разговаривать.Совсем.
Все смещается. Если ты ощущаешь мир только мозгом, у тебя развивается психоз.  
Только задом - геморрой, и так далее.
По нисходящей."');

INSERT INTO perf_prod (per_id, pid) VALUES (8,88);

INSERT INTO perf_scen (per_id, pid) VALUES (8,88);

INSERT INTO person (name, surname) VALUES ('Анна', 'Масликова');
INSERT INTO actor (pid) VALUES (89);

INSERT INTO person (name, surname) VALUES ('Полина', 'Сидихина');
INSERT INTO actor (pid) VALUES (90);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-26', '20:00:00', 850, 2, 8);
INSERT INTO a_p (sid, pid) VALUES (14, 89);
INSERT INTO a_p (sid, pid) VALUES (14, 90);

-- Чайка

INSERT INTO performance (name, description) VALUES ('Чайка. Сюжет для небольшого рассказа', '«Человечество, – дважды замечает Чехов в своих записных книжках, – понимало историю как ряд битв, потому что до сих пор борьбу считало главным в жизни».
«Чайка» написана о том, что в жизни есть нечто более важное.» Б. И. Зингерман
Когда мы собрали историю, очень непросто было найти спектаклю название, определить способ, жанр и тому подобное, – и это очень радует.
Мы предлагаем зрителю вместе с нами исследовать внутренние миры чеховских героев. Попытаемся сиюсекундно понять их, автора, текст, выстроить свое отношение – предельно вычистив повествование от сюжета и оставив в качестве темы только судьбу, следуя за Костей Треплевым – отказываясь от того, чтобы изображать на сцене, «как люди едят, пьют, ходят, любят...»');

INSERT INTO perf_prod (per_id, pid) VALUES (9,71);

INSERT INTO perf_scen (per_id, pid) VALUES (9,48);

INSERT INTO person (name, surname) VALUES ('Анастасия', 'Гороховская');
INSERT INTO actor (pid) VALUES (91);

INSERT INTO person (name, surname) VALUES ('Андрей', 'Емельянов');
INSERT INTO actor (pid) VALUES (92);

INSERT INTO person (name, surname) VALUES ('Максим', 'Фомин');
INSERT INTO actor (pid) VALUES (93);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-29', '19:30:00', 700, 2, 9);
INSERT INTO a_p (sid, pid) VALUES (15, 91);
INSERT INTO a_p (sid, pid) VALUES (15, 92);
INSERT INTO a_p (sid, pid) VALUES (15, 93);
INSERT INTO a_p (sid, pid) VALUES (15, 84); -- Вера Латышева

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-14', '20:00:00', 600, 2, 9);
INSERT INTO a_p (sid, pid) VALUES (16, 91);
INSERT INTO a_p (sid, pid) VALUES (16, 92);
INSERT INTO a_p (sid, pid) VALUES (16, 93);
INSERT INTO a_p (sid, pid) VALUES (16, 84); -- Вера Латышева

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-29', '19:00:00', 600, 2, 9);
INSERT INTO a_p (sid, pid) VALUES (17, 91);
INSERT INTO a_p (sid, pid) VALUES (17, 92);
INSERT INTO a_p (sid, pid) VALUES (17, 93);
INSERT INTO a_p (sid, pid) VALUES (17, 84); -- Вера Латышева

-- Братья Карамазовы

INSERT INTO person (name, surname, info) VALUES ('Федор', 'Достоевский', 'Русский писатель, мыслитель, философ и публицист. Член-корреспондент Петербургской АН с 1877 года.');

INSERT INTO scenarist (pid) VALUES (94); -- автор "Братьев Карамазовых"

INSERT INTO performance (name, description) VALUES ('Братья Карамазовы', 'Это не первое обращение Григория Козлова к наследию Достоевского. Предыдущие спектакли — легендарное «Преступление и наказание» и камерные «Бедные люди» в ТЮЗ им. Брянцева и «Идиот. Возвращение» (с которого и начался Петербургский театр «Мастерская») — стали важными вехами в истории театра Григория Козлова.
Действие «Братьев Карамазовых» происходит в провинциальном городке Скотопригоньевске, чью размеренную жизнь нарушает убийство отца семейства Карамазовых, Федор Павловича. Все улики указывают на сына Дмитрия, который, похоже, совершил отцеубийство ради трёх тысяч рублей.
Но это история не о борьбе за наследство. Это не детектив, где не остается вопросов, как только вынесен приговор. Действия всех героев рассматриваются через их отношение к вере. Бессмертие души — вот о чем спорят братья, и их жизненный путь становится самым весомым подтверждением их суждений. ');

INSERT INTO perf_prod (per_id, pid) VALUES (10,71); -- Козлов

INSERT INTO perf_scen (per_id, pid) VALUES (10,94); -- Достоевский

INSERT INTO person (name, surname) VALUES ('Георгий', 'Воронин');
INSERT INTO actor (pid) VALUES (95);

INSERT INTO person (name, surname) VALUES ('Андрей', 'Дидик');
INSERT INTO actor (pid) VALUES (96);

INSERT INTO person (name, surname) VALUES ('Дмитрий', 'Житков');
INSERT INTO actor (pid) VALUES (97);

INSERT INTO person (name, surname) VALUES ('Кирилл', 'Кузнецов');
INSERT INTO actor (pid) VALUES (98);

INSERT INTO person (name, surname) VALUES ('Антон', 'Момот');
INSERT INTO actor (pid) VALUES (99);

INSERT INTO person (name, surname) VALUES ('Гавриил', 'Федотов');
INSERT INTO actor (pid) VALUES (100);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-1', '17:00:00', 700, 2, 10);

INSERT INTO a_p (sid, pid) VALUES (18, 73); -- Андрей Аладьин
INSERT INTO a_p (sid, pid) VALUES (18, 83); -- Дмитрий Белякин
INSERT INTO a_p (sid, pid) VALUES (18, 82); -- Андрей Горбатый
INSERT INTO a_p (sid, pid) VALUES (18, 78); -- Федор Климов
INSERT INTO a_p (sid, pid) VALUES (18, 87); -- Наталья Шулина
INSERT INTO a_p (sid, pid) VALUES (18, 95);
INSERT INTO a_p (sid, pid) VALUES (18, 96);
INSERT INTO a_p (sid, pid) VALUES (18, 97);
INSERT INTO a_p (sid, pid) VALUES (18, 98);
INSERT INTO a_p (sid, pid) VALUES (18, 99);
INSERT INTO a_p (sid, pid) VALUES (18, 100);

--МХТ им. А.П. Чехова (Москва)

INSERT INTO Theater (name, description, address, city) VALUES ('МХТ им. А.П. Чехова', 'Моско́вский Худо́жественный теа́тр имени А. П. Чехова (МХТ) — драматический театр.', 'Камергерский переулок, 3', 'Москва');

--Зойкина квартира

INSERT INTO person (name, surname, info) VALUES ('Михаил', 'Булгаков', 'Русский писатель, драматург, театральный режиссёр и актёр. Автор повестей и рассказов, множества фельетонов, пьес, инсценировок, киносценариев, оперных либретто.');
INSERT INTO person (name, surname, info) VALUES ('Олег', 'Табаков', 'Советский и российский актёр и режиссёр театра и кино, педагог. Народный артист СССР (1988). Лауреат Государственных премий СССР (1967) и РФ (1997). Полный кавалер ордена «За заслуги перед Отечеством».');

INSERT INTO scenarist (pid) VALUES (101); -- автор "Зойкиной квартиры"
INSERT INTO producer (pid) VALUES (102); -- продюсер "Зойкиной квартиры"

INSERT INTO performance (name, description) VALUES ('Зойкина квартира', 'В причудливом пространстве Зойкиной квартиры, как в Ноевом ковчеге, собралась разношерстная и дикая компания. Все они, от графа Обольянинова до проходимца Аметистова, от благородной дамы Аллы Вадимовны до хозяйки ателье Зойки, объединены единственным страстным желанием: любым способом покинуть Совдепию. 
Кто-то выбирает наркотическое путешествие, кто-то нацелен на «европейский рай», а кому-то и так комфортно, но всё равно хочется неземных приключений.');

INSERT INTO perf_prod (per_id, pid) VALUES (11,102); -- Табаков

INSERT INTO perf_scen (per_id, pid) VALUES (11,101); -- Булгаков

INSERT INTO person (name, surname) VALUES ('Кирилл', 'Серебренников');
INSERT INTO actor (pid) VALUES (103);

INSERT INTO person (name, surname) VALUES ('Антон', 'Васильев');
INSERT INTO actor (pid) VALUES (104);

INSERT INTO person (name, surname) VALUES ('Артем', 'Волобуев');
INSERT INTO actor (pid) VALUES (105);

INSERT INTO person (name, surname) VALUES ('Ольга', 'Воронина');
INSERT INTO actor (pid) VALUES (106);

INSERT INTO person (name, surname) VALUES ('Алексей', 'Девотченко');
INSERT INTO actor (pid) VALUES (107);

INSERT INTO person (name, surname) VALUES ('Ольга', 'Добрина');
INSERT INTO actor (pid) VALUES (108);

INSERT INTO person (name, surname) VALUES ('Светлана', 'Колпакова');
INSERT INTO actor (pid) VALUES (109);

INSERT INTO person (name, surname) VALUES ('Алексей', 'Кравченко');
INSERT INTO actor (pid) VALUES (110);

INSERT INTO person (name, surname) VALUES ('Татьяна', 'Кузнецова');
INSERT INTO actor (pid) VALUES (111);

INSERT INTO person (name, surname) VALUES ('Федор', 'Лавров');
INSERT INTO actor (pid) VALUES (112);

INSERT INTO person (name, surname) VALUES ('Ксения', 'Лаврова-Глинка');
INSERT INTO actor (pid) VALUES (113);

INSERT INTO person (name, surname) VALUES ('Валерий', 'Малинин');
INSERT INTO actor (pid) VALUES (114);

INSERT INTO person (name, surname) VALUES ('Светлана', 'Мамрешева');
INSERT INTO actor (pid) VALUES (115);

INSERT INTO person (name, surname) VALUES ('Рулла', 'Лика');
INSERT INTO actor (pid) VALUES (116);

INSERT INTO person (name, surname) VALUES ('Евгений', 'Сангаджиев');
INSERT INTO actor (pid) VALUES (117);

INSERT INTO person (name, surname) VALUES ('Евгений', 'Сангаджиев');
INSERT INTO actor (pid) VALUES (118);

INSERT INTO person (name, surname) VALUES ('Сергей', 'Сосновский');
INSERT INTO actor (pid) VALUES (119);

INSERT INTO person (name, surname) VALUES ('Ксения', 'Теплова');
INSERT INTO actor (pid) VALUES (120);

INSERT INTO person (name, surname) VALUES ('Михаил', 'Трухин');
INSERT INTO actor (pid) VALUES (121);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-22', '19:00:00', 700, 3, 11);

INSERT INTO a_p (sid, pid) VALUES (19, 103);
INSERT INTO a_p (sid, pid) VALUES (19, 104);
INSERT INTO a_p (sid, pid) VALUES (19, 105);
INSERT INTO a_p (sid, pid) VALUES (19, 106);
INSERT INTO a_p (sid, pid) VALUES (19, 107);
INSERT INTO a_p (sid, pid) VALUES (19, 108);
INSERT INTO a_p (sid, pid) VALUES (19, 109);
INSERT INTO a_p (sid, pid) VALUES (19, 110);
INSERT INTO a_p (sid, pid) VALUES (19, 111);
INSERT INTO a_p (sid, pid) VALUES (19, 112);
INSERT INTO a_p (sid, pid) VALUES (19, 113);
INSERT INTO a_p (sid, pid) VALUES (19, 114);
INSERT INTO a_p (sid, pid) VALUES (19, 115);
INSERT INTO a_p (sid, pid) VALUES (19, 116);
INSERT INTO a_p (sid, pid) VALUES (19, 117);
INSERT INTO a_p (sid, pid) VALUES (19, 118);
INSERT INTO a_p (sid, pid) VALUES (19, 119);
INSERT INTO a_p (sid, pid) VALUES (19, 120);
INSERT INTO a_p (sid, pid) VALUES (19, 121);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-1', '19:00:00', 300, 3, 11);

INSERT INTO a_p (sid, pid) VALUES (20, 103);
INSERT INTO a_p (sid, pid) VALUES (20, 104);
INSERT INTO a_p (sid, pid) VALUES (20, 105);
INSERT INTO a_p (sid, pid) VALUES (20, 106);
INSERT INTO a_p (sid, pid) VALUES (20, 107);
INSERT INTO a_p (sid, pid) VALUES (20, 108);
INSERT INTO a_p (sid, pid) VALUES (20, 109);
INSERT INTO a_p (sid, pid) VALUES (20, 110);
INSERT INTO a_p (sid, pid) VALUES (20, 111);
INSERT INTO a_p (sid, pid) VALUES (20, 112);
INSERT INTO a_p (sid, pid) VALUES (20, 113);
INSERT INTO a_p (sid, pid) VALUES (20, 114);
INSERT INTO a_p (sid, pid) VALUES (20, 115);
INSERT INTO a_p (sid, pid) VALUES (20, 116);
INSERT INTO a_p (sid, pid) VALUES (20, 117);
INSERT INTO a_p (sid, pid) VALUES (20, 118);
INSERT INTO a_p (sid, pid) VALUES (20, 119);
INSERT INTO a_p (sid, pid) VALUES (20, 120);
INSERT INTO a_p (sid, pid) VALUES (20, 121);

--Лунное чудовище

INSERT INTO person (name, surname) VALUES ('Ричард', 'Калиноски'); --автор
INSERT INTO person (name, surname) VALUES ('Александр', 'Григорян'); --постановщик

INSERT INTO producer (pid) VALUES (123); -- продюсер "Зойкиной квартиры"
INSERT INTO scenarist (pid) VALUES (122); -- автор "Зойкиной квартиры"

INSERT INTO performance (name, description) VALUES ('Лунное чудовище', '«Нужно жить дальше» — банальная фраза. Но это действительно так. Нужно. Хотя бы для того, чтобы убедить в этом столь же отчаявшихся. «Лунное чудовище» — пьеса о двух людях, которым удалось спастись.
Место действия — Милуоки, Висконсин, США, 1921-1927 гг.');

INSERT INTO perf_prod (per_id, pid) VALUES (12,123);

INSERT INTO perf_scen (per_id, pid) VALUES (12,122);

INSERT INTO actor (pid) VALUES (123);

INSERT INTO person (name, surname) VALUES ('Арсений', 'Гусев');
INSERT INTO actor (pid) VALUES (124);

INSERT INTO person (name, surname) VALUES ('Янина', 'Колесниченко');
INSERT INTO actor (pid) VALUES (125);

INSERT INTO person (name, surname) VALUES ('Валерий', 'Трошин');
INSERT INTO actor (pid) VALUES (126);

INSERT INTO person (name, surname) VALUES ('Сергей', 'Угрюмов');
INSERT INTO actor (pid) VALUES (127);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-22', '19:00:00', 750, 3, 12);

INSERT INTO a_p (sid, pid) VALUES (21, 119); -- Сергей Сосновский
INSERT INTO a_p (sid, pid) VALUES (21, 123);
INSERT INTO a_p (sid, pid) VALUES (21, 124);
INSERT INTO a_p (sid, pid) VALUES (21, 125);
INSERT INTO a_p (sid, pid) VALUES (21, 126);
INSERT INTO a_p (sid, pid) VALUES (21, 127);

--Шинель

INSERT INTO person (name, surname) VALUES ('Николай', 'Гоголь'); --автор
INSERT INTO person (name, surname) VALUES ('Антон', 'Коваленко'); --постановщик

INSERT INTO producer (pid) VALUES (129); -- продюсер
INSERT INTO scenarist (pid) VALUES (128); -- автор 

INSERT INTO performance (name, description) VALUES ('Шинель', 'Городская легенда
По атмосфере это студенческий спектакль, задорный и хулиганский, с танцевально-­музыкальными отступлениями и пристальным, а временами даже чрезмерным вниманием к эпизодическим персонажам. По сути – это вполне традиционное прочтение повести «Шинель» драматическим театром, когда на исполнение роли Башмач­кина есть идеальная кандидатура, чья актерская индивидуальность будто специально создана для воплощения классических персонажей Николая Васильевича Гоголя.
Еще одним, может быть даже главным, действующим лицом спектакля становится мир вещей. Он лаконичен, но необыкновенно значим. Чинно восседает за легендарным «Зингером» портной Григорий Петрович. Будто не швейная машина служит ему, а он – машине, ведь именно благодаря ей получается настоящая вещь.
Рядом с мужем расположилась его благоверная в неизменном чепце с рюшами. Но носит его жена портного с таким благоговением, будто у нее на голове венец или корона. А свои кровно заработанные денежки Акакий Акакиевич хранит не в копилке, а в ночном горшке – вещи столь необходимой каждому человеку, что значение ее трудно переоценить.
И конечно же, самым главным предметом жизни становится ее величество Шинель, о которой мечтает, которую вожделеет, которой домогается и которую, в конце концов, теряет бедолага Башмачкин. Над Новой сценой МХТ им. Чехова парят сразу три огромные шинели, между которыми то и дело шныряют коллеги Башмачкина по департаменту. Горемыка Акакий Акакиевич хотел стать значительным лицом благодаря своей шинели, но этому не суждено было случиться. А значит, и жить в этом мире значительных вещей ему тоже заказано.');

INSERT INTO perf_prod (per_id, pid) VALUES (13,129);

INSERT INTO perf_scen (per_id, pid) VALUES (13,128);

INSERT INTO person (name, surname) VALUES ('Артем', 'Быстров');
INSERT INTO actor (pid) VALUES (130);

INSERT INTO person (name, surname) VALUES ('Авангард', 'Леонтьев');
INSERT INTO actor (pid) VALUES (131);

INSERT INTO person (name, surname) VALUES ('Валерий', 'Хлевинский');
INSERT INTO actor (pid) VALUES (132);

INSERT INTO person (name, surname) VALUES ('Юлия', 'Чебакова');
INSERT INTO actor (pid) VALUES (133);

INSERT INTO person (name, surname) VALUES ('Алена', 'Хованская');
INSERT INTO musician (pid) VALUES (134);

INSERT INTO person (name, surname) VALUES ('Сергей', 'Егоров');
INSERT INTO musician (pid) VALUES (135);

INSERT INTO musician (pid) VALUES (129);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-23', '19:00:00', 700, 3, 13);

INSERT INTO a_p (sid, pid) VALUES (22, 114);--Валерий Малинин
INSERT INTO a_p (sid, pid) VALUES (22, 126);--Валерий Трошин
INSERT INTO a_p (sid, pid) VALUES (22, 130);
INSERT INTO a_p (sid, pid) VALUES (22, 131);
INSERT INTO a_p (sid, pid) VALUES (22, 132);
INSERT INTO a_p (sid, pid) VALUES (22, 133);

INSERT INTO m_p (sid, pid) VALUES (22, 134);
INSERT INTO m_p (sid, pid) VALUES (22, 135);
INSERT INTO m_p (sid, pid) VALUES (22, 129);

--Женитьба

INSERT INTO person (name, surname) VALUES ('Игорь', 'Золотовицкий'); --постановщик
INSERT INTO producer (pid) VALUES (136);

INSERT INTO performance (name, description) VALUES ('Женитьба', 'Итак, решено — Подколёсин всё-таки женится. Нанята сваха, найдена подходящая невеста, остались ни с чем женихи-конкуренты. Но в последний момент перед героем встает всё тот же поистине дьявольский вопрос, который волновал его в самом начале: «А стоит ли?..».');

INSERT INTO perf_prod (per_id, pid) VALUES (14,136);

INSERT INTO perf_scen (per_id, pid) VALUES (14,128);

INSERT INTO person (name, surname) VALUES ('Ольга', 'Барнет');
INSERT INTO actor (pid) VALUES (137);

INSERT INTO person (name, surname) VALUES ('Евгения', 'Добровольская');
INSERT INTO actor (pid) VALUES (138);

INSERT INTO person (name, surname) VALUES ('Станислав', 'Дружников');
INSERT INTO actor (pid) VALUES (139);

INSERT INTO person (name, surname) VALUES ('Ирина', 'Пегова');
INSERT INTO actor (pid) VALUES (140);


with rows as (
  INSERT INTO Person (name, surname) VALUES ('Гия', 'Бердзенишвили') RETURNING pid
)
INSERT INTO dancer (pid) 
SELECT pid FROM rows;

with rows as (
  INSERT INTO Person (name, surname) VALUES ('Георгий', 'Тупов') RETURNING pid
)
INSERT INTO dancer (pid) 
SELECT pid FROM rows;

with rows as (
  INSERT INTO Person (name, surname) VALUES ('Амалия', 'Тусовская') RETURNING pid
)
INSERT INTO dancer (pid) 
SELECT pid FROM rows;

with rows as (
  INSERT INTO Person (name, surname) VALUES ('Антон', 'Буличев') RETURNING pid
)
INSERT INTO dancer (pid) 
SELECT pid FROM rows;

with rows as (
  INSERT INTO Person (name, surname) VALUES ('Елена', 'Аполлонова') RETURNING pid
)
INSERT INTO dancer (pid) 
SELECT pid FROM rows;

INSERT INTO Dance_group (name) VALUES ('Гия Бердзенишвили и коллектив');

INSERT INTO Dance_in (dgroup_id, pid) VALUES (1, 141);
INSERT INTO Dance_in (dgroup_id, pid) VALUES (1, 142);
INSERT INTO Dance_in (dgroup_id, pid) VALUES (1, 143);
INSERT INTO Dance_in (dgroup_id, pid) VALUES (1, 144);
INSERT INTO Dance_in (dgroup_id, pid) VALUES (1, 145);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-26', '19:00:00', 700, 3, 14);
INSERT INTO a_p (sid, pid) VALUES (23, 137);
INSERT INTO a_p (sid, pid) VALUES (23, 138);
INSERT INTO a_p (sid, pid) VALUES (23, 139);
INSERT INTO a_p (sid, pid) VALUES (23, 140);

INSERT INTO dg_p (sid, dgroup_id) VALUES (23, 1);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-22', '19:00:00', 600, 3, 14);
INSERT INTO a_p (sid, pid) VALUES (24, 137);
INSERT INTO a_p (sid, pid) VALUES (24, 138);
INSERT INTO a_p (sid, pid) VALUES (24, 139);
INSERT INTO a_p (sid, pid) VALUES (24, 140);

INSERT INTO dg_p (sid, dgroup_id) VALUES (24, 1);

--Театр юных зрителей

INSERT INTO Theater (name, description, address, city) VALUES ('Театр юных зрителей', 'Театр юных зрителей имени А.А.Брянцева', 'Пионерская пл., д.1', 'Санкт-Петербург');

--Волшебник изумрудного города

with rows as (
  INSERT INTO Person (name, surname) VALUES ('Александр', 'Волков') RETURNING pid
)
INSERT INTO scenarist (pid) 
SELECT pid FROM rows;

with rows as (
  INSERT INTO Person (name, surname) VALUES ('Евгений', 'Зимин') RETURNING pid
)
INSERT INTO producer (pid) 
SELECT pid FROM rows;

INSERT INTO performance (name, description) VALUES ('Волшебник изумрудного города', 'Музыкальная сказка в двух действиях
Дорога из желтого кирпича ведет в Изумрудный город, в фантастическую страну, сошедшую со страниц книги Александра Волкова. Спектакль предлагает своим зрителям на некоторое время почувствовать себя участниками этой истории и совершить увлекательное путешествие в сказочный город в компании девочки Элли, ее щенка Тотошки, железного Дровосека, Страшилы и Льва. В волшебной стране их ждут необычные жители, диковинные звери, захватывающие, а порою опасные приключения. Но Элли и ее друзья все преодолеют и обретут самое важное – веру в себя, в ценность добра, в силу дружбы.
Спектакль будет интересен не только детям, но и их родителям, для которых «Волшебник изумрудного города» – прекрасная возможность вновь окунуться в мир детства.
Волшебство превратится в реальность. Нужно лишь пойти по дороге из желтого кирпича!
Режиссер – Евгений Зимин, художник – Борис Рахлин, композитор - Василий Тонковидов, художник по свету - Гидал Шугаев, хореограф - Ирина Новик.
В спектакле заняты: засл. арт. России Введенская Антонина , Жукович Сергей ; артисты: Азеев Сергей , Батарев Иван , Бушина Янина , Веселов Артемий , Глушкова Оксана , Дружинин Ким , Золоткова Алиса , Иванов Александр , Казакова Анастасия , Кононов Виталий , Маколова Татьяна , Остриков Никита , Прилепская Елизавета , Сиротин Евгений , Слынько Анна , Таскин Кирилл , Титков Алексей , Червякова Аделина , Чистяков Борис .');

INSERT INTO perf_prod (per_id, pid) VALUES (15,147);

INSERT INTO perf_scen (per_id, pid) VALUES (15,146);

INSERT INTO person (name, surname) VALUES ('Иван', 'Батарев');
INSERT INTO actor (pid) VALUES (148);

INSERT INTO person (name, surname) VALUES ('Янина', 'Бушина');
INSERT INTO actor (pid) VALUES (149);

INSERT INTO person (name, surname) VALUES ('Антонина', 'Введенская');
INSERT INTO actor (pid) VALUES (150);

INSERT INTO person (name, surname) VALUES ('Артемий', 'Веселов');
INSERT INTO actor (pid) VALUES (151);

INSERT INTO person (name, surname) VALUES ('Оксана', 'Глушкова');
INSERT INTO actor (pid) VALUES (152);

INSERT INTO person (name, surname) VALUES ('Сергей', 'Жукович');
INSERT INTO actor (pid) VALUES (153);

INSERT INTO person (name, surname) VALUES ('Алиса', 'Золоткова');
INSERT INTO actor (pid) VALUES (154);

INSERT INTO person (name, surname) VALUES ('Александр', 'Иванов');
INSERT INTO actor (pid) VALUES (155);

INSERT INTO person (name, surname) VALUES ('Виталий', 'Кононов');
INSERT INTO actor (pid) VALUES (156);

INSERT INTO person (name, surname) VALUES ('Александра', 'Ладыгина');
INSERT INTO actor (pid) VALUES (157);

INSERT INTO person (name, surname) VALUES ('Анна', 'Лебедь');
INSERT INTO actor (pid) VALUES (158);

INSERT INTO person (name, surname) VALUES ('Аделина', 'Любская');
INSERT INTO actor (pid) VALUES (159);

INSERT INTO person (name, surname) VALUES ('Татьяна', 'Маколова');
INSERT INTO actor (pid) VALUES (160);

INSERT INTO person (name, surname) VALUES ('Лилиан', 'Маврозашвили');
INSERT INTO actor (pid) VALUES (161);

INSERT INTO person (name, surname) VALUES ('Никита', 'Остриков');
INSERT INTO actor (pid) VALUES (162);

INSERT INTO person (name, surname) VALUES ('Елизавета', 'Прилепская');
INSERT INTO actor (pid) VALUES (163);

INSERT INTO person (name, surname) VALUES ('Ольга', 'Семенова');
INSERT INTO actor (pid) VALUES (164);

INSERT INTO person (name, surname) VALUES ('Анна', 'Слынько');
INSERT INTO actor (pid) VALUES (165);

INSERT INTO person (name, surname) VALUES ('Кузьма', 'Стомаченко');
INSERT INTO actor (pid) VALUES (166);

INSERT INTO person (name, surname) VALUES ('Кирилл', 'Таскин');
INSERT INTO actor (pid) VALUES (167);

INSERT INTO person (name, surname) VALUES ('Алексей', 'Титков');
INSERT INTO actor (pid) VALUES (168);

INSERT INTO person (name, surname) VALUES ('Борис', 'Чистяков');
INSERT INTO actor (pid) VALUES (169);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-26', '12:00:00', 300, 4, 15);

INSERT INTO a_p (sid, pid) VALUES (25, 148);
INSERT INTO a_p (sid, pid) VALUES (25, 149);
INSERT INTO a_p (sid, pid) VALUES (25, 150);
INSERT INTO a_p (sid, pid) VALUES (25, 151);
INSERT INTO a_p (sid, pid) VALUES (25, 152);
INSERT INTO a_p (sid, pid) VALUES (25, 153);
INSERT INTO a_p (sid, pid) VALUES (25, 154);
INSERT INTO a_p (sid, pid) VALUES (25, 155);
INSERT INTO a_p (sid, pid) VALUES (25, 156);
INSERT INTO a_p (sid, pid) VALUES (25, 157);
INSERT INTO a_p (sid, pid) VALUES (25, 158);
INSERT INTO a_p (sid, pid) VALUES (25, 159);
INSERT INTO a_p (sid, pid) VALUES (25, 160);
INSERT INTO a_p (sid, pid) VALUES (25, 161);
INSERT INTO a_p (sid, pid) VALUES (25, 162);
INSERT INTO a_p (sid, pid) VALUES (25, 163);
INSERT INTO a_p (sid, pid) VALUES (25, 164);
INSERT INTO a_p (sid, pid) VALUES (25, 165);
INSERT INTO a_p (sid, pid) VALUES (25, 166);
INSERT INTO a_p (sid, pid) VALUES (25, 167);
INSERT INTO a_p (sid, pid) VALUES (25, 168);
INSERT INTO a_p (sid, pid) VALUES (25, 169);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-10-26', '17:00:00', 300, 4, 15);

INSERT INTO a_p (sid, pid) VALUES (26, 148);
INSERT INTO a_p (sid, pid) VALUES (26, 149);
INSERT INTO a_p (sid, pid) VALUES (26, 150);
INSERT INTO a_p (sid, pid) VALUES (26, 151);
INSERT INTO a_p (sid, pid) VALUES (26, 152);
INSERT INTO a_p (sid, pid) VALUES (26, 153);
INSERT INTO a_p (sid, pid) VALUES (26, 154);
INSERT INTO a_p (sid, pid) VALUES (26, 155);
INSERT INTO a_p (sid, pid) VALUES (26, 156);
INSERT INTO a_p (sid, pid) VALUES (26, 157);
INSERT INTO a_p (sid, pid) VALUES (26, 158);
INSERT INTO a_p (sid, pid) VALUES (26, 159);
INSERT INTO a_p (sid, pid) VALUES (26, 160);
INSERT INTO a_p (sid, pid) VALUES (26, 161);
INSERT INTO a_p (sid, pid) VALUES (26, 162);
INSERT INTO a_p (sid, pid) VALUES (26, 163);
INSERT INTO a_p (sid, pid) VALUES (26, 164);
INSERT INTO a_p (sid, pid) VALUES (26, 165);
INSERT INTO a_p (sid, pid) VALUES (26, 166);
INSERT INTO a_p (sid, pid) VALUES (26, 167);
INSERT INTO a_p (sid, pid) VALUES (26, 168);
INSERT INTO a_p (sid, pid) VALUES (26, 169);

--Человек в футляре

INSERT INTO Person (name, surname) VALUES ('Георгий', 'Васильев');
INSERT INTO producer (pid) VALUES (170);

INSERT INTO performance (name, description) VALUES ('Человек в футляре', 'Театральная версия Георгия Васильева и Станислава Шуляка по мотивам рассказа А.П. Чехова «Человек в футляре»
Номинант Высшей театральной премии Санкт-Петербурга «Золотой софит»
Режиссёр: Васильев Георгий
художник: Капелюш Эмиль
композитор: Пигузов Валерий
В ролях: Дьяченко Валерий, Иванов Александр, Карленко Ольга, Прилепская Елизавета, Титков Алексей
Как известно, этот рассказ «Человек в футляре»  — часть цикла произведений о, так называемых, «футлярных людях», в который также вошли «Крыжовник» и «О любви». Тема рассказа «Человек в футляре» изложена Чеховым в его записной книжке: «Человек в футляре, в калошах, зонт  в чехле, часы в футляре, нож в чехле. Когда лежал в гробу, то, казалось, улыбался: нашел свой идеал». На первый взгляд, позиция автора кажется однозначной, и «футлярность» трактуется, как ограниченность, юродивость, отчужденность от жизни. И вся читающая публика, все школьные и институтские программы и даже сегодняшняя художественная элита покорно смиряются с клише Беликова. А вместе с тем, это загадочный и нераспознанный персонаж.
Режиссёр разглядел в Беликове его «белые» стороны. Столь значительный резонанс, возникающий между учителем греческого и латинского языков и остальным обществом, столь сильный ступор, в который вводит герой население городка, – следствие его ярко выраженной индивидуальности, нежелания мириться с общепринятыми законами и мерками. Его футляр – не для того, чтобы скрыть, а чтобы сохранить хрупкое.
Продолжительность спектакля 1 час 30 минут, без антракта.
Спектакль адресован молодёжи.');

INSERT INTO perf_prod (per_id, pid) VALUES (16,170);

INSERT INTO perf_scen (per_id, pid) VALUES (16,48);

INSERT INTO person (name, surname) VALUES ('Валерий', 'Дьяченко');
INSERT INTO actor (pid) VALUES (171);

INSERT INTO person (name, surname) VALUES ('Ольга', 'Карленко');
INSERT INTO actor (pid) VALUES (172);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-19', '19:00:00', 400, 4, 16);

INSERT INTO a_p (sid, pid) VALUES (27, 155); -- Александр Иванов
INSERT INTO a_p (sid, pid) VALUES (27, 163); -- Елизавета Прилепская
INSERT INTO a_p (sid, pid) VALUES (27, 168); -- Алексей Титков
INSERT INTO a_p (sid, pid) VALUES (27, 171);
INSERT INTO a_p (sid, pid) VALUES (27, 172);

--Воспитание Риты

INSERT INTO Person (name, surname) VALUES ('Анна', 'Потапова');
INSERT INTO producer (pid) VALUES (173);

INSERT INTO Person (name, surname) VALUES ('Уилли', 'Рассел');
INSERT INTO scenarist (pid) VALUES (174);

INSERT INTO performance (name, description) VALUES ('Воспитание Риты', 'Сюжет пьесы современного английского драматурга Уилли Расселла «Воспитание Риты» навеян знаменитой комедией Бернарда Шоу «Пигмалион», но на этот раз в прекрасную леди превращается бойкая парикмахерша.
Действие происходит в наши дни, в одном из университетов на севере Англии. Однажды в пыльный кабинет Фрэнка –  немолодого профессора английской словесности ворвалась энергичная девушка Рита, заявив, что хочет найти смысл жизни в изучении литературы. Встреча с Ритой круто меняет привычную жизнь Фрэнка…
Непредсказуемые повороты сюжета, тонкий лиризм, остроумные диалоги покорят самых взыскательных зрителей.
Продолжительность спектакля  2 часа 30 минут, с одним антрактом.');

INSERT INTO perf_prod (per_id, pid) VALUES (17,173);

INSERT INTO perf_scen (per_id, pid) VALUES (17,174);

INSERT INTO actor (pid) VALUES (173);

INSERT INTO Person (name, surname) VALUES ('Николай', 'Иванов');
INSERT INTO actor (pid) VALUES (175);


INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-03', '19:00:00', 500, 4, 17);


INSERT INTO a_p (sid, pid) VALUES (28, 163); --Елизавета Прилепская
INSERT INTO a_p (sid, pid) VALUES (28, 173);
INSERT INTO a_p (sid, pid) VALUES (28, 175);

--How to make the best course project

INSERT INTO Person (name, surname) VALUES ('Mohamad', 'Kassab'); 
INSERT INTO scenarist (pid) VALUES (176);

INSERT INTO Person (name, surname) VALUES ('Albina', 'Khusainova');
INSERT INTO producer (pid) VALUES (177);

INSERT INTO performance (name, description) VALUES ('How to make the best course project', 'Four students are trying to pass their course project. Scandals, intrigues, investigations and ten litres of coffee. Will they pass?..');

INSERT INTO perf_prod (per_id, pid) VALUES (18,177);

INSERT INTO perf_scen (per_id, pid) VALUES (18,176);

INSERT INTO person (name, surname) VALUES ('Olzhas', 'Aitkaliyev');  
INSERT INTO actor (pid) VALUES (178);

INSERT INTO person (name, surname) VALUES ('Roman', 'Afanasev');  
INSERT INTO actor (pid) VALUES (179);

INSERT INTO person (name, surname) VALUES ('Bogdan', 'Bondar');  
INSERT INTO actor (pid) VALUES (180);

INSERT INTO person (name, surname) VALUES ('Maxim', 'Kolomiets');  
INSERT INTO actor (pid) VALUES (181);

INSERT INTO play (play_date, play_time, price, tid, per_id) VALUES ('2016-11-22', '09:00:00', 0, 4, 18);

INSERT INTO a_p (sid, pid) VALUES (29, 178);
INSERT INTO a_p (sid, pid) VALUES (29, 179);
INSERT INTO a_p (sid, pid) VALUES (29, 180);
INSERT INTO a_p (sid, pid) VALUES (29, 181);