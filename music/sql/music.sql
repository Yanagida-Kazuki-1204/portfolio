set names utf8;
set foreign_key_checks=0;

drop database if exists music;
create database if not exists music;

use music;

create table user_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) unique not null comment "ユーザーID",
password varchar(16) not null comment "パスワード",
family_name varchar(32) not null comment "姓",
first_name varchar(32) not null comment "名",
family_name_kana varchar(32) not null comment "姓かな",
first_name_kana varchar(32) not null comment "名かな",
sex tinyint not null default 0 comment "姓別",
email varchar(32) not null comment "メールアドレス",
status tinyint not null default 0 comment "ステータス",
logined tinyint not null default 0 comment "ログインフラグ",
regist_date datetime not null comment "登録日",
update_date datetime not null comment "更新日"
)
default charset=utf8
comment="会員情報テーブル"
;
insert into user_info values
(1,"guest","guest","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now()),
(2,"guest2","guest2","インターノウス","ゲストユーザー2","いんたーのうす","げすとゆーざー2",0,"guest2@gmail.com",0,0,now(),now()),
(3,"guest3","guest3","インターノウス","ゲストユーザー3","いんたーのうす","げすとゆーざー3",0,"guest3@gmail.com",0,0,now(),now()),
(4,"guest4","guest4","インターノウス","ゲストユーザー4","いんたーのうす","げすとゆーざー4",0,"guest4@gmail.com",0,0,now(),now()),
(5,"guest5","guest5","インターノウス","ゲストユーザー5","いんたーのうす","げすとゆーざー5",0,"guest5@gmail.com",0,0,now(),now()),
(6,"guest6","guest6","インターノウス","ゲストユーザー6","いんたーのうす","げすとゆーざー6",0,"guest6@gmail.com",0,0,now(),now()),
(7,"guest7","guest7","インターノウス","ゲストユーザー7","いんたーのうす","げすとゆーざー7",0,"guest7@gmail.com",0,0,now(),now()),
(8,"guest8","guest8","インターノウス","ゲストユーザー8","いんたーのうす","げすとゆーざー8",0,"guest8@gmail.com",0,0,now(),now()),
(9,"guest9","guest9","インターノウス","ゲストユーザー9","いんたーのうす","げすとゆーざー9",0,"guest9@gmail.com",0,0,now(),now()),
(10,"guest10","guest10","インターノウス","ゲストユーザー10","いんたーのうす","げすとゆーざー10",0,"guest10@gmail.com",0,0,now(),now()),
(11,"guest11","guest11","インターノウス","ゲストユーザー11","いんたーのうす","げすとゆーざー11",0,"guest11@gmail.com",0,0,now(),now()),
(12,"guest12","guest12","インターノウス","ゲストユーザー12","いんたーのうす","げすとゆーざー12",0,"guest12@gmail.com",0,0,now(),now()),
(13,"admin","admin","インターノウス","管理者ユーザー","いんたーのうす","かんりしゃゆーざー",0,"admin@gmail.com",1,0,now(),now()),
(14,"admin2","admin2","インターノウス","管理者ユーザー2","いんたーのうす","かんりしゃゆーざー2",0,"admin2@gmail.com",1,0,now(),now()),
(15,"admin3","admin3","インターノウス","管理者ユーザー3","いんたーのうす","かんりしゃゆーざー3",0,"admin3@gmail.com",1,0,now(),now()),
(16,"admin4","admin4","インターノウス","管理者ユーザー4","いんたーのうす","かんりしゃゆーざー4",0,"admin4@gmail.com",1,0,now(),now()),
(17,"admin5","admin5","インターノウス","管理者ユーザー5","いんたーのうす","かんりしゃゆーざー5",0,"admin5@gmail.com",1,0,now(),now()),
(18,"admin6","admin6","インターノウス","管理者ユーザー6","いんたーのうす","かんりしゃゆーざー6",0,"admin6@gmail.com",1,0,now(),now()),
(19,"admin7","admin7","インターノウス","管理者ユーザー7","いんたーのうす","かんりしゃゆーざー7",0,"admin7@gmail.com",1,0,now(),now()),
(20,"admin8","admin8","インターノウス","管理者ユーザー8","いんたーのうす","かんりしゃゆーざー8",0,"admin8@gmail.com",1,0,now(),now()),
(21,"admin9","admin9","インターノウス","管理者ユーザー9","いんたーのうす","かんりしゃゆーざー9",0,"admin9@gmail.com",1,0,now(),now()),
(22,"admin10","admin10","インターノウス","管理者ユーザー10","いんたーのうす","かんりしゃゆーざー10",0,"admin10@gmail.com",1,0,now(),now()),
(23,"admin11","admin11","インターノウス","管理者ユーザー11","いんたーのうす","かんりしゃゆーざー11",0,"admin11@gmail.com",1,0,now(),now()),
(24,"admin12","admin12","インターノウス","管理者ユーザー12","いんたーのうす","かんりしゃゆーざー12",0,"admin12@gmail.com",1,0,now(),now());

create table product_info(
id int primary key not null auto_increment comment "ID",
product_id int unique not null comment "商品ID",
product_name varchar(100) unique not null comment "商品名",
product_name_kana varchar(100) not null comment "商品名かな",
product_description varchar(255) not null comment "商品詳細",
category_id int not null not null comment "カテゴリID",
price int comment "価格",
image_file_path varchar(100) comment "画像ファイルパス",
image_file_name varchar(50) comment "画像ファイル名",
release_date datetime not null comment "発売年月",
release_company varchar(50) comment "発売会社",
status tinyint not null default 0 comment "ステータス",
regist_date datetime not null comment "登録日",
update_date datetime comment "更新日",
foreign key(category_id) references m_category(category_id)
)
default charset=utf8
comment="商品情報テーブル"
;
insert into product_info values
( 1, 1,"楽譜・POPS１","がくふ１","楽譜・POPS１の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 2, 2,"楽譜・POPS２","がくふ２","楽譜・POPS２の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 3, 3,"楽譜・POPS３","がくふ３","楽譜・POPS３の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 4, 4,"楽譜・POPS４","がくふ４","楽譜・POPS４の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 5, 5,"楽譜・POPS５","がくふ５","楽譜・POPS５の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 6, 6,"楽譜・POPS６","がくふ６","楽譜・POPS６の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 7, 7,"楽譜・POPS７","がくふ７","楽譜・POPS７の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 8, 8,"楽譜・POPS８","がくふ８","楽譜・POPS８の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 9, 9,"楽譜・POPS９","がくふ９","楽譜・POPS９の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 10, 10,"楽譜・POPS１０","がくふ１０","楽譜・POPS１０の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 11, 11,"楽譜・POPS１１","がくふ１１","楽譜・POPS１１の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 12, 12,"楽譜・POPS１２","がくふ１２","楽譜・POPS１２の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 13, 13,"楽譜・POPS１３","がくふ１３","楽譜・POPS１３の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 14, 14,"楽譜・POPS１４","がくふ１４","楽譜・POPS１４の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 15, 15,"楽譜・POPS１５","がくふ１５","楽譜・POPS１５の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 16, 16,"楽譜・POPS１６","がくふ１６","楽譜・POPS１６の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 17, 17,"楽譜・POPS１７","がくふ１７","楽譜・POPS１７の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 18, 18,"楽譜・POPS１８","がくふ１８","楽譜・POPS１８の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 19, 19,"楽譜・POPS１９","がくふ１９","楽譜・POPS１９の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 20, 20,"楽譜・POPS２０","がくふ２０","楽譜・POPS２０の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 21, 21,"楽譜・POPS２１","がくふ２１","楽譜・POPS２１の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 22, 22,"楽譜・POPS２２","がくふ２２","楽譜・POPS２２の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 23, 23,"楽譜・POPS２３","がくふ２３","楽譜・POPS２３の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 24, 24,"楽譜・POPS２４","がくふ２４","楽譜・POPS２４の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 25, 25,"楽譜・POPS２５","がくふ２５","楽譜・POPS２５の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 26, 26,"楽譜・POPS２６","がくふ２６","楽譜・POPS２６の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 27, 27,"楽譜・POPS２７","がくふ２７","楽譜・POPS２７の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 28,28,"楽譜・CLASSIC２８","がくふ２８","楽譜・CLASSIC２８の商品詳細",3,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 29,29,"楽譜・CLASSIC２９","がくふ２９","楽譜・CLASSIC２９の商品詳細",3,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 30,30,"楽譜・CLASSIC３０","がくふ３０","楽譜・CLASSIC３０の商品詳細",3,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 31,31,"楽譜・CLASSIC３１","がくふ３１","楽譜・CLASSIC３１の商品詳細",3,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 32,32,"楽譜・CLASSIC３２","がくふ３２","楽譜・CLASSIC３２の商品詳細",3,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 33,33,"楽譜・CLASSIC３３","がくふ３３","楽譜・CLASSIC３３の商品詳細",3,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 34,34,"楽譜・CLASSIC３４","がくふ３４","楽譜・CLASSIC３４の商品詳細",3,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 35,35,"楽譜・CLASSIC３５","がくふ３５","楽譜・CLASSIC３５の商品詳細",3,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 36,36,"楽譜・CLASSIC３６","がくふ３６","楽譜・CLASSIC３６の商品詳細",3,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 37,37,"楽譜・CLASSIC３７","がくふ３７","楽譜・CLASSIC３７の商品詳細",3,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 38,38,"楽譜・CLASSIC３８","がくふ３８","楽譜・CLASSIC３８の商品詳細",3,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 39,39,"楽譜・CLASSIC３９","がくふ３９","楽譜・CLASSIC３９の商品詳細",3,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 40,40,"楽譜・CLASSIC４０","がくふ４０","楽譜・CLASSIC４０の商品詳細",3,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 41,41,"楽譜・CLASSIC４１","がくふ４１","楽譜・CLASSIC４１の商品詳細",3,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 42,42,"楽譜・CLASSIC４２","がくふ４２","楽譜・CLASSIC４２の商品詳細",3,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 43,43,"楽譜・CLASSIC４３","がくふ４３","楽譜・CLASSIC４３の商品詳細",3,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 44,44,"楽譜・CLASSIC４４","がくふ４４","楽譜・CLASSIC４４の商品詳細",3,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 45,45,"楽譜・CLASSIC４５","がくふ４５","楽譜・CLASSIC４５の商品詳細",3,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 46,46,"楽譜・CLASSIC４６","がくふ４６","楽譜・CLASSIC４６の商品詳細",3,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 47,47,"楽譜・CLASSIC４７","がくふ４７","楽譜・CLASSIC４７の商品詳細",3,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 48,48,"楽譜・CLASSIC４８","がくふ４８","楽譜・CLASSIC４８の商品詳細",3,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 49,49,"楽譜・CLASSIC４９","がくふ４９","楽譜・CLASSIC４９の商品詳細",3,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 50,50,"楽譜・CLASSIC５０","がくふ５０","楽譜・CLASSIC５０の商品詳細",3,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 51,51,"楽譜・CLASSIC５１","がくふ５１","楽譜・CLASSIC５１の商品詳細",3,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 52,52,"楽譜・CLASSIC５２","がくふ５２","楽譜・CLASSIC５２の商品詳細",3,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 53,53,"楽譜・CLASSIC５３","がくふ５３","楽譜・CLASSIC５３の商品詳細",3,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 54,54,"楽譜・CLASSIC５４","がくふ５４","楽譜・CLASSIC５４の商品詳細",3,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 55,55,"楽譜・JAZZ５５","がくふ５５","楽譜・JAZZ５５の商品詳細",4,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 56,56,"楽譜・JAZZ５６","がくふ５６","楽譜・JAZZ５６の商品詳細",4,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 57,57,"楽譜・JAZZ５７","がくふ５７","楽譜・JAZZ５７の商品詳細",4,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 58,58,"楽譜・JAZZ５８","がくふ５８","楽譜・JAZZ５８の商品詳細",4,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 59,59,"楽譜・JAZZ５９","がくふ５９","楽譜・JAZZ５９の商品詳細",4,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 60,60,"楽譜・JAZZ６０","がくふ６０","楽譜・JAZZ６０の商品詳細",4,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 61,61,"楽譜・JAZZ６１","がくふ６１","楽譜・JAZZ６１の商品詳細",4,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 62,62,"楽譜・JAZZ６２","がくふ６２","楽譜・JAZZ６２の商品詳細",4,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 63,63,"楽譜・JAZZ６３","がくふ６３","楽譜・JAZZ６３の商品詳細",4,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 64,64,"楽譜・JAZZ６４","がくふ６４","楽譜・JAZZ６４の商品詳細",4,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 65,65,"楽譜・JAZZ６５","がくふ６５","楽譜・JAZZ６５の商品詳細",4,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 66,66,"楽譜・JAZZ６６","がくふ６６","楽譜・JAZZ６６の商品詳細",4,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 67,67,"楽譜・JAZZ６７","がくふ６７","楽譜・JAZZ６７の商品詳細",4,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 68,68,"楽譜・JAZZ６８","がくふ６８","楽譜・JAZZ６８の商品詳細",4,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 69,69,"楽譜・JAZZ６９","がくふ６９","楽譜・JAZZ６９の商品詳細",4,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 70,70,"楽譜・JAZZ７０","がくふ７０","楽譜・JAZZ７０の商品詳細",4,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 71,71,"楽譜・JAZZ７１","がくふ７１","楽譜・JAZZ７１の商品詳細",4,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 72,72,"楽譜・JAZZ７２","がくふ７２","楽譜・JAZZ７２の商品詳細",4,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 73,73,"楽譜・JAZZ７３","がくふ７３","楽譜・JAZZ７３の商品詳細",4,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 74,74,"楽譜・JAZZ７４","がくふ７４","楽譜・JAZZ７４の商品詳細",4,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 75,75,"楽譜・JAZZ７５","がくふ７５","楽譜・JAZZ７５の商品詳細",4,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 76,76,"楽譜・JAZZ７６","がくふ７６","楽譜・JAZZ７６の商品詳細",4,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 77,77,"楽譜・JAZZ７７","がくふ７７","楽譜・JAZZ７７の商品詳細",4,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 78,78,"楽譜・JAZZ７８","がくふ７８","楽譜・JAZZ７８の商品詳細",4,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 79,79,"楽譜・JAZZ７９","がくふ７９","楽譜・JAZZ７９の商品詳細",4,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 80,80,"楽譜・JAZZ８０","がくふ８０","楽譜・JAZZ８０の商品詳細",4,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 81,81,"楽譜・JAZZ８１","がくふ８１","楽譜・JAZZ８１の商品詳細",4,300,"./images","sample.jpg",now(),"発売会社",0,now(),now());

create table cart_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
temp_user_id varchar(16) comment "仮ユーザーID",
product_id int not null comment "商品ID",
product_count int not null comment "個数",
price int not null comment "金額",
regist_date datetime not null comment "登録日",
update_date datetime comment "更新日"
)
default charset=utf8
comment="カート情報テーブル"
;

create table purchase_history_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
product_id int not null comment "商品ID",
product_count int not null comment "個数",
price int not null comment "金額",
destination_id int not null comment "宛先情報ID",
regist_date datetime not null comment "登録日",
update_date datetime not null comment "更新日",
foreign key(user_id) references user_info(user_id),
foreign key(product_id) references product_info(product_id)
)
default charset=utf8
comment="購入履歴情報テーブル"
;

