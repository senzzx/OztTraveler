/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/1/8 23:30:39                            */
/*==============================================================*/
/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/1/4 23:34:04                            */
/*==============================================================*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`otz_demo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `otz_demo`;

drop table if exists ozt_rule_city;

drop table if exists ozt_rule_hotel;

drop table if exists ozt_rule_province;

drop table if exists ozt_sys_menu;

drop table if exists ozt_sys_role;

drop table if exists ozt_sys_role_menu;

drop table if exists ozt_travel_article;

drop table if exists ozt_travel_city;

drop index IDX_USER_LOCATION_01 on ozt_travel_location;

drop table if exists ozt_travel_location;

drop index IDX_HISTORY_TRACE_01 on ozt_travel_location_trace;

drop table if exists ozt_travel_location_trace;

drop table if exists ozt_travel_resource;

drop table if exists ozt_travel_trip;

drop table if exists ozt_user;

drop table if exists ozt_user_broadcast;

drop table if exists ozt_user_collection;

drop table if exists ozt_user_friends;

drop index IDX_USER_LOCATION_01 on ozt_user_login_token;

drop table if exists ozt_user_login_token;

drop index IDX_USER_TRACE_01 on ozt_user_trace;

drop table if exists ozt_user_trace;

/*==============================================================*/
/* Table: ozt_rule_city                                         */
/*==============================================================*/
create table ozt_rule_city
(
   id                   int not null auto_increment comment '城市id,主键',
   city                 varchar(50) not null comment '城市名',
   en_name              varchar(50) comment '城市中文名',
   province_id          int not null comment '所属省份,外键关键省份表',
   mail                 varchar(6) comment '城市邮编',
   area_code            varchar(4) comment '城市区号',
   is_capital           tinyint not null default 0 comment '是否为省会,0为非省会,1为省会',
   primary key (id)
);

alter table ozt_rule_city comment '系统基础数据--城市';

/*==============================================================*/
/* Table: ozt_rule_hotel                                        */
/*==============================================================*/
create table ozt_rule_hotel
(
   id                   int not null auto_increment comment 'id,主键,自增',
   name                 varchar(50) not null comment '旅店名称',
   address              varchar(200) not null comment '旅店地址',
   phone                varchar(20) comment '电话',
   mobile               varchar(20) comment '移动电话',
   remark               varchar(2000) comment '备注',
   create_time          datetime not null comment '创建时间',
   primary key (id)
);

alter table ozt_rule_hotel comment '旅店';

/*==============================================================*/
/* Table: ozt_rule_province                                     */
/*==============================================================*/
create table ozt_rule_province
(
   id                   int not null auto_increment comment '省份id,自增',
   province             varchar(50) not null comment '省份',
   en_name              varchar(50) comment '省份中文名',
   country              varchar(50) not null default 'CHINA' comment '国家(暂时是否需要,如需要是否需要单独拆表)',
   primary key (id)
);

alter table ozt_rule_province comment '系统基础数据--省份';

/*==============================================================*/
/* Table: ozt_sys_menu                                          */
/*==============================================================*/
create table ozt_sys_menu
(
   id                   int not null auto_increment comment '菜单id,自增',
   parent_id            int not null comment '父菜单',
   parent_ids           varchar(200) not null comment '所有父菜单,逗号分隔',
   name                 varchar(50) not null comment '菜单名',
   href                 varchar(200) not null default '#' comment '菜单链接',
   remark               varchar(500) comment '备注',
   create_time          datetime not null comment '创建时间',
   primary key (id)
);

alter table ozt_sys_menu comment '系统菜单表';

/*==============================================================*/
/* Table: ozt_sys_role                                          */
/*==============================================================*/
create table ozt_sys_role
(
   id                   int not null auto_increment comment '角色id,自增',
   name                 varchar(50) comment '角色名',
   enname               varchar(100) not null comment '角色英文名',
   role_type            tinyint not null default 1 comment '角色类型,0管理员,1普通用户,',
   status               tinyint not null default 1 comment '是否可用,0删除,1可用,2不可用',
   create_time          datetime not null comment '创建时间',
   update_time          datetime not null comment '更新时间',
   primary key (id)
);

