

#ifndef chuyingfund_Table_h
#define chuyingfund_Table_h


//表名宏定义
#define BL_TB_DEVICEINFO                    @"deviceInfoTable"              //设备信息表



//创建数据库表的sql语句的宏定义


/*
 *  @brief  project 设备信息表
 *
 *  @param  project_id             项目ID
 *  @param  name             项目名称
 *  @param  team_num             团队人数
 *  @param  team_intro        团队介绍
 *  @param  introduction      项目介绍
 *  @param  picture_path            图片地址
 *  @param  detail            项目详情
 *  @param  finish_financing_amount            已融金额
 *  @param  total_financing_amount             融资总额
 *  @param  collect          收藏
 */
#define BL_TB_CREATE_DEVICEINFO    @"CREATE TABLE IF NOT EXISTS project(project_id int not null, name varchar(128), team_num int, team_intro varchar(255), introduction varchar(256), picture_path varchar(256), detail longtext,finish_financing_amount double, total_financing_amount double, collect text)"

#endif