create table destination_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
family_name varchar(32) not null comment "姓",
first_name varchar(32) not null comment "名",
family_name_kana varchar(32) not null comment "姓かな",
first_name_kana varchar(32) not null comment "名かな",
email varchar(32) not null comment "メールアドレス",
tel_number varchar(13) not null comment "電話番号",
user_address varchar(50) not null comment "住所",
regist_date datetime not null comment "登録日",
update_date datetime not null comment "更新日"
)
default charset=utf8
comment="宛先情報テーブル"
;

create table review_info(
id int primary key not null auto_increment comment "ID",
title varchar(20) not null comment "タイトル",
star int not null comment "５段階評価",
comments varchar(100) not null comment "コメント"
)
default charset=utf8
comment="レビュー情報テーブル"
;

insert into review_info values
(1,"お買い得",3,"とてもいい買い物をしました。");




insert into destination_info values
(1,"guest","インターノウス","テストユーザー","いんたーのうす","てすとゆーざー","guest@internous.co.jp","080-1234-5678","東京都千代田区三番町１ー１　ＫＹ三番町ビル１Ｆ",now(),"0000-00-00 00:00:00");

create table m_category(
id int primary key not null comment "ID",
category_id int not null unique comment "カテゴリID",
category_name varchar(20) not null unique comment "カテゴリ名",
category_description varchar(100) comment "カテゴリ詳細",
insert_date datetime not null comment "登録日",
update_date datetime comment "更新日"
)
default charset=utf8
comment="カテゴリマスタテーブル"
;
insert into m_category values
(1,1,"カテゴリー","POPS・CLASSIC・JAZZ全てのカテゴリーが対象となります",now(), null),
(2,2,"POPS","POPSに関するカテゴリーが対象となります",now(),null),
(3,3,"CLASSIC","CLASSICに関するカテゴリーが対象となります",now(),null),
(4,4,"JAZZ","JAZZに関するカテゴリーが対象となります",now(),null);