alter table ozt_sys_role comment '用户角色表';

/*==============================================================*/
/* Table: ozt_sys_role_menu                                     */
/*==============================================================*/
create table ozt_sys_role_menu
(
   id                   int not null auto_increment comment '角色菜单id,自增',
   role_id              int not null comment '角色id,外键关联角色表',
   menu_id              int not null comment '菜单id,外键关联菜单表',
   create_time          datetime not null comment '创建时间',
   primary key (id)
);

alter table ozt_sys_role_menu comment '用户角色菜单表';

/*==============================================================*/
/* Table: ozt_travel_article                                    */
/*==============================================================*/
create table ozt_travel_article
(
   id                   int not null auto_increment comment 'id,主键自增',
   user_id              int not null comment '用户ID,外键关联用户表ID',
   title                varchar(100) not null comment '标题',
   article              text comment '文章内容',
   article_type         tinyint not null default 1 comment '文章类型,0无类型(心情类),1杂文游记,3美食介绍,4景点介绍',
   status               tinyint not null default 1 comment '状态。0删除,1发布,2保存,3私密',
   address              varchar(100) comment '位置信息,未与其他信息关联-是否需要考虑',
   city_id              int comment '城市ID,外键关联城市表,可为空',
   travel_date          date comment '游览日期',
   user_trip_id         int comment '用户行程安排,关联行程表,可为空',
   update_time          datetime not null comment '更新时间',
   create_time          datetime not null comment '创建时间',
   primary key (id)
);

alter table ozt_travel_article comment '用户文章表';

/*==============================================================*/
/* Table: ozt_travel_city                                       */
/*==============================================================*/
create table ozt_travel_city
(
   id                   int not null auto_increment comment '主键自增',
   user_id              int not null comment '用户ID,关联用户表',
   city_id              int not null comment '城市id,关联城市表',
   travel_date          date not null comment '游玩时间',
   travel_trip_id       int comment '行程id,外键关联行程表',
   create_time          datetime not null comment '创建时间',
   primary key (id),
   unique key UNI_USER_CITY_01 (user_id, city_id, travel_date)
);

alter table ozt_travel_city comment '用户去过的城市表-这个表应该如何跟其余表关联';

/*==============================================================*/
/* Table: ozt_travel_location                                   */
/*==============================================================*/
create table ozt_travel_location
(
   id                   int not null auto_increment comment 'id,主键,自增',
   user_id              int not null comment '用户ID',
   longitude            double not null comment '经度',
   latitude             double not null comment '纬度',
   address              varchar(200) comment '位置描述信息,定位获取',
   update_time          datetime not null comment '时间',
   primary key (id)
);

alter table ozt_travel_location comment '用户定位信息';

/*==============================================================*/
/* Index: IDX_USER_LOCATION_01                                  */
/*==============================================================*/
create index IDX_USER_LOCATION_01 on ozt_travel_location
(
   user_id
);

/*==============================================================*/
/* Table: ozt_travel_location_trace                             */
/*==============================================================*/
create table ozt_travel_location_trace
(
   id                   int not null auto_increment comment 'id,主键,自增',
   user_id              int not null comment '用户ID,关联用户表',
   longitude            double not null comment '经度',
   latitude             double not null comment '纬度',
   travel_city_id       int not null comment '游览城市城市ID,关联用户游览城市表',
   address              varchar(200) comment '位置信息描述,定位获得',
   createtime           datetime not null comment '时间',
   primary key (id)
);

alter table ozt_travel_location_trace comment '用户历史位置信息';

/*==============================================================*/
/* Index: IDX_HISTORY_TRACE_01                                  */
/*==============================================================*/
create index IDX_HISTORY_TRACE_01 on ozt_travel_location_trace
(
   user_id,
   createtime
);

