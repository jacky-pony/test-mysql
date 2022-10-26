create table if not exists `test_del_idx`
(
`name` varchar(256) not null comment '用户名',
`age` varchar(256) not null comment '用户名',
`sex` char(1) not null comment '性别',
`work` varchar(256) not null comment '用户名',
`city` varchar(256) not null comment '用户名',
`id` int(10) not null auto_increment comment '用户名' primary key
) comment '测试删除是否使用到索引';

create index idx_sex_city on test_del_idx(sex,city);