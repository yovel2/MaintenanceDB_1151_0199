DROP TABLE IF EXISTS `errorLogs`;

CREATE TABLE `errorLogs` (
  `ServerId` mediumint(8) unsigned NOT NULL,
  `Timestamp` varchar(255),
  `ErrorCode` mediumint default NULL,
  `Severity` mediumint default NULL,
  `Description` TEXT default NULL,
  `ErrorId` mediumint,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;


INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (942, "08/06/23",47,5,"Aliquam erat volutpat. Nulla",1),
  (315, "11/10/24",18,9,"faucibus orci luctus et ultrices posuere cubilia Curae",2),
  (586, "10/08/24",21,6,"auctor",3),
  (849, "16/09/23",39,6,"mollis dui, in sodales elit erat",4),
  (307, "28/11/23",40,5,"dolor quam, elementum at,",5),
  (537, "31/10/24",42,7,"eget massa. Suspendisse eleifend. Cras",6),
  (867, "24/06/24",16,5,"vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh",7),
  (213, "13/05/23",49,8,"Duis elementum, dui quis accumsan convallis, ante lectus convallis",8),
  (288, "10/11/24",5,5,"tincidunt, neque",9),
  (530, "11/01/25",14,3,"amet, faucibus ut, nulla. Cras eu",10);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (497, "19/01/25",46,5,"sem semper erat, in consectetuer ipsum nunc id enim.",11),
  (58, "08/08/23",18,6,"condimentum eget, volutpat ornare,",12),
  (690, "31/03/25",37,10,"semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh.",13),
  (189, "27/01/25",40,8,"Phasellus nulla. Integer vulputate, risus a",14),
  (399, "27/10/24",40,7,"Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit",15),
  (733, "08/06/23",13,3,"vitae dolor.",16),
  (452, "17/05/24",19,6,"tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante",17),
  (979, "29/06/23",15,3,"mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean",18),
  (464, "14/08/24",40,6,"scelerisque neque sed sem egestas blandit. Nam",19),
  (234, "04/03/25",26,6,"hendrerit neque. In ornare sagittis felis. Donec tempor, est ac",20);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (271, "28/03/24",11,7,"sed, facilisis vitae, orci. Phasellus dapibus quam",21),
  (692, "29/08/24",46,4,"vitae, erat. Vivamus nisi.",22),
  (245, "12/08/23",41,9,"nunc id enim. Curabitur massa. Vestibulum accumsan neque",23),
  (511, "05/06/24",13,3,"ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac",24),
  (224, "04/05/23",4,2,"dolor. Donec fringilla. Donec feugiat metus sit",25),
  (57, "27/02/25",38,6,"nulla at sem molestie sodales. Mauris",26),
  (83, "13/05/24",33,8,"nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus",27),
  (918, "21/11/23",38,2,"cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros",28),
  (753, "04/07/23",38,2,"diam nunc, ullamcorper eu, euismod ac, fermentum",29),
  (92, "15/08/23",12,7,"penatibus et magnis",30);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (962, "07/11/24",37,5,"molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor,",31),
  (700, "21/04/24",25,4,"Nam tempor",32),
  (383, "08/03/24",36,4,"id,",33),
  (757, "07/05/24",17,1,"bibendum fermentum metus. Aenean",34),
  (236, "04/03/25",36,1,"vitae aliquam eros turpis non enim.",35),
  (562, "13/05/23",47,9,"ante dictum cursus. Nunc mauris elit, dictum eu,",36),
  (849, "06/04/25",45,5,"aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida.",37),
  (956, "19/10/24",17,7,"urna. Ut tincidunt vehicula",38),
  (819, "19/06/24",31,9,"magna. Phasellus dolor elit, pellentesque a, facilisis",39),
  (639, "24/04/24",37,3,"ad litora torquent per conubia",40);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (480, "31/07/24",28,10,"non enim. Mauris quis turpis vitae",41),
  (832, "19/05/24",46,8,"neque. Nullam nisl. Maecenas",42),
  (590, "20/06/23",35,9,"neque. Nullam ut nisi a odio semper cursus. Integer",43),
  (137, "20/05/23",40,5,"ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis",44),
  (16, "21/10/23",43,4,"id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor,",45),
  (729, "14/03/25",35,4,"Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae",46),
  (211, "05/03/25",11,10,"vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt",47),
  (471, "06/02/24",33,7,"ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non",48),
  (743, "28/05/23",22,8,"feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus",49),
  (873, "02/08/24",48,4,"eu, placerat",50);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (835, "08/01/25",30,8,"a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies",51),
  (741, "08/11/23",16,7,"dictum eu, eleifend nec,",52),
  (168, "28/01/25",6,5,"diam. Duis mi",53),
  (46, "26/08/23",2,10,"natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",54),
  (645, "26/08/23",15,7,"lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,",55),
  (630, "08/04/24",19,1,"eu sem. Pellentesque ut ipsum",56),
  (32, "22/03/25",34,5,"velit justo",57),
  (170, "19/08/23",38,8,"pede. Cum sociis natoque penatibus et magnis dis parturient",58),
  (326, "24/08/24",32,9,"mollis. Integer tincidunt aliquam arcu. Aliquam",59),
  (992, "17/02/25",47,4,"enim. Sed nulla ante, iaculis nec, eleifend non, dapibus",60);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (122, "25/03/24",6,8,"natoque penatibus et magnis dis",61),
  (324, "24/08/24",31,4,"Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis",62),
  (849, "21/04/24",4,8,"interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae",63),
  (121, "26/01/24",41,8,"egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate",64),
  (460, "06/12/24",9,2,"ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae,",65),
  (912, "15/12/23",17,9,"quis diam.",66),
  (315, "04/03/24",43,7,"vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi",67),
  (622, "14/07/23",6,1,"Maecenas libero est, congue a, aliquet vel, vulputate eu,",68),
  (147, "05/01/24",50,1,"Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus.",69),
  (469, "08/03/24",9,4,"Suspendisse aliquet",70);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (834, "01/07/23",17,7,"mi. Duis risus odio, auctor vitae, aliquet nec,",71),
  (541, "09/09/24",30,4,"vulputate, lacus. Cras interdum. Nunc",72),
  (153, "27/07/24",38,5,"amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede,",73),
  (274, "09/07/23",30,5,"Aliquam gravida mauris ut mi. Duis risus odio,",74),
  (500, "08/05/24",41,5,"euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas",75),
  (751, "28/07/24",24,3,"primis in faucibus orci luctus",76),
  (332, "06/03/25",47,4,"erat. Vivamus nisi. Mauris nulla. Integer",77),
  (402, "04/08/24",29,2,"Quisque libero lacus, varius et,",78),
  (130, "27/11/24",5,8,"Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac,",79),
  (448, "28/07/23",38,3,"nascetur ridiculus",80);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (541, "04/03/25",20,4,"Aliquam nec enim. Nunc ut erat. Sed",81),
  (504, "03/11/23",38,1,"nec tellus. Nunc lectus pede, ultrices a, auctor",82),
  (11, "21/04/24",8,6,"Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo.",83),
  (608, "15/09/23",34,4,"torquent per conubia nostra, per inceptos hymenaeos. Mauris",84),
  (660, "06/08/23",2,6,"purus mauris",85),
  (356, "05/12/24",20,8,"vitae diam. Proin dolor.",86),
  (339, "17/05/24",26,7,"quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum.",87),
  (420, "12/06/24",21,9,"Curae Phasellus ornare.",88),
  (260, "12/06/23",37,1,"odio tristique pharetra. Quisque ac libero",89),
  (645, "12/05/23",15,10,"ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna,",90);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (991, "12/01/24",44,9,"orci, adipiscing non, luctus sit amet, faucibus ut,",91),
  (358, "13/08/24",40,2,"interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum",92),
  (292, "31/05/23",21,2,"molestie. Sed id risus quis",93),
  (378, "16/06/23",10,5,"Donec tempor, est ac",94),
  (273, "06/04/25",17,2,"pede. Praesent eu dui. Cum sociis natoque penatibus et",95),
  (194, "01/10/23",2,9,"libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio,",96),
  (329, "14/01/24",5,10,"lorem. Donec elementum, lorem ut aliquam iaculis, lacus",97),
  (790, "04/10/24",6,5,"erat, eget tincidunt dui augue eu tellus.",98),
  (827, "13/07/23",39,9,"Lorem ipsum dolor sit amet, consectetuer",99),
  (183, "12/10/24",32,10,"dui augue eu tellus. Phasellus elit pede, malesuada vel,",100);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (256, "12/07/24",43,4,"luctus et ultrices posuere cubilia",101),
  (300, "19/12/23",7,10,"amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede,",102),
  (969, "31/03/25",39,4,"luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget",103),
  (53, "10/07/24",35,2,"ridiculus mus. Proin vel arcu eu odio",104),
  (959, "16/03/24",38,2,"nunc risus varius orci, in",105),
  (428, "10/07/23",46,2,"eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper",106),
  (668, "31/03/24",31,7,"elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et",107),
  (783, "24/09/24",22,6,"Morbi sit amet massa. Quisque",108),
  (403, "02/05/23",17,5,"elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.",109),
  (534, "21/04/24",19,9,"dolor. Fusce feugiat.",110);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (699, "04/01/25",21,2,"mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in",111),
  (635, "21/02/25",36,4,"magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique",112),
  (561, "09/04/24",18,9,"amet ornare lectus justo eu",113),
  (453, "18/12/23",24,8,"Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede",114),
  (974, "24/05/24",42,1,"Aliquam gravida",115),
  (294, "28/06/24",42,6,"purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum",116),
  (25, "22/07/23",14,10,"ultrices. Duis volutpat nunc sit amet",117),
  (130, "08/09/24",11,7,"urna suscipit nonummy.",118),
  (873, "12/09/23",15,7,"eu",119),
  (904, "29/06/24",6,1,"Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh",120);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (991, "17/11/24",48,4,"nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu",121),
  (426, "07/01/24",1,5,"ligula elit, pretium",122),
  (287, "24/01/24",16,9,"sed leo. Cras vehicula aliquet libero.",123),
  (610, "13/04/25",44,7,"dapibus ligula.",124),
  (187, "24/07/23",43,8,"pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem,",125),
  (682, "26/06/23",8,4,"dui. Cum sociis natoque penatibus et magnis",126),
  (881, "24/03/25",41,6,"nec, eleifend non,",127),
  (142, "19/06/23",34,5,"neque vitae semper egestas, urna justo faucibus",128),
  (718, "12/08/24",21,7,"est. Mauris eu turpis. Nulla aliquet.",129),
  (261, "08/10/24",18,2,"facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies",130);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (528, "31/12/24",28,4,"neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris",131),
  (653, "21/12/23",18,4,"Vestibulum accumsan neque et nunc. Quisque ornare tortor",132),
  (23, "28/05/23",2,3,"nec ante. Maecenas mi",133),
  (959, "09/09/23",20,7,"nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse",134),
  (646, "11/08/23",33,10,"blandit enim consequat purus. Maecenas libero est, congue a, aliquet",135),
  (256, "06/04/25",34,3,"blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia.",136),
  (389, "10/08/24",11,1,"diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.",137),
  (650, "10/09/23",34,10,"consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum.",138),
  (936, "05/11/23",42,7,"eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis",139),
  (665, "03/07/23",11,7,"lorem, sit amet ultricies sem magna nec",140);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (913, "09/03/25",6,8,"non massa non ante bibendum ullamcorper. Duis cursus, diam at",141),
  (41, "03/01/24",47,1,"Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem",142),
  (118, "17/10/24",26,8,"Fusce fermentum fermentum arcu.",143),
  (46, "23/08/23",46,2,"Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae",144),
  (489, "06/06/24",28,9,"aliquam, enim nec",145),
  (610, "03/07/23",45,5,"nunc nulla vulputate",146),
  (493, "08/09/24",41,5,"Mauris non dui nec urna suscipit",147),
  (250, "14/11/23",32,8,"enim non nisi. Aenean eget metus. In nec orci.",148),
  (769, "01/03/25",37,5,"tempus scelerisque, lorem",149),
  (574, "06/10/23",4,2,"mattis.",150);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (565, "04/03/25",35,10,"eleifend non,",151),
  (84, "24/04/24",33,8,"Aliquam rutrum lorem ac risus. Morbi",152),
  (996, "04/06/23",31,4,"gravida non, sollicitudin a,",153),
  (91, "22/11/24",4,5,"sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt",154),
  (947, "20/08/23",39,2,"ac nulla. In tincidunt congue turpis.",155),
  (162, "30/06/24",29,5,"auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis",156),
  (504, "28/07/24",4,1,"pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer",157),
  (857, "27/04/24",7,3,"ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius",158),
  (414, "08/04/25",3,8,"semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam",159),
  (501, "14/07/24",49,10,"eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis",160);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (594, "12/05/24",29,8,"mollis vitae, posuere at,",161),
  (612, "04/01/25",38,3,"neque. Sed eget lacus. Mauris non dui nec urna",162),
  (67, "03/01/25",2,5,"elit elit fermentum risus, at fringilla purus mauris a nunc. In",163),
  (217, "03/04/24",17,10,"enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis",164),
  (14, "04/03/25",34,4,"sit amet ante. Vivamus non lorem vitae odio sagittis",165),
  (881, "11/03/25",7,3,"venenatis a, magna. Lorem ipsum dolor sit",166),
  (671, "29/10/24",32,7,"volutpat nunc sit amet",167),
  (52, "17/12/23",11,9,"Sed molestie. Sed id risus quis diam",168),
  (359, "06/06/23",47,3,"mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet,",169),
  (169, "17/05/23",20,4,"nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus",170);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (460, "07/10/23",38,5,"accumsan interdum libero",171),
  (828, "01/08/23",10,10,"arcu. Vestibulum ante ipsum primis",172),
  (944, "23/04/23",4,3,"libero. Integer in magna. Phasellus dolor",173),
  (541, "26/12/23",35,2,"facilisis lorem tristique aliquet. Phasellus",174),
  (106, "30/04/24",41,2,"sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,",175),
  (156, "31/05/24",30,7,"nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu",176),
  (418, "28/03/24",2,3,"auctor, nunc nulla vulputate dui, nec",177),
  (624, "18/05/23",45,9,"congue, elit sed consequat auctor, nunc nulla",178),
  (252, "13/08/23",23,4,"et ultrices posuere cubilia Curae Donec tincidunt.",179),
  (379, "06/11/23",36,3,"a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum",180);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (417, "02/06/23",32,4,"Etiam gravida molestie arcu. Sed eu",181),
  (813, "17/09/23",32,10,"ut lacus.",182),
  (290, "22/01/25",15,1,"eget, dictum placerat, augue. Sed molestie.",183),
  (918, "12/10/24",18,2,"orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus",184),
  (229, "16/01/25",12,9,"nulla. Donec non justo. Proin",185),
  (668, "15/11/24",7,6,"non, lacinia at, iaculis quis, pede. Praesent eu dui.",186),
  (450, "12/04/25",32,4,"ultricies ornare, elit elit fermentum risus,",187),
  (109, "28/04/23",10,6,"felis purus ac",188),
  (550, "21/11/23",42,7,"lacus. Mauris non dui nec",189),
  (490, "20/09/23",9,8,"lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies",190);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (351, "04/03/25",24,6,"molestie arcu. Sed",191),
  (189, "24/10/24",37,6,"a, aliquet vel, vulputate",192),
  (335, "17/01/25",45,6,"at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod",193),
  (468, "07/10/23",5,4,"ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget",194),
  (804, "28/03/25",41,4,"arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec",195),
  (608, "14/07/24",6,2,"nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus",196),
  (638, "30/07/24",9,8,"magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut",197),
  (26, "12/03/25",24,7,"viverra. Donec tempus, lorem",198),
  (643, "26/05/24",33,10,"vitae mauris sit amet lorem semper auctor.",199),
  (501, "21/05/24",34,4,"auctor. Mauris vel",200);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (201, "28/05/23",14,4,"ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum.",201),
  (932, "28/04/24",13,3,"Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim.",202),
  (909, "04/06/24",46,4,"rutrum. Fusce",203),
  (508, "27/05/23",18,9,"Proin mi. Aliquam gravida mauris ut mi. Duis",204),
  (584, "07/09/24",48,5,"imperdiet ornare. In faucibus. Morbi vehicula.",205),
  (406, "10/06/24",48,3,"nulla. Cras eu tellus eu augue porttitor",206),
  (802, "20/03/24",33,8,"Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis",207),
  (84, "24/11/23",39,9,"neque vitae",208),
  (676, "09/12/23",36,4,"commodo",209),
  (790, "10/03/24",38,3,"est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia",210);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (994, "14/02/24",40,6,"est. Mauris eu turpis. Nulla",211),
  (44, "11/01/25",35,2,"amet massa. Quisque porttitor",212),
  (456, "09/12/24",13,5,"non nisi. Aenean",213),
  (790, "21/09/24",5,3,"facilisis lorem tristique",214),
  (823, "26/12/23",49,5,"Cras dolor dolor, tempus non, lacinia",215),
  (468, "01/07/23",25,2,"enim nec tempus scelerisque, lorem",216),
  (701, "03/08/23",4,8,"diam at pretium aliquet, metus urna convallis erat,",217),
  (435, "14/12/23",33,7,"nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras",218),
  (936, "06/08/23",20,5,"eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis",219),
  (799, "05/12/23",15,2,"magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus",220);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (879, "04/10/24",17,8,"vel est tempor bibendum.",221),
  (883, "23/06/23",19,10,"Donec feugiat metus sit amet ante. Vivamus non lorem vitae",222),
  (55, "25/08/23",24,5,"porttitor eros nec tellus. Nunc lectus pede, ultrices",223),
  (855, "18/05/23",44,3,"dui, in sodales elit erat vitae risus.",224),
  (126, "04/08/23",6,8,"in consequat enim diam vel arcu. Curabitur ut odio vel est",225),
  (672, "24/03/25",37,10,"lacus. Aliquam rutrum lorem ac",226),
  (650, "21/12/24",32,7,"mi.",227),
  (956, "25/03/24",50,7,"sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis.",228),
  (494, "23/03/24",7,9,"quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper",229),
  (986, "15/05/24",43,2,"Fusce aliquet magna a neque. Nullam ut nisi a",230);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (259, "16/03/24",6,5,"lobortis tellus",231),
  (614, "25/01/25",35,8,"eget, venenatis",232),
  (850, "03/10/24",17,8,"commodo ipsum. Suspendisse non leo. Vivamus",233),
  (467, "16/01/25",25,4,"nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem",234),
  (4, "24/03/25",2,7,"tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi",235),
  (18, "22/01/25",22,4,"non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida.",236),
  (775, "03/11/24",25,10,"vehicula. Pellentesque tincidunt tempus risus.",237),
  (119, "24/10/23",38,5,"Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut,",238),
  (932, "31/03/25",34,9,"blandit. Nam nulla magna, malesuada vel, convallis in, cursus",239),
  (487, "27/12/24",20,10,"ultrices a, auctor",240);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (395, "31/05/24",18,2,"eu elit. Nulla",241),
  (330, "25/01/25",10,10,"ligula eu",242),
  (318, "09/09/24",39,8,"vulputate, risus a",243),
  (955, "22/03/24",7,4,"vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim",244),
  (531, "06/04/24",18,7,"Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel,",245),
  (404, "09/01/24",17,4,"sit amet metus. Aliquam erat volutpat.",246),
  (952, "20/08/24",19,2,"Aliquam auctor, velit eget laoreet posuere,",247),
  (410, "13/05/24",13,7,"dis parturient montes,",248),
  (173, "17/12/23",46,5,"et malesuada fames ac",249),
  (232, "21/03/25",43,3,"a ultricies adipiscing, enim mi tempor lorem,",250);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (493, "22/02/25",24,6,"lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.",251),
  (318, "26/10/24",19,1,"Quisque tincidunt pede ac urna. Ut tincidunt",252),
  (658, "05/09/23",25,4,"a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero",253),
  (299, "02/06/23",10,5,"In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue,",254),
  (693, "14/02/25",11,4,"tellus. Nunc lectus pede,",255),
  (741, "12/07/24",23,7,"tortor, dictum eu, placerat eget, venenatis a,",256),
  (261, "27/11/24",34,2,"semper egestas,",257),
  (75, "02/07/23",31,5,"nibh. Donec est",258),
  (655, "18/08/23",46,9,"dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit.",259),
  (820, "07/05/24",33,1,"Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum",260);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (822, "09/02/24",38,2,"ornare placerat, orci lacus vestibulum",261),
  (929, "23/02/24",11,5,"dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus",262),
  (414, "10/04/25",44,9,"Nam tempor diam dictum sapien. Aenean massa.",263),
  (907, "08/06/24",45,3,"sed dictum eleifend, nunc risus varius orci, in consequat enim",264),
  (699, "02/08/23",26,9,"dui. Cras pellentesque.",265),
  (140, "28/12/23",21,8,"lobortis quis, pede. Suspendisse",266),
  (251, "27/05/23",10,9,"enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare",267),
  (965, "12/01/24",35,9,"et pede. Nunc sed orci lobortis",268),
  (328, "28/12/24",20,10,"consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum.",269),
  (752, "14/10/23",10,7,"fermentum arcu. Vestibulum ante ipsum primis in faucibus",270);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (512, "31/10/23",7,3,"egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing.",271),
  (944, "08/12/23",43,5,"aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in",272),
  (719, "06/11/24",47,7,"dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus",273),
  (827, "27/12/24",7,7,"nec tempus mauris erat",274),
  (472, "06/05/24",34,8,"Nunc ut erat. Sed nunc",275),
  (717, "28/10/24",15,5,"ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum",276),
  (869, "09/02/24",25,4,"tincidunt tempus",277),
  (786, "30/10/23",46,6,"dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu.",278),
  (158, "08/12/23",20,9,"vestibulum lorem, sit amet ultricies sem magna nec quam.",279),
  (661, "03/05/24",16,3,"lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros",280);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (468, "27/07/23",13,9,"sociis natoque penatibus et magnis",281),
  (494, "15/04/25",33,3,"dictum placerat,",282),
  (826, "10/04/25",45,4,"aliquet magna a neque. Nullam ut nisi a odio semper",283),
  (520, "24/04/24",12,4,"dictum mi, ac mattis velit",284),
  (963, "20/11/23",49,6,"orci. Ut semper pretium neque. Morbi quis urna. Nunc",285),
  (595, "24/02/25",49,2,"nec, cursus a, enim.",286),
  (886, "21/04/24",12,5,"tincidunt dui augue eu",287),
  (897, "30/03/24",44,7,"et, lacinia vitae, sodales at,",288),
  (98, "21/01/25",39,4,"nunc. In at pede.",289),
  (837, "04/11/24",44,6,"a sollicitudin orci sem",290);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (353, "24/09/23",44,3,"neque tellus, imperdiet non, vestibulum nec, euismod in, dolor.",291),
  (368, "20/03/24",39,7,"adipiscing elit. Etiam laoreet, libero",292),
  (782, "26/12/23",29,2,"interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris",293),
  (972, "06/09/24",42,8,"turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy",294),
  (473, "17/10/23",33,1,"enim, sit amet ornare lectus justo eu",295),
  (469, "18/10/24",16,2,"quam, elementum at, egestas a,",296),
  (448, "20/12/23",48,4,"In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu",297),
  (591, "09/07/23",36,1,"arcu eu odio",298),
  (634, "04/09/24",30,3,"Duis ac arcu. Nunc mauris. Morbi",299),
  (144, "20/10/24",1,9,"penatibus et",300);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (580, "13/05/24",24,5,"cursus et, eros. Proin",301),
  (664, "07/04/25",46,2,"risus a ultricies",302),
  (96, "19/11/23",21,4,"lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus",303),
  (728, "27/11/24",11,8,"feugiat tellus lorem eu metus. In lorem. Donec elementum,",304),
  (976, "03/07/24",39,4,"erat volutpat. Nulla dignissim. Maecenas ornare egestas",305),
  (656, "26/01/24",32,5,"congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci",306),
  (680, "28/05/23",3,6,"eleifend vitae, erat. Vivamus nisi.",307),
  (800, "31/07/24",18,4,"non, bibendum sed,",308),
  (985, "16/07/24",33,10,"Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor",309),
  (74, "15/12/24",44,9,"vulputate dui, nec tempus mauris",310);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (596, "15/02/25",10,9,"euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui",311),
  (547, "24/10/23",42,5,"diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla.",312),
  (250, "28/08/23",1,5,"Nunc ac sem ut dolor dapibus",313),
  (937, "22/02/25",40,1,"commodo",314),
  (879, "20/05/24",43,6,"turpis egestas. Aliquam fringilla",315),
  (964, "02/06/24",22,5,"Suspendisse non leo.",316),
  (970, "05/04/25",3,7,"risus. Quisque libero lacus, varius et, euismod et, commodo at,",317),
  (712, "05/01/24",18,8,"lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam",318),
  (436, "30/08/24",49,4,"eu, ultrices sit amet, risus. Donec nibh enim,",319),
  (802, "20/01/25",31,9,"orci tincidunt adipiscing. Mauris molestie pharetra",320);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (476, "22/11/24",29,7,"arcu iaculis enim, sit amet ornare lectus justo eu arcu.",321),
  (107, "21/11/23",13,4,"lectus pede, ultrices a, auctor",322),
  (787, "22/06/24",45,4,"Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi,",323),
  (626, "24/12/24",17,7,"lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus",324),
  (187, "21/07/23",21,5,"et ultrices posuere cubilia Curae",325),
  (208, "11/12/23",35,3,"neque pellentesque massa lobortis ultrices. Vivamus",326),
  (344, "23/04/24",36,5,"nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc",327),
  (650, "19/07/24",39,7,"eu turpis. Nulla aliquet. Proin velit.",328),
  (679, "13/05/23",43,8,"nec quam. Curabitur vel",329),
  (261, "11/11/24",31,6,"Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi",330);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (396, "21/03/24",9,10,"Donec porttitor tellus non magna. Nam",331),
  (716, "25/10/24",25,6,"sociis natoque penatibus et magnis",332),
  (953, "06/04/24",42,6,"nunc, ullamcorper eu, euismod ac, fermentum",333),
  (711, "13/08/24",9,2,"ultrices a, auctor non,",334),
  (990, "30/12/24",45,2,"ipsum. Curabitur",335),
  (208, "31/10/24",8,2,"nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula.",336),
  (771, "03/04/24",34,1,"non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa",337),
  (539, "25/09/23",41,7,"facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque",338),
  (59, "15/07/24",41,2,"habitant morbi tristique senectus et netus et malesuada fames ac turpis",339),
  (803, "25/06/24",34,5,"orci, adipiscing non, luctus sit amet, faucibus ut, nulla.",340);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (404, "04/09/23",24,6,"Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus",341),
  (519, "12/08/24",9,4,"sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec",342),
  (279, "21/01/24",1,3,"ligula. Aenean gravida nunc sed pede. Cum sociis",343),
  (872, "18/05/23",47,9,"cursus, diam at pretium aliquet, metus urna",344),
  (662, "13/05/23",17,5,"mollis. Phasellus libero mauris, aliquam eu, accumsan sed,",345),
  (528, "01/02/25",34,3,"aliquet. Phasellus fermentum convallis ligula.",346),
  (481, "06/04/25",27,5,"metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare",347),
  (677, "21/08/24",40,2,"in, cursus et, eros.",348),
  (71, "02/01/25",3,7,"lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus",349),
  (696, "08/10/23",43,4,"convallis",350);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (36, "22/08/24",24,3,"vulputate mauris sagittis placerat. Cras dictum",351),
  (494, "25/07/24",22,4,"sem egestas blandit. Nam nulla",352),
  (262, "23/05/23",39,1,"nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur",353),
  (358, "30/10/23",47,7,"quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada",354),
  (342, "20/12/24",49,5,"Aliquam rutrum lorem ac risus. Morbi metus. Vivamus",355),
  (282, "10/03/25",19,4,"eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus",356),
  (449, "19/09/23",41,9,"eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a",357),
  (238, "19/05/24",10,2,"ut mi. Duis risus odio, auctor vitae, aliquet nec,",358),
  (532, "31/12/23",18,7,"taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.",359),
  (705, "15/10/24",4,4,"velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus",360);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (292, "25/12/24",5,10,"amet,",361),
  (33, "04/01/25",35,1,"pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan",362),
  (9, "03/01/24",14,8,"eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante.",363),
  (872, "08/03/24",3,9,"ut mi. Duis risus odio, auctor vitae, aliquet nec,",364),
  (347, "14/10/24",42,8,"Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus",365),
  (229, "22/11/23",31,8,"torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet",366),
  (476, "09/07/24",35,7,"Pellentesque ultricies dignissim lacus. Aliquam",367),
  (889, "31/05/24",31,7,"ipsum non arcu. Vivamus sit",368),
  (644, "23/01/24",26,5,"vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis",369),
  (143, "23/09/23",11,9,"Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum",370);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (587, "05/04/25",44,4,"Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies",371),
  (368, "24/03/24",5,3,"ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum",372),
  (534, "29/11/23",4,2,"augue eu tellus. Phasellus elit pede, malesuada",373),
  (598, "15/07/23",13,3,"blandit viverra. Donec tempus, lorem fringilla ornare placerat,",374),
  (660, "25/09/23",18,2,"lacinia orci, consectetuer euismod est arcu",375),
  (529, "04/11/24",41,8,"Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur",376),
  (971, "18/05/23",3,8,"mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam",377),
  (105, "21/06/23",35,5,"fringilla, porttitor",378),
  (453, "09/11/23",34,1,"Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus",379),
  (289, "28/04/24",9,6,"ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec,",380);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (623, "18/02/25",43,2,"Donec at arcu. Vestibulum ante",381),
  (844, "08/12/24",40,6,"fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit.",382),
  (810, "24/09/24",12,10,"metus facilisis lorem tristique aliquet. Phasellus",383),
  (53, "07/04/25",48,5,"feugiat tellus lorem eu metus. In lorem. Donec",384),
  (310, "03/08/23",33,7,"lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie.",385),
  (494, "07/11/24",38,9,"vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec",386),
  (387, "21/07/24",12,7,"id sapien. Cras dolor dolor,",387),
  (348, "18/04/25",33,8,"gravida. Aliquam tincidunt, nunc ac",388),
  (721, "18/05/23",24,7,"iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec",389),
  (452, "11/03/24",17,4,"Vestibulum ante ipsum primis in faucibus orci",390);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (150, "15/03/24",34,3,"adipiscing elit. Aliquam",391),
  (160, "24/10/24",30,2,"elit, pretium et, rutrum non, hendrerit id, ante.",392),
  (168, "13/05/23",8,3,"in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis",393),
  (603, "31/05/23",26,9,"mauris ipsum porta elit, a",394),
  (4, "19/07/24",3,8,"tellus faucibus leo, in",395),
  (228, "27/10/24",20,5,"mi tempor lorem, eget mollis",396),
  (918, "04/05/23",36,4,"dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu",397),
  (817, "09/08/23",33,10,"non enim commodo hendrerit. Donec porttitor tellus non",398),
  (125, "07/01/24",47,7,"facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi",399),
  (752, "17/09/24",8,6,"dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean",400);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (59, "20/07/24",6,9,"lobortis,",401),
  (934, "17/08/23",4,9,"semper et, lacinia vitae, sodales at, velit. Pellentesque",402),
  (294, "30/08/24",33,1,"aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum",403),
  (213, "15/11/24",9,3,"ligula eu",404),
  (711, "01/08/24",46,8,"nec, euismod in, dolor. Fusce feugiat. Lorem",405),
  (994, "16/11/24",7,1,"luctus. Curabitur egestas",406),
  (142, "12/05/23",8,7,"mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla",407),
  (963, "01/12/24",22,9,"Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et",408),
  (26, "22/05/24",20,9,"orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit",409),
  (517, "13/03/25",29,8,"quam quis diam. Pellentesque habitant morbi tristique senectus et",410);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (518, "26/11/23",26,8,"nascetur ridiculus",411),
  (519, "15/02/24",21,3,"quis, tristique ac, eleifend vitae, erat. Vivamus nisi.",412),
  (539, "17/12/23",3,8,"faucibus orci luctus et ultrices posuere cubilia",413),
  (699, "05/08/23",27,6,"id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus",414),
  (676, "24/08/24",11,9,"Donec vitae erat vel pede blandit congue. In scelerisque scelerisque",415),
  (667, "11/08/23",23,5,"egestas. Fusce aliquet magna",416),
  (905, "05/09/23",39,8,"Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida",417),
  (886, "19/12/24",30,3,"Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum",418),
  (397, "25/06/24",17,6,"quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus",419),
  (282, "09/09/24",12,2,"id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus",420);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (207, "12/11/23",36,9,"et risus. Quisque libero lacus, varius et, euismod et, commodo at,",421),
  (834, "05/03/25",28,7,"porttitor eros nec tellus. Nunc lectus pede, ultrices",422),
  (709, "22/02/25",26,5,"nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor",423),
  (821, "01/03/25",22,7,"nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in,",424),
  (810, "17/05/24",31,8,"semper egestas, urna justo",425),
  (473, "12/03/25",28,3,"Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit",426),
  (855, "23/09/23",25,3,"neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor",427),
  (705, "20/08/24",22,6,"enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet",428),
  (750, "04/04/25",17,6,"ut",429),
  (922, "21/11/24",13,4,"tellus justo",430);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (173, "20/12/24",43,2,"ridiculus mus. Aenean eget magna. Suspendisse",431),
  (354, "15/12/23",12,5,"malesuada fames ac turpis egestas. Aliquam fringilla",432),
  (112, "19/07/24",35,3,"dui. Cras pellentesque.",433),
  (933, "04/06/24",14,2,"odio vel est tempor bibendum. Donec",434),
  (143, "23/07/23",39,5,"libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet",435),
  (976, "28/06/23",5,7,"nec ante. Maecenas",436),
  (195, "06/01/25",18,5,"tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor",437),
  (47, "11/01/24",13,8,"Cum sociis natoque penatibus et magnis",438),
  (951, "15/09/24",21,1,"nibh. Quisque nonummy ipsum non",439),
  (989, "30/11/24",10,5,"sit amet nulla. Donec non justo. Proin non",440);
INSERT INTO `errorLogs` (ServerId, `Timestamp`,`ErrorCode`,`Severity`,`Description`,`ErrorId`)
VALUES
  (657, "12/12/23",4,9,"odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae",441),
  (177, "27/11/23",15,9,"mattis velit",442),
  (793, "14/10/24",22,9,"laoreet",443),
  (123, "20/12/24",22,4,"magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales",444),
  (84, "17/02/24",3,7,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis",445),
  (851, "09/09/24",39,2,"ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer",446),
  (777, "14/11/23",28,9,"per conubia",447),
  (534, "14/06/23",3,5,"vestibulum, neque sed dictum eleifend, nunc risus varius orci,",448),