/*==============================================================*/
/* Table: ozt_travel_resource                                   */
/*==============================================================*/
create table ozt_travel_resource
(
   id                   int not null auto_increment comment '资源id',
   user_id              int not null comment '用户id',
   resourcetype         int not null comment '资源类型
            1: 视频
            2: 照片
            3: 音频
            ',
   name                 varchar(100) not null comment '资源名称.默认为USERID_时间戳(可修改)',
   describtion          varchar(255) comment '描述',
   address              varchar(100) comment '生成资源地址(定位)',
   path                 varchar(100) not null comment '资源存放路径',
   size                 double not null comment '资源大小',
   type                 tinyint not null comment '状态。0删除,1发布,2保存,3私密',
   travel_date          date comment '游览日期,可为空',
   user_trip_id         int comment '用户行程安排,外键关联行程表,可为空',
   city_id              int comment '城市id，外键关联城市表',
   uploadtime           datetime not null comment '资源上传服务器时间',
   createtime           datetime not null comment '资源创建时间',
   primary key (id)
);

alter table ozt_travel_resource comment '用户资源';

/*==============================================================*/
/* Table: ozt_travel_trip                                       */
/*==============================================================*/
create table ozt_travel_trip
(
   id                   int not null auto_increment comment 'id,主键,自增',
   user_id              int not null comment '设备ID,外键关联用户表ID',
   trip_date            date not null comment '行程日期',
   trip_time            time comment '行程时间',
   dep_city_id          int comment '始发城市ID,外键,关联基础城市表',
   departure            varchar(50) comment '始发地',
   des_city_id          int comment '目的地城市,外键,关联基础城市表',
   destination          varchar(50) comment '目的地',
   trip_route           varchar(500) comment '景点路线',
   traffic              tinyint not null comment '交通方式,0步行,1自行车,2 公交,3 出租车,4长途客车
            5火车(动车高铁城铁),6飞机,7船舶,8地铁,9 自驾,10其他',
   driver               varchar(20) comment '司机',
   driver_mobile        varchar(25) comment '司机联系方式',
   status               tinyint not null default 2 comment '行程状态,0表示删除,1表示已出行,2表示未出行,3表示取消',
   remark               varchar(2000) comment '备注',
   create_time          datetime not null comment '创建时间',
   hotel_id             int comment '旅店ID,入住旅店,外键关联旅店表',
   primary key (id)
);

alter table ozt_travel_trip comment '用户行程';

/*==============================================================*/
/* Table: ozt_user                                              */
/*==============================================================*/
create table ozt_user
(
   id                   int not null auto_increment comment '用户id,自增',
   login_name           varchar(50) not null comment '登录名',
   name                 varchar(50) not null comment '昵称',
   password             varchar(100) not null comment '用户密码,md5加密',
   phone                varchar(20) comment '电话,与邮箱不同时为空',
   mail                 varchar(100) comment '邮箱,与电话不同时为空',
   address              varchar(100) comment '住址地址',
   details              varchar(300) comment '用户描述,心情',
   role_id              int not null default 1 comment '用户角色,外键关联角色表ID',
   photo                varchar(300) not null comment '用户头像',
   status               tinyint not null default 1 comment '状态。0,删除,1正常 2申请未激活,3冻结',
   regist_time          datetime not null comment '注册时间',
   update_time          datetime not null comment '资料更新时间',
   primary key (id)
);

alter table ozt_user comment '用户表';

/*==============================================================*/
/* Table: ozt_user_broadcast                                    */
/*==============================================================*/
create table ozt_user_broadcast
(
   id                   int not null auto_increment comment 'id,主键自增',
   user_id              int not null comment '用户ID,外键关联用户表ID',
   article_id           int comment '文章ID,外键关联文章表',
   resource_id          int comment '资源ID,外键关联资源表',
   type                 tinyint not null comment '类型,0文章,1资源',
   friend_id            int not null comment '朋友ID,外键关联用户表ID',
   status               tinyint not null default 1 comment '状态。0删除,1提醒,2 屏蔽,3提醒已阅读',
   create_time          datetime not null comment '创建时间',
   primary key (id),
   unique key UNI_USER_FRIENDS_01 (user_id, article_id, friend_id)
);

alter table ozt_user_broadcast comment '用户广播表';

