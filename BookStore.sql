#图书类别表
CREATE TABLE booktype(
	bookTypeId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	parentId INT NOT NULL,
	bookTypeName VARCHAR(20) NOT NULL,
	context VARCHAR(40),
	isDelete INT NOT NULL
);
SELECT * FROM booktype
INSERT INTO booktype(parentId,bookTypeName,context,isDelete) VALUES (0,'小说','它是通过塑造人物、叙述故事',1);
INSERT INTO booktype(parentId,bookTypeName,context,isDelete) VALUES (0,'文学','形象化地反映客观现实的艺术',1);
INSERT INTO booktype(parentId,bookTypeName,context,isDelete) VALUES (1,'中国当代小说','50年代后期文学史著作',1);
INSERT INTO booktype(parentId,bookTypeName,context,isDelete) VALUES (1,'外国小说','中国文学以外的世界各国文学',1);
INSERT INTO booktype(parentId,bookTypeName,context,isDelete) VALUES (2,'诗歌词曲','记载了人们的历史活动',1);
INSERT INTO bookType(parentId,bookTypeName,context,isDelete) VALUES (3,'诗歌词曲','记载了人们的历史活动',1);

#图书基本信息表
CREATE TABLE bookinfo(
	bookId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	bookName VARCHAR(20) NOT NULL,
	booktypeId INT NOT NULL,
	author VARCHAR(20) NOT NULL,
	pbName VARCHAR(20) NOT NULL,
	context VARCHAR(200) NOT NULL,
	smallImg VARCHAR(20) NOT NULL,
	bigImg VARCHAR(20) NOT NULL,
	price NUMERIC NOT NULL,
	pbdate DATE NOT NULL,
	hyprice NUMERIC NOT NULL,
	bookStates INT NOT NULL, #库存量
	sjdate	DATE,
	num INT NOT NULL,
	saleCount INT NOT NULL
);
SELECT * FROM bookinfo;
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					 smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('白鹿原',3,'陈忠实','北京出版社出版集团','白嘉轩后来引以为豪壮的是一生里娶过七房女人',
					'bailuyuan.jpg','bailuyuan.jpg',36.0,'2008-05-01',23.9,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('藏海花',3,'南派三叔','北京联合出版公司','吴邪五年的平静生活，因金万堂的突然造访而被打断。',
					'zhanghaihua.jpg','zhanghaihua.jpg',32.0,'2012-08-01',22.6,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('活着',3,'余华','作家出版社','《活着》是一篇读起来让人感到沉重的小说',
					'huozhe.jpg','huozhe.jpg',15.0,'2010-11-01',8.3,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('狼图腾',3,'姜戎','长江文艺出版社 ','《狼图腾》由几十个有机连贯的“狼故事”一气呵成',
					'langtuteng.jpg','langtuteng.jpg',32.0,'2004-04-01',21.2,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('最美的时光',3,'桐华','湖南文艺出版社','全新演绎最唯美浪漫、纠结虐心的都市爱情小说',
					'zuimeideshiguang.jpg','zuimeideshiguang.jpg',32.0,'2012-08-01',19.8,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('北京青年（独家定制版',3,'常琳','中国华侨出版社','一个有关成长、改变和寻找自我的故事。',
					'beijingqingnian.jpg','beijingqingnian.jpg',48.0,'2012-08-01',31.9,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('穆斯林的葬礼',3,'霍达','北京十月文艺出版社','一个穆斯林家族，六十年间的兴衰，三代人命运的沉浮',
					'musilindezangli.jpg','musilindezangli.jpg',36.0,'2007-08-01',24.0,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('无尾狗',3,'阿丁','吉林出版集团','一个城镇居民几十年的活之生存、生之尊严。',
					'wuweigou.jpg','wuweigou.jpg',32.8,'2012-07-01',21.6,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('许三观卖血记',3,'余华 ',' 作家出版社','包含了20世纪中国社会的集体悲剧',
					'xsguanmaixueji.jpg','xsguanmaixueji.jpg',19.0,'2012-07-01',10.5,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('沧浪之水',3,'阎真','人民文学出版社','这是一部令人惊骇的小说，有一种道破天机的意味。',
					'canglangzhishu.jpg','canglangzhishu.jpg',33.0,'2008-05-01',23.1,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('不能承受的生命之轻',4,'米兰·昆德拉','上海译文出版社','　最沉重的负担压迫着我们，让我屈服于它',
					'bnchengssmzq.jpg','bnchengssmzq.jpg',29,'2010-08-01',18.9,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('自由',4,'〔美〕乔纳森·弗兰岑','南海出版公司','二十一世纪的第一个十年经历的梦想与失败。',
					'ziyou.jpg','ziyou.jpg',49.5,'2008-05-01',35.1,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,
					bookStates,sjdate,num,saleCount) 
			VALUES('追风筝的人',4,'（美）胡赛尼','上海人民出版社','12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足',
					'zhuifzderen.jpg','zhuifzderen.jpg',25.0,'2006-05-01',16.3,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,
					bookStates,sjdate,num,saleCount) 
			VALUES('达·芬奇密码',4,'（美）布朗','人民文学出版社','隐藏在列昂纳多·达·芬奇的艺术作品当中',
					'dfqimima.jpg','dfqimima.jpg',29.0,'2009-05-01',22.2,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('云图',4,'（英）大卫·米切尔','上海文艺出版社','入选“新千年最佳小说”入围布克奖、星云奖、克拉克奖决选',
					'yunhai.jpg','yunhai.jpg',33,'2010-01-01',23.8,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('重温最美古诗词',5,'于丹','北京联合出版公司','和于丹一起，重温最美古诗词，回归自在大人生。',
					'cwzuimeigsc.jpg','cwzuimeigsc.jpg',38,'2012-06-01',30.4,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('唐诗鉴赏辞典',5,'萧涤非，等','上海辞书出版社','以《唐诗鉴赏辞典》为代表的文学鉴赏辞典系列',
					'tsjsbaodian.jpg','tsjsbaodian.jpg',58,'1983-12-01',37.7,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('唐宋词鉴赏辞典',5,'周汝昌','上海辞书出版社','上海辞书出版社中国文学鉴赏辞典系列中重要品种',
					'tscjschidian.jpg','tscjschidian.jps',36,'2011-03-01',23.9,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('蒋勋说宋词',5,'蒋勋',' 福建人民出版社',' 蒋勋说：在宋词中，你会觉得有一种饱满与安静',
					'jiangxunssc.jpg','jiangxunssc.jpg',35.8,'2011-01-01',25.7,1,NULL,100,0);
INSERT INTO bookInfo(bookName,booktypeId,author,pbName,context,
					smallImg,bigImg,price,pbdate,hyprice,bookStates,sjdate,num,saleCount) 
			VALUES('席慕蓉诗集',5,'席慕蓉',' 作家出版社','《席慕蓉诗集（套装共6册）》包括有《七里香》、《无怨的青春》',
					'murongsj.jpg','murongsj.jpg',108,'2008-05-01',68.7,1,NULL,100,0);
					
#用户基本信息表
CREATE TABLE customerinfo(
	custId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	custName VARCHAR(100) NOT NULL,
	pwd VARCHAR(20) NOT NULL,
	email VARCHAR(20) NOT NULL
)
SELECT * FROM customerinfo
INSERT INTO customerinfo(custName,pwd,email) VALUES ('小红','123456','xiaohong@qq.com');
INSERT INTO customerinfo(custName,pwd,email) VALUES ('小橙','123456','xiaocheng@163.com');
INSERT INTO customerinfo(custName,pwd,email) VALUES ('小黄','123456','xiaohuang@yahu.com');
INSERT INTO customerinfo(custName,pwd,email) VALUES ('小绿','123456','xiaolv@qq.com');
INSERT INTO customerinfo(custName,pwd,email) VALUES ('小蓝','123456','xiaolan@qq.com');
INSERT INTO customerinfo(custName,pwd,email) VALUES ('梅梅','66666','meimei@qq.com');

#用户详细信息表
CREATE TABLE customerdetailinfo(
	custId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	tel VARCHAR(13) NOT NULL,
	address VARCHAR(20),
	sex INT NOT NULL,
	age INT,
	countMoney NUMERIC,#累计消费金额
	qq VARCHAR(20)
);
SELECT * FROM customerdetailinfo;
INSERT INTO customerdetailinfo(tel,address,sex,age,countMoney,qq) VALUES('13545698425','玉祥门','0',21,125.6,'766528@qq.com');
INSERT INTO customerdetailinfo(tel,address,sex,age,countMoney,qq) VALUES('15885695429','明德门','1',18,5.6,'8885328@qq.com');
INSERT INTO customerdetailinfo(tel,address,sex,age,countMoney,qq) VALUES('15845698425','长安路','1',22,1225.6,'766528@qq.com');
INSERT INTO customerdetailinfo(tel,address,sex,age,countMoney,qq) VALUES('15999668489','大雁塔','0',23,25.6,'766528@qq.com');
INSERT INTO customerdetailinfo(tel,address,sex,age,countMoney,qq) VALUES('13645655423','马路','0',20,NULL,'766528@qq.com');

#书评表
CREATE TABLE bookdiscuss (
	disId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	bookId INT NOT NULL,
	custId INT NOT NULL,
	context VARCHAR(100) NOT NULL,
	states INT NOT NULL
);
SELECT * FROM bookdiscuss
INSERT INTO bookdiscuss(bookId,custId,context,states) VALUES(1,3,'经典就是经典，再温习一遍',1);
INSERT INTO bookdiscuss(bookId,custId,context,states) VALUES(12,1,'垃圾大家不要买啊',0);
INSERT INTO bookdiscuss(bookId,custId,context,states) VALUES(7,3,'好评，书中经典，推荐观看',1);
INSERT INTO bookdiscuss(bookId,custId,context,states) VALUES(16,2,'第二次买了，给朋友带一本',1);
INSERT INTO bookdiscuss(bookId,custId,context,states) VALUES(17,5,'很好看，很喜欢',1);

#收藏夹表
CREATE TABLE favorite(
	favoriteId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	bookId INT NOT NULL,
	custId INT NOT NULL,
	scdate DATE NOT NULL,
	context VARCHAR(100)
);
SELECT * FROM favorite;
INSERT INTO favorite(bookid,custid,scdate,context) VALUES(16,1,'2012-03-01','想买的书');
INSERT INTO favorite(bookid,custid,scdate,context) VALUES(10,3,'2007-02-03','很喜欢的书');
INSERT INTO favorite(bookid,custid,scdate,context) VALUES(7,2,'2012-04-27','期待的书');
INSERT INTO favorite(bookid,custid,scdate,context) VALUES(6,4,'2002-07-01','小说类的书');
INSERT INTO favorite(bookid,custid,scdate,context) VALUES(11,3,'2010-03-01','文学的书');


#管理员表
CREATE TABLE sysadmin(
	adminId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	adminName VARCHAR(20),
	pwd VARCHAR(20),
	adminType INT NOT NULL #管理员级别
);
SELECT * FROM sysadmin
INSERT INTO sysadmin(adminName,pwd,adminType) VALUES('admin','admin',3);
INSERT INTO sysadmin(adminName,pwd,adminType) VALUES('guest','guest',2);
INSERT INTO sysadmin(adminName,pwd,adminType) VALUES('user','user',1);
INSERT INTO sysadmin(adminName,pwd,adminType) VALUES('head','head',2);
INSERT INTO sysadmin(adminName,pwd,adminType) VALUES('boss','boss',3);

#雇员表
CREATE TABLE employee(
	empId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	empName VARCHAR(20) NOT NULL,
	empAge INT NOT NULL,
	empBtd DATE NOT NULL,
	empSex INT NOT NULL,#(0表示女 1表示男)
	isDelete INT NOT NULL
);
SELECT * FROM employee;
INSERT INTO employee(empName, empAge,empBtd,empSex, isDelete) VALUES('强哥',22,'1990-9-9',1,1);
INSERT INTO employee(empName, empAge,empBtd,empSex, isDelete) VALUES('超人',30,'1980-9-9',1,1);
INSERT INTO employee(empName, empAge,empBtd,empSex, isDelete) VALUES('梅林',40,'1970-9-9',1,1);
INSERT INTO employee(empName, empAge,empBtd,empSex, isDelete) VALUES('东方',35,'1985-9-9',1,1);

#新闻表
CREATE TABLE news(
	newsId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	newTitle VARCHAR(30) NOT NULL,
	context VARCHAR(50) NOT NULL,
	createTime DATE NOT NULL
);
SELECT * FROM news;
INSERT INTO news(newTitle, context, createTime) VALUES ('小米3出世', '小米3今日火爆出师', '2012-2-2');
INSERT INTO news(newTitle, context, createTime) VALUES ('三星盖乐士出世', '三星盖乐士今日火爆出师', '2014-4-4');
INSERT INTO news(newTitle, context, createTime) VALUES ('小米4出世', '小米4今日火爆出世', '2013-3-3');
INSERT INTO news(newTitle, context, createTime) VALUES ('华为66出世', '华为66发布会', '2014-6-6');
INSERT INTO news(newTitle, context, createTime) VALUES ('诺基亚走了', '诺基亚退出市场', '2011-2-4');
INSERT INTO news(newTitle, context, createTime) VALUES ('花千骨', '花千骨今日将上映', '2015-4-6');
INSERT INTO news(newTitle, context, createTime) VALUES ('两生花', '两生花下周即将上映', '2015-4-6');
INSERT INTO news(newTitle, context, createTime) VALUES ('萝卜青菜', '萝卜青菜都焉了', '2015-4-6');


#订单主表
CREATE TABLE ordermain(
	orderNum VARCHAR(20) NOT NULL PRIMARY KEY,
	customerId INT NOT NULL,
	customerName VARCHAR(20),
	tel VARCHAR(20) NOT NULL,
	address VARCHAR(100) NOT NULL,
	xsstatus VARCHAR(1), #销售状态 （0-未处理，1-已处理，2-以发货，3-已收货）
	adminId INT,
	context VARCHAR(100),
	sumprice NUMERIC NOT NULL
);
SELECT * FROM ordermain

#订单明细表
CREATE TABLE orderdetail (
	detail INT NOT NULL PRIMARY KEY,#明细编号
	orderNum VARCHAR(20) NOT NULL,#主表id
	bookId INT NOT NULL,
	num INT NOT NULL #订购数量
);
SELECT * FROM orderdetail;
