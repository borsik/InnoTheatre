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


-- Малый театр

INSERT INTO Theater (name, description, address, city) VALUES ('Театр Мастерская', 'Профессиональный драматический театр под руководством Григория Козлова, основанный в 2010 году на базе актёрско-режиссёрского курса Санкт-Петербургской государственной академии театрального искусства (СПГАТИ) по инициативе театральной общественности Москвы и Санкт-Петербурга.', 'ул. Народная, 1', 'Санкт-Петербург');

-- Письмовник

INSERT INTO person (name, surname, info) VALUES ('Григорий', 'Козлов', 'Петербургский театральный режиссёр, театральный педагог, заслуженный деятель искусств России (2006), лауреат Государственной премии России (2000).');
INSERT INTO person (name, surname, info) VALUES ('Михаил', 'Шишкин', 'Русский писатель. Пишет также на немецком языке.');

INSERT INTO scenarist (pid) VALUES (72); -- автор Михаил Шишкин
INSERT INTO producer (pid) VALUES (71); -- продюсер Григорий Козлов

INSERT INTO performance (name, description) VALUES ('Письмовник', 'Новая премьера Санкт-Петербургского театра «Мастерская» – инсценировка романа знаменитого современного российского писателя Михаила Шишкина «Письмовник».

 Простая, старая, как мир, история: Он и Она, они любят друг друга, они разлучены судьбой, они пишут друг другу письма, передавая свою любовь через пространство. Сложная, как мир, история: Он в казарме русской армии на русско-китайской войне, Она в гамаке на даче эпохи миллениума, они пишут друг другу письма, передавая свою любовь через время. Время сжимается, а пространство расширяется, они рядом и одновременно далеко, они слышат друг друга, но никогда друг друга не увидят, они не могут жить друг без друга, и уже неважно, кто умер и когда.');

INSERT INTO perf_prod (per_id, pid) VALUES (6,71);  -- продюсер Григорий Козлов

INSERT INTO perf_scen (per_id, pid) VALUES (6,72); -- Владимир Драгунов - сценарист 'Сердце не камень'

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