/*==============================================================*/
/* Table: ozt_user_collection                                   */
/*==============================================================*/
create table ozt_user_collection
(
   id                   int not null auto_increment comment 'id,主键自增',
   user_id              int not null comment '用户ID,外键关联用户表ID',
   article_id           int comment '文章ID,外键关联文章表',
   resouce_id           int comment '资源ID,外键资源表ID',
   type                 tinyint not null comment '类型。0 图片,音频,视频(资源表),1文章(文章表)',
   create_time          datetime not null comment '创建时间',
   primary key (id),
   unique key UNI_COLLECTION_01 (user_id, article_id),
   unique key UNI_COLLECTION_02 (user_id, resouce_id)
);

alter table ozt_user_collection comment '用户收藏表';

/*==============================================================*/
/* Table: ozt_user_friends                                      */
/*==============================================================*/
create table ozt_user_friends
(
   id                   int not null auto_increment comment 'id,自增',
   user_id              int not null comment '用户ID,外键关联用户表ID',
   friend_id            int not null comment '朋友ID,外键关联用户表ID',
   status               tinyint not null default 1 comment '状态。0解除,1正常 2拉黑,3屏蔽,4申请(user向friend申请),5被申请',
   update_time          datetime not null comment '更新时间',
   create_time          datetime not null comment '创建时间',
   primary key (id),
   unique key UNI_USER_FRIENDS_01 (user_id, friend_id)
);

alter table ozt_user_friends comment '用户朋友表';

/*==============================================================*/
/* Table: ozt_user_login_token                                  */
/*==============================================================*/
create table ozt_user_login_token
(
   id                   int not null auto_increment comment 'id,自增',
   user_id              int not null comment '用户ID',
   login_type           tinyint not null comment '登陆方式,0 APP, 1网页',
   token                varchar(100) not null comment '登陆token, app访问存token,web访问存IP',
   update_time          datetime not null comment '更新时间',
   primary key (id),
   key AK_UNI_LOGIN_TOKEN_01 (user_id, login_type)
);

alter table ozt_user_login_token comment '用户登陆表';

/*==============================================================*/
/* Index: IDX_USER_LOCATION_01                                  */
/*==============================================================*/
create index IDX_USER_LOCATION_01 on ozt_user_login_token
(
   user_id
);

/*==============================================================*/
/* Table: ozt_user_trace                                        */
/*==============================================================*/
create table ozt_user_trace
(
   id                   int not null auto_increment comment 'id,自增',
   user_id              int not null comment '用户id,外键关联用户表',
   login_ip             varchar(100) not null default '127.0.0.1' comment '最后登录IP',
   login_time           datetime not null comment '最后登录时间',
   primary key (id)
);

alter table ozt_user_trace comment '用户登陆记录表';

/*==============================================================*/
/* Index: IDX_USER_TRACE_01                                     */
/*==============================================================*/
create index IDX_USER_TRACE_01 on ozt_user_trace
(
   user_id
);

alter table ozt_rule_city add constraint FK_CITY_REF_PROVINCE foreign key (province_id)
      references ozt_rule_province (id) on delete restrict on update restrict;

alter table ozt_sys_role_menu add constraint FK_ROLE_MENU_REF_MENU foreign key (menu_id)
      references ozt_sys_menu (id) on delete restrict on update restrict;

alter table ozt_sys_role_menu add constraint FK_ROLE_MENU_REF_ROLE foreign key (role_id)
      references ozt_sys_role (id) on delete restrict on update restrict;

alter table ozt_travel_article add constraint FK_ARTICLE_REF_USER_TRIP foreign key (user_trip_id)
      references ozt_travel_trip (id) on delete restrict on update restrict;

alter table ozt_travel_article add constraint FK_TRA_ART_REF_RU_CITY foreign key (city_id)
      references ozt_rule_city (id) on delete restrict on update restrict;

alter table ozt_travel_article add constraint FK_USER_ARTICLE_REF_USER foreign key (user_id)
      references ozt_user (id) on delete restrict on update restrict;

alter table ozt_travel_city add constraint FK_TRA_CITY_REF_TRA_TRIP foreign key (travel_trip_id)
      references ozt_travel_trip (id) on delete restrict on update restrict;

