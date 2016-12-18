/*==============================================================*/
/* DBMS name:      MySQL                                        */
/* Created on:     2016-11-25 版本1.0                           */
/* Author:         li_ming	                                    */
/*==============================================================*/
DROP DATABASE IF EXISTS `screen`;
CREATE DATABASE IF NOT EXISTS `screen` DEFAULT CHARACTER SET UTF8 ;

USE `screen`;

/*==============================================================*/
/* Table: 入辽人员按区域统计表                                  */
/*==============================================================*/
create table screen_inliao_people_area
(
   id                   int(11) not null auto_increment comment '编号',
   xzqh_code            varchar(30) not null comment '行政区域代码',
   xzqh_name            varchar(100) not null comment '行政区域名称',
   statistical_time     varchar(50) not null comment '统计时间',
   statistical_num      int(11) not null default 0 comment '统计数量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '入辽人员按区域统计表';

create index index_xzqh_code on screen_inliao_people_area(xzqh_code);
create index index_statistical_time on screen_inliao_people_area(statistical_time);

/*==============================================================*/
/* Table: 入辽人员迁徙统计表                                    */
/*==============================================================*/
create table screen_inliao_people_migrate
(
   id                   int(11) not null auto_increment comment '编号',
   xzqh_code            varchar(30) not null comment '行政区域代码',
   xzqh_name            varchar(100) not null comment '行政区域名称',
   statistical_time     varchar(50) not null comment '统计时间',
   statistical_num      int(11) not null default 0 comment '统计数量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '入辽人员迁徙统计表';

create index index_xzqh_code on screen_inliao_people_migrate(xzqh_code);
create index index_statistical_time on screen_inliao_people_migrate(statistical_time);

/*==============================================================*/
/* Table: 入辽车辆按区域统计表                                  */
/*==============================================================*/
create table screen_inliao_car_area
(
   id                   int(11) not null auto_increment comment '编号',
   xzqh_code            varchar(30) not null comment '行政区域代码',
   xzqh_name            varchar(100) not null comment '行政区域名称',
   statistical_time     varchar(50) not null comment '统计时间',
   statistical_num      int(11) not null default 0 comment '统计数量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '入辽车辆按区域统计表';

create index index_xzqh_code on screen_inliao_car_area(xzqh_code);
create index index_statistical_time on screen_inliao_car_area(statistical_time);

/*==============================================================*/
/* Table: 入辽车辆迁徙统计表                                    */
/*==============================================================*/
create table screen_inliao_car_migrate
(
   id                   int(11) not null auto_increment comment '编号',
   xzqh_code            varchar(30) not null comment '行政区域代码',
   xzqh_name            varchar(100) not null comment '行政区域名称',
   statistical_time     varchar(50) not null comment '统计时间',
   statistical_num      int(11) not null default 0 comment '统计数量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '入辽车辆迁徙统计表';

create index index_xzqh_code on screen_inliao_car_migrate(xzqh_code);
create index index_statistical_time on screen_inliao_car_migrate(statistical_time);

/*==============================================================*/
/* Table: 交通违法按区域统计表                                  */
/*==============================================================*/
create table screen_trafficlaw_area
(
   id                   int(11) not null auto_increment comment '编号',
   xzqh_code            varchar(30) not null comment '行政区域代码',
   xzqh_name            varchar(100) not null comment '行政区域名称',
   statistical_time     varchar(50) not null comment '统计时间',
   statistical_num      int(11) not null default 0 comment '统计数量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '交通违法按区域统计表';

create index index_xzqh_code on screen_trafficlaw_area(xzqh_code);
create index index_statistical_time on screen_trafficlaw_area(statistical_time);

/*==============================================================*/
/* Table: 交通违法按类型统计表                                  */
/*==============================================================*/
create table screen_trafficlaw_type
(
   id                   int(11) not null auto_increment comment '编号',
   xzqh_code            varchar(30) not null comment '行政区域代码',
   xzqh_name            varchar(100) not null comment '行政区域名称',
   statistical_time     varchar(50) not null comment '统计时间',
   zsty_num             int(11) not null default 0 comment '肇事逃逸数量',
   zdsg_num             int(11) not null default 0 comment '重大事故数量',
   wzjs_num             int(11) not null default 0 comment '无证驾驶数量',
   cs_num               int(11) not null default 0 comment '超速100%以上数量',
   jhjc_num             int(11) not null default 0 comment '酒后驾车数量',
   zjjc_num             int(11) not null default 0 comment '醉酒驾车数量',
   qtlx_num             int(11) not null default 0 comment '其它数量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '交通违法按类型统计表';

create index index_xzqh_code on screen_trafficlaw_type(xzqh_code);
create index index_statistical_time on screen_trafficlaw_type(statistical_time);

/*==============================================================*/
/* Table: 接处警按区域统计表                                    */
/*==============================================================*/
create table screen_policeservice_area
(
   id                   int(11) not null auto_increment comment '编号',
   xzqh_code            varchar(30) not null comment '行政区域代码',
   xzqh_name            varchar(100) not null comment '行政区域名称',
   statistical_time     varchar(50) not null comment '统计时间',
   statistical_num      int(11) not null default 0 comment '统计数量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '接处警按区域统计表';

create index index_xzqh_code on screen_policeservice_area(xzqh_code);
create index index_statistical_time on screen_policeservice_area(statistical_time);

/*==============================================================*/
/* Table: 接处警按类型统计表                                    */
/*==============================================================*/
create table screen_policeservice_type
(
   id                   int(11) not null auto_increment comment '编号',
   xzqh_code            varchar(30) not null comment '行政区域代码',
   xzqh_name            varchar(100) not null comment '行政区域名称',
   statistical_time     varchar(50) not null comment '统计时间',
   xsaj_num             int(11) not null default 0 comment '刑事案件数量',
   xzaj_num             int(11) not null default 0 comment '行政案件数量',
   zasj_num             int(11) not null default 0 comment '治安事件数量',
   hzsg_num             int(11) not null default 0 comment '火灾事故数量',
   gmqz_num             int(11) not null default 0 comment '公民求助数量',
   zsxr_num             int(11) not null default 0 comment '走失寻人数量',
   qtlx_num             int(11) not null default 0 comment '其它数量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '接处警按类型统计表';

create index index_xzqh_code on screen_policeservice_type(xzqh_code);
create index index_statistical_time on screen_policeservice_type(statistical_time);

/*==============================================================*/
/* Table: 案事件按区域统计表                                    */
/*==============================================================*/
create table screen_caseevent_area
(
   id                   int(11) not null auto_increment comment '编号',
   xzqh_code            varchar(30) not null comment '行政区域代码',
   xzqh_name            varchar(100) not null comment '行政区域名称',
   statistical_time     varchar(50) not null comment '统计时间',
   statistical_num      int(11) not null default 0 comment '统计数量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '案事件按区域统计表';

create index index_xzqh_code on screen_caseevent_area(xzqh_code);
create index index_statistical_time on screen_caseevent_area(statistical_time);

/*==============================================================*/
/* Table: 案事件按类型统计表                                    */
/*==============================================================*/
create table screen_caseevent_type
(
   id                   int(11) not null auto_increment comment '编号',
   xzqh_code            varchar(30) not null comment '行政区域代码',
   xzqh_name            varchar(100) not null comment '行政区域名称',
   statistical_time     varchar(50) not null comment '统计时间',
   whgjaqa_num          int(11) not null default 0 comment '危害国家安全案数量',
   wxggaqa_num          int(11) not null default 0 comment '危害公共安全案数量',
   phshzjjjzxas_num     int(11) not null default 0 comment '破坏社会主义市场经济秩序案数量',
   whgflya_num          int(11) not null default 0 comment '危害国防利益案数量',
   fhshglzxa_num        int(11) not null default 0 comment '妨害社会管理秩序案数量',
   qfggrmqla_num        int(11) not null default 0 comment '侵犯公民人民权利、民主权利案数量',
   qfcca_num            int(11) not null default 0 comment '侵犯财产案数量',
   qtlx_num             int(11) not null default 0 comment '其它数量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '案事件按类型统计表';

create index index_xzqh_code on screen_caseevent_type(xzqh_code);
create index index_statistical_time on screen_caseevent_type(statistical_time);

/*==============================================================*/
/* Table: 实有人口按区域统计表                                  */
/*==============================================================*/
create table screen_actualpopulation_area
(
   id                   int(11) not null auto_increment comment '编号',
   xzqh_code            varchar(30) not null comment '行政区域代码',
   xzqh_name            varchar(100) not null comment '行政区域名称',
   statistical_time     varchar(50) not null comment '统计时间',
   population_base      int(11) not null default 0 comment '人口基数',
   population_increment int(11) not null default 0 comment '人口增量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '实有人口按区域统计表';

create index index_xzqh_code on screen_actualpopulation_area(xzqh_code);
create index index_statistical_time on screen_actualpopulation_area(statistical_time);

/*==============================================================*/
/* Table: 实有车辆按区域统计表                                  */
/*==============================================================*/
create table screen_vehicleanalysis_area
(
   id                   int(11) not null auto_increment comment '编号',
   xzqh_code            varchar(30) not null comment '行政区域代码',
   xzqh_name            varchar(100) not null comment '行政区域名称',
   statistical_time     varchar(50) not null comment '统计时间',
   vehicle_base         int(11) not null default 0 comment '车辆基数',
   vehicle_increment    int(11) not null default 0 comment '车辆增量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '实有车辆按区域统计表';

create index index_xzqh_code on screen_vehicleanalysis_area(xzqh_code);
create index index_statistical_time on screen_vehicleanalysis_area(statistical_time);

/*==============================================================*/
/* Table: 数据中心数据量统计表                                  */
/*==============================================================*/
create table screen_datacenter_datavloume
(
   id                   int(11) not null auto_increment comment '编号',
   statistical_time     varchar(50) not null comment '统计时间',
   datavloume_base      bigint(20) not null default 0 comment '数据量基数',
   datavloume_increment int(11) not null default 0 comment '数据量增量',
   insert_time          datetime not null default current_timestamp comment '录入时间',
   remarks              varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '数据中心数据量统计表';

create index index_statistical_time on screen_datacenter_datavloume(statistical_time);

/*==============================================================*/
/* Table: 数据中心访问量统计表                                  */
/*==============================================================*/
create table screen_datacenter_visitorvloume
(
   id                     int(11) not null auto_increment comment '编号',
   statistical_time       varchar(50) not null comment '统计时间',
   datatype_num           int(11) not null default 0 comment '数据类别数量',
   data_visitorvloume     bigint(20) not null default 0 comment '数据访问总量',
   data_visitorvloume_day int(11) not null default 0 comment '单日数据访问量',
   insert_time            datetime not null default current_timestamp comment '录入时间',
   remarks                varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '数据中心访问量统计表';

create index index_statistical_time on screen_datacenter_visitorvloume(statistical_time);

/*==============================================================*/
/* Table: 数据中心访问量按区域统计表                            */
/*==============================================================*/
create table screen_datacenter_visitorvloume_area
(
   id                      int(11) not null auto_increment comment '编号',
   xzqh_code               varchar(30) not null comment '行政区域代码',
   xzqh_name               varchar(100) not null comment '行政区域名称',
   statistical_time        varchar(50) not null comment '统计时间',
   visitorvloume_base      bigint(20) not null default 0 comment '访问量基数',
   visitorvloume_increment int(11) not null default 0 comment '访问量增量',
   insert_time             datetime not null default current_timestamp comment '录入时间',
   remarks                 varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '数据中心访问量按区域统计表';

create index index_xzqh_code on screen_datacenter_visitorvloume_area(xzqh_code);
create index index_statistical_time on screen_datacenter_visitorvloume_area(statistical_time);

/*==============================================================*/
/* Table: 数据中心资源信息表                                    */
/*==============================================================*/
create table screen_datacenter_resource
(
   id                     int(11) not null auto_increment comment '编号',
   statistical_time       varchar(50) not null comment '统计时间',
   infor                  text not null default '' comment '展示信息',
   insert_time            datetime not null default current_timestamp comment '录入时间',
   remarks                varchar(255) comment '备注',
   primary key (id)
)
engine = InnoDB
charset = UTF8
comment = '数据中心资源信息表';

create index index_statistical_time on screen_datacenter_resource(statistical_time);