/*
 Navicat Premium Data Transfer

 Source Server         : postgres-server
 Source Server Type    : PostgreSQL
 Source Server Version : 150004 (150004)
 Source Host           : 124.222.103.232:5432
 Source Catalog        : postgres
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150004 (150004)
 File Encoding         : 65001

 Date: 28/07/2024 09:40:44
*/


-- ----------------------------
-- Sequence structure for t_category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_category_id_seq";
CREATE SEQUENCE "public"."t_category_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_category_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_change_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_change_log_id_seq";
CREATE SEQUENCE "public"."t_change_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_change_log_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_code_generator_config_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_code_generator_config_id_seq";
CREATE SEQUENCE "public"."t_code_generator_config_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_code_generator_config_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_config_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_config_id_seq";
CREATE SEQUENCE "public"."t_config_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_config_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_department_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_department_id_seq";
CREATE SEQUENCE "public"."t_department_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_department_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_dict_key_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_dict_key_id_seq";
CREATE SEQUENCE "public"."t_dict_key_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_dict_key_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_dict_value_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_dict_value_id_seq";
CREATE SEQUENCE "public"."t_dict_value_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_dict_value_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_employee_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_employee_id_seq";
CREATE SEQUENCE "public"."t_employee_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_employee_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_feedback_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_feedback_id_seq";
CREATE SEQUENCE "public"."t_feedback_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_feedback_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_file_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_file_id_seq";
CREATE SEQUENCE "public"."t_file_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_file_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_login_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_login_log_id_seq";
CREATE SEQUENCE "public"."t_login_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_login_log_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_menu_id_seq";
CREATE SEQUENCE "public"."t_menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_menu_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_notice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_notice_id_seq";
CREATE SEQUENCE "public"."t_notice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_notice_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_notice_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_notice_type_id_seq";
CREATE SEQUENCE "public"."t_notice_type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_notice_type_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_role_data_scope_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_data_scope_id_seq";
CREATE SEQUENCE "public"."t_role_data_scope_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_role_data_scope_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_role_employee_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_employee_id_seq";
CREATE SEQUENCE "public"."t_role_employee_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_role_employee_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_id_seq";
CREATE SEQUENCE "public"."t_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_role_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_role_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_role_menu_id_seq";
CREATE SEQUENCE "public"."t_role_menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_role_menu_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for t_table_column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_table_column_id_seq";
CREATE SEQUENCE "public"."t_table_column_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."t_table_column_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_category";
CREATE TABLE "public"."t_category" (
  "category_id" int4 NOT NULL DEFAULT nextval('t_category_id_seq'::regclass),
  "category_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "category_type" int4 NOT NULL,
  "parent_id" int4 NOT NULL,
  "sort" int4 NOT NULL,
  "disabled_flag" int4 NOT NULL,
  "deleted_flag" int4 NOT NULL,
  "remark" text COLLATE "pg_catalog"."default",
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_category" OWNER TO "postgres";

-- ----------------------------
-- Records of t_category
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_category" ("category_id", "category_name", "category_type", "parent_id", "sort", "disabled_flag", "deleted_flag", "remark", "update_time", "create_time") VALUES (1, '手机', 1, 0, 0, 0, 0, NULL, '2022-10-10 22:27:24', '2022-07-14 20:55:15');
INSERT INTO "public"."t_category" ("category_id", "category_name", "category_type", "parent_id", "sort", "disabled_flag", "deleted_flag", "remark", "update_time", "create_time") VALUES (2, '键盘', 1, 0, 0, 0, 0, NULL, '2022-09-14 21:39:00', '2022-07-14 20:55:48');
INSERT INTO "public"."t_category" ("category_id", "category_name", "category_type", "parent_id", "sort", "disabled_flag", "deleted_flag", "remark", "update_time", "create_time") VALUES (3, '自定义1', 2, 0, 0, 0, 0, NULL, '2022-09-14 22:01:06', '2022-07-14 20:56:03');
INSERT INTO "public"."t_category" ("category_id", "category_name", "category_type", "parent_id", "sort", "disabled_flag", "deleted_flag", "remark", "update_time", "create_time") VALUES (4, '自定义2', 2, 0, 0, 0, 0, NULL, '2022-09-14 22:01:10', '2022-07-14 20:56:09');
INSERT INTO "public"."t_category" ("category_id", "category_name", "category_type", "parent_id", "sort", "disabled_flag", "deleted_flag", "remark", "update_time", "create_time") VALUES (351, '鼠标', 1, 0, 0, 0, 0, NULL, '2022-09-14 21:39:06', '2022-09-14 21:39:06');
INSERT INTO "public"."t_category" ("category_id", "category_name", "category_type", "parent_id", "sort", "disabled_flag", "deleted_flag", "remark", "update_time", "create_time") VALUES (352, '苹果', 1, 1, 0, 0, 0, NULL, '2022-09-14 21:39:25', '2022-09-14 21:39:25');
INSERT INTO "public"."t_category" ("category_id", "category_name", "category_type", "parent_id", "sort", "disabled_flag", "deleted_flag", "remark", "update_time", "create_time") VALUES (353, '华为', 1, 1, 0, 0, 0, NULL, '2022-09-14 21:39:32', '2022-09-14 21:39:32');
INSERT INTO "public"."t_category" ("category_id", "category_name", "category_type", "parent_id", "sort", "disabled_flag", "deleted_flag", "remark", "update_time", "create_time") VALUES (354, 'IKBC', 1, 2, 0, 0, 0, NULL, '2022-09-14 21:39:38', '2022-09-14 21:39:38');
INSERT INTO "public"."t_category" ("category_id", "category_name", "category_type", "parent_id", "sort", "disabled_flag", "deleted_flag", "remark", "update_time", "create_time") VALUES (355, '双飞燕', 1, 2, 0, 0, 0, NULL, '2022-09-14 21:39:47', '2022-09-14 21:39:47');
INSERT INTO "public"."t_category" ("category_id", "category_name", "category_type", "parent_id", "sort", "disabled_flag", "deleted_flag", "remark", "update_time", "create_time") VALUES (356, '罗技', 1, 351, 0, 0, 0, NULL, '2022-09-14 21:39:57', '2022-09-14 21:39:57');
INSERT INTO "public"."t_category" ("category_id", "category_name", "category_type", "parent_id", "sort", "disabled_flag", "deleted_flag", "remark", "update_time", "create_time") VALUES (357, '小米', 1, 1, 0, 0, 0, NULL, '2022-10-10 22:27:39', '2022-10-10 22:27:39');
COMMIT;

-- ----------------------------
-- Table structure for t_change_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_change_log";
CREATE TABLE "public"."t_change_log" (
  "id" int4 NOT NULL DEFAULT nextval('t_change_log_id_seq'::regclass),
  "version" text COLLATE "pg_catalog"."default",
  "type" int4 NOT NULL,
  "publish_author" text COLLATE "pg_catalog"."default" NOT NULL,
  "public_date" text COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "link" text COLLATE "pg_catalog"."default",
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_change_log" OWNER TO "postgres";

-- ----------------------------
-- Records of t_change_log
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_change_log" ("id", "version", "type", "publish_author", "public_date", "content", "link", "create_time", "update_time") VALUES (2, 'v1.1.0', 2, '卓大11', '2020-05-09', 'SmartAdmin中后台系统 v1.1.0 版本（20200422）正式更新上线，更新内容如下：

1.【新增】增加员工姓名查询

2.【新增】增加文件预览组件

3.【新增】新增四级菜单
', 'http://smartadmin.1024lab.net/views/1.x/base/About.html', '2022-10-10 11:27:31', '2024-07-14 11:07:49');
INSERT INTO "public"."t_change_log" ("id", "version", "type", "publish_author", "public_date", "content", "link", "create_time", "update_time") VALUES (19, 'v1.0.0', 1, 'xiusin', '2024-07-10', '切换PG', '', '2024-07-14 11:10:17', '2024-07-14 11:10:17');
COMMIT;

-- ----------------------------
-- Table structure for t_code_generator_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_code_generator_config";
CREATE TABLE "public"."t_code_generator_config" (
  "id" int4 NOT NULL DEFAULT nextval('t_code_generator_config_id_seq'::regclass),
  "table_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "basic" text COLLATE "pg_catalog"."default",
  "fields" text COLLATE "pg_catalog"."default",
  "insert_and_update" text COLLATE "pg_catalog"."default",
  "delete_info" text COLLATE "pg_catalog"."default",
  "query_fields" text COLLATE "pg_catalog"."default",
  "table_fields" text COLLATE "pg_catalog"."default",
  "detail" text COLLATE "pg_catalog"."default",
  "create_time" text COLLATE "pg_catalog"."default",
  "update_time" text COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."t_code_generator_config" OWNER TO "postgres";

-- ----------------------------
-- Records of t_code_generator_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_config";
CREATE TABLE "public"."t_config" (
  "id" int4 NOT NULL DEFAULT nextval('t_config_id_seq'::regclass),
  "config_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "config_key" text COLLATE "pg_catalog"."default" NOT NULL,
  "config_value" text COLLATE "pg_catalog"."default" NOT NULL,
  "remark" text COLLATE "pg_catalog"."default",
  "update_time" text COLLATE "pg_catalog"."default",
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_config" OWNER TO "postgres";

-- ----------------------------
-- Records of t_config
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_config" ("id", "config_name", "config_key", "config_value", "remark", "update_time", "create_time") VALUES (1, '万能密码', 'super_password', 'sasasa', '建议定期修改', '2023-05-03 11:08:26', '2021-12-16 23:32:46');
INSERT INTO "public"."t_config" ("id", "config_name", "config_key", "config_value", "remark", "update_time", "create_time") VALUES (2, '本地上传url前缀', 'local_upload_url_prefix', 'http://localhost/file/', NULL, '2022-05-20 23:28:38', '2022-03-22 13:36:01');
INSERT INTO "public"."t_config" ("id", "config_name", "config_key", "config_value", "remark", "update_time", "create_time") VALUES (7, '登录失效时间（单位 小时）', 'login_expires_hour', '2', NULL, '2022-10-16 19:04:59', '2022-10-16 19:04:59');
INSERT INTO "public"."t_config" ("id", "config_name", "config_key", "config_value", "remark", "update_time", "create_time") VALUES (8, '邮箱域名', 'email_domain', 'https://www.baidu.com', '指定邮箱访问地址', '2024-07-14 19:20:59', '2021-12-16 23:32:46');
INSERT INTO "public"."t_config" ("id", "config_name", "config_key", "config_value", "remark", "update_time", "create_time") VALUES (27, 'Jwt加密串', 'secret_salt', 'Gr.xn5bG:-', '不要随机修改，会导致所有token过期', '2024-07-14 19:20:54', '2024-07-14 19:20:34');
COMMIT;

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_department";
CREATE TABLE "public"."t_department" (
  "id" int4 NOT NULL DEFAULT nextval('t_department_id_seq'::regclass),
  "name" text COLLATE "pg_catalog"."default" NOT NULL,
  "manager_id" int4,
  "parent_id" int4 NOT NULL,
  "sort" int4 NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_department" OWNER TO "postgres";

-- ----------------------------
-- Records of t_department
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_department" ("id", "name", "manager_id", "parent_id", "sort", "update_time", "create_time") VALUES (1, '1024创新实验室', 1, 0, 1, '2022-10-19 20:17:09', '2022-10-19 20:17:09');
INSERT INTO "public"."t_department" ("id", "name", "manager_id", "parent_id", "sort", "update_time", "create_time") VALUES (2, '开发部', 44, 1, 1000, '2022-10-19 20:22:23', '2022-10-19 20:22:23');
INSERT INTO "public"."t_department" ("id", "name", "manager_id", "parent_id", "sort", "update_time", "create_time") VALUES (3, '产品部', 2, 1, 99, '2022-10-21 10:25:30', '2022-10-21 10:25:30');
INSERT INTO "public"."t_department" ("id", "name", "manager_id", "parent_id", "sort", "update_time", "create_time") VALUES (4, '销售部', 64, 1, 9, '2022-10-21 10:25:47', '2022-10-21 10:25:47');
COMMIT;

-- ----------------------------
-- Table structure for t_dict_key
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_dict_key";
CREATE TABLE "public"."t_dict_key" (
  "id" int4 NOT NULL DEFAULT nextval('t_dict_key'::regclass),
  "key_code" text COLLATE "pg_catalog"."default" NOT NULL,
  "key_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "remark" text COLLATE "pg_catalog"."default",
  "deleted_flag" int4 NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_dict_key" OWNER TO "postgres";

-- ----------------------------
-- Records of t_dict_key
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_dict_key" ("id", "key_code", "key_name", "remark", "deleted_flag", "update_time", "create_time") VALUES (1, 'GODOS_PLACE', '商品产地', '商品产地的字典', 0, '2023-05-03 14:32:45', '2022-10-21 16:07:41');
COMMIT;

-- ----------------------------
-- Table structure for t_dict_value
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_dict_value";
CREATE TABLE "public"."t_dict_value" (
  "id" int4 NOT NULL DEFAULT nextval('t_dict_value'::regclass),
  "dict_key_id" int4 NOT NULL,
  "value_code" text COLLATE "pg_catalog"."default" NOT NULL,
  "value_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "remark" text COLLATE "pg_catalog"."default",
  "sort" int4 NOT NULL,
  "deleted_flag" int4 NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_dict_value" OWNER TO "postgres";

-- ----------------------------
-- Records of t_dict_value
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_dict_value" ("id", "dict_key_id", "value_code", "value_name", "remark", "sort", "deleted_flag", "update_time", "create_time") VALUES (1, 1, 'LUO_YANG', '洛阳', '', 1, 0, '2022-10-21 16:07:54', '2022-10-21 16:07:54');
INSERT INTO "public"."t_dict_value" ("id", "dict_key_id", "value_code", "value_name", "remark", "sort", "deleted_flag", "update_time", "create_time") VALUES (2, 1, 'ZHENG_ZHOU', '郑州', '', 1, 0, '2022-10-21 16:08:02', '2022-10-21 16:08:02');
INSERT INTO "public"."t_dict_value" ("id", "dict_key_id", "value_code", "value_name", "remark", "sort", "deleted_flag", "update_time", "create_time") VALUES (3, 1, 'BEI_JING', '北京', '', 3, 0, '2022-10-21 19:13:03', '2022-10-21 16:08:22');
COMMIT;

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_employee";
CREATE TABLE "public"."t_employee" (
  "id" int4 NOT NULL DEFAULT nextval('t_employee_id_seq'::regclass),
  "login_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "login_pwd" text COLLATE "pg_catalog"."default" NOT NULL,
  "actual_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "gender" int4 NOT NULL,
  "phone" text COLLATE "pg_catalog"."default",
  "department_id" int4 NOT NULL,
  "disabled_flag" int4 NOT NULL,
  "deleted_flag" int4 NOT NULL,
  "administrator_flag" int4 NOT NULL,
  "remark" text COLLATE "pg_catalog"."default",
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "token" text COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."t_employee" OWNER TO "postgres";

-- ----------------------------
-- Records of t_employee
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_employee" ("id", "login_name", "login_pwd", "actual_name", "gender", "phone", "department_id", "disabled_flag", "deleted_flag", "administrator_flag", "remark", "update_time", "create_time", "token") VALUES (44, 'zhuoda', 'e10adc3949ba59abbe56e057f20f883e', '卓大', 1, '18637925892', 3, 0, 0, 1, NULL, '2023-05-19 13:12:08', '2021-08-11 10:04:53', NULL);
INSERT INTO "public"."t_employee" ("id", "login_name", "login_pwd", "actual_name", "gender", "phone", "department_id", "disabled_flag", "deleted_flag", "administrator_flag", "remark", "update_time", "create_time", "token") VALUES (66, '12asasda', 'e10adc3949ba59abbe56e057f20f883e', 'asdaq2ww', 1, '17717717712', 3, 1, 0, 0, NULL, '2023-05-03 13:36:57', '2022-06-16 17:24:56', NULL);
INSERT INTO "public"."t_employee" ("id", "login_name", "login_pwd", "actual_name", "gender", "phone", "department_id", "disabled_flag", "deleted_flag", "administrator_flag", "remark", "update_time", "create_time", "token") VALUES (69, 'peixian', 'e10adc3949ba59abbe56e057f20f883e', '佩弦', 1, '18377482773', 1, 1, 0, 0, NULL, '2023-04-30 15:09:50', '2022-06-25 16:42:52', NULL);
INSERT INTO "public"."t_employee" ("id", "login_name", "login_pwd", "actual_name", "gender", "phone", "department_id", "disabled_flag", "deleted_flag", "administrator_flag", "remark", "update_time", "create_time", "token") VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', 0, '13500000000', 4, 0, 0, 1, NULL, '2023-05-13 08:29:49', '2018-05-11 09:38:54', NULL);
INSERT INTO "public"."t_employee" ("id", "login_name", "login_pwd", "actual_name", "gender", "phone", "department_id", "disabled_flag", "deleted_flag", "administrator_flag", "remark", "update_time", "create_time", "token") VALUES (67, 'chuxiao', 'e10adc3949ba59abbe56e057f20f883e', '初晓', 1, '13123123123', 3, 0, 0, 0, NULL, '2023-05-13 08:42:44', '2022-06-16 17:28:32', NULL);
INSERT INTO "public"."t_employee" ("id", "login_name", "login_pwd", "actual_name", "gender", "phone", "department_id", "disabled_flag", "deleted_flag", "administrator_flag", "remark", "update_time", "create_time", "token") VALUES (65, 'feiye', 'e10adc3949ba59abbe56e057f20f883e', '飞叶', 1, '13123123112', 1, 0, 0, 0, NULL, '2023-05-12 22:52:46', '2022-06-16 17:24:18', NULL);
INSERT INTO "public"."t_employee" ("id", "login_name", "login_pwd", "actual_name", "gender", "phone", "department_id", "disabled_flag", "deleted_flag", "administrator_flag", "remark", "update_time", "create_time", "token") VALUES (2, 'huke', '1d4a31cdf82dfde519d5736035d2e2b2', '胡克', 0, '13123123121', 1, 1, 0, 0, NULL, '2024-07-14 11:35:59', '2021-07-29 11:24:55', NULL);
INSERT INTO "public"."t_employee" ("id", "login_name", "login_pwd", "actual_name", "gender", "phone", "department_id", "disabled_flag", "deleted_flag", "administrator_flag", "remark", "update_time", "create_time", "token") VALUES (47, 'shanyi', '13da2255730036fb1136b8dca6a2892a', '善逸', 1, '13123111123', 4, 0, 0, 0, NULL, '2024-07-14 11:37:37', '2021-08-16 17:14:55', NULL);
INSERT INTO "public"."t_employee" ("id", "login_name", "login_pwd", "actual_name", "gender", "phone", "department_id", "disabled_flag", "deleted_flag", "administrator_flag", "remark", "update_time", "create_time", "token") VALUES (68, 'xuanpeng', 'e10adc3949ba59abbe56e057f20f883e', '玄朋', 1, '13123123124', 3, 0, 0, 0, NULL, '2023-05-13 08:42:44', '2022-06-16 17:30:17', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_feedback
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_feedback";
CREATE TABLE "public"."t_feedback" (
  "id" int4 NOT NULL DEFAULT nextval('t_feedback_id_seq'::regclass),
  "feedback_content" text COLLATE "pg_catalog"."default",
  "feedback_attachment" text COLLATE "pg_catalog"."default",
  "user_id" int4 NOT NULL,
  "user_type" int4 NOT NULL,
  "user_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_feedback" OWNER TO "postgres";

-- ----------------------------
-- Records of t_feedback
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_feedback" ("id", "feedback_content", "feedback_attachment", "user_id", "user_type", "user_name", "create_time", "update_time") VALUES (1, '希望增加微信公众号消息提醒功能', 'public/feedback/609fd595e8a9416b992c3a00e37cc8e0_20221022133322_jpg', 44, 1, '卓大', '2022-10-22 13:33:25', '2022-10-22 13:33:25');
INSERT INTO "public"."t_feedback" ("id", "feedback_content", "feedback_attachment", "user_id", "user_type", "user_name", "create_time", "update_time") VALUES (2, '顶部菜单希望能尽快实现', '', 44, 1, '卓大', '2022-10-22 13:34:20', '2022-10-22 13:34:20');
INSERT INTO "public"."t_feedback" ("id", "feedback_content", "feedback_attachment", "user_id", "user_type", "user_name", "create_time", "update_time") VALUES (3, 'app版本什么时候能推出？', '', 1, 1, '管理员', '2022-10-22 13:35:13', '2022-10-22 13:35:13');
INSERT INTO "public"."t_feedback" ("id", "feedback_content", "feedback_attachment", "user_id", "user_type", "user_name", "create_time", "update_time") VALUES (4, '嘿嘿嘿哈哈哈', NULL, 1, 1, '管理员', '2023-05-03 15:01:23', '2023-05-03 15:01:23');
COMMIT;

-- ----------------------------
-- Table structure for t_file
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_file";
CREATE TABLE "public"."t_file" (
  "id" int4 NOT NULL DEFAULT nextval('t_file_id_seq'::regclass),
  "folder_type" int4 NOT NULL,
  "file_name" text COLLATE "pg_catalog"."default",
  "file_size" int4,
  "file_key" text COLLATE "pg_catalog"."default" NOT NULL,
  "file_type" text COLLATE "pg_catalog"."default" NOT NULL,
  "creator_id" int4,
  "creator_user_type" int4,
  "creator_name" text COLLATE "pg_catalog"."default",
  "update_time" text COLLATE "pg_catalog"."default",
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "md5" text COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."t_file" OWNER TO "postgres";

-- ----------------------------
-- Records of t_file
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_file" ("id", "folder_type", "file_name", "file_size", "file_key", "file_type", "creator_id", "creator_user_type", "creator_name", "update_time", "create_time", "md5") VALUES (4, 1, '1024lab-gzh.jpg', 27898, 'public/common/7e3cb80f02c84ca3aba359f166c8c69e-20221021115207-jpg', 'jpg', 1, 1, '管理员', '2022-10-21 11:52:07', '2022-10-21 11:52:07', NULL);
INSERT INTO "public"."t_file" ("id", "folder_type", "file_name", "file_size", "file_key", "file_type", "creator_id", "creator_user_type", "creator_name", "update_time", "create_time", "md5") VALUES (5, 1, 'QQ拼音截图20220914221459.png', 4088, 'public/common/b298956317bd419d899a4d3f1d28dbb6-20221021115215-png', 'png', 1, 1, '管理员', '2022-10-21 11:52:15', '2022-10-21 11:52:15', NULL);
INSERT INTO "public"."t_file" ("id", "folder_type", "file_name", "file_size", "file_key", "file_type", "creator_id", "creator_user_type", "creator_name", "update_time", "create_time", "md5") VALUES (6, 1, 'dfcb686a409e8c0e0c93f95e7129dc46.jpeg', 30137, 'public/common/b817542a80a84435ae86991d68546eb4_20221021121746_jpeg', 'jpeg', 1, 1, '管理员', '2022-10-21 12:17:47', '2022-10-21 12:17:47', NULL);
INSERT INTO "public"."t_file" ("id", "folder_type", "file_name", "file_size", "file_key", "file_type", "creator_id", "creator_user_type", "creator_name", "update_time", "create_time", "md5") VALUES (7, 1, 'QQ拼音截图20220914221459.png', 4088, 'public/common/888ea37c5a6c4c088658264464ba3cae_20221021121755_png', 'png', 1, 1, '管理员', '2022-10-21 12:17:55', '2022-10-21 12:17:55', NULL);
INSERT INTO "public"."t_file" ("id", "folder_type", "file_name", "file_size", "file_key", "file_type", "creator_id", "creator_user_type", "creator_name", "update_time", "create_time", "md5") VALUES (18, 4, 'zhuoda-wechat.jpg', 42080, 'public/feedback/609fd595e8a9416b992c3a00e37cc8e0_20221022133322_jpg', 'jpg', 44, 1, '卓大', '2022-10-22 13:33:23', '2022-10-22 13:33:23', NULL);
INSERT INTO "public"."t_file" ("id", "folder_type", "file_name", "file_size", "file_key", "file_type", "creator_id", "creator_user_type", "creator_name", "update_time", "create_time", "md5") VALUES (19, 1, '1024lab-gzh.jpg', 27898, 'public/common/fb827d63dda74a60ab8b4f70cc7c7d0a_20221022145641_jpg', 'jpg', 44, 1, '卓大', '2022-10-22 14:56:42', '2022-10-22 14:56:42', NULL);
INSERT INTO "public"."t_file" ("id", "folder_type", "file_name", "file_size", "file_key", "file_type", "creator_id", "creator_user_type", "creator_name", "update_time", "create_time", "md5") VALUES (20, 1, 'xiaozhen-gzh.jpg', 8786, 'public/common/f4a76fa720814949a610f05f6f9545bf_20221022170256_jpg', 'jpg', 1, 1, '管理员', '2022-10-22 17:02:56', '2022-10-22 17:02:56', NULL);
INSERT INTO "public"."t_file" ("id", "folder_type", "file_name", "file_size", "file_key", "file_type", "creator_id", "creator_user_type", "creator_name", "update_time", "create_time", "md5") VALUES (21, 1, '1024lab-gzh.jpg', 27898, 'public/common/852b7e19bef94af39c1a6156edf47cfb_20221022170332_jpg', 'jpg', 1, 1, '管理员', '2022-10-22 17:03:32', '2022-10-22 17:03:32', NULL);
INSERT INTO "public"."t_file" ("id", "folder_type", "file_name", "file_size", "file_key", "file_type", "creator_id", "creator_user_type", "creator_name", "update_time", "create_time", "md5") VALUES (22, 1, 'authenticator.txt', 321, 'uploads/authenticator.txt', 'text/plain', 1, 0, '管理员', '2023-04-30 22:42:01', '2023-04-30 22:42:01', NULL);
INSERT INTO "public"."t_file" ("id", "folder_type", "file_name", "file_size", "file_key", "file_type", "creator_id", "creator_user_type", "creator_name", "update_time", "create_time", "md5") VALUES (23, 4, '微信图片_20230411151306.jpg', 39268, 'uploads/微信图片_20230411151306.jpg', 'jpg', 1, 0, '管理员', '2023-05-03 15:58:37', '2023-05-03 15:58:37', NULL);
INSERT INTO "public"."t_file" ("id", "folder_type", "file_name", "file_size", "file_key", "file_type", "creator_id", "creator_user_type", "creator_name", "update_time", "create_time", "md5") VALUES (24, 4, '12000a8513002996349c77e8ff673d19.jpg', 39268, 'uploads/12000a8513002996349c77e8ff673d19.jpg', 'image/jpeg', 1, 0, '管理员', '2023-05-03 16:05:52', '2023-05-03 16:05:52', '12000a8513002996349c77e8ff673d19');
COMMIT;

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_login_log";
CREATE TABLE "public"."t_login_log" (
  "id" int4 NOT NULL DEFAULT nextval('t_login_log_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "user_type" int4 NOT NULL,
  "user_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "login_ip" text COLLATE "pg_catalog"."default",
  "user_agent" text COLLATE "pg_catalog"."default",
  "login_result" int4 NOT NULL,
  "remark" text COLLATE "pg_catalog"."default",
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_login_log" OWNER TO "postgres";

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_login_log" ("id", "user_id", "user_type", "user_name", "login_ip", "user_agent", "login_result", "remark", "update_time", "create_time") VALUES (18, 1, 1, '管理员', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 0, 'success', '2024-07-14 11:01:41', '2024-07-14 11:01:41');
INSERT INTO "public"."t_login_log" ("id", "user_id", "user_type", "user_name", "login_ip", "user_agent", "login_result", "remark", "update_time", "create_time") VALUES (28, 1, 1, '管理员', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 0, 'success', '2024-07-14 19:28:03', '2024-07-14 19:28:03');
INSERT INTO "public"."t_login_log" ("id", "user_id", "user_type", "user_name", "login_ip", "user_agent", "login_result", "remark", "update_time", "create_time") VALUES (1, 1, 1, '管理员', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 0, 'success', '2024-07-28 09:32:00', '2024-07-28 09:32:00');
COMMIT;

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_menu";
CREATE TABLE "public"."t_menu" (
  "id" int4 NOT NULL DEFAULT nextval('t_menu_id_seq'::regclass),
  "menu_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "menu_type" int4 NOT NULL,
  "parent_id" int4 NOT NULL,
  "sort" int4,
  "path" text COLLATE "pg_catalog"."default",
  "component" text COLLATE "pg_catalog"."default",
  "perms_type" int4,
  "api_perms" text COLLATE "pg_catalog"."default",
  "web_perms" text COLLATE "pg_catalog"."default",
  "icon" text COLLATE "pg_catalog"."default",
  "context_menu_id" int4,
  "frame_flag" int4 NOT NULL,
  "frame_url" text COLLATE "pg_catalog"."default",
  "cache_flag" int4 NOT NULL,
  "visible_flag" int4 NOT NULL,
  "disabled_flag" int4 NOT NULL,
  "deleted_flag" int4 NOT NULL,
  "create_user_id" int4 NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "update_user_id" int4,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_menu" OWNER TO "postgres";

-- ----------------------------
-- Records of t_menu
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (26, '菜单管理', 2, 50, 0, '/menu/list', '/system/menu/menu-list.vue', NULL, NULL, NULL, 'CopyOutlined', NULL, 0, NULL, 1, 1, 0, 0, 2, '2021-08-09 15:04:35', 1, '2022-10-16 00:04:19');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (40, '批量删除', 3, 26, NULL, NULL, NULL, 1, NULL, 'system:menu:batch:delete', NULL, 26, 0, NULL, 0, 1, 0, 0, 1, '2021-08-12 09:45:56', 1, '2022-10-22 10:39:01');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (45, '部门员工', 1, 0, 100, '/organization', NULL, NULL, NULL, NULL, 'UserSwitchOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2021-08-12 16:13:27', 44, '2022-10-22 11:19:49');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (46, '部门员工', 2, 45, 1, '/employee/department', '/system/employee/department/index.vue', NULL, NULL, NULL, 'AuditOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2021-08-12 16:21:50', 1, '2022-06-23 16:19:54');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (47, '商品管理', 2, 48, 3, '/erp/goods/list', '/business/erp/goods/goods-list.vue', NULL, NULL, NULL, 'AliwangwangOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2021-08-12 17:58:39', 1, '2022-09-14 21:50:11');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (48, '商品管理', 1, 137, 10, '/goods', NULL, NULL, NULL, NULL, 'BarcodeOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2021-08-12 18:02:59', 1, '2022-06-24 20:07:35');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (50, '系统设置', 1, 0, 200, '/setting', NULL, NULL, NULL, NULL, 'SettingOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2021-08-13 16:41:33', 1, '2022-09-14 15:46:51');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (76, '角色管理', 2, 45, 2, '/employee/role', '/system/employee/role/index.vue', NULL, NULL, NULL, 'SlidersOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2021-08-26 10:31:00', 1, '2022-06-23 16:21:06');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (78, '商品分类', 2, 48, 1, '/erp/catalog/goods', '/business/erp/catalog/goods-catalog.vue', NULL, NULL, NULL, 'ApartmentOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-18 23:34:14', 1, '2022-09-14 21:52:12');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (79, '自定义分组', 2, 48, 2, '/erp/catalog/custom', '/business/erp/catalog/custom-catalog.vue', NULL, NULL, NULL, 'AppstoreAddOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-18 23:37:53', 1, '2022-09-14 21:50:58');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (81, '请求监控', 2, 111, 3, '/support/operate-log/operate-log-list', '/support/operate-log/operate-log-list.vue', NULL, NULL, NULL, 'VideoCameraOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-20 12:37:24', 1, '2022-10-22 18:33:10');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (85, '组件演示', 2, 84, NULL, '/demonstration/index', '/support/demonstration/index.vue', NULL, NULL, NULL, 'ClearOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-20 23:16:46', NULL, '2022-05-20 23:16:46');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (86, '添加部门', 3, 46, NULL, NULL, NULL, 1, NULL, 'system:department:add', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-26 23:33:37', NULL, '2022-10-22 10:39:01');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (87, '修改部门', 3, 46, NULL, NULL, NULL, 1, NULL, 'system:department:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-26 23:34:11', NULL, '2022-10-22 10:39:02');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (88, '删除部门', 3, 46, NULL, NULL, NULL, 1, NULL, 'system:department:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-26 23:34:49', NULL, '2022-10-22 10:39:03');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (91, '添加员工', 3, 46, NULL, NULL, NULL, 1, NULL, 'system:employee:add', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:11:38', NULL, '2022-10-22 10:39:03');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (92, '编辑员工', 3, 46, NULL, NULL, NULL, 1, NULL, 'system:employee:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:12:10', NULL, '2022-10-22 10:39:04');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (93, '禁用启用员工', 3, 46, NULL, NULL, NULL, 1, NULL, 'system:employee:disabled', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:12:37', NULL, '2022-10-22 10:39:05');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (94, '调整部门', 3, 46, NULL, NULL, NULL, 1, NULL, 'system:employee:department:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:12:59', NULL, '2022-10-22 10:39:06');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (95, '重置密码', 3, 46, NULL, NULL, NULL, 1, NULL, 'system:employee:password:reset', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:13:30', 1, '2022-10-20 13:39:13');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (96, '删除员工', 3, 46, NULL, NULL, NULL, 1, NULL, 'system:employee:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:14:08', NULL, '2022-10-22 10:39:07');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (97, '添加角色', 3, 76, NULL, NULL, NULL, 1, NULL, 'system:role:add', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:34:00', 1, '2022-10-22 10:39:09');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (98, '删除角色', 3, 76, NULL, NULL, NULL, 1, NULL, 'system:role:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:34:19', 1, '2022-10-22 10:39:09');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (99, '编辑角色', 3, 76, NULL, NULL, NULL, 1, NULL, 'system:role:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:34:55', NULL, '2022-10-22 10:39:10');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (100, '更新数据范围', 3, 76, NULL, NULL, NULL, 1, NULL, 'system:role:dataScope:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:37:03', NULL, '2022-10-22 10:39:11');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (101, '批量移除员工', 3, 76, NULL, NULL, NULL, 1, NULL, 'system:role:employee:batch:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:39:05', NULL, '2022-10-22 10:39:38');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (102, '移除员工', 3, 76, NULL, NULL, NULL, 1, NULL, 'system:role:employee:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:39:21', NULL, '2022-10-22 10:39:39');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (103, '添加员工', 3, 76, NULL, NULL, NULL, 1, NULL, 'system:role:employee:add', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:39:38', NULL, '2022-10-22 10:39:40');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (104, '修改权限', 3, 76, NULL, NULL, NULL, 1, NULL, 'system:role:menu:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:41:55', NULL, '2022-10-22 10:39:41');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (105, '添加', 3, 26, NULL, NULL, NULL, 1, NULL, 'system:menu:add', NULL, 26, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:44:37', 1, '2022-10-22 10:39:41');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (106, '编辑', 3, 26, NULL, NULL, NULL, 1, NULL, 'system:menu:update', NULL, 26, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:44:59', 1, '2022-10-22 10:39:44');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (108, '删除', 3, 26, NULL, NULL, NULL, 1, NULL, 'system:menu:delete', NULL, 26, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 00:45:55', 1, '2022-10-22 10:39:43');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (109, '参数配置', 2, 50, 3, '/config/config-list', '/support/config/config-list.vue', NULL, NULL, NULL, 'AntDesignOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 13:34:41', 1, '2022-06-23 16:24:16');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (110, '数据字典', 2, 50, 4, '/setting/dict', '/support/dict/index.vue', NULL, NULL, NULL, 'BarcodeOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-05-27 17:53:00', 1, '2022-05-27 18:09:14');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (111, '监控服务', 1, 0, 4, '/monitor', NULL, NULL, NULL, NULL, 'BarChartOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-17 11:13:23', 1, '2022-10-22 18:32:31');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (113, '查询', 3, 112, NULL, NULL, NULL, NULL, NULL, 'ad', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-17 11:31:36', NULL, '2022-06-17 11:31:36');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (114, '运维工具', 1, 0, 5, NULL, NULL, NULL, NULL, NULL, 'NodeCollapseOutlined', NULL, 0, NULL, 0, 0, 0, 0, 1, '2022-06-20 10:09:16', 1, '2022-10-22 18:32:37');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (117, 'Reload', 2, 114, NULL, '/hook', '/support/reload/reload-list.vue', NULL, NULL, NULL, 'ReloadOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-20 10:16:49', NULL, '2022-06-20 10:16:49');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (130, '单号管理', 2, 50, 6, '/support/serial-number/serial-number-list', '/support/serial-number/serial-number-list.vue', NULL, NULL, NULL, 'NumberOutlined', NULL, 0, NULL, 0, 0, 0, 0, 1, '2022-06-24 14:45:22', 1, '2022-06-28 16:23:41');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (132, '通知公告', 2, 138, NULL, '/oa/notice/notice-list', '/business/oa/notice/notice-list.vue', NULL, NULL, NULL, 'SoundOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-24 18:23:09', 1, '2022-09-14 19:54:34');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (133, '缓存管理', 2, 114, NULL, '/support/cache/cache-list', '/support/cache/cache-list.vue', NULL, NULL, NULL, 'BorderInnerOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-24 18:52:25', NULL, '2022-06-24 18:52:25');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (137, '进销存系统', 1, 0, 2, NULL, NULL, NULL, NULL, NULL, 'AccountBookOutlined', NULL, 0, NULL, 0, 0, 0, 0, 1, '2022-06-24 20:07:20', 1, '2022-10-22 18:30:19');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (138, 'OA系统', 1, 0, 1, NULL, NULL, NULL, NULL, NULL, 'BankOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-24 20:09:18', 1, '2022-10-22 18:30:15');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (142, '公告详情', 2, 132, NULL, '/oa/notice/notice-detail', '/business/oa/notice/notice-detail.vue', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 1, '2022-06-25 16:38:47', 1, '2022-09-14 19:46:17');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (143, '登录日志', 2, 111, 2, '/support/login-log/login-log-list', '/support/login-log/login-log-list.vue', NULL, NULL, NULL, 'LoginOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-06-28 15:01:38', 1, '2022-10-22 18:33:03');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (194, '删除', 3, 47, NULL, NULL, NULL, 1, NULL, 'goods:delete', NULL, 47, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 20:00:12', 1, '2022-10-21 20:04:58');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (144, '企业信息', 2, 138, 2, '/oa/enterprise/enterprise-list', '/business/oa/enterprise/enterprise-list.vue', NULL, NULL, NULL, 'ShopOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-09-14 17:00:07', 1, '2022-09-14 19:04:58');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (145, '企业详情', 2, 144, NULL, '/oa/enterprise/enterprise-detail', '/business/oa/enterprise/enterprise-detail.vue', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 1, '2022-09-14 18:52:52', NULL, '2022-09-14 18:52:52');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (146, '系统文档', 1, 0, 3, NULL, NULL, NULL, NULL, NULL, 'FileWordOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-09-14 19:56:53', 1, '2022-10-22 18:30:26');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (147, '系统手册', 2, 146, NULL, '/help-doc/help-doc-manage-list', '/support/help-doc/management/help-doc-manage-list.vue', NULL, NULL, NULL, 'FolderViewOutlined', NULL, 0, NULL, 0, 0, 0, 0, 1, '2022-09-14 19:59:01', NULL, '2022-09-14 19:59:01');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (148, '意见反馈', 2, 146, NULL, '/feedback/feedback-list', '/support/feedback/feedback-list.vue', NULL, NULL, NULL, 'CoffeeOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-09-14 19:59:52', 1, '2022-09-14 20:00:37');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (149, '我的通知', 2, 132, NULL, '/oa/notice/notice-employee-list', '/business/oa/notice/notice-employee-list.vue', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 1, '2022-09-14 20:29:41', 1, '2022-09-14 20:31:23');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (150, '我的通知公告详情', 2, 132, NULL, '/oa/notice/notice-employee-detail', '/business/oa/notice/notice-employee-detail.vue', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 1, '2022-09-14 20:30:25', 1, '2022-09-14 20:31:38');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (152, '更新日志', 2, 146, 3, '/support/change-log/change-log-list', '/support/change-log/change-log-list.vue', NULL, NULL, NULL, 'HeartOutlined', NULL, 0, NULL, 0, 1, 0, 0, 44, '2022-10-10 10:31:20', 44, '2022-10-10 10:31:45');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (153, '清除缓存', 3, 133, NULL, NULL, NULL, 1, NULL, 'support:cache:delete', NULL, 133, 0, NULL, 0, 1, 1, 0, 1, '2022-10-15 22:45:13', 1, '2022-10-21 20:37:13');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (154, '获取缓存key', 3, 133, NULL, NULL, NULL, NULL, NULL, 'support:cache:keys', NULL, 133, 0, NULL, 0, 1, 1, 0, 1, '2022-10-15 22:45:48', 1, '2022-10-15 23:40:09');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (155, '执行', 3, 117, NULL, NULL, NULL, 1, NULL, 'support:reload:execute', NULL, 117, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:16:45', 1, '2022-10-22 10:37:33');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (156, '查看结果', 3, 117, NULL, NULL, NULL, 1, NULL, 'support:reload:result', NULL, 117, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:17:23', 1, '2022-10-22 10:37:36');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (157, '单号生成', 3, 130, NULL, NULL, NULL, 1, NULL, 'support:serial:number:generate', NULL, 130, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:21:06', 1, '2022-10-22 10:36:34');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (158, '生成记录', 3, 130, NULL, NULL, NULL, 1, NULL, 'support:serial:number:record', NULL, 130, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:21:34', 1, '2022-10-22 10:36:42');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (159, '新建', 3, 110, NULL, NULL, NULL, 1, NULL, 'support:dict:add', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:23:51', NULL, '2022-10-22 10:41:07');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (160, '编辑', 3, 110, NULL, NULL, NULL, 1, NULL, 'support:dict:update', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:24:05', NULL, '2022-10-22 10:41:08');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (161, '批量删除', 3, 110, NULL, NULL, NULL, 1, NULL, 'support:dict:batch:delete', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:24:34', NULL, '2022-10-22 10:41:09');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (162, '刷新缓存', 3, 110, NULL, NULL, NULL, 1, NULL, 'support:dict:refresh', NULL, 110, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:24:55', NULL, '2022-10-22 10:41:10');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (163, '新建', 3, 109, NULL, NULL, NULL, 1, NULL, 'support:config:add', NULL, 109, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:26:56', NULL, '2022-10-22 10:41:10');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (164, '编辑', 3, 109, NULL, NULL, NULL, 11, NULL, 'support:config:update', NULL, 109, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:27:07', NULL, '2022-10-22 10:41:12');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (165, '查询', 3, 47, NULL, NULL, NULL, 1, NULL, 'goods:query', NULL, 47, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 19:55:39', NULL, '2022-10-22 10:41:13');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (166, '新建', 3, 47, NULL, NULL, NULL, 1, NULL, 'goods:add', NULL, 47, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 19:56:00', NULL, '2022-10-22 10:41:14');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (167, '批量删除', 3, 47, NULL, NULL, NULL, 1, NULL, 'goods:batchDelete', NULL, 47, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 19:56:15', NULL, '2022-10-22 10:41:15');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (168, '查询', 3, 147, NULL, NULL, NULL, 1, NULL, 'helpDoc:query', NULL, 147, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:12:13', NULL, '2022-10-22 10:41:17');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (169, '新建', 3, 147, NULL, NULL, NULL, 1, NULL, 'helpDoc:add', NULL, 147, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:12:37', 1, '2022-10-21 20:49:24');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (170, '新建目录', 3, 147, NULL, NULL, NULL, 1, NULL, 'helpDocCatalog:addCategory', NULL, 147, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:12:57', NULL, '2022-10-22 10:41:18');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (171, '修改目录', 3, 147, NULL, NULL, NULL, 1, NULL, 'helpDocCatalog:edit', NULL, 147, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:13:46', 1, '2022-10-21 20:50:01');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (173, '新建', 3, 78, NULL, NULL, NULL, 1, NULL, 'goodsCategory:add', NULL, 78, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:17:02', NULL, '2022-10-22 10:41:19');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (174, '添加子分类', 3, 78, NULL, NULL, NULL, 1, NULL, 'goodsCategory:addChild', NULL, 78, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:17:22', NULL, '2022-10-22 10:41:21');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (175, '编辑', 3, 78, NULL, NULL, NULL, 1, NULL, 'goodsCategory:edit', NULL, 78, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:17:38', NULL, '2022-10-22 10:41:22');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (176, '删除', 3, 78, NULL, NULL, NULL, 1, NULL, 'goodsCategory:delete', NULL, 78, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:17:50', NULL, '2022-10-22 10:41:22');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (177, '新建', 3, 79, NULL, NULL, NULL, 1, NULL, 'customCategory:add', NULL, 78, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:17:02', NULL, '2022-10-22 10:41:23');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (178, '添加子分类', 3, 79, NULL, NULL, NULL, 1, NULL, 'customCategory:addChild', NULL, 78, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:17:22', NULL, '2022-10-22 10:41:24');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (179, '编辑', 3, 79, NULL, NULL, NULL, 1, NULL, 'customCategory:edit', NULL, 78, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:17:38', NULL, '2022-10-22 10:41:24');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (180, '删除', 3, 79, NULL, NULL, NULL, 1, NULL, 'customCategory:delete', NULL, 78, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:17:50', NULL, '2022-10-22 10:41:25');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (181, '查询', 3, 144, NULL, NULL, NULL, 2, 'EnterpriseController.deleteEnterprise', 'enterprise:query', NULL, 144, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:25:14', 1, '2022-10-21 20:15:12');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (182, '新建', 3, 144, NULL, NULL, NULL, 2, 'EnterpriseController.createEnterprise', 'enterprise:add', NULL, 144, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:25:25', 1, '2022-10-21 20:15:30');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (183, '编辑', 3, 144, NULL, NULL, NULL, 2, 'EnterpriseController.updateEnterprise', 'enterprise:edit', NULL, 144, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:25:36', 1, '2022-10-21 20:15:39');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (184, '删除', 3, 144, NULL, NULL, NULL, 2, 'EnterpriseController.deleteEnterprise', 'enterprise:delete', NULL, 144, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:25:53', 1, '2022-10-21 20:11:24');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (185, '查询', 3, 132, NULL, NULL, NULL, 2, 'NoticeController.query', 'notice:query', NULL, 132, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:26:38', 1, '2022-10-21 20:19:24');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (186, '新建', 3, 132, NULL, NULL, NULL, 2, 'NoticeController.add', 'notice:add', NULL, 132, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:27:04', 1, '2022-10-21 20:19:49');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (187, '编辑', 3, 132, NULL, NULL, NULL, 2, 'NoticeController.update', 'notice:edit', NULL, 132, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:27:15', 1, '2022-10-21 20:21:16');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (188, '删除', 3, 132, NULL, NULL, NULL, 2, 'NoticeController.delete', 'notice:delete', NULL, 132, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:27:23', 1, '2022-10-21 20:21:25');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (189, '查询', 3, 148, NULL, NULL, NULL, 1, NULL, 'feedback:query', NULL, 148, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:28:04', 1, '2022-10-22 10:38:46');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (190, '查询', 3, 152, NULL, NULL, NULL, 1, NULL, 'changeLog:query', NULL, 152, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:28:33', 1, '2022-10-21 20:42:00');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (191, '新建', 3, 152, NULL, NULL, NULL, 1, NULL, 'changeLog:add', NULL, 152, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:28:46', 1, '2022-10-21 20:42:09');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (192, '批量删除', 3, 152, NULL, NULL, NULL, 1, NULL, 'changeLog:batchDelete', NULL, 152, 0, NULL, 0, 1, 0, 0, 1, '2022-10-16 20:29:10', 1, '2022-10-21 20:42:16');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (193, '文件管理', 2, 50, 20, '/support/file/file-list', '/support/file/file-list.vue', NULL, NULL, NULL, 'FolderOpenOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 11:26:11', 1, '2022-10-22 11:29:22');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (195, '修改', 3, 47, NULL, NULL, NULL, 1, NULL, 'goods:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 20:05:23', NULL, '2022-10-21 20:05:23');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (196, '查看详情', 3, 145, NULL, NULL, NULL, 2, 'EnterpriseController.getDetail', 'enterprise:detail', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 20:16:47', NULL, '2022-10-21 20:16:47');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (198, '删除', 3, 152, NULL, NULL, NULL, 1, NULL, 'changeLog:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 20:42:34', NULL, '2022-10-21 20:42:34');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (199, '查询', 3, 109, NULL, NULL, NULL, 1, NULL, 'support:config:query', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 20:45:14', NULL, '2022-10-21 20:45:14');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (200, '查询', 3, 193, NULL, NULL, NULL, 1, NULL, 'support:file:query', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 20:47:23', 1, '2022-10-22 11:21:10');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (201, '删除', 3, 147, NULL, NULL, NULL, 1, NULL, 'helpDoc:delete', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 21:03:20', NULL, '2022-10-21 21:03:20');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (202, '更新', 3, 147, NULL, NULL, NULL, 1, NULL, 'helpDoc:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 21:03:32', NULL, '2022-10-21 21:03:32');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (203, '查询', 3, 143, NULL, NULL, NULL, 1, NULL, 'loginLog:query', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-21 21:05:11', NULL, '2022-10-21 21:05:11');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (204, '查询', 3, 81, NULL, NULL, NULL, 1, NULL, 'operateLog:query', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-22 10:33:31', NULL, '2022-10-22 10:33:31');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (205, '详情', 3, 81, NULL, NULL, NULL, 1, NULL, 'operateLog:detail', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-22 10:33:49', NULL, '2022-10-22 10:33:49');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (206, '心跳监控', 2, 111, 1, '/support/heart-beat/heart-beat-list', '/support/heart-beat/heart-beat-list.vue', 1, NULL, NULL, 'FallOutlined', NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-22 10:47:03', 1, '2022-10-22 18:32:52');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (207, '更新', 3, 152, NULL, NULL, NULL, 1, NULL, 'changeLog:update', NULL, NULL, 0, NULL, 0, 1, 0, 0, 1, '2022-10-22 11:51:32', NULL, '2022-10-22 11:51:32');
INSERT INTO "public"."t_menu" ("id", "menu_name", "menu_type", "parent_id", "sort", "path", "component", "perms_type", "api_perms", "web_perms", "icon", "context_menu_id", "frame_flag", "frame_url", "cache_flag", "visible_flag", "disabled_flag", "deleted_flag", "create_user_id", "create_time", "update_user_id", "update_time") VALUES (208, '代码生成', 2, 0, NULL, '/support/code-generator', '/support/code-generator/code-generator-list.vue', 1, NULL, NULL, 'CoffeeOutlined', 130, 0, NULL, 0, 1, 0, 0, 1, '2022-10-15 23:21:34', 1, '2022-10-22 10:36:42');
COMMIT;

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_notice";
CREATE TABLE "public"."t_notice" (
  "id" int4 NOT NULL DEFAULT nextval('t_notice_id_seq'::regclass),
  "notice_type_id" int4 NOT NULL,
  "title" text COLLATE "pg_catalog"."default" NOT NULL,
  "all_visible_flag" int4 NOT NULL,
  "scheduled_publish_flag" int4 NOT NULL,
  "publish_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "content_text" text COLLATE "pg_catalog"."default" NOT NULL,
  "content_html" text COLLATE "pg_catalog"."default" NOT NULL,
  "attachment" text COLLATE "pg_catalog"."default",
  "page_view_count" int4 NOT NULL,
  "user_view_count" int4 NOT NULL,
  "source" text COLLATE "pg_catalog"."default",
  "author" text COLLATE "pg_catalog"."default",
  "document_number" text COLLATE "pg_catalog"."default",
  "deleted_flag" int4 NOT NULL,
  "create_user_id" int4,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_notice" OWNER TO "postgres";

-- ----------------------------
-- Records of t_notice
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_notice" ("id", "notice_type_id", "title", "all_visible_flag", "scheduled_publish_flag", "publish_time", "content_text", "content_html", "attachment", "page_view_count", "user_view_count", "source", "author", "document_number", "deleted_flag", "create_user_id", "update_time", "create_time") VALUES (49, 1, 'Spring Boot 3.0.0 首个 RC 发布', 1, 0, '2022-10-22 14:27:34', 'Spring Boot 3.0.0 首个 RC 发布
Spring Boot 3.0 首个 RC 已发布，此外还为两个分支发布了更新：2.7.5 & 2.6.13。
3.0.0-RC1
发布公告写道，此版本包含 135 项功能增强、文档改进、依赖升级和 Bugfix。
Spring Boot 3.0 的开发工作始于实验性的 Spring Native，旨在为 GraalVM 原生镜像提供支持。在该版本中，开发者现在可以使用标准 Spring Boot Maven 或 Gradle 插件将 Spring Boot 应用程序转换为原生可执行文件，而无需任何特殊配置。
此版本还在参考文档中添加新内容来解释 AOT 处理背后的概念以及如何开始生成第一个 GraalVM 原生镜像。
除此之外，Spring Boot 3.0 还完成了迁移到 JakartaEE 9 的工作，以及将使用的 Java 版本升级到 Java 17。
其他新特性：
为 Spring Data JDBC 提供更灵活的自动配置为 Prometheus 示例提供自动配置增强 Log4j2 功能，包括配置文件支持和环境属性查找
详情查看 Release Note。
Spring Boot 2.7.5 和 2.6.13 的更新内容主要是修复错误，优化文档和升级依赖，详情查看 Release Note (2.7.5、2.6.13)。
相关链接
Spring Boot 的详细介绍：点击查看Spring Boot 的下载地址：点击下载', '<h1 style="text-indent: 0px; text-align: start;"><a href="https://www.oschina.net/news/214401/spring-boot-3-0-0-rc1-released" target="_blank">Spring&nbsp;Boot&nbsp;3.0.0&nbsp;首个&nbsp;RC&nbsp;发布</a></h1><p>Spring&nbsp;Boot&nbsp;3.0 首个&nbsp;RC 已发布，此外还为两个分支发布了更新：2.7.5 & 2.6.13。</p><p>3.0.0-RC1</p><p>发布公告写道，此版本包含 135&nbsp;项功能增强、文档改进、依赖升级和&nbsp;Bugfix。</p><p>Spring&nbsp;Boot&nbsp;3.0&nbsp;的开发工作始于实验性的&nbsp;Spring&nbsp;Native，旨在为&nbsp;GraalVM&nbsp;原生镜像提供支持。在该版本中，开发者现在可以使用标准&nbsp;Spring&nbsp;Boot&nbsp;Maven&nbsp;或&nbsp;Gradle&nbsp;插件将&nbsp;Spring&nbsp;Boot&nbsp;应用程序转换为原生可执行文件，而无需任何特殊配置。</p><p>此版本还在参考文档中添加新内容来解释 AOT&nbsp;处理背后的概念以及如何开始生成第一个&nbsp;GraalVM&nbsp;原生镜像。</p><p>除此之外，Spring&nbsp;Boot&nbsp;3.0&nbsp;还完成了迁移到 JakartaEE&nbsp;9&nbsp;的工作，以及将使用的&nbsp;Java&nbsp;版本升级到&nbsp;Java&nbsp;17。</p><p>其他新特性：</p><p>为&nbsp;Spring&nbsp;Data&nbsp;JDBC&nbsp;提供更灵活的自动配置为&nbsp;Prometheus&nbsp;示例提供自动配置增强&nbsp;Log4j2&nbsp;功能，包括配置文件支持和环境属性查找</p><p>详情查看&nbsp;Release&nbsp;Note。</p><p>Spring&nbsp;Boot&nbsp;2.7.5&nbsp;和&nbsp;2.6.13&nbsp;的更新内容主要是修复错误，优化文档和升级依赖，详情查看&nbsp;Release&nbsp;Note&nbsp;(2.7.5、2.6.13)。</p><p>相关链接</p><p>Spring&nbsp;Boot&nbsp;的详细介绍：点击查看Spring&nbsp;Boot&nbsp;的下载地址：点击下载</p>', '', 0, 0, '开源中国', '卓大', NULL, 0, 1, '2022-10-22 14:27:33', '2022-10-22 14:27:33');
INSERT INTO "public"."t_notice" ("id", "notice_type_id", "title", "all_visible_flag", "scheduled_publish_flag", "publish_time", "content_text", "content_html", "attachment", "page_view_count", "user_view_count", "source", "author", "document_number", "deleted_flag", "create_user_id", "update_time", "create_time") VALUES (50, 1, 'Oracle 推出 JDK 8 的直接替代品', 1, 0, '2022-10-22 14:29:56', 'Oracle 推出 JDK 8 的直接替代品
来源: OSCHINA
编辑: 白开水不加糖
2022-10-20 08:14:29
 0
为了向传统的 Java 8 服务器工作负载提供 Java 17 级别的性能，Oracle 宣布推出 Java SE Subscription Enterprise Performance Pack (Enterprise Performance Pack)。并声称这是 JDK 8 的直接替代品，现已在 MyOracleSupport 上面向所有 Java SE 订阅客户和 Oracle 云基础设施 (OCI) 用户免费提供。
“Enterprise Performance Pack 为 JDK 8 用户提供了在 JDK 8 和 JDK 17 发布之间的 7 年时间里，为 Java 带来的重大内存管理和性能改进。这些改进包括：现代垃圾回收算法、紧凑字符串、增强的可观察性和数十种其他优化。”
Java 8 发布于 2014 年，和 Java 17 一样都是长期支持 (LTS) 版本；尽管发布距今已有近九年的历史，但仍被很多开发人员和组织所广泛应用。New Relic 发布的一份 “2022 年 Java 生态系统状况报告” 数据表明，Java 8 仍被 46.45% 的 Java 应用程序在生产中使用。
根据介绍，Enterprise Performance Pack 在 Intel 和基于 Arm 的系统（如 Ampere Altra）上支持 headless Linux 64 位工作负载。
Oracle 方面称，使用 Enterprise Performance Pack 的客户将可以立即看到以或接近内存或 CPU 容量运行的 JDK 8 工作负载的好处。在 Oracle 自己的产品和云服务进行的测试表明，高负载应用程序的内存和性能都提高了大约 40%。即使没有接近容量运行的 JDK 8 应用程序，也可以会看到高达 5% 的性能提升。
虽然 Enterprise Performance Pack 中包含的许多改进可以通过默认选项获得，但 Oracle 建议用户还是自己研究文档，以最大限度地提高性能并最大限度地降低内存使用率。例如，通过启用可扩展的低延迟 ZGC 垃圾收集器来提高应用程序响应能力，需要通过 -XX:+UseZGC 选项。', '<h3>Oracle&nbsp;推出&nbsp;JDK&nbsp;8&nbsp;的直接替代品</h3><p>来源:&nbsp;OSCHINA</p><p>编辑: 白开水不加糖</p><p>2022-10-20&nbsp;08:14:29</p><p> 0</p><p>为了向传统的&nbsp;Java&nbsp;8&nbsp;服务器工作负载提供&nbsp;Java&nbsp;17&nbsp;级别的性能，Oracle 宣布推出&nbsp;Java&nbsp;SE&nbsp;Subscription&nbsp;Enterprise&nbsp;Performance&nbsp;Pack&nbsp;(Enterprise&nbsp;Performance&nbsp;Pack)。并声称这是 JDK&nbsp;8&nbsp;的直接替代品，现已在 MyOracleSupport 上面向所有&nbsp;Java&nbsp;SE&nbsp;订阅客户和&nbsp;Oracle&nbsp;云基础设施&nbsp;(OCI)&nbsp;用户免费提供。</p><p>“Enterprise&nbsp;Performance&nbsp;Pack&nbsp;为&nbsp;JDK&nbsp;8&nbsp;用户提供了在&nbsp;JDK&nbsp;8&nbsp;和&nbsp;JDK&nbsp;17&nbsp;发布之间的&nbsp;7&nbsp;年时间里，为&nbsp;Java&nbsp;带来的重大内存管理和性能改进。这些改进包括：现代垃圾回收算法、紧凑字符串、增强的可观察性和数十种其他优化。”</p><p>Java&nbsp;8&nbsp;发布于&nbsp;2014&nbsp;年，和&nbsp;Java&nbsp;17&nbsp;一样都是长期支持&nbsp;(LTS)&nbsp;版本；尽管发布距今已有近九年的历史，但仍被很多开发人员和组织所广泛应用。New&nbsp;Relic&nbsp;发布的一份 “2022&nbsp;年&nbsp;Java&nbsp;生态系统状况报告”&nbsp;数据表明，Java&nbsp;8&nbsp;仍被&nbsp;46.45%&nbsp;的&nbsp;Java&nbsp;应用程序在生产中使用。</p><p>根据介绍，Enterprise&nbsp;Performance&nbsp;Pack&nbsp;在&nbsp;Intel&nbsp;和基于&nbsp;Arm&nbsp;的系统（如&nbsp;Ampere&nbsp;Altra）上支持 headless&nbsp;Linux&nbsp;64&nbsp;位工作负载。</p><p>Oracle 方面称，使用&nbsp;Enterprise&nbsp;Performance&nbsp;Pack&nbsp;的客户将可以立即看到以或接近内存或&nbsp;CPU&nbsp;容量运行的&nbsp;JDK&nbsp;8&nbsp;工作负载的好处。在&nbsp;Oracle&nbsp;自己的产品和云服务进行的测试表明，高负载应用程序的内存和性能都提高了大约&nbsp;40%。即使没有接近容量运行的&nbsp;JDK&nbsp;8&nbsp;应用程序，也可以会看到高达&nbsp;5%&nbsp;的性能提升。</p><p>虽然&nbsp;Enterprise&nbsp;Performance&nbsp;Pack&nbsp;中包含的许多改进可以通过默认选项获得，但 Oracle 建议用户还是自己研究文档，以最大限度地提高性能并最大限度地降低内存使用率。例如，通过启用可扩展的低延迟&nbsp;ZGC&nbsp;垃圾收集器来提高应用程序响应能力，需要通过&nbsp;-XX:+UseZGC&nbsp;选项。</p>', '', 0, 0, 'OSChina', '卓大', NULL, 0, 1, '2022-10-22 14:29:56', '2022-10-22 14:29:56');
INSERT INTO "public"."t_notice" ("id", "notice_type_id", "title", "all_visible_flag", "scheduled_publish_flag", "publish_time", "content_text", "content_html", "attachment", "page_view_count", "user_view_count", "source", "author", "document_number", "deleted_flag", "create_user_id", "update_time", "create_time") VALUES (51, 1, 'Spring Framework 6.0.0 RC2 发布', 1, 0, '2022-10-22 14:30:46', 'Spring Framework 6.0.0 RC2 发布
Spring Framework 6.0.0 发布了第二个 RC 版本。
新特性
确保可以在构建时评估 classpath 检查 #29352为 JPA 持久化回调引入 Register 反射提示 #29348检查 @RegisterReflectionForBinding 是否至少指定一个类 #29346为 AOT 引擎设置引入 builder API #29341支持检测正在进行的 AOT 处理 #29340重新组织 HTTP Observation 类型 #29334支持在没有 java.beans.Introspector 的前提下，执行基本属性判断 #29320为BindingReflectionHintsRegistrar 添加 Kotlin 数据类组件支持 #29316将 HttpServiceFactory 和 RSocketServiceProxyFactory 切换到 builder 模型，以便优先进行可编程配置 #29296引入基于 GraalVM FieldValueTransformer API 的 PreComputeFieldFeature#29081在 TestContext 框架中引入 SPI 来处理 ApplicationContext 故障 #28826SimpleEvaluationContext 支持禁用 array 分配 #28808DateTimeFormatterRegistrar 支持默认回退到 ISO 解析 #26985
Spring Framework 6.0 作为重大更新，要求使用 Java 17 或更高版本，并且已迁移到 Jakarta EE 9+（在 jakarta 命名空间中取代了以前基于 javax 的 EE API），以及对其他基础设施的修改。基于这些变化，Spring Framework 6.0 支持最新 Web 容器，如 Tomcat 10 / Jetty 11，以及最新的持久性框架 Hibernate ORM 6.1。这些特性仅可用于 Servlet API 和 JPA 的 jakarta 命名空间变体。
值得一提的是，开发者可通过此版本在基于 Spring 的应用中体验 “虚拟线程”（JDK 19 中的预览版 “Project Loom”），查看此文章了解更多细节。现在提供了自定义选项来插入基于虚拟线程的 Executor 实现，目标是在 Project Loom 正式可用时提供 “一等公民” 的配置选项。
除了上述的变化，Spring Framework 6.0 还包含许多其他改进和特性，例如：
提供基于 @HttpExchange 服务接口的 HTTP 接口客户端对 RFC 7807 问题详细信息的支持Spring HTTP 客户端提供基于 Micrometer 的可观察性……
详情查看 Release Note。
按照发布计划，Spring Framework 6.0 将于 11 月正式 GA。', '<h1 style="text-indent: 0px; text-align: start;"><a href="https://www.oschina.net/news/214472/spring-framework-6-0-0-rc2-released" target="_blank">Spring&nbsp;Framework&nbsp;6.0.0&nbsp;RC2&nbsp;发布</a></h1><p style="text-indent: 0px; text-align: left;">Spring&nbsp;Framework&nbsp;6.0.0&nbsp;发布了<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fspring.io%2Fblog%2F2022%2F10%2F20%2Fspring-framework-6-0-0-rc2-available-now" target="_blank">第二个&nbsp;RC&nbsp;版本</a>。</p><p style="text-indent: 0px; text-align: left;"><strong>新特性</strong></p><ul style="text-indent: 0px; text-align: left;"><li>确保可以在构建时评估&nbsp;classpath&nbsp;检查&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F29352" target="_blank">#29352</a></li><li>为&nbsp;JPA&nbsp;持久化回调引入&nbsp;Register&nbsp;反射提示&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F29348" target="_blank">#29348</a></li><li>检查&nbsp;<span style="color: rgb(51, 51, 51); font-size: 13px;"><code>@RegisterReflectionForBinding</code></span>&nbsp;是否至少指定一个类&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F29346" target="_blank">#29346</a></li><li>为&nbsp;AOT&nbsp;引擎设置引入&nbsp;builder&nbsp;API&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F29341" target="_blank">#29341</a></li><li>支持检测正在进行的&nbsp;AOT&nbsp;处理&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F29340" target="_blank">#29340</a></li><li>重新组织&nbsp;HTTP&nbsp;Observation&nbsp;类型&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F29334" target="_blank">#29334</a></li><li>支持在没有&nbsp;java.beans.Introspector&nbsp;的前提下，执行基本属性判断&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F29320" target="_blank">#29320</a></li><li>为<span style="color: rgb(51, 51, 51); font-size: 13px;"><code>BindingReflectionHintsRegistrar</code></span>&nbsp;添加&nbsp;Kotlin&nbsp;数据类组件支持&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F29316" target="_blank">#29316</a></li><li>将&nbsp;HttpServiceFactory&nbsp;和&nbsp;RSocketServiceProxyFactory&nbsp;切换到&nbsp;builder&nbsp;模型，以便优先进行可编程配置&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F29296" target="_blank">#29296</a></li><li>引入基于&nbsp;GraalVM&nbsp;<span style="color: rgb(51, 51, 51); font-size: 13px;"><code>FieldValueTransformer</code></span>&nbsp;API&nbsp;的&nbsp;<span style="color: rgb(51, 51, 51); font-size: 13px;"><code>PreComputeFieldFeature</code></span><a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F29081" target="_blank">#29081</a></li><li>在&nbsp;TestContext&nbsp;框架中引入&nbsp;SPI&nbsp;来处理&nbsp;ApplicationContext&nbsp;故障&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F28826" target="_blank">#28826</a></li><li>SimpleEvaluationContext&nbsp;支持禁用&nbsp;array&nbsp;分配&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F28808" target="_blank">#28808</a></li><li>DateTimeFormatterRegistrar&nbsp;支持默认回退到&nbsp;ISO&nbsp;解析&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Fissues%2F26985" target="_blank">#26985</a></li></ul><p style="text-indent: 0px; text-align: left;"><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">Spring&nbsp;Framework&nbsp;6.0&nbsp;作为重大更新，要求</span><span style="color: rgb(51, 51, 51);"><strong>使用&nbsp;Java&nbsp;17&nbsp;或更高版本</strong></span><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">，并且已迁移到&nbsp;Jakarta&nbsp;EE&nbsp;9+（在&nbsp;</span><span style="color: rgb(51, 51, 51); font-size: 13px;"><code>jakarta</code></span><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">&nbsp;命名空间中取代了以前基于&nbsp;</span><span style="color: rgb(51, 51, 51); font-size: 13px;"><code>javax</code></span><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">&nbsp;的&nbsp;EE&nbsp;API），以及对其他基础设施的修改。基于这些变化，Spring&nbsp;Framework&nbsp;6.0&nbsp;支持最新&nbsp;Web&nbsp;容器，如&nbsp;</span><a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Ftomcat.apache.org%2Fwhichversion.html" target="_blank">Tomcat&nbsp;10</a><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">&nbsp;/&nbsp;</span><a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fwww.eclipse.org%2Fjetty%2Fdownload.php" target="_blank">Jetty&nbsp;11</a><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">，以及最新的持久性框架&nbsp;</span><a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fhibernate.org%2Form%2Freleases%2F6.1%2F" target="_blank">Hibernate&nbsp;ORM&nbsp;6.1</a><span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">。这些特性仅可用于&nbsp;Servlet&nbsp;API&nbsp;和&nbsp;JPA&nbsp;的&nbsp;jakarta&nbsp;命名空间变体。</span></p><p style="text-indent: 0px; text-align: left;">值得一提的是，开发者可通过此版本在基于&nbsp;Spring&nbsp;的应用中体验&nbsp;“虚拟线程”（JDK&nbsp;19&nbsp;中的预览版&nbsp;“Project&nbsp;Loom”），<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fspring.io%2Fblog%2F2022%2F10%2F11%2Fembracing-virtual-threads" target="_blank">查看此文章</a>了解更多细节。现在提供了自定义选项来插入基于虚拟线程的&nbsp;<span style="color: rgb(51, 51, 51); font-size: 13px;"><code>Executor</code></span>&nbsp;实现，目标是在&nbsp;Project&nbsp;Loom&nbsp;正式可用时提供&nbsp;“一等公民”&nbsp;的配置选项。</p><p style="text-indent: 0px; text-align: left;">除了上述的变化，Spring&nbsp;Framework&nbsp;6.0&nbsp;还包含许多其他改进和特性，例如：</p><ul style="text-indent: 0px; text-align: left;"><li>提供基于&nbsp;<span style="color: rgb(51, 51, 51); font-size: 13px;"><code>@HttpExchange</code></span>&nbsp;服务接口的&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fdocs.spring.io%2Fspring-framework%2Fdocs%2F6.0.0-RC1%2Freference%2Fhtml%2Fintegration.html%23rest-http-interface" target="_blank">HTTP&nbsp;接口客户端</a></li><li>对&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fdocs.spring.io%2Fspring-framework%2Fdocs%2F6.0.0-RC1%2Freference%2Fhtml%2Fweb.html%23mvc-ann-rest-exceptions" target="_blank">RFC&nbsp;7807&nbsp;问题详细信息</a>的支持</li><li>Spring&nbsp;HTTP&nbsp;客户端提供基于&nbsp;Micrometer&nbsp;的可观察性</li><li>……</li></ul><p style="text-indent: 0px; text-align: left;"><a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fspring-projects%2Fspring-framework%2Freleases%2Ftag%2Fv6.0.0-RC2" target="_blank">详情查看&nbsp;Release&nbsp;Note</a>。</p><p style="text-indent: 0px; text-align: left;">按照发布计划，Spring&nbsp;Framework&nbsp;6.0&nbsp;将于&nbsp;11&nbsp;月正式&nbsp;GA。</p>', '', 0, 0, 'CSDN', '罗伊', NULL, 0, 1, '2022-10-22 14:30:45', '2022-10-22 14:30:45');
INSERT INTO "public"."t_notice" ("id", "notice_type_id", "title", "all_visible_flag", "scheduled_publish_flag", "publish_time", "content_text", "content_html", "attachment", "page_view_count", "user_view_count", "source", "author", "document_number", "deleted_flag", "create_user_id", "update_time", "create_time") VALUES (52, 1, 'Windows Terminal 正式成为 Windows 11 默认终端', 1, 0, '2022-10-22 14:33:03', '今年 7 月 ，微软在 Windows 11 的 Beta 版本测试了将系统默认终端设置为 Windows Terminal 。如今该设置已登录稳定版本，从 Windows 11 22H2 版本开始，Windows Terminal 将正式成为 Windows 11 的默认设置。
默认终端是在打开命令行应用程序时默认启动的终端模拟器。从 Windows 诞生之日起，其默认终端一直是 Windows 控制台主机 conhost.exe。此次更新则意味着，以后 Windows 11 的所有命令行应用程序都将在 Windows Terminal 中自动打开。
Windows Terminal 拥有非常多现代化的功能，毕竟它很新（ 2019 年 5 月在 Microsoft Build 上首次发布），吸取了很多现代终端的灵感。它支持多选项卡和窗格、命令面板等现代化的 UI 和操作方式，以及大量的自定义选项，比如目录、配置文件图标、自定义背景图像、配色方案、字体和透明度。
当然，如果不想用 Windows Terminal，用户也可以在 Windows 设置中的 隐私和安全 > 开发人员页面和 Windows 终端设置 中调整默认终端设置，（此更新使用 “让 Windows 决定” 作为默认选择，即默认采用 Windows Terminal） 。
此外，如果在更新之前就已设置其他默认终端，此次更新不会覆盖你的偏好。
关于 Windows 11 默认终端的更多详情可查看微软博客。', '<p style="text-indent: 0px; text-align: left;">今年&nbsp;7&nbsp;月&nbsp;，微软在&nbsp;Windows&nbsp;11&nbsp;的&nbsp;Beta&nbsp;版本<a href="https://www.oschina.net/news/204429/wt-default-terminal-in-win11-beta-channel" target="">测试</a>了将系统默认终端设置为&nbsp;Windows&nbsp;Terminal&nbsp;。如今该设置已登录稳定版本，从&nbsp;Windows&nbsp;11&nbsp;22H2&nbsp;版本开始，Windows&nbsp;Terminal&nbsp;将<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fdevblogs.microsoft.com%2Fcommandline%2Fwindows-terminal-is-now-the-default-in-windows-11%2F" target="_blank">正式成为</a>&nbsp;Windows&nbsp;11&nbsp;的默认设置。</p><p style="text-indent: 0px; text-align: left;">默认终端是在打开命令行应用程序时默认启动的终端模拟器。从&nbsp;Windows&nbsp;诞生之日起，其默认终端一直是&nbsp;Windows&nbsp;控制台主机&nbsp;conhost.exe。此次更新则意味着，以后&nbsp;Windows&nbsp;11&nbsp;的所有命令行应用程序都将在&nbsp;Windows&nbsp;Terminal&nbsp;中自动打开。</p><p style="text-indent: 0px; text-align: left;">Windows&nbsp;Terminal&nbsp;拥有非常多现代化的功能，毕竟它<span style="color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">很新（&nbsp;2019&nbsp;年&nbsp;5&nbsp;月在&nbsp;Microsoft&nbsp;Build&nbsp;上首次发布），吸取了很多现代终端的灵感。它支持多</span>选项卡和窗格、命令面板等现代化的&nbsp;UI&nbsp;和操作方式，以及大量的自定义选项，比如目录、配置文件图标、自定义背景图像、配色方案、字体和透明度。</p><p style="text-indent: 0px; text-align: left;">当然，如果不想用&nbsp;Windows&nbsp;Terminal，用户也可以在&nbsp;Windows&nbsp;设置中的&nbsp;<em>隐私和安全&nbsp;&gt;&nbsp;开发人员页面和&nbsp;Windows&nbsp;终端设置&nbsp;</em>中调整默认终端设置，（此更新使用&nbsp;“让&nbsp;Windows&nbsp;决定”&nbsp;作为默认选择，即默认采用&nbsp;Windows&nbsp;Terminal）&nbsp;。</p><p style="text-indent: 0px; text-align: left;">此外，如果在更新之前就已设置其他默认终端，此次更新<strong>不会覆盖</strong>你的偏好。</p><p style="text-indent: 0px; text-align: left;">关于&nbsp;Windows&nbsp;11&nbsp;默认终端的更多详情可查看<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fdevblogs.microsoft.com%2Fcommandline%2Fwindows-terminal-is-now-the-default-in-windows-11%2F" target="_blank">微软博客</a>。</p>', '', 0, 0, '开源中国', '善逸', NULL, 0, 1, '2022-10-22 14:33:03', '2022-10-22 14:33:03');
INSERT INTO "public"."t_notice" ("id", "notice_type_id", "title", "all_visible_flag", "scheduled_publish_flag", "publish_time", "content_text", "content_html", "attachment", "page_view_count", "user_view_count", "source", "author", "document_number", "deleted_flag", "create_user_id", "update_time", "create_time") VALUES (53, 1, 'TypeScript 诞生 10 周年', 1, 0, '2022-10-22 14:34:56', 'TypeScript 已经诞生 10 年了。10 年前 ——2012 年 10 月 1 日，TypeScript 首次公开亮相。当时主导 TypeScript 开发的 Anders Hejlsberg 这样描述 TypeScript：
它是 JavaScript 的类型化超集，可被编译成常用的 JavaScript。TypeScript 还可以通过启用丰富的工具体验来极大地帮助提升生产力，与此同时开发者保持不变维护现有的代码，并继续使用喜爱的 JavaScript 库。TypeScript is a typed superset of JavaScript that compiles to idiomatic (normal) JavaScript, can dramatically improve your productivity by enabling rich tooling experiences, all while maintaining your existing code and continuing to use the same JavaScript libraries you already love.
微软在博客中回顾了 TypeScript 刚亮相时受到的评价，大多数人对它都是持怀疑态度，毕竟这对于许多 JavaScript 开发者来说，试图将静态类型引入 JavaScript 是一个笑话 —— 或是邪恶的阴谋。反对者则直言这是十分愚蠢的想法，他们认为当时已存在可以编译为 JavaScript 的强类型语言，例如 C#、Java 和 C++。他们还吐槽主导 TypeScript 开发的 Anders Hejlsberg 对静态类型有 “迷之执着”。
当时微软意识到 JavaScript 未来将会被应用到无数场景，而且他们公司内部团队在处理复杂的 JavaScript 代码库时面临着巨大的挑战，所以他们觉得有必要创造强大的工具来帮助编写 JavaScript—— 尤其是针对大型 JavaScript 项目。基于此需求，TypeScript 也确定了自己的定位和特性，它是 JavaScript 的超集，将类型检查和静态分析、显式接口和最佳实践结合到单一语言和编译器中。通过在 JavaScript 上构建，TypeScript 能够更接近目标运行时，同时仅添加支持大型应用程序和大型团队所需的语法糖。
团队还坚持 TypeScript 要能够与现有的 JavaScript 无缝交互，与 JavaScript 共同进化，并且看上去也和 JavaScript 类似。
TypeScript 诞生之初的部分设计目标：
不会对已有的程序增加运行时开销与当前和未来的 ECMAScript 提案保持一致保留所有 JavaScript 代码的运行时行为避免添加表达式类型的语法 (expression-level syntax)使用一致、完全可擦除的结构化类型系统……
这些目标指导着 TypeScript 的发展方向：关注类型系统，成为 JavaScript 的类型检查器，只添加类型检查所需的语法，避免添加新的运行时语法和行为。
微软提到，TypeScript 拥有如今的繁荣生态离不开一个重要属性：开源。TypeScript 一开始就是免费且开源 —— 语言规范和编译器都是开源项目，并且以真正开放的方式来运作。事实上，微软当时对外展现出的姿态并不是现在的 “拥抱开源”，所以他们内部并没真正认识到 TypeScript 的开源是如何帮助它走向成功。因此有人认为，TypeScript 在很大程度上引导微软开始更多地转向开源。
现在，TypeScript 仍在积极发展和迭代改进，并被全球数百万开发者使用。在诸多编程语言排名、指数或开发者调查中，TypeScript 一直位居前列，也是最受欢迎和最常用的编程语言。', '<p style="text-indent: 0px; text-align: start;">TypeScript&nbsp;已经诞生&nbsp;10&nbsp;年了。10&nbsp;年前&nbsp;——2012&nbsp;年&nbsp;10&nbsp;月&nbsp;1&nbsp;日，TypeScript&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fweb.archive.org%2Fweb%2F20121003001910%2Fhttps%3A%2F%2Fblogs.msdn.com%2Fb%2Fsomasegar%2Farchive%2F2012%2F10%2F01%2Ftypescript-javascript-development-at-application-scale.aspx" target="_blank"><strong>首次公开亮相</strong></a>。当时主导&nbsp;TypeScript&nbsp;开发的&nbsp;Anders&nbsp;Hejlsberg&nbsp;这样描述&nbsp;TypeScript：</p><blockquote style="text-indent: 0px; text-align: left;">它是&nbsp;JavaScript&nbsp;的类型化超集，可被编译成常用的&nbsp;JavaScript。TypeScript&nbsp;还可以通过启用丰富的工具体验来极大地帮助提升生产力，与此同时开发者保持不变维护现有的代码，并继续使用喜爱的&nbsp;JavaScript&nbsp;库。TypeScript&nbsp;is&nbsp;a&nbsp;typed&nbsp;superset&nbsp;of&nbsp;JavaScript&nbsp;that&nbsp;compiles&nbsp;to&nbsp;idiomatic&nbsp;(normal)&nbsp;JavaScript,&nbsp;can&nbsp;dramatically&nbsp;improve&nbsp;your&nbsp;productivity&nbsp;by&nbsp;enabling&nbsp;rich&nbsp;tooling&nbsp;experiences,&nbsp;all&nbsp;while&nbsp;maintaining&nbsp;your&nbsp;existing&nbsp;code&nbsp;and&nbsp;continuing&nbsp;to&nbsp;use&nbsp;the&nbsp;same&nbsp;JavaScript&nbsp;libraries&nbsp;you&nbsp;already&nbsp;love.</blockquote><p style="text-indent: 0px; text-align: left;">微软在博客中回顾了&nbsp;TypeScript&nbsp;刚亮相时受到的评价，大多数人对它都是持怀疑态度，毕竟这对于许多&nbsp;JavaScript&nbsp;开发者来说，试图将静态类型引入&nbsp;JavaScript&nbsp;是一个笑话&nbsp;——&nbsp;或是邪恶的阴谋。反对者则直言这是十分愚蠢的想法，他们认为当时已存在可以编译为&nbsp;JavaScript&nbsp;的强类型语言，例如&nbsp;C#、Java&nbsp;和&nbsp;C++。他们还吐槽主导&nbsp;TypeScript&nbsp;开发的&nbsp;Anders&nbsp;Hejlsberg&nbsp;对静态类型有&nbsp;“迷之执着”。</p><p style="text-indent: 0px; text-align: start;">当时微软意识到&nbsp;JavaScript&nbsp;未来将会被应用到无数场景，而且他们公司内部团队在处理复杂的&nbsp;JavaScript&nbsp;代码库时面临着巨大的挑战，所以他们觉得有必要创造强大的工具来帮助编写&nbsp;JavaScript——&nbsp;尤其是针对大型&nbsp;JavaScript&nbsp;项目。基于此需求，TypeScript&nbsp;也确定了自己的定位和特性，它是&nbsp;JavaScript&nbsp;的超集，将类型检查和静态分析、显式接口和最佳实践结合到单一语言和编译器中。通过在&nbsp;JavaScript&nbsp;上构建，TypeScript&nbsp;能够更接近目标运行时，同时仅添加支持大型应用程序和大型团队所需的语法糖。</p><p style="text-indent: 0px; text-align: start;">团队还坚持&nbsp;TypeScript&nbsp;要能够与现有的&nbsp;JavaScript&nbsp;无缝交互，与&nbsp;JavaScript&nbsp;共同进化，并且看上去也和&nbsp;JavaScript&nbsp;类似。</p><p style="text-indent: 0px; text-align: start;">TypeScript&nbsp;诞生之初的部分<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fgithub.com%2Fmicrosoft%2FTypeScript%2Fwiki%2FTypeScript-Design-Goals%2F53ffa9b1802cd8e18dfe4b2cd4e9ef5d4182df10" target="_blank"><strong>设计目标</strong></a>：</p><ul style="text-indent: 0px; text-align: left;"><li>不会对已有的程序增加运行时开销</li><li>与当前和未来的&nbsp;ECMAScript&nbsp;提案保持一致</li><li>保留所有&nbsp;JavaScript&nbsp;代码的运行时行为</li><li>避免添加表达式类型的语法&nbsp;(expression-level&nbsp;syntax)</li><li>使用一致、完全可擦除的结构化类型系统</li><li>……</li></ul><p style="text-indent: 0px; text-align: start;">这些目标指导着&nbsp;TypeScript&nbsp;的发展方向：关注类型系统，成为&nbsp;JavaScript&nbsp;的类型检查器，只添加类型检查所需的语法，避免添加新的运行时语法和行为。</p><p style="text-indent: 0px; text-align: start;">微软提到，TypeScript&nbsp;拥有如今的繁荣生态离不开一个重要属性：<strong>开源</strong>。TypeScript&nbsp;一开始就是免费且开源&nbsp;——<span style="color: rgb(51, 51, 51);">&nbsp;语言规范和编译器都是开源项目，</span>并且以真正开放的方式来运作。事实上，微软当时对外展现出的姿态并不是现在的&nbsp;“拥抱开源”，所以他们内部并没真正认识到&nbsp;TypeScript&nbsp;的开源是如何帮助它走向成功。因此有人认为，TypeScript&nbsp;在很大程度上引导微软开始更多地转向开源。</p><p style="text-indent: 0px; text-align: start;">现在，TypeScript&nbsp;仍在积极发展和迭代改进，并被全球数百万开发者使用。在诸多编程语言排名、指数或开发者调查中，TypeScript&nbsp;一直位居前列，也是最受欢迎和最常用的编程语言。</p>', '', 0, 0, '开源中国', '开云', NULL, 1, 1, '2023-05-13 11:26:59', '2022-10-22 14:34:56');
INSERT INTO "public"."t_notice" ("id", "notice_type_id", "title", "all_visible_flag", "scheduled_publish_flag", "publish_time", "content_text", "content_html", "attachment", "page_view_count", "user_view_count", "source", "author", "document_number", "deleted_flag", "create_user_id", "update_time", "create_time") VALUES (54, 1, 'JetBrains Fleet 公测，下一代 IDE', 1, 0, '2022-10-22 14:36:10', 'JetBrains 宣布首次公共预览 Fleet，所有人都可以使用。Fleet 是由 JetBrains 打造的下一代 IDE，于 2021 年首次正式推出。它是一个新的分布式多语言编辑器和 IDE，基于 JetBrains 在后端的 IntelliJ 平台，采用了全新的用户界面和分布式架构从头开始构建。
下载 Fleet：https://www.jetbrains.com.cn/fleet/download/

公告表示，自从最初宣布 Fleet 以来，有超过 137,000 人报名参加私人预览；官方最初之所以决定从封闭式预览开始，是为了能够以渐进的方式处理反馈。现如今，JetBrains Fleet 仍处于起步阶段，还有大量的工作要做。其向公众开放预览的原因有两个方面：“首先，我们认为让所有注册者再等下去是不对的，但单独邀请这么多人对我们来说也缺乏意义。面向公众开放预览对我们来说更容易。第二，也是最重要的，我们一直是一家以开放态度打造产品的公司。我们不希望 Fleet 在这方面有任何不同。”
JetBrains 方面提供了一个图表，以显示 Fleet 目前提供支持的语言和技术，以及每个技术的状态。但值得注意的是，Fleet 仍处于早期阶段，有些事情可能无法按预期工作；所以即使有些东西被列为受支持的，也有可能存在问题。
同时 JetBrains 也强调称，他们并不打算取代其现有的 IDE。
因此，请不要期望在 Fleet 中看到与我们的 IDE（如 IntelliJ IDEA）完全相同的功能。尽管我们会继续开发 Fleet，我们 IDE 的所有功能也不会出现在其中。Fleet 是我们为开发者提供不同用户体验的一个机会。话虽如此，我们确实希望听到你认为 Fleet 还缺少什么功能的反馈，例如特定的重构选项、工具集成等。我们现有的 IDE 将继续发展。我们对其有很多计划，包括性能改进、新的用户界面、远程开发等等。最后，Fleet 还在底层采用了我们现有工具的智慧，所以这些工具都不会消失。
JetBrains 透露，在未来几个月他们将致力于稳定 Fleet，并尽可能地解决得到的反馈。同时，将在以下领域开展工作：
为插件作者提供 API 支持和 SDK–鉴于 Fleet 有一个分布式架构，我们需要努力为插件作者简化工作。 虽然我们保证会为扩展 Fleet 提供一个平台，但也请求大家在这方面多一点耐心。 性能 – 我们希望 Fleet 不仅在内存占用方面，而且在响应时间方面都能表现出色。 有很多地方我们仍然可以提高性能，我们将在这些方面努力。 主题和键盘地图 – 我们知道许多开发者已经习惯了他们现有的编辑器和 IDE，当他们转移到新的 IDE 时，往往会想念他们以前的键盘绑定和主题。 我们将致力于增加对更多主题和键盘映射的支持。 我们当然也会致力于 Vim 的模拟。
更多详情可查看官方博客。', '<p style="text-indent: 0px; text-align: left;">JetBrains&nbsp;<a href="https://my.oschina.net/u/5494143/blog/5584325" target="">宣布</a>首次公共预览&nbsp;<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fwww.jetbrains.com.cn%2Ffleet%2F" target="_blank">Fleet</a>，所有人都可以使用。Fleet&nbsp;是由&nbsp;JetBrains&nbsp;打造的下一代&nbsp;IDE，于&nbsp;2021&nbsp;年首次正式<a href="https://my.oschina.net/u/5494143/blog/5332934" target="">推出</a>。它是一个新的分布式多语言编辑器和&nbsp;IDE，基于&nbsp;JetBrains&nbsp;在后端的&nbsp;IntelliJ&nbsp;平台，采用了全新的用户界面和分布式架构从头开始构建。</p><p style="text-indent: 0px; text-align: left;"><strong>下载&nbsp;Fleet：</strong><a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fwww.jetbrains.com.cn%2Ffleet%2Fdownload%2F" target="_blank">https://www.jetbrains.com.cn/fleet/download/</a></p><p style="text-indent: 0px; text-align: left;"><br></p><p style="text-indent: 0px; text-align: left;">公告表示，自从最初宣布&nbsp;Fleet&nbsp;以来，有超过&nbsp;137,000&nbsp;人报名参加私人预览；官方最初之所以决定从封闭式预览开始，是为了能够以渐进的方式处理反馈。现如今，JetBrains&nbsp;Fleet&nbsp;仍处于起步阶段，还有大量的工作要做。其向公众开放预览的原因有两个方面：“首先，我们认为让所有注册者再等下去是不对的，但单独邀请这么多人对我们来说也缺乏意义。面向公众开放预览对我们来说更容易。第二，也是最重要的，我们一直是一家以开放态度打造产品的公司。我们不希望&nbsp;Fleet&nbsp;在这方面有任何不同。”</p><p style="text-indent: 0px; text-align: left;">JetBrains&nbsp;方面提供了一个<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fjb.gg%2Ffleet-feature-matrix" target="_blank">图表</a>，以显示&nbsp;Fleet&nbsp;目前提供支持的语言和技术，以及每个技术的状态。但值得注意的是，Fleet&nbsp;仍处于早期阶段，有些事情可能无法按预期工作；所以即使有些东西被列为受支持的，也有可能存在问题。</p><p style="text-indent: 0px; text-align: left;">同时&nbsp;JetBrains&nbsp;也强调称，他们并不打算取代其现有的&nbsp;IDE。</p><blockquote style="text-indent: 0px; text-align: left;">因此，请不要期望在&nbsp;Fleet&nbsp;中看到与我们的&nbsp;IDE（如&nbsp;IntelliJ&nbsp;IDEA）完全相同的功能。尽管我们会继续开发&nbsp;Fleet，我们&nbsp;IDE&nbsp;的所有功能也不会出现在其中。Fleet&nbsp;是我们为开发者提供不同用户体验的一个机会。话虽如此，我们确实希望听到你认为&nbsp;Fleet&nbsp;还缺少什么功能的反馈，例如特定的重构选项、工具集成等。我们现有的&nbsp;IDE&nbsp;将继续发展。我们对其有很多计划，包括性能改进、新的用户界面、远程开发等等。最后，Fleet&nbsp;还在底层采用了我们现有工具的智慧，所以这些工具都不会消失。</blockquote><p style="text-indent: 0px; text-align: start;">JetBrains&nbsp;透露，在未来几个月他们将致力于稳定&nbsp;Fleet，并尽可能地解决得到的反馈。同时，将在以下领域开展工作：</p><ul style="text-indent: 0px; text-align: left;"><li><strong>为插件作者提供&nbsp;API&nbsp;支持和&nbsp;SDK</strong>–鉴于&nbsp;Fleet&nbsp;有一个<a href="https://www.oschina.net/action/GoToLink?url=https%3A%2F%2Fblog.jetbrains.com%2Fzh-hans%2Ffleet%2F2022%2F01%2Ffleet-below-deck-part-i-architecture-overview%2F" target="_blank">分布式架构</a>，我们需要努力为插件作者简化工作。&nbsp;虽然我们保证会为扩展&nbsp;Fleet&nbsp;提供一个平台，但也请求大家在这方面多一点耐心。&nbsp;</li><li><strong>性能</strong>&nbsp;–&nbsp;我们希望&nbsp;Fleet&nbsp;不仅在内存占用方面，而且在响应时间方面都能表现出色。&nbsp;有很多地方我们仍然可以提高性能，我们将在这些方面努力。&nbsp;</li><li><strong>主题和键盘地图</strong>&nbsp;–&nbsp;我们知道许多开发者已经习惯了他们现有的编辑器和&nbsp;IDE，当他们转移到新的&nbsp;IDE&nbsp;时，往往会想念他们以前的键盘绑定和主题。&nbsp;我们将致力于增加对更多主题和键盘映射的支持。&nbsp;我们当然也会致力于&nbsp;Vim&nbsp;的模拟。</li></ul><p style="text-indent: 0px; text-align: left;">更多详情可<a href="https://my.oschina.net/u/5494143/blog/5584325" target="">查看官方博客</a>。</p>', '', 0, 0, 'CSDN', '开云', NULL, 1, 1, '2023-05-13 11:27:10', '2022-10-22 14:36:10');
INSERT INTO "public"."t_notice" ("id", "notice_type_id", "title", "all_visible_flag", "scheduled_publish_flag", "publish_time", "content_text", "content_html", "attachment", "page_view_count", "user_view_count", "source", "author", "document_number", "deleted_flag", "create_user_id", "update_time", "create_time") VALUES (55, 2, '1024创新实验室 十一放假通知', 1, 0, '2022-09-29 14:37:57', '国庆假期即将来临，根据国务院办公厅关于国庆节的放假安排，废纸信息网安排如下：10月1日至7日放假调休，共7天。
衷心预祝
国庆快乐，阖家幸福！', '<p style="text-indent: 0px; text-align: justify;">国庆假期即将来临，根据国务院办公厅关于国庆节的放假安排，废纸信息网安排如下：<strong>10月1日至7日放假调休</strong>，共7天。</p><p style="text-indent: 0px; text-align: justify;"><strong>衷心预祝</strong></p><p style="text-indent: 0px; text-align: justify;"><strong>国庆快乐，阖家幸福！</strong></p>', '', 0, 0, '人力行政部', '卓大', '1024创新实验室发〔2022〕字第36号', 0, 1, '2022-10-22 14:53:55', '2022-10-22 14:37:57');
INSERT INTO "public"."t_notice" ("id", "notice_type_id", "title", "all_visible_flag", "scheduled_publish_flag", "publish_time", "content_text", "content_html", "attachment", "page_view_count", "user_view_count", "source", "author", "document_number", "deleted_flag", "create_user_id", "update_time", "create_time") VALUES (56, 2, '十月份技术分享会议', 1, 0, '2022-10-08 14:40:46', '尊敬的各位技术大佬：
1024创新实验室技术分享即将隆重举行
现将有关会议事宜通知如下：
一、会议内容
1、研究探讨SmartAdmin的技术体系
二、会议形式
大会专题小会分组讨论;
三、会议时间及地点
会议报到时间：xxx1年6月14日
会议报到地点：洛阳市', '<p style="text-indent: 0px; text-align: start;">尊敬的各位技术大佬：</p><p style="text-indent: 0px; text-align: start;">1024创新实验室技术分享即将隆重举行</p><p style="text-indent: 0px; text-align: start;">现将有关会议事宜通知如下：</p><p style="text-indent: 0px; text-align: start;"><strong>一、会议内容</strong></p><p style="text-indent: 0px; text-align: start;">1、研究探讨SmartAdmin的技术体系</p><p style="text-indent: 0px; text-align: start;"><strong>二、会议形式</strong></p><p style="text-indent: 0px; text-align: start;">大会专题小会分组讨论;</p><p style="text-indent: 0px; text-align: start;"><strong>三、会议时间及地点</strong></p><p style="text-indent: 0px; text-align: start;">会议报到时间：xxx1年6月14日</p><p style="text-indent: 0px; text-align: start;">会议报到地点：洛阳市</p>', '', 0, 0, '技术部', '开云', '1024创新实验室发〔2022〕字第33号', 0, 1, '2022-10-22 14:53:42', '2022-10-22 14:40:45');
INSERT INTO "public"."t_notice" ("id", "notice_type_id", "title", "all_visible_flag", "scheduled_publish_flag", "publish_time", "content_text", "content_html", "attachment", "page_view_count", "user_view_count", "source", "author", "document_number", "deleted_flag", "create_user_id", "update_time", "create_time") VALUES (57, 2, '关于疫情防控上班通知', 1, 0, '2022-06-28 14:46:01', '近期，国内部分地区疫情频发，多地疫情出现外溢，为有效降低我市疫情输入和传播风险，洛阳市疾病预防控制中心发布疫情防控公众提示：
一、所有入（返）洛阳人员均需提前3天向目的地社区（村居）、酒店宾馆、接待单位等所属网格进行报备，或通过“洛阳即时通系统”进行自主报备，配合做好健康码和行程码查验、核酸检测、隔离观察和健康监测等相关疫情防控措施。
二、倡导广大群众减少跨地市出行，避免人群大范围流动引发的疫情传播扩散风险。
三、对7天内有高风险区旅居史的人员，采取7天集中隔离医学观察；对7天内有中风险区旅居史的人员，采取7天居家隔离医学观察，如不具备居家隔离医学观察条件的，采取集中隔离医学观察。
四、对疫情发生地出现一定范围社区传播或已实施大范围社区管控措施，基于对疫情输入风险研判结果，对近7天内来自疫情发生地所在县（市、区）的流入人员，参照中风险区旅居史人员的防控要求采取相应措施。
五、对所有省外入（返）洛阳人员，须持有48小时内核酸检测阴性证明，抵达后进行“5天3检”，每次检测间隔24小时。推广“落地检”，按照“自愿免费即采即走，不限制流动”的原则，抵达我市后，立即进行1次核酸检测。
六、加强重点机构场所疫情防控，坚持非必要不举办，对确需举办的培训、会展、文艺演出等大型聚集性活动，查验48小时内核酸检测阴性证明；建筑工地等人员密集型单位，查验外省（区、市）返岗人员48小时内核酸检测阴性证明；养老机构、儿童福利机构等查验探访人员48小时内核酸检测阴性证明；对进入宾馆、酒店和旅游景区等人流密集场所时，查验48小时内核酸检测阴性证明。
七、近期有外出旅行史的人员，请密切关注疫情发生地区公布的病例和无症状感染者流调轨迹信息和中高风险区信息。有涉疫风险的人员要立即向社区（村）、住宿宾馆和单位报告，配合落实隔离医学观察。
八、发热病人、健康码“黄码”等人员要履行个人防护责任，主动配合健康监测和核酸检测，在未排除感染风险前不出行。
', '<p style="text-indent: 0px; text-align: justify;">近期，国内部分地区疫情频发，多地疫情出现外溢，为有效降低我市疫情输入和传播风险，洛阳市疾病预防控制中心发布疫情防控公众提示：</p><p style="text-indent: 0px; text-align: justify;">一、所有入（返）洛阳人员均需提前3天向目的地社区（村居）、酒店宾馆、接待单位等所属网格进行报备，或通过“洛阳即时通系统”进行自主报备，配合做好健康码和行程码查验、核酸检测、隔离观察和健康监测等相关疫情防控措施。</p><p style="text-indent: 0px; text-align: justify;">二、倡导广大群众减少跨地市出行，避免人群大范围流动引发的疫情传播扩散风险。</p><p style="text-indent: 0px; text-align: justify;">三、对7天内有高风险区旅居史的人员，采取7天集中隔离医学观察；对7天内有中风险区旅居史的人员，采取7天居家隔离医学观察，如不具备居家隔离医学观察条件的，采取集中隔离医学观察。</p><p style="text-indent: 0px; text-align: justify;">四、对疫情发生地出现一定范围社区传播或已实施大范围社区管控措施，基于对疫情输入风险研判结果，对近7天内来自疫情发生地所在县（市、区）的流入人员，参照中风险区旅居史人员的防控要求采取相应措施。</p><p style="text-indent: 0px; text-align: justify;">五、对所有省外入（返）洛阳人员，须持有48小时内核酸检测阴性证明，抵达后进行“5天3检”，每次检测间隔24小时。推广“落地检”，按照“自愿免费即采即走，不限制流动”的原则，抵达我市后，立即进行1次核酸检测。</p><p style="text-indent: 0px; text-align: justify;">六、加强重点机构场所疫情防控，坚持非必要不举办，对确需举办的培训、会展、文艺演出等大型聚集性活动，查验48小时内核酸检测阴性证明；建筑工地等人员密集型单位，查验外省（区、市）返岗人员48小时内核酸检测阴性证明；养老机构、儿童福利机构等查验探访人员48小时内核酸检测阴性证明；对进入宾馆、酒店和旅游景区等人流密集场所时，查验48小时内核酸检测阴性证明。</p><p style="text-indent: 0px; text-align: justify;">七、近期有外出旅行史的人员，请密切关注疫情发生地区公布的病例和无症状感染者流调轨迹信息和中高风险区信息。有涉疫风险的人员要立即向社区（村）、住宿宾馆和单位报告，配合落实隔离医学观察。</p><p style="text-indent: 0px; text-align: justify;">八、发热病人、健康码“黄码”等人员要履行个人防护责任，主动配合健康监测和核酸检测，在未排除感染风险前不出行。</p><p style="text-indent: 0px; text-align: justify;"><br></p>', '', 0, 0, '行政部', '卓大', '1024创新实验室发〔2022〕字第40号', 0, 1, '2022-10-22 14:53:36', '2022-10-22 14:46:00');
INSERT INTO "public"."t_notice" ("id", "notice_type_id", "title", "all_visible_flag", "scheduled_publish_flag", "publish_time", "content_text", "content_html", "attachment", "page_view_count", "user_view_count", "source", "author", "document_number", "deleted_flag", "create_user_id", "update_time", "create_time") VALUES (58, 2, '办公室消杀关键位置通知', 1, 0, '2022-05-19 14:47:13', '开展消毒消杀是杀灭病源、切断疫情传播的有效手段，是防控疫情的重要措施。为了切实将新型冠状病毒肺炎疫情防控工作落到实处，守护好辖区居民及工作人员的身体健康和生命安全，青山镇高度重视新型冠状病毒肺炎的消杀工作，将采购的防护服，防护面罩，一次性手套，口罩，84消毒液，酒精消毒液以及喷雾工具等消毒消杀物资，分发到镇级各站所各村（社区），全镇开展消杀工作。', '<p><span style="color: rgb(93, 93, 93); background-color: rgb(247, 247, 247);">开展消毒消杀是杀灭病源、切断疫情传播的有效手段，是防控疫情的重要措施。为了切实将新型冠状病毒肺炎疫情防控工作落到实处，守护好辖区居民及工作人员的身体健康和生命安全，青山镇高度重视新型冠状病毒肺炎的消杀工作，将采购的防护服，防护面罩，一次性手套，口罩，84消毒液，酒精消毒液以及喷雾工具等消毒消杀物资，分发到镇级各站所各村（社区），全镇开展消杀工作。</span></p>', '', 0, 0, '行政部', '卓大', '1024创新实验室发〔2022〕字第26号', 0, 1, '2022-10-22 14:53:30', '2022-10-22 14:47:12');
INSERT INTO "public"."t_notice" ("id", "notice_type_id", "title", "all_visible_flag", "scheduled_publish_flag", "publish_time", "content_text", "content_html", "attachment", "page_view_count", "user_view_count", "source", "author", "document_number", "deleted_flag", "create_user_id", "update_time", "create_time") VALUES (59, 2, '十月份人事任命通知', 1, 0, '2022-09-22 14:50:12', '1024创新实验室发〔2022〕字第36号
1024创新实验室发〔2022〕字第36号
1024创新实验室发〔2022〕字第36号
1024创新实验室发〔2022〕字第36号
1024创新实验室发〔2022〕字第36号
1024创新实验室发〔2022〕字第36号', '<p>1024创新实验室发〔2022〕字第36号</p><p>1024创新实验室发〔2022〕字第36号</p><p>1024创新实验室发〔2022〕字第36号</p><p>1024创新实验室发〔2022〕字第36号</p><p>1024创新实验室发〔2022〕字第36号</p><p>1024创新实验室发〔2022〕字第36号</p>', '', 0, 0, '销售部', '卓大', '1024创新实验室发〔2022〕字第30号', 0, 1, '2022-10-22 14:53:18', '2022-10-22 14:50:11');
INSERT INTO "public"."t_notice" ("id", "notice_type_id", "title", "all_visible_flag", "scheduled_publish_flag", "publish_time", "content_text", "content_html", "attachment", "page_view_count", "user_view_count", "source", "author", "document_number", "deleted_flag", "create_user_id", "update_time", "create_time") VALUES (60, 2, '1024创新实验室 春节放假通知', 1, 0, '2022-10-21 23:37:57', '春节假期即将来临，根据国务院办公厅关于国庆节的放假安排，废纸信息网安排如下：10月1日至7日放假调休，共7天。
衷心预祝
国庆快乐，阖家幸福！', '<p style="text-indent: 0px; text-align: justify;">国庆假期即将来临，根据国务院办公厅关于国庆节的放假安排，废纸信息网安排如下：<strong>10月1日至7日放假调休</strong>，共7天。</p><p style="text-indent: 0px; text-align: justify;"><strong>衷心预祝</strong></p><p style="text-indent: 0px; text-align: justify;"><strong>国庆快乐，阖家幸福！</strong></p>', '', 0, 0, '人力行政部', '卓大', '1024创新实验室发〔2022〕字第36号', 0, 1, '2022-10-22 14:53:09', '2022-10-22 14:37:57');
COMMIT;

-- ----------------------------
-- Table structure for t_notice_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_notice_type";
CREATE TABLE "public"."t_notice_type" (
  "id" int4 NOT NULL DEFAULT nextval('t_notice_type_id_seq'::regclass),
  "notice_type_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_notice_type" OWNER TO "postgres";

-- ----------------------------
-- Records of t_notice_type
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_notice_type" ("id", "notice_type_name", "create_time", "update_time") VALUES (1, '公告', '2022-08-16 20:29:15', '2022-08-16 20:29:15');
INSERT INTO "public"."t_notice_type" ("id", "notice_type_name", "create_time", "update_time") VALUES (2, '通知', '2022-08-16 20:29:20', '2022-08-16 20:29:20');
COMMIT;

-- ----------------------------
-- Table structure for t_notice_view_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_notice_view_record";
CREATE TABLE "public"."t_notice_view_record" (
  "notice_id" int4 NOT NULL,
  "employee_id" int4 NOT NULL,
  "page_view_count" int4,
  "first_ip" text COLLATE "pg_catalog"."default",
  "first_user_agent" text COLLATE "pg_catalog"."default",
  "last_ip" text COLLATE "pg_catalog"."default",
  "last_user_agent" text COLLATE "pg_catalog"."default",
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."t_notice_view_record" OWNER TO "postgres";

-- ----------------------------
-- Records of t_notice_view_record
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_notice_view_record" ("notice_id", "employee_id", "page_view_count", "first_ip", "first_user_agent", "last_ip", "last_user_agent", "create_time", "update_time") VALUES (60, 1, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, NULL, '2022-10-22 18:00:25', '2022-10-22 18:00:25');
COMMIT;

-- ----------------------------
-- Table structure for t_notice_visible_range
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_notice_visible_range";
CREATE TABLE "public"."t_notice_visible_range" (
  "notice_id" int4 NOT NULL,
  "data_type" int4 NOT NULL,
  "data_id" int4 NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_notice_visible_range" OWNER TO "postgres";

-- ----------------------------
-- Records of t_notice_visible_range
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_oa_bank
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_oa_bank";
CREATE TABLE "public"."t_oa_bank" (
  "bank_id" int4 NOT NULL,
  "bank_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "account_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "account_number" text COLLATE "pg_catalog"."default" NOT NULL,
  "remark" text COLLATE "pg_catalog"."default",
  "business_flag" int4 NOT NULL,
  "enterprise_id" int4 NOT NULL,
  "disabled_flag" int4 NOT NULL,
  "deleted_flag" int4 NOT NULL,
  "create_user_id" int4 NOT NULL,
  "create_user_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_oa_bank" OWNER TO "postgres";

-- ----------------------------
-- Records of t_oa_bank
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_oa_bank" ("bank_id", "bank_name", "account_name", "account_number", "remark", "business_flag", "enterprise_id", "disabled_flag", "deleted_flag", "create_user_id", "create_user_name", "create_time", "update_time") VALUES (26, '工商银行', '1024创新实验室', '1024', '基本户', 1, 2, 0, 0, 1, '管理员', '2022-10-22 17:58:43', '2022-10-22 17:58:43');
INSERT INTO "public"."t_oa_bank" ("bank_id", "bank_name", "account_name", "account_number", "remark", "business_flag", "enterprise_id", "disabled_flag", "deleted_flag", "create_user_id", "create_user_name", "create_time", "update_time") VALUES (27, '建设银行', '1024创新实验室', '10241', '其他户', 0, 2, 0, 0, 1, '管理员', '2022-10-22 17:59:19', '2022-10-22 17:59:19');
COMMIT;

-- ----------------------------
-- Table structure for t_oa_enterprise
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_oa_enterprise";
CREATE TABLE "public"."t_oa_enterprise" (
  "enterprise_id" int4 NOT NULL,
  "enterprise_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "enterprise_logo" text COLLATE "pg_catalog"."default",
  "type" int4 NOT NULL,
  "unified_social_credit_code" text COLLATE "pg_catalog"."default" NOT NULL,
  "contact" text COLLATE "pg_catalog"."default" NOT NULL,
  "contact_phone" text COLLATE "pg_catalog"."default" NOT NULL,
  "email" text COLLATE "pg_catalog"."default",
  "province" text COLLATE "pg_catalog"."default",
  "province_name" text COLLATE "pg_catalog"."default",
  "city" text COLLATE "pg_catalog"."default",
  "city_name" text COLLATE "pg_catalog"."default",
  "district" text COLLATE "pg_catalog"."default",
  "district_name" text COLLATE "pg_catalog"."default",
  "address" text COLLATE "pg_catalog"."default",
  "business_license" text COLLATE "pg_catalog"."default",
  "disabled_flag" int4 NOT NULL,
  "deleted_flag" int4 NOT NULL,
  "create_user_id" int4 NOT NULL,
  "create_user_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_oa_enterprise" OWNER TO "postgres";

-- ----------------------------
-- Records of t_oa_enterprise
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_oa_enterprise" ("enterprise_id", "enterprise_name", "enterprise_logo", "type", "unified_social_credit_code", "contact", "contact_phone", "email", "province", "province_name", "city", "city_name", "district", "district_name", "address", "business_license", "disabled_flag", "deleted_flag", "create_user_id", "create_user_name", "create_time", "update_time") VALUES (1, '1024创新区块链实验室', 'public/common/f4a76fa720814949a610f05f6f9545bf_20221022170256_jpg', 1, '1024lab_block', '开云', '18637925892', NULL, '410000', '河南省', '410300', '洛阳市', '410311', '洛龙区', '区块链大楼', 'public/common/852b7e19bef94af39c1a6156edf47cfb_20221022170332_jpg', 0, 0, 1, '管理员', '2021-10-22 17:03:35', '2022-10-22 17:04:18');
INSERT INTO "public"."t_oa_enterprise" ("enterprise_id", "enterprise_name", "enterprise_logo", "type", "unified_social_credit_code", "contact", "contact_phone", "email", "province", "province_name", "city", "city_name", "district", "district_name", "address", "business_license", "disabled_flag", "deleted_flag", "create_user_id", "create_user_name", "create_time", "update_time") VALUES (2, '1024创新实验室', 'public/common/fb827d63dda74a60ab8b4f70cc7c7d0a_20221022145641_jpg', 1, '1024lab', '卓大', '18637925892', 'lab1024@163.com', '410000', '河南省', '410300', '洛阳市', '410311', '洛龙区', '1024大楼', NULL, 0, 0, 44, '卓大', '2022-10-22 14:57:36', '2022-10-22 17:03:57');
COMMIT;

-- ----------------------------
-- Table structure for t_oa_enterprise_employee
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_oa_enterprise_employee";
CREATE TABLE "public"."t_oa_enterprise_employee" (
  "enterprise_employee_id" int4 NOT NULL,
  "enterprise_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "employee_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_oa_enterprise_employee" OWNER TO "postgres";

-- ----------------------------
-- Records of t_oa_enterprise_employee
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_oa_enterprise_employee" ("enterprise_employee_id", "enterprise_id", "employee_id", "update_time", "create_time") VALUES (154, '2', '2', '2022-10-22 17:57:50', '2022-10-22 17:57:50');
INSERT INTO "public"."t_oa_enterprise_employee" ("enterprise_employee_id", "enterprise_id", "employee_id", "update_time", "create_time") VALUES (155, '2', '44', '2022-10-22 17:57:50', '2022-10-22 17:57:50');
COMMIT;

-- ----------------------------
-- Table structure for t_oa_invoice
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_oa_invoice";
CREATE TABLE "public"."t_oa_invoice" (
  "invoice_id" int4 NOT NULL,
  "invoice_heads" text COLLATE "pg_catalog"."default" NOT NULL,
  "taxpayer_identification_number" text COLLATE "pg_catalog"."default" NOT NULL,
  "account_number" text COLLATE "pg_catalog"."default" NOT NULL,
  "bank_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "remark" text COLLATE "pg_catalog"."default",
  "enterprise_id" int4 NOT NULL,
  "disabled_flag" int4 NOT NULL,
  "deleted_flag" int4 NOT NULL,
  "create_user_id" int4 NOT NULL,
  "create_user_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_oa_invoice" OWNER TO "postgres";

-- ----------------------------
-- Records of t_oa_invoice
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_oa_invoice" ("invoice_id", "invoice_heads", "taxpayer_identification_number", "account_number", "bank_name", "remark", "enterprise_id", "disabled_flag", "deleted_flag", "create_user_id", "create_user_name", "create_time", "update_time") VALUES (15, '1024创新实验室', '1024lab', '1024lab', '中国银行', '', 2, 0, 0, 1, '管理员', '2022-10-22 17:59:35', '2022-10-22 17:59:35');
COMMIT;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_role";
CREATE TABLE "public"."t_role" (
  "id" int4 NOT NULL DEFAULT nextval('t_role_id_seq'::regclass),
  "role_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "remark" text COLLATE "pg_catalog"."default",
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_role" OWNER TO "postgres";

-- ----------------------------
-- Records of t_role
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_role" ("id", "role_name", "remark", "update_time", "create_time") VALUES (1, '技术总监', '', '2022-10-19 20:24:09', '2019-06-21 12:09:34');
INSERT INTO "public"."t_role" ("id", "role_name", "remark", "update_time", "create_time") VALUES (34, '销售总监', '', '2022-10-19 20:24:28', '2019-08-30 09:30:50');
INSERT INTO "public"."t_role" ("id", "role_name", "remark", "update_time", "create_time") VALUES (35, '总经理', '', '2019-08-30 09:31:05', '2019-08-30 09:31:05');
INSERT INTO "public"."t_role" ("id", "role_name", "remark", "update_time", "create_time") VALUES (36, '董事长', '', '2019-08-30 09:31:11', '2019-08-30 09:31:11');
INSERT INTO "public"."t_role" ("id", "role_name", "remark", "update_time", "create_time") VALUES (37, '财务', '嘿嘿', '2023-05-12 21:11:35', '2019-08-30 09:31:16');
COMMIT;

-- ----------------------------
-- Table structure for t_role_data_scope
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_role_data_scope";
CREATE TABLE "public"."t_role_data_scope" (
  "id" int4 NOT NULL DEFAULT nextval('t_role_data_scope_id_seq'::regclass),
  "data_scope_type" int4 NOT NULL,
  "view_type" int4 NOT NULL,
  "role_id" int4 NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_role_data_scope" OWNER TO "postgres";

-- ----------------------------
-- Records of t_role_data_scope
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_role_employee
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_role_employee";
CREATE TABLE "public"."t_role_employee" (
  "id" int4 NOT NULL DEFAULT nextval('t_role_employee_id_seq'::regclass),
  "role_id" int4 NOT NULL,
  "employee_id" int4 NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_role_employee" OWNER TO "postgres";

-- ----------------------------
-- Records of t_role_employee
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_role_employee" ("id", "role_id", "employee_id", "update_time", "create_time") VALUES (325, 36, 63, '2022-10-19 20:25:26', '2022-10-19 20:25:26');
INSERT INTO "public"."t_role_employee" ("id", "role_id", "employee_id", "update_time", "create_time") VALUES (335, 1, 44, '2023-05-19 13:12:08', '2023-05-19 13:12:08');
INSERT INTO "public"."t_role_employee" ("id", "role_id", "employee_id", "update_time", "create_time") VALUES (336, 34, 44, '2023-05-19 13:12:08', '2023-05-19 13:12:08');
INSERT INTO "public"."t_role_employee" ("id", "role_id", "employee_id", "update_time", "create_time") VALUES (20, 1, 65, '2024-07-14 11:21:04', '2024-07-14 11:21:04');
INSERT INTO "public"."t_role_employee" ("id", "role_id", "employee_id", "update_time", "create_time") VALUES (21, 34, 65, '2024-07-14 11:21:04', '2024-07-14 11:21:04');
INSERT INTO "public"."t_role_employee" ("id", "role_id", "employee_id", "update_time", "create_time") VALUES (22, 1, 47, '2024-07-14 11:33:35', '2024-07-14 11:33:35');
INSERT INTO "public"."t_role_employee" ("id", "role_id", "employee_id", "update_time", "create_time") VALUES (23, 35, 47, '2024-07-14 11:33:35', '2024-07-14 11:33:35');
INSERT INTO "public"."t_role_employee" ("id", "role_id", "employee_id", "update_time", "create_time") VALUES (30, 35, 1, '2024-07-28 09:38:22', '2024-07-28 09:38:22');
INSERT INTO "public"."t_role_employee" ("id", "role_id", "employee_id", "update_time", "create_time") VALUES (31, 36, 1, '2024-07-28 09:38:22', '2024-07-28 09:38:22');
INSERT INTO "public"."t_role_employee" ("id", "role_id", "employee_id", "update_time", "create_time") VALUES (32, 34, 67, '2024-07-28 09:38:46', '2024-07-28 09:38:46');
INSERT INTO "public"."t_role_employee" ("id", "role_id", "employee_id", "update_time", "create_time") VALUES (33, 35, 67, '2024-07-28 09:38:46', '2024-07-28 09:38:46');
COMMIT;

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_role_menu";
CREATE TABLE "public"."t_role_menu" (
  "id" int4 NOT NULL DEFAULT nextval('t_role_menu_id_seq'::regclass),
  "role_id" int4 NOT NULL,
  "menu_id" int4 NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_role_menu" OWNER TO "postgres";

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (69, 1, 45, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (70, 1, 46, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (71, 1, 86, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (72, 1, 87, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (73, 1, 88, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (74, 1, 91, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (75, 1, 92, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (76, 1, 93, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (77, 1, 94, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (78, 1, 95, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (79, 1, 96, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (80, 1, 76, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (81, 1, 97, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (82, 1, 98, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (83, 1, 99, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (84, 1, 100, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (85, 1, 101, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (86, 1, 102, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (87, 1, 103, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (88, 1, 104, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (89, 1, 26, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (90, 1, 40, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (91, 1, 105, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (92, 1, 106, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (93, 1, 108, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (94, 1, 50, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (95, 1, 130, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (96, 1, 157, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (97, 1, 158, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (98, 1, 193, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (99, 1, 200, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (100, 1, 122, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (101, 1, 111, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (102, 1, 143, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (103, 1, 109, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (104, 1, 163, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (105, 1, 164, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (106, 1, 199, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (107, 1, 110, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (108, 1, 159, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (109, 1, 160, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (110, 1, 161, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (111, 1, 162, '2023-05-03 12:16:28', '2023-05-03 12:16:28');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (112, 34, 45, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (113, 34, 46, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (114, 34, 86, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (115, 34, 87, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (116, 34, 88, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (117, 34, 91, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (118, 34, 92, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (119, 34, 93, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (120, 34, 94, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (121, 34, 95, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (122, 34, 96, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (123, 34, 76, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (124, 34, 97, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (125, 34, 98, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (126, 34, 99, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (127, 34, 100, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (128, 34, 101, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (129, 34, 102, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (130, 34, 103, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (131, 34, 104, '2023-05-03 12:16:40', '2023-05-03 12:16:40');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (152, 35, 50, '2024-07-01 21:43:34', '2024-07-01 21:43:34');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (153, 35, 26, '2024-07-01 21:43:34', '2024-07-01 21:43:34');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (154, 35, 40, '2024-07-01 21:43:34', '2024-07-01 21:43:34');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (155, 35, 105, '2024-07-01 21:43:34', '2024-07-01 21:43:34');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (156, 35, 106, '2024-07-01 21:43:34', '2024-07-01 21:43:34');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (157, 35, 108, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (158, 35, 109, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (159, 35, 163, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (160, 35, 164, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (161, 35, 199, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (162, 35, 110, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (163, 35, 159, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (164, 35, 160, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (165, 35, 161, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (166, 35, 162, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (167, 35, 130, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (168, 35, 157, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (169, 35, 158, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (170, 35, 193, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (171, 35, 200, '2024-07-01 21:43:35', '2024-07-01 21:43:35');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (24, 37, 96, '2024-07-14 11:40:43', '2024-07-14 11:40:43');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (25, 37, 46, '2024-07-14 11:40:43', '2024-07-14 11:40:43');
INSERT INTO "public"."t_role_menu" ("id", "role_id", "menu_id", "update_time", "create_time") VALUES (26, 37, 45, '2024-07-14 11:40:43', '2024-07-14 11:40:43');
COMMIT;

-- ----------------------------
-- Table structure for t_table_column
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_table_column";
CREATE TABLE "public"."t_table_column" (
  "id" int4 NOT NULL DEFAULT nextval('t_table_column_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "user_type" int4 NOT NULL,
  "table_id" int4 NOT NULL,
  "columns" text COLLATE "pg_catalog"."default",
  "create_time" text COLLATE "pg_catalog"."default" NOT NULL,
  "update_time" text COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."t_table_column" OWNER TO "postgres";

-- ----------------------------
-- Records of t_table_column
-- ----------------------------
BEGIN;
INSERT INTO "public"."t_table_column" ("id", "user_id", "user_type", "table_id", "columns", "create_time", "update_time") VALUES (1, 1, 0, 20001, '[{"columnKey":"configId","showFlag":true,"sort":1,"width":50},{"columnKey":"configKey","showFlag":true,"sort":2,"width":11},{"columnKey":"configName","showFlag":true,"sort":3,"width":0},{"columnKey":"configValue","showFlag":true,"sort":4,"width":0},{"columnKey":"remark","showFlag":true,"sort":5,"width":150},{"columnKey":"createTime","showFlag":true,"sort":6,"width":150},{"columnKey":"updateTime","showFlag":true,"sort":7,"width":150},{"columnKey":"action","showFlag":true,"sort":8,"width":60}]', '2023-05-03 11:32:18', '2023-05-03 11:42:18');
INSERT INTO "public"."t_table_column" ("id", "user_id", "user_type", "table_id", "columns", "create_time", "update_time") VALUES (2, 1, 0, 0, '[{"columnKey":"fileId","showFlag":true,"sort":1,"width":70},{"columnKey":"folderType","showFlag":true,"sort":2,"width":100},{"columnKey":"fileName","showFlag":true,"sort":3,"width":200},{"columnKey":"fileSize","showFlag":true,"sort":4,"width":100},{"columnKey":"fileKey","showFlag":true,"sort":5,"width":0},{"columnKey":"fileType","showFlag":true,"sort":6,"width":80},{"columnKey":"creatorName","showFlag":true,"sort":7,"width":100},{"columnKey":"creatorUserType","showFlag":true,"sort":8,"width":100},{"columnKey":"createTime","showFlag":true,"sort":9,"width":150},{"columnKey":"action","showFlag":true,"sort":10,"width":100}]', '2023-05-03 20:29:37', '2023-05-03 20:30:46');
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_category_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_change_log_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_code_generator_config_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_config_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_department_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_dict_key_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_dict_value_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_employee_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_feedback_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_file_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_login_log_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_menu_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_notice_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_notice_type_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_role_data_scope_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_role_employee_id_seq"', 33, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_role_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_role_menu_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."t_table_column_id_seq"', 1, false);

-- ----------------------------
-- Indexes structure for table t_category
-- ----------------------------
CREATE INDEX "idx_parent_id" ON "public"."t_category" USING btree (
  "parent_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_category
-- ----------------------------
ALTER TABLE "public"."t_category" ADD CONSTRAINT "t_category_pkey" PRIMARY KEY ("category_id");

-- ----------------------------
-- Primary Key structure for table t_change_log
-- ----------------------------
ALTER TABLE "public"."t_change_log" ADD CONSTRAINT "t_change_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_code_generator_config
-- ----------------------------
ALTER TABLE "public"."t_code_generator_config" ADD CONSTRAINT "t_code_generator_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_config
-- ----------------------------
ALTER TABLE "public"."t_config" ADD CONSTRAINT "t_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_department
-- ----------------------------
CREATE INDEX "parent_id" ON "public"."t_department" USING btree (
  "parent_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_department
-- ----------------------------
ALTER TABLE "public"."t_department" ADD CONSTRAINT "t_department_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_dict_key
-- ----------------------------
ALTER TABLE "public"."t_dict_key" ADD CONSTRAINT "t_dict_key_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_dict_value
-- ----------------------------
ALTER TABLE "public"."t_dict_value" ADD CONSTRAINT "t_dict_value_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_employee
-- ----------------------------
ALTER TABLE "public"."t_employee" ADD CONSTRAINT "t_employee_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_feedback
-- ----------------------------
ALTER TABLE "public"."t_feedback" ADD CONSTRAINT "t_feedback_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_file
-- ----------------------------
ALTER TABLE "public"."t_file" ADD CONSTRAINT "t_file_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_login_log
-- ----------------------------
CREATE INDEX "customer_id" ON "public"."t_login_log" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_login_log
-- ----------------------------
ALTER TABLE "public"."t_login_log" ADD CONSTRAINT "t_login_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_menu
-- ----------------------------
ALTER TABLE "public"."t_menu" ADD CONSTRAINT "t_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_notice
-- ----------------------------
ALTER TABLE "public"."t_notice" ADD CONSTRAINT "t_notice_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_notice_type
-- ----------------------------
ALTER TABLE "public"."t_notice_type" ADD CONSTRAINT "t_notice_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_notice_view_record
-- ----------------------------
CREATE UNIQUE INDEX "uk_notice_employee" ON "public"."t_notice_view_record" USING btree (
  "notice_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "employee_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_notice_view_record
-- ----------------------------
ALTER TABLE "public"."t_notice_view_record" ADD CONSTRAINT "t_notice_view_record_pkey" PRIMARY KEY ("notice_id", "employee_id");

-- ----------------------------
-- Indexes structure for table t_notice_visible_range
-- ----------------------------
CREATE UNIQUE INDEX "uk_notice_data" ON "public"."t_notice_visible_range" USING btree (
  "notice_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "data_type" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "data_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table t_oa_bank
-- ----------------------------
CREATE INDEX "idx_enterprise_id" ON "public"."t_oa_bank" USING btree (
  "enterprise_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_oa_bank
-- ----------------------------
ALTER TABLE "public"."t_oa_bank" ADD CONSTRAINT "t_oa_bank_pkey" PRIMARY KEY ("bank_id");

-- ----------------------------
-- Primary Key structure for table t_oa_enterprise
-- ----------------------------
ALTER TABLE "public"."t_oa_enterprise" ADD CONSTRAINT "t_oa_enterprise_pkey" PRIMARY KEY ("enterprise_id");

-- ----------------------------
-- Primary Key structure for table t_oa_enterprise_employee
-- ----------------------------
ALTER TABLE "public"."t_oa_enterprise_employee" ADD CONSTRAINT "t_oa_enterprise_employee_pkey" PRIMARY KEY ("enterprise_employee_id");

-- ----------------------------
-- Primary Key structure for table t_oa_invoice
-- ----------------------------
ALTER TABLE "public"."t_oa_invoice" ADD CONSTRAINT "t_oa_invoice_pkey" PRIMARY KEY ("invoice_id");

-- ----------------------------
-- Primary Key structure for table t_role
-- ----------------------------
ALTER TABLE "public"."t_role" ADD CONSTRAINT "t_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_role_data_scope
-- ----------------------------
ALTER TABLE "public"."t_role_data_scope" ADD CONSTRAINT "t_role_data_scope_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_role_employee
-- ----------------------------
ALTER TABLE "public"."t_role_employee" ADD CONSTRAINT "t_role_employee_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_role_menu
-- ----------------------------
CREATE INDEX "idx_menu_id" ON "public"."t_role_menu" USING btree (
  "menu_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_role_id" ON "public"."t_role_menu" USING btree (
  "role_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_role_menu
-- ----------------------------
ALTER TABLE "public"."t_role_menu" ADD CONSTRAINT "t_role_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_table_column
-- ----------------------------
CREATE UNIQUE INDEX "uni_employee_table" ON "public"."t_table_column" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "table_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table t_table_column
-- ----------------------------
ALTER TABLE "public"."t_table_column" ADD CONSTRAINT "t_table_column_pkey" PRIMARY KEY ("id");
