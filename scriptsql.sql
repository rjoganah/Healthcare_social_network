drop table member;
drop table updates;

create table member (
    idMember     int,
    pseudo   varchar(20) not null,
    email  varchar(100) not null,
    password   varchar(25) not null,
    sex  varchar(2) not null,
    isAdmin tinyint not null,
	description varchar(150),
	image BLOB,
	website varchar(100),
    primary key (idMember)
);



create table updates (
    idUpdate     int, 
    content   varchar(100),
    date  timestamp,  
    service   varchar(50), 
	idMember int not null,
	foreign key (idMember) references member(idMember),
    primary key (idUpdate)
);


INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('1','ac','eu@nonloremvitae.com','ILW21MIT3NL','M','0','magna nec
 quam. Curabitur vel lectus. Cum sociis natoque');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('2','Suspendisse','non.luctus@augue.ca','FCQ58WTP9FX','F','1','iaculis 
nec, eleifend');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('3','arcu.','Nunc.mauris@Morbinequetellus.org','TRE44PWR7TW','M','1','primis
 in faucibus orci luctus et ultrices posuere cubilia Curae;');INSERT
 INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('4','at,','magnis@est.edu','RNJ20VMA7GT','F','1','eros. Proin 
ultrices. Duis');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('5','posuere,','molestie@lacusQuisqueimperdiet.com','REW44BTR5ZI','F','1','odio
 sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer 
vitae');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('6','Nam','nec@tinciduntadipiscingMauris.ca','JRC26DUL9ED','F','1','eget
 nisi dictum augue malesuada malesuada. Integer id magna et ipsum');INSERT
 INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('7','Donec','luctus@semconsequat.org','ROD86EYQ4WZ','F','0','elit, a 
feugiat tellus lorem');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('8','non','at@nonummy.com','EGZ73GYA4NS','F','0','congue. In 
scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas');INSERT
 INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('9','eu','felis.ullamcorper@Aenean.com','MGP33QPJ8AO','F','0','elementum,
 dui quis accumsan convallis, ante');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('10','ante','amet@luctusetultrices.edu','TJR42DWO4FA','M','0','ipsum 
non arcu. Vivamus sit amet risus.');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('11','diam','tortor.nibh.sit@gravida.edu','JXH81MHV2MP','M','1','elit, 
a');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('12','massa.','ac.eleifend.vitae@nullaatsem.com','NZR64PCR5CA','F','1','rutrum,
 justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed 
turpis nec mauris blandit mattis. Cras');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('13','Phasellus','neque@non.ca','SSB50AXV1HI','F','0','Donec 
porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, 
hendrerit id, ante. Nunc mauris sapien, cursus');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('14','nisi','quis@Nam.com','MND04GKM8KF','M','1','eros non enim 
commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, 
pretium et,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('15','sed','ornare.egestas@Vestibulumaccumsanneque.org','WWQ44RRM8ZZ','F','1','arcu.');INSERT
 INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('16','ipsum.','suscipit.nonummy@habitant.com','RIE28UQN7IJ','M','0','ullamcorper.
 Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, 
malesuada id, erat. Etiam vestibulum');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('17','montes,','sit.amet@esttempor.com','UNN48YSZ8DQ','F','1','sollicitudin
 commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, 
feugiat non, lobortis quis, pede. Suspendisse dui.');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('18','enim','convallis.ante@malesuadavelconvallis.ca','JVP34CXY5KS','F','0','commodo
 at, libero. Morbi accumsan');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('19','cursus','metus.Aliquam.erat@aneque.org','UJK74YFG8AP','M','0','Suspendisse
 aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam 
eros turpis non enim. Mauris quis turpis vitae');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('20','est','nisi.Aenean.eget@lobortis.ca','HEA10YBR0OL','F','0','erat 
neque non quam.');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('21','ipsum.','interdum.enim@nequeNullamnisl.org','KAR57OQY8LF','M','1','tellus,
 imperdiet non, vestibulum nec, euismod in, dolor. Fusce');INSERT 
INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('22','urna','tristique.neque@dolorQuisque.edu','VAH69RTS0LD','F','1','dictum
 eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, 
consectetuer adipiscing');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('23','ante','posuere@metusfacilisis.ca','LFJ46VCB8EW','M','1','elit, a 
feugiat tellus lorem eu metus. In lorem. Donec elementum,');INSERT 
INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('24','vitae','sed@est.org','GUJ04RTY4SJ','M','1','sit amet 
massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, 
auctor non, feugiat nec,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('25','semper','urna.Nullam.lobortis@netusetmalesuada.edu','QNT46AAV7RC','M','1','neque
 tellus, imperdiet');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('26','turpis.','ac.sem.ut@Etiam.com','VRC15ZNI0SY','M','1','placerat, 
augue. Sed molestie. Sed id risus quis diam');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('27','purus,','amet.risus@a.edu','RDH68EPB7XW','F','0','massa');INSERT
 INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('28','neque','euismod.urna@posuere.com','QSS81DZJ2EB','F','1','adipiscing.
 Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor 
ullamcorper, nisl arcu iaculis enim,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('29','lacinia','et@sitamet.edu','WEF81TFF0OV','M','1','euismod 
et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur 
consequat, lectus sit amet');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('30','facilisis','per.conubia.nostra@feugiattelluslorem.com','CHB39JSI5YE','M','1','sit
 amet');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('31','id','Donec@Crasvulputatevelit.ca','QCQ55HUE1CH','F','1','consectetuer
 rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit.
 Pellentesque ultricies');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('32','tellus.','penatibus.et@ipsum.ca','UMX63EUH0SX','F','1','magna. Ut
 tincidunt orci quis lectus. Nullam suscipit, est');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('33','tellus','Etiam@etmagnisdis.edu','DMT49DEA4AU','M','0','pede. Cum 
sociis natoque penatibus et magnis dis parturient montes,');INSERT 
INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('34','eu','cursus@Aliquam.org','FHZ88EPP5RT','M','1','ut, 
pharetra sed, hendrerit a,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('35','hendrerit','Fusce.feugiat@aliquet.ca','ZIH34OYO5MU','M','1','montes,
 nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo 
auctor');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('36','justo.','lectus@purus.edu','CHH08QBX0WX','F','1','fermentum 
risus, at fringilla purus');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('37','blandit','Vivamus@eu.edu','ZBT66XYU7ZX','F','1','ornare 
tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam 
tincidunt, nunc ac mattis ornare, lectus ante dictum');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('38','nunc.','pede@volutpatnuncsit.org','IZZ16DNV7RU','M','1','convallis
 est, vitae sodales nisi magna sed dui. Fusce');INSERT INTO `member`
 (`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('39','penatibus','mollis.vitae@Nulla.edu','EQC05DYN9RV','M','0','pede, 
malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer 
mauris id sapien. Cras dolor dolor, tempus non, lacinia at,');INSERT
 INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('40','Etiam','Sed.auctor@turpisvitae.edu','JOR88BBZ4FE','F','1','eu 
dui. Cum sociis natoque');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('41','magna.','turpis@purusNullam.ca','KNZ02MMV6SF','F','1','Integer');INSERT
 INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('42','Fusce','ac@faucibusMorbivehicula.edu','ZOM69QUK5UU','F','0','pede,
 ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum 
eget, volutpat ornare, facilisis eget,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('43','Cras','leo@purussapiengravida.com','BKJ18LFU7LU','F','0','torquent
 per conubia nostra, per inceptos hymenaeos. Mauris ut');INSERT INTO
 `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('44','vestibulum.','blandit@dolor.com','CVG30OOY5XA','M','1','a 
ultricies adipiscing,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('45','parturient','ridiculus.mus@insodales.com','RSY92EPI2BL','F','1','iaculis
 odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec
 nibh. Quisque nonummy');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('46','egestas','id.erat@Classaptent.edu','LNE31NZO3MG','F','1','libero 
at auctor ullamcorper,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('47','tempor','venenatis.vel.faucibus@sodaleseliterat.edu','UCW89GXK5XV','F','1','lobortis
 risus. In');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('48','diam','dictum@orciquislectus.edu','YZE25YWI7YD','M','0','amet,');INSERT
 INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('49','accumsan','aliquet.vel.vulputate@acmi.ca','OXD75GOM8OK','M','0','malesuada
 fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed 
malesuada augue ut');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('50','magna','faucibus.orci@nibhsit.ca','GHW03TFX5EM','F','1','sapien, 
gravida non, sollicitudin a, malesuada');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('51','Praesent','sit.amet.orci@placeratvelit.ca','FDO68CIG5EM','M','1','eget
 lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum');INSERT
 INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('52','Integer','consequat.dolor.vitae@pedeet.org','WFW87RJD0GI','F','0','Duis
 at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada 
id, erat. Etiam vestibulum massa rutrum magna. Cras');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('53','Cras','at@antelectus.org','KNF63XTR8IO','F','1','ac metus 
vitae velit egestas lacinia. Sed congue, elit');INSERT INTO `member`
 (`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('54','nulla.','cursus.et.eros@morbitristiquesenectus.edu','DXD18KKJ8CT','F','1','auctor
 velit. Aliquam nisl. Nulla eu neque pellentesque');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('55','luctus','Nulla@dui.ca','BRJ85ERM2WQ','F','1','ullamcorper 
eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, 
pharetra sed, hendrerit a,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('56','orci,','ligula@vel.edu','RPM38PTY0SA','M','1','risus. 
Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci
 tincidunt adipiscing. Mauris molestie');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('57','lorem','facilisis.lorem@fringillaest.com','QKD58IXE5ZV','F','1','scelerisque
 mollis. Phasellus libero mauris,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('58','arcu','euismod.in.dolor@parturient.ca','VTV19IWM7GC','F','1','Aliquam
 gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, 
imperdiet nec,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('59','orci','semper.Nam@Nullam.ca','MBF50ENF8NA','M','1','metus 
urna convallis erat,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('60','eget','cursus@euarcu.edu','MSX44NPT1PG','F','0','ornare. 
In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec 
egestas. Duis ac arcu. Nunc mauris.');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('61','vitae,','tortor@eumetusIn.org','MER08SEE9KR','M','1','at 
sem molestie');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('62','fringilla','risus.Nunc.ac@natoquepenatibuset.edu','DCY40HXY1KK','F','1','iaculis
 odio. Nam interdum enim non nisi. Aenean eget metus.');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('63','luctus','sociosqu.ad.litora@Integertinciduntaliquam.ca','MKC62VOG1SK','F','0','lacinia
 vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. 
Aliquam rutrum lorem ac risus. Morbi metus. Vivamus');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('64','eu,','tincidunt.tempus.risus@vitae.org','IFD49VRT8PG','F','0','magna.
 Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo 
hendrerit. Donec porttitor tellus non magna. Nam');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('65','sociis','purus.mauris@congueaaliquet.edu','YWA28TOW8FF','F','1','In
 nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit 
amet');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('66','tempor','tristique@commodo.edu','KPZ91KUU5ZS','F','1','posuere 
at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum 
placerat, augue. Sed molestie. Sed id risus quis diam');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('67','nunc','ullamcorper.magna@aliquetPhasellus.com','TDY83FRK1TV','M','0','magna.
 Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam 
laoreet, libero et tristique pellentesque, tellus');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('68','mauris,','malesuada.Integer@ultriciesligulaNullam.com','EOG42UNY5VR','M','0','at,
 egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et');INSERT 
INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('69','leo.','convallis@Vestibulum.com','TQB57QCN1JR','M','0','amet, 
consectetuer');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('70','vehicula','et.nunc@Duiselementumdui.org','RFB72FEH1MB','M','0','gravida
 molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras 
dictum ultricies');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('71','enim.','eget.metus.eu@Quisque.org','ZSU91KXC8MU','F','0','libero 
at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare');INSERT
 INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('72','vitae','ligula.elit.pretium@enimMaurisquis.org','PRG18YED0WD','M','0','et,
 euismod et,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('73','et','Lorem@orciUtsagittis.ca','AAH37ZWP1NF','M','0','magnis dis 
parturient montes, nascetur ridiculus mus.');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('74','Aliquam','aliquet.odio@faucibuslectusa.ca','MBA31AKB4EB','M','1','egestas
 rhoncus. Proin nisl sem, consequat nec, mollis');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('75','auctor','lorem@ipsumSuspendisse.edu','KMK01XVX3TK','F','0','Quisque
 fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh 
vulputate mauris sagittis placerat. Cras');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('76','semper','enim@ullamcorper.org','TVA92HVW0WH','M','1','dignissim 
pharetra. Nam ac nulla. In tincidunt congue');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('77','libero','tempus@Fuscediam.edu','WSW44AAS3RM','F','0','rutrum eu, 
ultrices sit amet, risus. Donec nibh enim, gravida');INSERT INTO 
`member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('78','imperdiet','Nullam@consequat.org','OLB25HXC2YZ','M','0','placerat
 velit. Quisque varius. Nam porttitor scelerisque neque.');INSERT 
INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('79','lorem','nec.enim@Nunc.org','LTB97IJT5BH','M','1','nisl. 
Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu 
nibh');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('80','molestie','non.massa@nequesed.org','NGY90IAH3PT','F','0','Donec 
elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu 
tempor erat neque non');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('81','mauris','mauris@eratSed.ca','KFL95XOE3DS','M','1','et 
magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna.
 Suspendisse tristique');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('82','Integer','quis.pede@facilisiSedneque.org','XVK78MIH5FS','M','0','lorem,
 auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris 
nulla. Integer');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('83','Nam','nunc@Proinvelarcu.com','NKW18MCQ7UO','M','1','vitae,
 erat. Vivamus nisi. Mauris nulla.');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('84','aliquet','ante.blandit@scelerisque.com','BNA40FZA5GN','M','1','vitae
 risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque
 imperdiet,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('85','non','Mauris.vestibulum.neque@Nam.ca','WUH24XXU7HW','F','1','urna.
 Vivamus molestie dapibus ligula. Aliquam');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('86','penatibus','Nam@Cum.ca','BQO82IHO9GL','M','0','nonummy ut,
 molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla 
facilisi.');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('87','Mauris','ipsum.dolor@commodo.ca','MFD87KGU9DV','M','0','venenatis
 a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
Etiam laoreet, libero');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('88','lobortis','dignissim.lacus.Aliquam@cursusNuncmauris.ca','RSM81CWI0SU','F','0','libero.
 Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet 
luctus vulputate, nisi sem');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('89','Phasellus','ridiculus.mus.Donec@et.org','STE48CVU2QL','M','1','est,
 mollis non, cursus non, egestas a,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('90','posuere','lectus@at.edu','LSX39UAC8NV','M','0','faucibus 
lectus, a sollicitudin orci sem');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('91','Etiam','id@diam.org','BWY11DPI0VU','M','0','quis arcu');INSERT
 INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('92','nec','Sed@urnaconvallis.org','YHY30BNE8DF','M','1','ornare, elit 
elit fermentum risus, at fringilla purus');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('93','fermentum','enim.Mauris.quis@interdum.ca','AMA79DOH7EG','F','1','vitae
 nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim.');INSERT
 INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES ('94','vitae','amet@ametdiameu.org','RIW45VQU5OV','F','0','id, 
erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis 
dolor.');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('95','lacinia','sollicitudin@luctuslobortis.org','MJD65FYM4LD','M','1','odio
 tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. 
Nullam velit dui,');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('96','mollis','est@pedeCrasvulputate.ca','UKM80ODO8RB','F','0','orci, 
consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi 
quis urna.');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('97','Fusce','lorem.semper@scelerisquemollis.com','HJZ65GTG0SA','F','1','Nullam
 enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo.
 Praesent luctus. Curabitur egestas nunc');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('98','odio.','nisi.Aenean.eget@nasceturridiculus.edu','ULV44KSA4BH','M','1','semper
 et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim 
lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus');INSERT 
INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('99','quam','et.magna.Praesent@faucibus.org','UPL33KKZ0NU','M','1','tincidunt
 vehicula risus. Nulla eget metus');INSERT INTO `member` 
(`idMember`,`pseudo`,`email`,`password`,`sex`,`isAdmin`,`description`) 
VALUES 
('100','dolor.','tincidunt.vehicula.risus@magna.com','BBG43YAQ3QK','M','1','Proin
 vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula 
consectetuer rhoncus. Nullam');


INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) 
VALUES ('1','mollis nec, cursus a, enim.','1271934352','flickr','34');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('2','egestas. Aliquam','1240104940','gmap','7');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('3','euismod urna. Nullam lobortis quam a felis 
ullamcorper','1211932860','gmap','20');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('4','semper 
cursus. Integer mollis. Integer','1284256111','youtube','25');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('5','venenatis lacus. Etiam bibendum fermentum metus. Aenean 
sed','1207675458','flickr','50');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('6','tellus lorem','1179446748','gmap','29');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('7','commodo auctor velit.','1128288775','youtube','13');INSERT 
INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('8','nisi nibh lacinia orci,','1221359687','flickr','5');INSERT 
INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('9','eleifend nec, malesuada ut, sem.','1042995545','youtube','10');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('10','Nam tempor diam dictum sapien. Aenean massa. Integer 
vitae','1271293827','gmap','44');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('11','a, 
malesuada id, erat. Etiam vestibulum massa 
rutrum','1176714480','flickr','22');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('12','Vivamus
 nisi. Mauris nulla. Integer urna.','1046079726','gmap','29');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('13','primis in faucibus orci luctus et ultrices posuere 
cubilia','1155926286','flickr','17');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('14','lectus 
ante dictum mi, ac mattis','1221221455','flickr','17');INSERT INTO 
`updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('15','vitae, sodales','1064149047','youtube','50');INSERT INTO 
`updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('16','Aliquam erat volutpat. Nulla dignissim. Maecenas ornare 
egestas','1130234946','flickr','32');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('17','et 
ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae 
erat','1030035080','youtube','50');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('18','lacus.','1116403276','flickr','24');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('19','vel, vulputate eu, odio. Phasellus at augue id ante 
dictum','1038228627','gmap','36');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('20','dis 
parturient montes, nascetur ridiculus 
mus.','1239207103','youtube','28');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('21','vel 
lectus. Cum sociis natoque penatibus et magnis dis 
parturient','1045366595','gmap','12');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('22','Mauris 
vel turpis. Aliquam adipiscing lobortis risus. In 
mi','1159206178','flickr','9');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('23','sit 
amet, consectetuer','1082580655','youtube','25');INSERT INTO 
`updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('24','dolor. Fusce feugiat. Lorem ipsum dolor sit amet, 
consectetuer','1149959559','flickr','17');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('25','dictum 
eu, eleifend nec, malesuada ut, sem. Nulla interdum. 
Curabitur','1054084351','flickr','18');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('26','in 
aliquet lobortis,','1062915057','flickr','14');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('27','lorem 
ut aliquam iaculis, lacus pede','1136096613','gmap','17');INSERT 
INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('28','dignissim lacus.','1142949149','youtube','18');INSERT INTO 
`updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('29','semper rutrum. Fusce dolor quam, elementum at, 
egestas','1062599512','youtube','48');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('30','Donec 
nibh enim, gravida sit amet, dapibus id, 
blandit','1217921286','gmap','39');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('31','Duis mi
 enim,','1152813483','youtube','25');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('32','amet, 
consectetuer adipiscing elit.','1204845506','gmap','43');INSERT INTO
 `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('33','velit justo nec ante. Maecenas','1163921825','gmap','21');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('34','ipsum','1096859717','youtube','18');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('35','lobortis. Class','1075192581','flickr','44');INSERT INTO 
`updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('36','tempus risus. Donec egestas.','1189867304','flickr','31');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('37','magnis dis','1201456115','gmap','15');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('38','libero. Integer in magna. 
Phasellus','1116549635','flickr','39');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('39','sed, 
sapien.','1141657815','youtube','22');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('40','habitant','1055995663','youtube','20');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('41','Suspendisse dui. Fusce diam','1207878546','youtube','20');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('42','mollis. Phasellus libero mauris, aliquam 
eu,','1230140692','youtube','16');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('43','aliquet magna a','1128996449','gmap','9');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('44','venenatis vel,','1033569463','flickr','12');INSERT INTO 
`updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('45','mus. Proin vel nisl.','1221371725','gmap','18');INSERT INTO 
`updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('46','gravida. Praesent eu nulla at sem 
molestie','1032332720','flickr','1');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('47','ac 
urna. Ut tincidunt vehicula risus.','1256314515','gmap','38');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('48','ipsum dolor sit amet,','1235459990','gmap','35');INSERT INTO
 `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('49','ipsum. Donec','1155828979','youtube','27');INSERT INTO 
`updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('50','aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus 
dapibus quam','1117574237','flickr','23');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('51','sem 
semper erat, in','1079984882','youtube','49');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('52','Morbi 
metus. Vivamus euismod','1083888331','flickr','3');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('53','erat. Sed','1260413150','gmap','18');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('54','odio a purus. Duis elementum, dui quis accumsan 
convallis,','1008722025','flickr','25');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('55','metus 
vitae velit egestas lacinia. Sed congue, elit 
sed','1180831715','youtube','35');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('56','nisi 
dictum augue malesuada','1076041787','youtube','6');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('57','varius et,','1047494214','gmap','28');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('58','purus, in molestie tortor nibh sit amet orci. Ut 
sagittis','1251372110','gmap','50');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('59','mollis.
 Duis sit amet diam eu dolor egestas rhoncus. 
Proin','1166010137','gmap','17');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('60','quam. 
Pellentesque habitant morbi tristique','1280560789','youtube','25');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('61','dolor elit, pellentesque','1065004428','gmap','2');INSERT 
INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('62','dictum eleifend, nunc risus varius orci, in consequat enim 
diam','1190833027','youtube','47');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('63','iaculis, lacus pede sagittis augue, eu 
tempor','1200562128','youtube','50');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('64','ante 
blandit viverra. Donec','1220328474','flickr','39');INSERT INTO 
`updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('65','ipsum primis in faucibus orci','1174424187','youtube','13');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('66','nisl elementum purus, accumsan','1055762051','gmap','29');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('67','massa. Suspendisse eleifend. Cras sed 
leo.','1123069005','youtube','26');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('68','Nunc','1246595100','youtube','19');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('69','enim, sit amet ornare lectus justo eu arcu. 
Morbi','1101951036','flickr','50');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('70','ultrices iaculis odio.','1176354086','youtube','19');INSERT 
INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('71','Suspendisse aliquet, sem ut cursus','1028530342','flickr','35');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('72','pede blandit congue. In scelerisque scelerisque dui. Suspendisse
 ac','1055427980','youtube','44');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('73','Suspendisse sed dolor.','1010899719','gmap','15');INSERT INTO
 `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('74','arcu. Morbi sit amet massa. Quisque porttitor 
eros','1098982734','flickr','46');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('75','Etiam 
imperdiet dictum magna.','1149795649','flickr','15');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('76','tellus sem','1168105466','youtube','24');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('77','augue. Sed molestie. Sed id risus quis 
diam','1028308732','flickr','34');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('78','sodales. Mauris blandit enim','1158983637','flickr','5');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('79','tincidunt adipiscing. Mauris','1104243031','youtube','28');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('80','Proin vel arcu eu odio tristique pharetra. Quisque 
ac','1123124313','youtube','3');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('81','mauris.
 Morbi non sapien molestie orci tincidunt 
adipiscing.','1281663543','youtube','44');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('82','odio. 
Phasellus at augue id ante dictum cursus. Nunc 
mauris','1286835613','flickr','1');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('83','Phasellus dapibus','1237605575','flickr','20');INSERT INTO 
`updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('84','senectus et netus et malesuada fames ac turpis egestas. 
Fusce','1220495646','flickr','4');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('85','tellus 
justo sit amet nulla. Donec non','1191381020','flickr','8');INSERT 
INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('86','odio sagittis semper. Nam tempor diam dictum sapien. Aenean 
massa.','1175790821','youtube','2');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('87','sed 
libero. Proin sed turpis nec','1158052793','gmap','27');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('88','lorem vitae','1251501587','youtube','23');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('89','mauris ut mi. Duis risus odio, auctor 
vitae,','1275343999','youtube','37');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('90','ac 
mattis velit justo nec ante. Maecenas mi 
felis,','1167569446','gmap','14');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('91','nibh. 
Quisque nonummy ipsum non arcu. Vivamus sit 
amet','1188517664','gmap','17');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('92','cursus','1257720223','youtube','47');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('93','aliquet magna a neque. Nullam','1219630602','youtube','13');INSERT INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('94','dolor','1103492386','youtube','43');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('95','risus varius orci, in consequat enim diam vel 
arcu.','1155365260','gmap','22');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('96','Curae; 
Phasellus ornare. Fusce mollis. Duis','1271026207','flickr','35');INSERT
 INTO `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES
 ('97','Curabitur dictum. Phasellus in felis. Nulla 
tempor','1150546000','youtube','21');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('98','luctus.
 Curabitur','1075150704','youtube','4');INSERT INTO `updates` 
(`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES ('99','morbi 
tristique senectus et netus','1112032071','flickr','44');INSERT INTO
 `updates` (`idUpdate`,`content`,`date`,`service`,`idMember`) VALUES 
('100','feugiat non, lobortis quis, pede.','1235128318','youtube','33');