alter table ozt_travel_city add constraint FK_USER_CITY_REF_CITY foreign key (city_id)
      references ozt_rule_city (id) on delete restrict on update restrict;

alter table ozt_travel_city add constraint FK_USER_CITY_REF_USER foreign key (user_id)
      references ozt_user (id) on delete restrict on update restrict;

alter table ozt_travel_location add constraint FK_LOCATION_REF_USER foreign key (user_id)
      references ozt_user (id) on delete restrict on update restrict;

alter table ozt_travel_location_trace add constraint FK_LOC_TRACE_REF_TRA_CITY foreign key (travel_city_id)
      references ozt_travel_city (id) on delete restrict on update restrict;

alter table ozt_travel_location_trace add constraint FK_LOC_TRACE_REF_USER foreign key (user_id)
      references ozt_user (id) on delete restrict on update restrict;

alter table ozt_travel_resource add constraint FK_RES_REF_USER foreign key (user_id)
      references ozt_user (id) on delete restrict on update restrict;

alter table ozt_travel_resource add constraint FK_RES_REF_USER_TRIP foreign key (user_trip_id)
      references ozt_travel_trip (id) on delete restrict on update restrict;

alter table ozt_travel_resource add constraint FK_TRA_RES_REF_RULE_CITY foreign key (city_id)
      references ozt_rule_city (id) on delete restrict on update restrict;

alter table ozt_travel_trip add constraint FK_USER_TRIP_REF_CITY foreign key (id)
      references ozt_rule_city (id) on delete restrict on update restrict;

alter table ozt_travel_trip add constraint FK_USER_TRIP_REF_CITY_02 foreign key (des_city_id)
      references ozt_rule_city (id) on delete restrict on update restrict;

alter table ozt_travel_trip add constraint FK_USER_TRIP_REF_HOTEL foreign key (hotel_id)
      references ozt_rule_hotel (id) on delete restrict on update restrict;

alter table ozt_travel_trip add constraint FK_USER_TRIP_REF_USER foreign key (user_id)
      references ozt_user (id) on delete restrict on update restrict;

alter table ozt_user add constraint FK_USER_REF_ROLE foreign key (role_id)
      references ozt_sys_role (id) on delete restrict on update restrict;

alter table ozt_user_broadcast add constraint FK_BROADCAST_REF_ARTICLE foreign key (article_id)
      references ozt_travel_article (id) on delete restrict on update restrict;

alter table ozt_user_broadcast add constraint FK_BROADCAST_REF_USER foreign key (user_id)
      references ozt_user (id) on delete restrict on update restrict;

alter table ozt_user_broadcast add constraint FK_BROADCAST_REF_USER_02 foreign key (friend_id)
      references ozt_user (id) on delete restrict on update restrict;

alter table ozt_user_broadcast add constraint FK_BROAD_REF_RESOURCE foreign key (resource_id)
      references ozt_travel_resource (id) on delete restrict on update restrict;

alter table ozt_user_collection add constraint FK_COLLECTION_REF_ARTICLE foreign key (article_id)
      references ozt_travel_article (id) on delete restrict on update restrict;

alter table ozt_user_collection add constraint FK_COLLECTION_REF_RESOURCE foreign key (resouce_id)
      references ozt_travel_resource (id) on delete restrict on update restrict;

alter table ozt_user_collection add constraint FK_COLLECTION_REF_USER foreign key (user_id)
      references ozt_user (id) on delete restrict on update restrict;

alter table ozt_user_friends add constraint FK_FRIENDS_REF_USER foreign key (user_id)
      references ozt_user (id) on delete restrict on update restrict;

alter table ozt_user_friends add constraint FK_FRIENDS_REF_USER_02 foreign key (friend_id)
      references ozt_user (id) on delete restrict on update restrict;

alter table ozt_user_login_token add constraint FK_LOGIN_TOKEN_REF_USER foreign key (user_id)
      references ozt_user (id) on delete restrict on update restrict;

alter table ozt_user_trace add constraint FK_USER_TRACE_REF_USER foreign key (user_id)
      references ozt_user (id) on delete restrict on update restrict;

