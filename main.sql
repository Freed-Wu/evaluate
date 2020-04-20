create database evaluate;
use evaluate;

create table student(
	class varchar(4) not null,
	id char(12) not null,
	name varchar(16) not null
);
load data infile '/home/wzy/Documents/evaluate/csv/student.csv'
into table student
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';

create table activity(
	ord int not null,
	class varchar(10) not null,
	id char(12) not null,
	name varchar(16) not null,
	江苏最美退役军人 varchar(16),
	海文考研讲座 varchar(16),
	主题合唱 varchar(16),
	关工委工作动员大会 varchar(16),
	合唱比赛 varchar(16),
	海归青年说我和我的祖国 varchar(16),
	陈钱教授讲座 varchar(16),
	英语进阶讲座 varchar(16),
	英美留学讲座 varchar(16),
	先进班集体标兵答辩 varchar(16),
	建国成就展 varchar(16),
	学霸开讲 varchar(16),
	就业规划讲座 varchar(16),
	配音比赛观众 varchar(16),
	摩西留学讲座 varchar(16),
	薪火大讲堂 varchar(16),
	海归青年说我和我的祖国2 varchar(16),
	凝墨讲堂 varchar(16),
	文都考研 varchar(16),
	名家讲坛 varchar(16),
	预防艾滋病专题讲座 varchar(16),
	辩论赛决赛 varchar(16),
	金兰奖红色舞台剧 varchar(16),
	主题电影放映 varchar(16),
	vlog大赛线下评审会 varchar(16),
	文思“权”涌活动 varchar(16),
	海归青年说我和我的祖国3 varchar(16),
	全校跨年晚会 varchar(16),
	number int not null,
	number_max int not null,
	_name varchar(16) not null,
	_id char(12) not null,
	_class varchar(10) not null,
	_ord int not null
);
load data infile '/home/wzy/Documents/evaluate/csv/2020/大三上学期活动统计总公示（8月-1月）.csv'
into table activity
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';

create table exercise(
	ord int not null,
	class varchar(10) not null,
	id char(12) not null,
	name varchar(16) not null,
	gender varchar(4) not null,
	minus_score int not null,
	代交或被代交次数 varchar(8) not null,
	未写名字或未贴照片次数 varchar(8) not null,
	_9_16 varchar(8) not null,
	_9_17 varchar(8) not null,
	_9_18 varchar(8) not null,
	_9_19 varchar(8) not null,
	_9_2 varchar(8) not null,
	_9_23 varchar(8) not null,
	_9_24 varchar(8) not null,
	_9_25 varchar(8) not null,
	_9_26 varchar(8) not null,
	_9_27 varchar(8) not null,
	_10_8 varchar(8) not null,
	_10_9 varchar(8) not null,
	_10_1 varchar(8) not null,
	_10_11 varchar(8) not null,
	_10_14 varchar(8) not null,
	_10_15 varchar(8) not null,
	_10_16 varchar(8) not null,
	_10_17 varchar(8) not null,
	_10_18 varchar(8) not null,
	_10_21 varchar(8) not null,
	_10_22 varchar(8) not null,
	_10_23 varchar(8) not null,
	_10_24 varchar(8) not null,
	_10_25 varchar(8) not null,
	_10_28 varchar(8) not null,
	_10_29 varchar(8) not null,
	_10_3 varchar(8) not null,
	_10_31 varchar(8) not null,
	_11_1 varchar(8) not null,
	_11_4 varchar(8) not null,
	_11_5 varchar(8) not null,
	_11_6 varchar(8) not null,
	_11_7 varchar(8) not null,
	_11_8 varchar(8) not null,
	_11_12 varchar(8) not null,
	_11_13 varchar(8) not null,
	_11_14 varchar(8) not null,
	_11_15 varchar(8) not null,
	_11_19 varchar(8) not null,
	_11_2 varchar(8) not null,
	_11_21 varchar(8) not null,
	_11_22 varchar(8) not null,
	_11_26 varchar(8) not null,
	_11_28 varchar(8) not null,
	_11_29 varchar(8) not null,
	_12_3 varchar(8) not null,
	_12_4 varchar(8) not null,
	_12_5 varchar(8) not null,
	_12_6 varchar(8) not null,
	_12_9 varchar(8) not null,
	_12_1 varchar(8) not null,
	_12_11 varchar(8) not null,
	_12_12 varchar(8) not null,
	_12_13 varchar(8) not null,
	_12_16 varchar(8) not null,
	_12_17 varchar(8) not null,
	_12_19 varchar(8) not null,
	_12_2 varchar(8) not null,
	_name varchar(16) not null,
	_id char(12) not null,
	_class varchar(10) not null,
	_ord int not null
);
load data infile '/home/wzy/Documents/evaluate/csv/2020/大三上学期操卡检查总公示（第5周-第18周）.csv'
into table exercise
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';

