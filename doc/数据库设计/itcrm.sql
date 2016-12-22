/*==============================================================*/
/* DBMS name:      MySQL                                        */
/* Created on:     2016-11-25 版本1.0                           */
/* Author:         li_ming	                                    */
/*==============================================================*/
DROP DATABASE IF EXISTS `crm`;
CREATE DATABASE IF NOT EXISTS `crm` DEFAULT CHARACTER SET UTF8 ;

USE `crm`;

/*==============================================================*/
/* Table: 系统用户表                                            */
/*==============================================================*/
create table t_user
(
   login_name              varchar(50) not null comment '用户登录名',
   name                    varchar(100) not null comment '用户名称',
   password                varchar(100) not null comment '登录密码',
   org_code                varchar(50) not null comment '用户的组织机构编码',
   enabled                 tinyint(1) not null default 0 comment '用户是否可以登录',
   id_card_number          varchar(50) comment '身份证号',
   tel                     varchar(50) comment '联系电话',
   address                 varchar(255) comment '住址',
   primary key (login_name)
)
engine = InnoDB
charset = UTF8
comment = '系统用户表';

create index index_org_code on t_user(org_code);


/*create table t_user
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
create index index_statistical_time on screen_inliao_people_area(statistical_time);*/