create table stay_dormitory(
	ord int not null,
	class varchar(10) not null,
	id char(12) not null,
	name varchar(16) not null,
	gender varchar(4) not null,
	第6周 varchar(1),
	第8周 varchar(1),
	第11周 varchar(1),
	minus_score int not null
);
load data infile '/home/wzy/Documents/evaluate/csv/2020/大三上学期查留寝结果总公示（第6、8、11周）.csv'
into table stay_dormitory
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';

create table health_dormitory(
	ord int not null,
	gender_dormitory varchar(8) not null,
	id_dormitory varchar(16) not null,
	number varchar(2) not null,
	minus_number varchar(2) not null,
	第5周 char(4),
	第8周 char(4),
	第9周 char(4),
	第10周 char(4),
	第11周 char(4),
	第12周 char(4),
	第13周 char(4),
	第14周 char(4),
	第15周 char(4),
	第16周 char(4),
	第17周 char(4),
	result FLOAT not null,
	score int not null,
	_id_dormitory varchar(16) not null,
	_gender_dormitory varchar(8) not null,
	_ord int not null
);
load data infile '/home/wzy/Documents/evaluate/csv/2020/大三上学期卫生检查总公示（第5周-第17周）.csv'
into table health_dormitory
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';

create table dormitory(
	name varchar(16) not null,
	gender varchar(4) not null,
	class varchar(10) not null,
	id varchar(12) not null,
	id_dormitory varchar(30) not null,
	number varchar(16) not null,
	type varchar(16)
);
load data infile '/home/wzy/Documents/evaluate/csv/dormitory10.csv'
into table dormitory
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/dormitory11.csv'
into table dormitory
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/dormitory12.csv'
into table dormitory
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';

create table science(
	id char(12) not null,
	award_name varchar(100) not null,
	award_grade varchar(16) not null,
	grade varchar(16) not null,
	score int not null
);
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171010E0303.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171010E0606.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1013.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1018.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1024.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1030.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1039.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1040.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1101.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1102.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1108.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1110.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1111.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1113.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1115.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1116.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1118.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1119.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1120.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1121.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1123.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1125.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1132.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1137.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1138.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1205.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1206.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1208.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1209.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1213.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1214.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1215.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1216.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1223.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1225.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1226.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1229.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1233.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1235.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171040G1022.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/9171160D0430.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/916101630117.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_science/917102610102.csv'
into table science
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';

create table development(
	id char(12) not null,
	award_name varchar(100) not null,
	award_grade varchar(16) not null,
	grade varchar(16) not null,
	score int not null
);
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171010E0303.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171010E0606.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1013.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1018.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1024.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1030.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1039.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1040.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1101.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1102.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1108.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1110.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1111.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1113.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1115.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1116.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1118.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1119.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1120.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1121.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1123.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1125.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1132.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1137.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1138.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1205.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1206.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1208.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1209.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1213.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1214.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1215.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1216.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1223.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1225.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1226.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1229.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1233.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1235.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171040G1022.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/9171160D0430.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/916101630117.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
load data infile '/home/wzy/Documents/evaluate/csv/2020_development/917102610102.csv'
into table development
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';

insert into development
select student.id, 'activity', 'no', 'no', least(number, number_max) * 4
from student join activity
on student.id = activity.id;

insert into development
select student.id, 'exercise', 'no', 'no', - minus_score
from student join exercise
on student.id = exercise.id;

insert into development
select student.id, 'stay_dormitory', 'no', 'no', - minus_score
from student join stay_dormitory
on student.id = stay_dormitory.id;

create table student_dormitory(
	id char(12) not null,
	name varchar(16) not null,
	id_dormitory varchar(16) not null
);
insert into student_dormitory
select student.id, student.name, id_dormitory
from student join dormitory
on student.name = dormitory.name;
insert into development
select student_dormitory.id, 'health_dormitory', 'no', 'no', score
from student_dormitory join health_dormitory
on student_dormitory.id_dormitory = health_dormitory.id_dormitory;

create table development_score(
	id char(12) not null,
	score int not null
);
insert into development_score
select distinct id, greatest(least(sum(score), 100), 0)
from development
group by id;

create table science_score(
	id char(12) not null,
	score int not null
);
insert into science_score
select distinct id, greatest(least(sum(score), 100), 0)
from science
group by id;

create table score(
	id char(12) not null,
	award_name varchar(100) not null,
	award_grade varchar(16) not null,
	grade varchar(16) not null,
	score int not null,
	total_score int not null
);
insert into score
select distinct development.*, development_score.score
from development join development_score
on development.id = development_score.id
order by development.id;
insert into score
select distinct science.*, science_score.score
from science join science_score
on science.id = science_score.id
order by science.id;
select class, name, score.*
into outfile 'score.tsv'
from score join student
on score.id = student.id
order by class, student.id;
system sudo chown wzy:wzy /var/lib/mysql/evaluate/score.tsv;
system sudo mv /var/lib/mysql/evaluate/score.tsv .;

