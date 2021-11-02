/*
 Navicat Premium Data Transfer

 Source Server         : MySqlCon
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : booctop

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 25/10/2021 15:36:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (1, 'admin');
INSERT INTO `auth_group` VALUES (2, 'student');
INSERT INTO `auth_group` VALUES (3, 'teacher');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 165 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add User', 1, 'add_user');
INSERT INTO `auth_permission` VALUES (2, 'Can change User', 1, 'change_user');
INSERT INTO `auth_permission` VALUES (3, 'Can delete User', 1, 'delete_user');
INSERT INTO `auth_permission` VALUES (4, 'Can view User', 1, 'view_user');
INSERT INTO `auth_permission` VALUES (5, 'Can add user_become', 2, 'add_user_become');
INSERT INTO `auth_permission` VALUES (6, 'Can change user_become', 2, 'change_user_become');
INSERT INTO `auth_permission` VALUES (7, 'Can delete user_become', 2, 'delete_user_become');
INSERT INTO `auth_permission` VALUES (8, 'Can view user_become', 2, 'view_user_become');
INSERT INTO `auth_permission` VALUES (9, 'Can add user_profile', 3, 'add_user_profile');
INSERT INTO `auth_permission` VALUES (10, 'Can change user_profile', 3, 'change_user_profile');
INSERT INTO `auth_permission` VALUES (11, 'Can delete user_profile', 3, 'delete_user_profile');
INSERT INTO `auth_permission` VALUES (12, 'Can view user_profile', 3, 'view_user_profile');
INSERT INTO `auth_permission` VALUES (13, 'Can add user_categories', 4, 'add_user_categories');
INSERT INTO `auth_permission` VALUES (14, 'Can change user_categories', 4, 'change_user_categories');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user_categories', 4, 'delete_user_categories');
INSERT INTO `auth_permission` VALUES (16, 'Can view user_categories', 4, 'view_user_categories');
INSERT INTO `auth_permission` VALUES (17, 'Can add user_activation', 5, 'add_user_activation');
INSERT INTO `auth_permission` VALUES (18, 'Can change user_activation', 5, 'change_user_activation');
INSERT INTO `auth_permission` VALUES (19, 'Can delete user_activation', 5, 'delete_user_activation');
INSERT INTO `auth_permission` VALUES (20, 'Can view user_activation', 5, 'view_user_activation');
INSERT INTO `auth_permission` VALUES (21, 'Can add notifications', 6, 'add_notifications');
INSERT INTO `auth_permission` VALUES (22, 'Can change notifications', 6, 'change_notifications');
INSERT INTO `auth_permission` VALUES (23, 'Can delete notifications', 6, 'delete_notifications');
INSERT INTO `auth_permission` VALUES (24, 'Can view notifications', 6, 'view_notifications');
INSERT INTO `auth_permission` VALUES (25, 'Can add log entry', 7, 'add_logentry');
INSERT INTO `auth_permission` VALUES (26, 'Can change log entry', 7, 'change_logentry');
INSERT INTO `auth_permission` VALUES (27, 'Can delete log entry', 7, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (28, 'Can view log entry', 7, 'view_logentry');
INSERT INTO `auth_permission` VALUES (29, 'Can add permission', 8, 'add_permission');
INSERT INTO `auth_permission` VALUES (30, 'Can change permission', 8, 'change_permission');
INSERT INTO `auth_permission` VALUES (31, 'Can delete permission', 8, 'delete_permission');
INSERT INTO `auth_permission` VALUES (32, 'Can view permission', 8, 'view_permission');
INSERT INTO `auth_permission` VALUES (33, 'Can add group', 9, 'add_group');
INSERT INTO `auth_permission` VALUES (34, 'Can change group', 9, 'change_group');
INSERT INTO `auth_permission` VALUES (35, 'Can delete group', 9, 'delete_group');
INSERT INTO `auth_permission` VALUES (36, 'Can view group', 9, 'view_group');
INSERT INTO `auth_permission` VALUES (37, 'Can add content type', 10, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (38, 'Can change content type', 10, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (39, 'Can delete content type', 10, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (40, 'Can view content type', 10, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (41, 'Can add session', 11, 'add_session');
INSERT INTO `auth_permission` VALUES (42, 'Can change session', 11, 'change_session');
INSERT INTO `auth_permission` VALUES (43, 'Can delete session', 11, 'delete_session');
INSERT INTO `auth_permission` VALUES (44, 'Can view session', 11, 'view_session');
INSERT INTO `auth_permission` VALUES (45, 'Can add categories', 12, 'add_categories');
INSERT INTO `auth_permission` VALUES (46, 'Can change categories', 12, 'change_categories');
INSERT INTO `auth_permission` VALUES (47, 'Can delete categories', 12, 'delete_categories');
INSERT INTO `auth_permission` VALUES (48, 'Can view categories', 12, 'view_categories');
INSERT INTO `auth_permission` VALUES (49, 'Can add courses', 13, 'add_courses');
INSERT INTO `auth_permission` VALUES (50, 'Can change courses', 13, 'change_courses');
INSERT INTO `auth_permission` VALUES (51, 'Can delete courses', 13, 'delete_courses');
INSERT INTO `auth_permission` VALUES (52, 'Can view courses', 13, 'view_courses');
INSERT INTO `auth_permission` VALUES (53, 'Can add questions', 14, 'add_questions');
INSERT INTO `auth_permission` VALUES (54, 'Can change questions', 14, 'change_questions');
INSERT INTO `auth_permission` VALUES (55, 'Can delete questions', 14, 'delete_questions');
INSERT INTO `auth_permission` VALUES (56, 'Can view questions', 14, 'view_questions');
INSERT INTO `auth_permission` VALUES (57, 'Can add questions1', 15, 'add_questions1');
INSERT INTO `auth_permission` VALUES (58, 'Can change questions1', 15, 'change_questions1');
INSERT INTO `auth_permission` VALUES (59, 'Can delete questions1', 15, 'delete_questions1');
INSERT INTO `auth_permission` VALUES (60, 'Can view questions1', 15, 'view_questions1');
INSERT INTO `auth_permission` VALUES (61, 'Can add sections', 16, 'add_sections');
INSERT INTO `auth_permission` VALUES (62, 'Can change sections', 16, 'change_sections');
INSERT INTO `auth_permission` VALUES (63, 'Can delete sections', 16, 'delete_sections');
INSERT INTO `auth_permission` VALUES (64, 'Can view sections', 16, 'view_sections');
INSERT INTO `auth_permission` VALUES (65, 'Can add student_mark', 17, 'add_student_mark');
INSERT INTO `auth_permission` VALUES (66, 'Can change student_mark', 17, 'change_student_mark');
INSERT INTO `auth_permission` VALUES (67, 'Can delete student_mark', 17, 'delete_student_mark');
INSERT INTO `auth_permission` VALUES (68, 'Can view student_mark', 17, 'view_student_mark');
INSERT INTO `auth_permission` VALUES (69, 'Can add todo', 18, 'add_todo');
INSERT INTO `auth_permission` VALUES (70, 'Can change todo', 18, 'change_todo');
INSERT INTO `auth_permission` VALUES (71, 'Can delete todo', 18, 'delete_todo');
INSERT INTO `auth_permission` VALUES (72, 'Can view todo', 18, 'view_todo');
INSERT INTO `auth_permission` VALUES (73, 'Can add transactions', 19, 'add_transactions');
INSERT INTO `auth_permission` VALUES (74, 'Can change transactions', 19, 'change_transactions');
INSERT INTO `auth_permission` VALUES (75, 'Can delete transactions', 19, 'delete_transactions');
INSERT INTO `auth_permission` VALUES (76, 'Can view transactions', 19, 'view_transactions');
INSERT INTO `auth_permission` VALUES (77, 'Can add video uploads', 20, 'add_videouploads');
INSERT INTO `auth_permission` VALUES (78, 'Can change video uploads', 20, 'change_videouploads');
INSERT INTO `auth_permission` VALUES (79, 'Can delete video uploads', 20, 'delete_videouploads');
INSERT INTO `auth_permission` VALUES (80, 'Can view video uploads', 20, 'view_videouploads');
INSERT INTO `auth_permission` VALUES (81, 'Can add subcategories', 21, 'add_subcategories');
INSERT INTO `auth_permission` VALUES (82, 'Can change subcategories', 21, 'change_subcategories');
INSERT INTO `auth_permission` VALUES (83, 'Can delete subcategories', 21, 'delete_subcategories');
INSERT INTO `auth_permission` VALUES (84, 'Can view subcategories', 21, 'view_subcategories');
INSERT INTO `auth_permission` VALUES (85, 'Can add answers', 22, 'add_answers');
INSERT INTO `auth_permission` VALUES (86, 'Can change answers', 22, 'change_answers');
INSERT INTO `auth_permission` VALUES (87, 'Can delete answers', 22, 'delete_answers');
INSERT INTO `auth_permission` VALUES (88, 'Can view answers', 22, 'view_answers');
INSERT INTO `auth_permission` VALUES (89, 'Can add student_certificate', 23, 'add_student_certificate');
INSERT INTO `auth_permission` VALUES (90, 'Can change student_certificate', 23, 'change_student_certificate');
INSERT INTO `auth_permission` VALUES (91, 'Can delete student_certificate', 23, 'delete_student_certificate');
INSERT INTO `auth_permission` VALUES (92, 'Can view student_certificate', 23, 'view_student_certificate');
INSERT INTO `auth_permission` VALUES (93, 'Can add student_register_courses', 24, 'add_student_register_courses');
INSERT INTO `auth_permission` VALUES (94, 'Can change student_register_courses', 24, 'change_student_register_courses');
INSERT INTO `auth_permission` VALUES (95, 'Can delete student_register_courses', 24, 'delete_student_register_courses');
INSERT INTO `auth_permission` VALUES (96, 'Can view student_register_courses', 24, 'view_student_register_courses');
INSERT INTO `auth_permission` VALUES (97, 'Can add student_rating_courses', 25, 'add_student_rating_courses');
INSERT INTO `auth_permission` VALUES (98, 'Can change student_rating_courses', 25, 'change_student_rating_courses');
INSERT INTO `auth_permission` VALUES (99, 'Can delete student_rating_courses', 25, 'delete_student_rating_courses');
INSERT INTO `auth_permission` VALUES (100, 'Can view student_rating_courses', 25, 'view_student_rating_courses');
INSERT INTO `auth_permission` VALUES (101, 'Can add student_performance', 26, 'add_student_performance');
INSERT INTO `auth_permission` VALUES (102, 'Can change student_performance', 26, 'change_student_performance');
INSERT INTO `auth_permission` VALUES (103, 'Can delete student_performance', 26, 'delete_student_performance');
INSERT INTO `auth_permission` VALUES (104, 'Can view student_performance', 26, 'view_student_performance');
INSERT INTO `auth_permission` VALUES (105, 'Can add student_favourite_courses', 27, 'add_student_favourite_courses');
INSERT INTO `auth_permission` VALUES (106, 'Can change student_favourite_courses', 27, 'change_student_favourite_courses');
INSERT INTO `auth_permission` VALUES (107, 'Can delete student_favourite_courses', 27, 'delete_student_favourite_courses');
INSERT INTO `auth_permission` VALUES (108, 'Can view student_favourite_courses', 27, 'view_student_favourite_courses');
INSERT INTO `auth_permission` VALUES (109, 'Can add student_cart_courses', 28, 'add_student_cart_courses');
INSERT INTO `auth_permission` VALUES (110, 'Can change student_cart_courses', 28, 'change_student_cart_courses');
INSERT INTO `auth_permission` VALUES (111, 'Can delete student_cart_courses', 28, 'delete_student_cart_courses');
INSERT INTO `auth_permission` VALUES (112, 'Can view student_cart_courses', 28, 'view_student_cart_courses');
INSERT INTO `auth_permission` VALUES (113, 'Can add payment', 29, 'add_payment');
INSERT INTO `auth_permission` VALUES (114, 'Can change payment', 29, 'change_payment');
INSERT INTO `auth_permission` VALUES (115, 'Can delete payment', 29, 'delete_payment');
INSERT INTO `auth_permission` VALUES (116, 'Can view payment', 29, 'view_payment');
INSERT INTO `auth_permission` VALUES (117, 'Can add course_comments', 30, 'add_course_comments');
INSERT INTO `auth_permission` VALUES (118, 'Can change course_comments', 30, 'change_course_comments');
INSERT INTO `auth_permission` VALUES (119, 'Can delete course_comments', 30, 'delete_course_comments');
INSERT INTO `auth_permission` VALUES (120, 'Can view course_comments', 30, 'view_course_comments');
INSERT INTO `auth_permission` VALUES (121, 'Can add association', 31, 'add_association');
INSERT INTO `auth_permission` VALUES (122, 'Can change association', 31, 'change_association');
INSERT INTO `auth_permission` VALUES (123, 'Can delete association', 31, 'delete_association');
INSERT INTO `auth_permission` VALUES (124, 'Can view association', 31, 'view_association');
INSERT INTO `auth_permission` VALUES (125, 'Can add code', 32, 'add_code');
INSERT INTO `auth_permission` VALUES (126, 'Can change code', 32, 'change_code');
INSERT INTO `auth_permission` VALUES (127, 'Can delete code', 32, 'delete_code');
INSERT INTO `auth_permission` VALUES (128, 'Can view code', 32, 'view_code');
INSERT INTO `auth_permission` VALUES (129, 'Can add nonce', 33, 'add_nonce');
INSERT INTO `auth_permission` VALUES (130, 'Can change nonce', 33, 'change_nonce');
INSERT INTO `auth_permission` VALUES (131, 'Can delete nonce', 33, 'delete_nonce');
INSERT INTO `auth_permission` VALUES (132, 'Can view nonce', 33, 'view_nonce');
INSERT INTO `auth_permission` VALUES (133, 'Can add user social auth', 34, 'add_usersocialauth');
INSERT INTO `auth_permission` VALUES (134, 'Can change user social auth', 34, 'change_usersocialauth');
INSERT INTO `auth_permission` VALUES (135, 'Can delete user social auth', 34, 'delete_usersocialauth');
INSERT INTO `auth_permission` VALUES (136, 'Can view user social auth', 34, 'view_usersocialauth');
INSERT INTO `auth_permission` VALUES (137, 'Can add partial', 35, 'add_partial');
INSERT INTO `auth_permission` VALUES (138, 'Can change partial', 35, 'change_partial');
INSERT INTO `auth_permission` VALUES (139, 'Can delete partial', 35, 'delete_partial');
INSERT INTO `auth_permission` VALUES (140, 'Can view partial', 35, 'view_partial');
INSERT INTO `auth_permission` VALUES (141, 'Can add discount', 36, 'add_discount');
INSERT INTO `auth_permission` VALUES (142, 'Can change discount', 36, 'change_discount');
INSERT INTO `auth_permission` VALUES (143, 'Can delete discount', 36, 'delete_discount');
INSERT INTO `auth_permission` VALUES (144, 'Can view discount', 36, 'view_discount');
INSERT INTO `auth_permission` VALUES (145, 'Can add PayPal IPN', 37, 'add_paypalipn');
INSERT INTO `auth_permission` VALUES (146, 'Can change PayPal IPN', 37, 'change_paypalipn');
INSERT INTO `auth_permission` VALUES (147, 'Can delete PayPal IPN', 37, 'delete_paypalipn');
INSERT INTO `auth_permission` VALUES (148, 'Can view PayPal IPN', 37, 'view_paypalipn');
INSERT INTO `auth_permission` VALUES (149, 'Can add user', 38, 'add_user');
INSERT INTO `auth_permission` VALUES (150, 'Can change user', 38, 'change_user');
INSERT INTO `auth_permission` VALUES (151, 'Can delete user', 38, 'delete_user');
INSERT INTO `auth_permission` VALUES (152, 'Can view user', 38, 'view_user');
INSERT INTO `auth_permission` VALUES (153, 'Can add admin', 39, 'add_admin');
INSERT INTO `auth_permission` VALUES (154, 'Can change admin', 39, 'change_admin');
INSERT INTO `auth_permission` VALUES (155, 'Can delete admin', 39, 'delete_admin');
INSERT INTO `auth_permission` VALUES (156, 'Can view admin', 39, 'view_admin');
INSERT INTO `auth_permission` VALUES (157, 'Can add test video', 40, 'add_testvideo');
INSERT INTO `auth_permission` VALUES (158, 'Can change test video', 40, 'change_testvideo');
INSERT INTO `auth_permission` VALUES (159, 'Can delete test video', 40, 'delete_testvideo');
INSERT INTO `auth_permission` VALUES (160, 'Can view test video', 40, 'view_testvideo');
INSERT INTO `auth_permission` VALUES (161, 'Can add position', 41, 'add_position');
INSERT INTO `auth_permission` VALUES (162, 'Can change position', 41, 'change_position');
INSERT INTO `auth_permission` VALUES (163, 'Can delete position', 41, 'delete_position');
INSERT INTO `auth_permission` VALUES (164, 'Can view position', 41, 'view_position');

-- ----------------------------
-- Table structure for discount_discount
-- ----------------------------
DROP TABLE IF EXISTS `discount_discount`;
CREATE TABLE `discount_discount`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `promo_code` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `discount_percent` int NOT NULL DEFAULT 0,
  `expire` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `days` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `discount_course`(`course_id`) USING BTREE,
  CONSTRAINT `discount_course` FOREIGN KEY (`course_id`) REFERENCES `teacher_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discount_discount
-- ----------------------------
INSERT INTO `discount_discount` VALUES (5, 29, 'name', 56, '2021-08-22', 56);
INSERT INTO `discount_discount` VALUES (6, 65, 'savy', 20, '2021-11-14', 23);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `object_repr` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_home_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2021-02-14 13:11:26.498851', '1', 'discount object (1)', 1, '[{\"added\": {}}]', 36, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (7, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (9, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (8, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (38, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (10, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (36, 'discount', 'discount');
INSERT INTO `django_content_type` VALUES (39, 'home', 'admin');
INSERT INTO `django_content_type` VALUES (6, 'home', 'notifications');
INSERT INTO `django_content_type` VALUES (41, 'home', 'position');
INSERT INTO `django_content_type` VALUES (1, 'home', 'user');
INSERT INTO `django_content_type` VALUES (5, 'home', 'user_activation');
INSERT INTO `django_content_type` VALUES (2, 'home', 'user_become');
INSERT INTO `django_content_type` VALUES (4, 'home', 'user_categories');
INSERT INTO `django_content_type` VALUES (3, 'home', 'user_profile');
INSERT INTO `django_content_type` VALUES (37, 'ipn', 'paypalipn');
INSERT INTO `django_content_type` VALUES (11, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (31, 'social_django', 'association');
INSERT INTO `django_content_type` VALUES (32, 'social_django', 'code');
INSERT INTO `django_content_type` VALUES (33, 'social_django', 'nonce');
INSERT INTO `django_content_type` VALUES (35, 'social_django', 'partial');
INSERT INTO `django_content_type` VALUES (34, 'social_django', 'usersocialauth');
INSERT INTO `django_content_type` VALUES (30, 'student', 'course_comments');
INSERT INTO `django_content_type` VALUES (29, 'student', 'payment');
INSERT INTO `django_content_type` VALUES (28, 'student', 'student_cart_courses');
INSERT INTO `django_content_type` VALUES (23, 'student', 'student_certificate');
INSERT INTO `django_content_type` VALUES (27, 'student', 'student_favourite_courses');
INSERT INTO `django_content_type` VALUES (26, 'student', 'student_performance');
INSERT INTO `django_content_type` VALUES (25, 'student', 'student_rating_courses');
INSERT INTO `django_content_type` VALUES (24, 'student', 'student_register_courses');
INSERT INTO `django_content_type` VALUES (22, 'teacher', 'answers');
INSERT INTO `django_content_type` VALUES (12, 'teacher', 'categories');
INSERT INTO `django_content_type` VALUES (13, 'teacher', 'courses');
INSERT INTO `django_content_type` VALUES (14, 'teacher', 'questions');
INSERT INTO `django_content_type` VALUES (15, 'teacher', 'questions1');
INSERT INTO `django_content_type` VALUES (16, 'teacher', 'sections');
INSERT INTO `django_content_type` VALUES (17, 'teacher', 'student_mark');
INSERT INTO `django_content_type` VALUES (21, 'teacher', 'subcategories');
INSERT INTO `django_content_type` VALUES (40, 'teacher', 'testvideo');
INSERT INTO `django_content_type` VALUES (18, 'teacher', 'todo');
INSERT INTO `django_content_type` VALUES (19, 'teacher', 'transactions');
INSERT INTO `django_content_type` VALUES (20, 'teacher', 'videouploads');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'teacher', '0001_initial', '2021-02-14 11:01:01.970745');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0001_initial', '2021-02-14 11:01:08.937304');
INSERT INTO `django_migrations` VALUES (3, 'contenttypes', '0002_remove_content_type_name', '2021-02-14 11:01:13.404350');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0001_initial', '2021-02-14 11:01:16.896812');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0002_alter_permission_name_max_length', '2021-02-14 11:01:33.452890');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0003_alter_user_email_max_length', '2021-02-14 11:01:33.629935');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0004_alter_user_username_opts', '2021-02-14 11:01:33.780075');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0005_alter_user_last_login_null', '2021-02-14 11:01:33.884148');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0006_require_contenttypes_0002', '2021-02-14 11:01:33.998589');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0007_alter_validators_add_error_messages', '2021-02-14 11:01:34.165520');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0008_alter_user_username_max_length', '2021-02-14 11:01:34.242484');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0009_alter_user_last_name_max_length', '2021-02-14 11:01:34.343493');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0010_alter_group_name_max_length', '2021-02-14 11:01:34.613355');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0011_update_proxy_permissions', '2021-02-14 11:01:34.776053');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0012_alter_user_first_name_max_length', '2021-02-14 11:01:34.899018');
INSERT INTO `django_migrations` VALUES (16, 'home', '0001_initial', '2021-02-14 11:01:39.153555');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0001_initial', '2021-02-14 11:01:55.744870');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0002_logentry_remove_auto_add', '2021-02-14 11:02:02.291772');
INSERT INTO `django_migrations` VALUES (19, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-14 11:02:02.538149');
INSERT INTO `django_migrations` VALUES (20, 'discount', '0001_initial', '2021-02-14 11:02:04.021183');
INSERT INTO `django_migrations` VALUES (21, 'sessions', '0001_initial', '2021-02-14 11:02:05.575941');
INSERT INTO `django_migrations` VALUES (22, 'default', '0001_initial', '2021-02-14 11:02:11.051271');
INSERT INTO `django_migrations` VALUES (23, 'social_auth', '0001_initial', '2021-02-14 11:02:11.217591');
INSERT INTO `django_migrations` VALUES (24, 'default', '0002_add_related_name', '2021-02-14 11:02:19.754114');
INSERT INTO `django_migrations` VALUES (25, 'social_auth', '0002_add_related_name', '2021-02-14 11:02:19.836753');
INSERT INTO `django_migrations` VALUES (26, 'default', '0003_alter_email_max_length', '2021-02-14 11:02:20.285116');
INSERT INTO `django_migrations` VALUES (27, 'social_auth', '0003_alter_email_max_length', '2021-02-14 11:02:20.493346');
INSERT INTO `django_migrations` VALUES (28, 'default', '0004_auto_20160423_0400', '2021-02-14 11:02:20.587883');
INSERT INTO `django_migrations` VALUES (29, 'social_auth', '0004_auto_20160423_0400', '2021-02-14 11:02:20.815405');
INSERT INTO `django_migrations` VALUES (30, 'social_auth', '0005_auto_20160727_2333', '2021-02-14 11:02:22.856046');
INSERT INTO `django_migrations` VALUES (31, 'social_django', '0006_partial', '2021-02-14 11:02:24.459448');
INSERT INTO `django_migrations` VALUES (32, 'social_django', '0007_code_timestamp', '2021-02-14 11:02:26.300358');
INSERT INTO `django_migrations` VALUES (33, 'social_django', '0008_partial_timestamp', '2021-02-14 11:02:27.589318');
INSERT INTO `django_migrations` VALUES (34, 'social_django', '0009_auto_20191118_0520', '2021-02-14 11:02:29.774932');
INSERT INTO `django_migrations` VALUES (35, 'social_django', '0010_uid_db_index', '2021-02-14 11:02:30.593661');
INSERT INTO `django_migrations` VALUES (36, 'student', '0001_initial', '2021-02-14 11:02:36.921225');
INSERT INTO `django_migrations` VALUES (37, 'social_django', '0004_auto_20160423_0400', '2021-02-14 11:03:14.260482');
INSERT INTO `django_migrations` VALUES (38, 'social_django', '0005_auto_20160727_2333', '2021-02-14 11:03:14.346250');
INSERT INTO `django_migrations` VALUES (39, 'social_django', '0001_initial', '2021-02-14 11:03:14.457266');
INSERT INTO `django_migrations` VALUES (40, 'social_django', '0003_alter_email_max_length', '2021-02-14 11:03:14.557725');
INSERT INTO `django_migrations` VALUES (41, 'social_django', '0002_add_related_name', '2021-02-14 11:03:14.802327');
INSERT INTO `django_migrations` VALUES (42, 'student', '0002_course_comments_approved_by_teacher', '2021-02-18 12:20:11.952303');
INSERT INTO `django_migrations` VALUES (43, 'student', '0003_student_register_courses_last_completed_section_id', '2021-02-19 12:09:00.110377');
INSERT INTO `django_migrations` VALUES (44, 'student', '0004_auto_20210219_2024', '2021-02-19 20:24:58.909836');
INSERT INTO `django_migrations` VALUES (45, 'student', '0005_auto_20210219_2026', '2021-02-19 20:26:51.809321');
INSERT INTO `django_migrations` VALUES (46, 'student', '0006_student_register_courses_date_created', '2021-02-19 21:41:33.536319');
INSERT INTO `django_migrations` VALUES (47, 'home', '0002_user_receive_notifications', '2021-02-20 07:47:49.617470');
INSERT INTO `django_migrations` VALUES (48, 'home', '0003_notifications_created_at', '2021-02-20 10:50:36.588353');
INSERT INTO `django_migrations` VALUES (49, 'ipn', '0001_initial', '2021-02-23 10:42:52.678857');
INSERT INTO `django_migrations` VALUES (50, 'ipn', '0002_paypalipn_mp_id', '2021-02-23 10:42:57.342433');
INSERT INTO `django_migrations` VALUES (51, 'ipn', '0003_auto_20141117_1647', '2021-02-23 10:43:04.229203');
INSERT INTO `django_migrations` VALUES (52, 'ipn', '0004_auto_20150612_1826', '2021-02-23 10:44:27.680915');
INSERT INTO `django_migrations` VALUES (53, 'ipn', '0005_auto_20151217_0948', '2021-02-23 10:44:29.489624');
INSERT INTO `django_migrations` VALUES (54, 'ipn', '0006_auto_20160108_1112', '2021-02-23 10:44:34.464788');
INSERT INTO `django_migrations` VALUES (55, 'ipn', '0007_auto_20160219_1135', '2021-02-23 10:44:34.748533');
INSERT INTO `django_migrations` VALUES (56, 'ipn', '0008_auto_20181128_1032', '2021-02-23 10:44:34.914062');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('00h2am3gnzhpilczqp2gg568sota76ej', 'eyI2Ni4yNDkuNzAuMzIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mPaQv:WDAqfF_JnEQ1CMAH4p-7lerq6fSBfC4Fen8KD3N4lXc', '2026-09-12 01:06:53.922577');
INSERT INTO `django_session` VALUES ('03kul42u13l1gpwhvcecgkl9kiz77kxh', 'eyIzNC4xMzkuNTUuNjAiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNbmN:bCvM5EnSOJek6Mrum3rEj3uEgrgM21vI9kk5HV7HsJU', '2026-09-06 14:08:51.048445');
INSERT INTO `django_session` VALUES ('07aer6zf0tbkqaso261svmh54mugn3x3', 'eyI2Ni4yNDkuNzkuOTYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNd0Q:IlKMej7PlbaZ5-Nof_p8B95cxUgQQDehFYd504tVkVM', '2026-09-06 15:27:26.338141');
INSERT INTO `django_session` VALUES ('0aktljf5t9z1beole2iuiyv10r27vzpe', 'eyIxOTkuMTYuMTU3LjE4MCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mJq3b:ew5RiSwA9OMHkzhBT7JFDSRPiPzJft2dEiXuO11g9U8', '2026-08-27 04:35:03.384814');
INSERT INTO `django_session` VALUES ('0axbsjnyz84nvfcm98ryep0zyufvqbng', '.eJxVjssKwjAURP8l61Iaax51Kbj0G8q9edhoTUrSICr-uylU0eXMnBnmSXrI89DnZGLvNNkRSqpfD0FdjF8CfQZ_CrUKfo4O6wWp1zTVx6DNuF_Zv4EB0lDaDbYIUjENRnLZmqYzLefQSUSupVDUCjCF4ExoprjagkVtW9xwi8ikKKPfj7QiE6R0C3H5dRgfGcFF-kHm-2SKn_JUBOir8-T1BhzZTi8:1mAUT7:qCUiw5OnM9Z9cIWDQ7KeImf01BBcRe_E4muolEpF7MY', '2026-08-01 09:42:45.734492');
INSERT INTO `django_session` VALUES ('0cx0f1687yr3t1nq1bcm5ool5g2cmb6u', 'eyI1LjQ1LjIwNy4xNDYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJiYj:GYzHKPMreHHFAag9GnEMroyaz03GHKPRfh5W0TUToLw', '2026-08-26 20:34:41.154559');
INSERT INTO `django_session` VALUES ('0e7ohbrnjqaj0ophitfk4o4op9dt1pse', 'eyIzNC44My40MC4xMDEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMUlF:iLsmyEkctgC22JZwHUkk1sqTAMUW4z1Le2BfaEkNU-w', '2026-09-03 12:27:05.924487');
INSERT INTO `django_session` VALUES ('0ekykze7mvbkcixzw3gugvshvjiytdpx', 'eyI1MS4zOC4yNDYuMTE1IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mGnL9:dMJPGxlgOBmRhBgAcA4rxkqSZgR5Zn-_4-Md74PnZg0', '2026-08-18 19:04:35.372297');
INSERT INTO `django_session` VALUES ('0f2m9yxnmygipllterfmfw8q8dadcb2l', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHAzU:Xs17i7Gwitz6Nhn6Pw7fdTfKDUv2wLWzQCW3nnkWokc', '2026-08-19 20:19:48.801728');
INSERT INTO `django_session` VALUES ('0j73uqxjn4c4gau858114mx8vzjf38i1', '.eJxdj8tugzAQRf_F68Zi_IrJMlKX_QY0xmMgQRD5oSit-u_FERu6nHMfmvvDNHBpuVCGA2h2YRhP8zSMmX2wbsZlKDjQG1eAJY9dSRS7yW9QySN02N9pqYq_bdGV9-uS4-R4tfBdTfxr9TRfd--hYMQ0bulWBYN931pJpCBI8N42zsg2eDoL20gFqAN6AYrANdactRJobWiEIiP0VvrvyfeZX486JeXiaakDH5jSc43V9Tl_F4dTBPb7Bzs3V4g:1mFqif:19aFO8guyl5s7jPvZjh39dsw0Q4nLIf7GeXqF7_gZHY', '2026-08-16 04:28:57.805884');
INSERT INTO `django_session` VALUES ('0jvvpichni8vsj179ypeedq2pinffiro', 'eyIzNC4yMTkuOC4yIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHuAH:Xs8VKrCyE9OupWpG2sNmcJyjJKQVHPUgLOHEQM_Bw7g', '2026-08-21 20:33:57.698178');
INSERT INTO `django_session` VALUES ('0sqpl9cpl9qye17rc4fg1cly8yfjvvcr', 'eyI0OS4yMDUuMjEyLjgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJBKc:kS39kfGBH374bC4uA-AuinzFOmdSgLQJS6tv6bAqKzQ', '2026-08-25 09:05:54.798121');
INSERT INTO `django_session` VALUES ('0vpk3gsvxn1718extiidk7yjcyiwx0ax', 'eyI1LjQ1LjIwNy43MiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mKMYc:UJNamSZNFq7GYfuAyYFQEDjND3IlxMgqrl7Fx_tdrK4', '2026-08-28 15:17:14.137591');
INSERT INTO `django_session` VALUES ('1051w2gxtm0nx5bey4ulrcq80qv8erof', 'eyIxNDQuMjE3LjEzNS4yMjUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJ6Pk:3u9QT7Tn-PoNS_hGf_2QO4n3DZPK7huYAPNTh69SP5E', '2026-08-25 03:50:52.477672');
INSERT INTO `django_session` VALUES ('11au56nlyigxci0h8zfibqpy38a94rvt', 'eyI2Ni4yNDkuNjYuMzUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mLuF3:oo4z2Pfz7KJN3sXqjBmNAGdvDhibZVOKjKMm8t3YvFU', '2026-09-01 21:27:25.642834');
INSERT INTO `django_session` VALUES ('11jkpidua4kngd4ig7imzdqu4hvpmtlh', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1m0tew:NELZYbV-g1HJ-chDaKas4ltbRUx4qs17tlP04UmJN9c', '2026-07-05 22:35:18.238023');
INSERT INTO `django_session` VALUES ('12nbrqupnu4wvbbnsd87pfxe9o40xdj4', 'eyIyMDcuNDYuMTMuNzMiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKIXY:abvJdXaQaRGLm6GRp214VuPeQ2TgQrwU1Awl2Sky-0U', '2026-08-28 10:59:52.412990');
INSERT INTO `django_session` VALUES ('13fc8ll4f0cbiz46tnxvdj6sd0ajzrnd', 'eyIxMDQuMTk2LjEyNy4xNTIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKdSR:Tx-v_Y5l_TkkAH96pSZgJ459cjq47qxLyDMkIBSxxWo', '2026-08-29 09:19:59.530164');
INSERT INTO `django_session` VALUES ('14cwg3bayqjtxklpzc5nmtkdd16a7pzh', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTIg:mUhvnPx8AxNuV0JMuUQblZXEe9EGcEBg7EI_Mgr11ZM', '2026-09-11 17:29:54.082877');
INSERT INTO `django_session` VALUES ('14y7w4zv13ol7p3witruif2ad1u93ob3', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTKu:WDF0_6MscztDptD1zFFD6jmxfpvRy8mtG3CInPOKLuQ', '2026-09-11 17:32:12.865368');
INSERT INTO `django_session` VALUES ('1949daq7qj6iqb8s8qhjssa317ysk2uw', '.eJxdj8sOgjAQRf-la21KaSV1aeLSbyDTxwBKgPQRo8Z_tyVsMLOac-887odUvKEsV0XOBPxxHLo-kgNpR5i6BJ1bcQGQYt-m4Hw72AyF3EMN5uGmoth7Hp2pmafoB02LhW5qoLfZuvGyeXcLegh9OYZcMGEbBqxGpispETVwRO4MSiUQjHHC1EYpeVKy1qCgyZCZxllkPC_9e3Jt42spUUJM1k0l4AIhPGdfXNfxnTQMviLfH-LnWIM:1mZPEf:SDUUH9K-YMIeP16tk8GKBkhihZMxdVKCDsX678p3DPQ', '2026-10-09 03:10:49.748235');
INSERT INTO `django_session` VALUES ('1cm3tl1q9pv55vidmu0jcesf779nerfo', 'eyIxMTYuMjA2LjIwMy4yMTAiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJHXO:mxrI0QY1gY4ZvC8dZm7adkvjJvG61ZjuGNVmz1p3CZY', '2026-08-25 15:43:30.339930');
INSERT INTO `django_session` VALUES ('1e356e2fpo2yw7odb6e17hmtsz3q4bxe', 'eyIyMTMuMTgwLjIwMy44OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPiku:z1juRtiOoPB1uU8DZrqn_L--VDZRCbUeImLrBSC-ncA', '2026-09-12 10:00:04.234850');
INSERT INTO `django_session` VALUES ('1eai4tdy0rf5mvanta26tvjrsuaev693', 'NTdhZjM4YThiMzk4NjAyYzViMmVkMzNmZDkyYTc4YmM4MGY3NzMwNTp7IjEyNy4wLjAuMSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIiLCJfYXV0aF91c2VyX2lkIjoiNDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImVjYzQ0NWM1ZTUwN2MwMjhlNmE3MDU4YmU3YWRjMjJhNTZjMjY5MjciLCJ1c2VyX2lkIjoiNDAiLCJwYXNzd29yZCI6IkVsenViYWlyMSIsInJlbWVtYmVyIjoidHJ1ZSIsInVzZXJfdHlwZSI6InRlYWNoZXIifQ==', '2026-06-19 01:27:19.519495');
INSERT INTO `django_session` VALUES ('1ey83lfzb424kr3t00somlglmmo7gh1m', 'eyIxMDQuMTk2LjIzNi4xMzQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNuDg:Z1_Q8dX0Nbc70MK-XOYAFVt2-Rwwf0zCuX4gLEnc-V4', '2026-09-07 09:50:16.157363');
INSERT INTO `django_session` VALUES ('1i8uk01u1lwbq5b1sv798jb63h7u2l4t', 'eyIyMTMuMTgwLjIwMy44OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPejH:OdnXVaESmYDf1WqPe0m3-S9uQKwBnARwQ2vSw3xrZpo', '2026-09-12 05:42:07.997680');
INSERT INTO `django_session` VALUES ('1j51vrqygw1bbq9ofvh0i4t1066afzfm', 'eyI0OS4yMDYuMTI0LjE1OCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mLQA7:c2B7GdsoswGNb9LFmVbVTqxSXaVL0iaaJk9TSw68Svk', '2026-08-31 13:20:19.922799');
INSERT INTO `django_session` VALUES ('1l2mi634cn716nb8hkxv0qabkbpcuv70', 'eyIzLjIyOC40LjI1MSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mI6rw:s0pMFiN-DrptEiIObLVxQMFDoUbgAHqtVH2cBS8V-Hw', '2026-08-22 10:07:52.574151');
INSERT INTO `django_session` VALUES ('1mdct45704o8fle4sky0xmx2g49sl5pg', 'eyI2Ny4yMjcuMzMuMTcwIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mG6Z8:6eoiOC76ikDmwfUIU5glsgqd-sMXHNm4L8LxvRyRl5Q', '2026-08-16 21:24:10.845474');
INSERT INTO `django_session` VALUES ('1mn5jmgb1kyilus9nkyl9i8qax4j1fkr', '.eJxdj8sOgjAQRf-la21KaSV1aeLSbyDTxwBKgPQRo8Z_tyVsMLOac-887odUvKEsV0XOBPxxHLo-kgNpR5i6BJ1bcQGQYt-m4Hw72AyF3EMN5uGmoth7Hp2pmafoB02LhW5qoLfZuvGyeXcLegh9OYZcMGEbBqxGpispETVwRO4MSiUQjHHC1EYpeVKy1qCgyZCZxllkPC_9e3Jt42spUUJM1k0l4AIhPGdfXNfxnTQMviLfH-LnWIM:1mc7hL:t7aPh_nShyXdZeWVrnpdfPCxNp_M-_qHEKTzic4VRl4', '2026-10-16 15:03:39.167419');
INSERT INTO `django_session` VALUES ('1otst42fk41dhppy4mlngnnga6it9b43', '.eJw9y0ELgjAYgOH_snMO1InYrZQsWwcNK7zIl6xv4WiWG5LRf886dH1e3hfxGQ196gYh9dyAzAk8HHVFaciM1ApuaAHFjydArVEJR4M10qt7A-abciXLO6-wgrYbVwNnxZ4Vfbaxg9WHI-TTeIFGnLVu_8_a65IyXZQ8xhzSZ5zJJlPhuI3SmO-Wp4i8P5DHMYA:1mJw6Q:mv8EdiWJ7PX9eHhFFtDF0tLSYaaAFXRkIOsL29akSKk', '2026-08-27 11:02:22.387751');
INSERT INTO `django_session` VALUES ('1oz7vwm98hb0c6mauigevfn2uovnobau', 'eyIxMDcuMTc1LjY1LjEyMyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mKrmj:i-qrmJbi_7-9JfCHLMm76FNwgds_cYYUgWfdUJeJeRk', '2026-08-30 00:37:53.758637');
INSERT INTO `django_session` VALUES ('1py5xassis93mv6ovvmf560qfj95k930', 'eyIyMTMuMjEzLjEzNy4xNjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHEch:-pVgYoEzGUmgv7Z3vXKni4A4R7zSkK1O2Ij4OzPgGZ0', '2026-08-20 00:12:31.156002');
INSERT INTO `django_session` VALUES ('1te428mxidtyqtkretrs30lwgdr6s86l', 'eyIxOTcuMjMuMTMxLjUwIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHB7r:vbIUvGRYwG27UXMqod3G_f4TregvcHvJifIPsEbj0vs', '2026-08-19 20:28:27.212891');
INSERT INTO `django_session` VALUES ('1uneiwg5ye06pzbw94is6t6k57ww8ilf', 'eyI1LjE1Ni4xOTguNjUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHoaa:xQcZyCDYtfVsdIFpfKSgd4goo64CHWxKsHtsO2Mue30', '2026-08-21 14:36:44.537588');
INSERT INTO `django_session` VALUES ('1v18p34441hopmttvit2g3uhlmpw59kp', 'eyIxODUuMjU1LjQ2LjEwMyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHK5s:E9_PUwCVkvMPRxCiSIqtpIdIEW5cha1noIPwu4uKYMY', '2026-08-20 06:03:00.577551');
INSERT INTO `django_session` VALUES ('1vhtkpxgghxcxezmdp2v1x3f58ychklv', 'eyIzNy4xMDYuNjIuMTU5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mG2k0:0AiqnmyCrk2rWvnLXaccm_BUpJTXSx3YkK_JELE959M', '2026-08-16 17:19:08.584721');
INSERT INTO `django_session` VALUES ('1yv6u7ocmecjxrmcw1g40igkm5z14k8h', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTMt:XCTm_ui-FA-rw664JWGar_owJLDN4CNvAwDFOqsXLk0', '2026-09-11 17:34:15.688093');
INSERT INTO `django_session` VALUES ('22w6d56jw24jirbtd8tnc0krdskv58nd', 'eyIxNTcuMzguODcuMjQzIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJCsg:AyAlQ9vlj2t1QYv12KtrCDPB7dEzZmCMQbDq5sQ862o', '2026-08-25 10:45:10.077535');
INSERT INTO `django_session` VALUES ('23o8q2ig76bb5192fa3ngb714z23n8g9', 'eyI2Ni4yNDkuNjYuMzgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMLST:6ccf4nkQJZ-nSzG48RuOQAW08TNixGEDflKSdGaQuHM', '2026-09-03 02:31:05.262279');
INSERT INTO `django_session` VALUES ('25jgx7w4nz977d28xtpdnw7xv3v3pjwy', 'eyI1LjI1NS4yMzEuMzUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mPeZV:06onYJCSjsG8lTUQ7bKCzluVith-33bzmwa5P_Uouek', '2026-09-12 05:32:01.035171');
INSERT INTO `django_session` VALUES ('26051k2bon7vuwu9x4o3t9sauctszm2h', 'eyIxMDUuMTEwLjIzMS40NyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mI5GE:w_ASrs-sfzjJ3vdX2wSMA71pEr94R7yYQOh53wSHnlE', '2026-08-22 08:24:50.878924');
INSERT INTO `django_session` VALUES ('2785oofktf9i02m7miawgeigaisgub9z', 'eyI2Ni4yNDkuNjYuMzIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mP86Y:o7tTGpyfotZafgswzLdKRTyeWJKMOP2-BmMv7NTQdBI', '2026-09-10 18:51:58.826084');
INSERT INTO `django_session` VALUES ('2k9auczduzxhzxi9bnhjj5gmhpehrvti', 'eyI1LjI1NS4yMzEuMzUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mPf1C:0AvenKQjy54wBbvODvtBjssV3xaqTVjdF7kSD2izV-o', '2026-09-12 06:00:38.084159');
INSERT INTO `django_session` VALUES ('2n2seq0obciplgpft65nij59r1wcufgc', 'eyI5Mi4xMTguMTYwLjE3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJhVd:YTAKNYq1-8zFJkf8N3yWMY2dZ9YNfLP6KFl6rwLNXcQ', '2026-08-26 19:27:25.694831');
INSERT INTO `django_session` VALUES ('2nmjj8fadc7duk77pnc4v90ieiqboqg9', 'eyIxNTcuNTUuMzkuNDQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mOwca:JZe9tOA7M7DSSg0QhTj-flYRHpWjvwZhyHLuhtsOtrQ', '2026-09-10 06:36:16.575708');
INSERT INTO `django_session` VALUES ('2ows05f0bk1qredwkck6c8b148i3ufds', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lw3HG:ysFiFLWJ9oDCLW0D34q0UUQpeW1330DiCpoBWDmjkWI', '2026-06-22 13:50:50.242649');
INSERT INTO `django_session` VALUES ('2tdyae4iu4n4gk8aa8ojlb3pmwazhg6d', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lyKN9:1y4F5NsBxr9k627aGTuYlxSV__M39No8RrtoBjbyh2s', '2026-06-28 20:30:19.273380');
INSERT INTO `django_session` VALUES ('2tghx1xs78j4816ki291x5fpkw06bgyp', 'eyIxNTQuMTgyLjkxLjI5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHPMf:W0RKW9SK4LTExonu2zB_i7ktX0R5D7wND2LLXl3Kt8g', '2026-08-20 11:40:41.177896');
INSERT INTO `django_session` VALUES ('2u3wdrcfjx1i1qxrwnrghj0zwd8lo98l', '.eJw9y70OgjAUQOF36SwEegHFDRIH5CcSdNCF3CqWKnKNtgZjfHfRwfU7OS8Gvs09sDmA7XrA5gxvVqdkq9mE1R320qBsfjyCJJJdYxEa3fL6rlF_08wcnD5Oy-lFkH5W_crJijBLFi4XKtitq3E84r4RROf_E8m4LB8iXaJyIYfcuxbbIchI-QOcNknI3h9PxDB5:1mHOYi:vU1-k5Skbw3njwWeDWLwTVGFWe-J4toXJG92_CrGgY4', '2026-08-20 10:49:04.869286');
INSERT INTO `django_session` VALUES ('2ueq99518g1u9y9sr7gaj8s5izmkz2xv', 'eyIyMTIuODYuMTAyLjEwNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mG5zh:RyPP_60jfHG7rXO-Fvu-kU3AGPL3PvfGqZ1RKhQcVew', '2026-08-16 20:47:33.555801');
INSERT INTO `django_session` VALUES ('2yo2n99xh6twy0774nhw2j1y41bw5znf', 'eyIyMDAuODcuMjA4LjE0MSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mJq6c:MX1NrXXjh80339UN22Smhs21qIoecVFoAd5BUTT7T9Q', '2026-08-27 04:38:10.453454');
INSERT INTO `django_session` VALUES ('2zcsanfg0lw24softbzl7szmwvxcyaaq', 'eyI5My4xNTguMTYxLjY2IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mFu43:7TAeT5G5SezifMcJzUfTq_a_X_PbIv9tAEa4bOGOifc', '2026-08-16 08:03:15.394781');
INSERT INTO `django_session` VALUES ('31nb0ms2om6a1350mo93ze12itjh9is5', 'eyIzLjIzOC4yMjIuOTIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJige:deJ2W0R5CeTmqmavsDoUcH0wMWo0Mt6TZ2K7s6Wblw8', '2026-08-26 20:42:52.787619');
INSERT INTO `django_session` VALUES ('32htbkskqz8ruo44siedwbxgg8sqjvt2', 'eyIzNC44My40MC4xMDEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMUlG:pKaJIZ9oh9Agpqd5bDe0HRdzw1KSXBwxJetX0Ggv67w', '2026-09-03 12:27:06.480404');
INSERT INTO `django_session` VALUES ('3903u25eo34933xkvmxqui74q887ecnv', 'eyIxOTIuNzEuMTAzLjE3MyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mJjt6:AwUaGgxCIjX097hKmnGHw54pUKnaOdoq82opyLgzDmE', '2026-08-26 21:59:48.224933');
INSERT INTO `django_session` VALUES ('3cd9ozzpcp9j4769e95hxvyf0slhpi37', 'eyIyMTMuMTgwLjIwMy44OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mMDgI:CAb0yTdaXtbzpXUVHKvxvegJiw-T-780ShzA5VjzIoY', '2026-09-02 18:12:50.913076');
INSERT INTO `django_session` VALUES ('3cllslwqoed6u4w3shijpm5qvyzeaqe5', 'eyI3Mi4xOTMuMjA1LjE5OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mLU9w:a2uE98fVnDYugx1V-ZkmfHXRXvi8SYklhDg8f0EDiYo', '2026-08-31 17:36:24.384713');
INSERT INTO `django_session` VALUES ('3eioyw7rfihhr7knm0r3z11a2q38iyew', 'eyI1LjQ1LjIwNy4xNDYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJrwc:QRibcZP5Xeu07dAB1v1SREQvr1YIICSBg9xWit_nnjY', '2026-08-27 06:35:58.588891');
INSERT INTO `django_session` VALUES ('3fpzsxe1r080ikdwnodzlk39ohsz85rt', 'eyIxMDQuMTk2LjIzNi4xMzQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNuDg:Z1_Q8dX0Nbc70MK-XOYAFVt2-Rwwf0zCuX4gLEnc-V4', '2026-09-07 09:50:16.425598');
INSERT INTO `django_session` VALUES ('3k28j2wc68q9by21xz9n4zk3p76zagor', 'eyIxNDIuOTMuNDMuMjA4IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHHJr:1zoLJEU6Z4OruYRTqlEtCjkbX9jpH6sYGaefpUD5wEU', '2026-08-20 03:05:15.097661');
INSERT INTO `django_session` VALUES ('3knnvwadrc2ds0w5ef1qjc9nhqxkcpjj', 'eyIxOTYuMTI4LjcxLjkzIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHIdU:KxwFi8zWurkJErKgn09MW5JLA0sr28VSsUjsAlxyo6Q', '2026-08-20 04:29:36.472857');
INSERT INTO `django_session` VALUES ('3m7pmr9z9ca88jw9ue9cqfjawrecp5lp', 'eyIxOTIuMTYxLjE3Ny4yMCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mNqHV:R3geTa6mgfB8f7nsx8ZW_TYNvLeMxKR1jquhJcMkVRs', '2026-09-07 05:37:57.662771');
INSERT INTO `django_session` VALUES ('3mzs3eq046epyt875slwbwm4iegmv2i9', '.eJxdj8sOgjAQRf-la21KaSV1aeLSbyDTxwBKgPQRo8Z_tyVsMLOac-887odUvKEsV0XOBPxxHLo-kgNpR5i6BJ1bcQGQYt-m4Hw72AyF3EMN5uGmoth7Hp2pmafoB02LhW5qoLfZuvGyeXcLegh9OYZcMGEbBqxGpispETVwRO4MSiUQjHHC1EYpeVKy1qCgyZCZxllkPC_9e3Jt42spUUJM1k0l4AIhPGdfXNfxnTQMviLfH-LnWIM:1mdDu6:Cvz3tH37V5v9Q1dJamwJNbm_bmhjA26XYEUe2Y_RUqU', '2026-10-19 15:53:22.215537');
INSERT INTO `django_session` VALUES ('3n07euxn1ghlpjdfqli6ph1x4eejhf5k', 'eyIxOTkuNTkuMTUwLjE4MiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mNuDd:rNNvROBfYDeJjbE1PN2e2t9k0sr89WT0MMKhmcdhWbY', '2026-09-07 09:50:13.952763');
INSERT INTO `django_session` VALUES ('3oxu5d0nlza0yzj33sc3bu6z679azcqg', 'eyI1LjQ1LjIwNy4xNDYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKVys:tBPwqA2Wjv79URQzjqZF07h7EAzKdYyro1LHXGzQ2wI', '2026-08-29 01:20:58.644909');
INSERT INTO `django_session` VALUES ('3smvy61inwagqzx58yxlkze2i4081t88', 'eyIyMjMuMjM3LjIwLjc5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHLXS:o8SByK9WuYHW8EC9dzBiRjNMuf2eSiAcZ_xPN057Ecw', '2026-08-20 07:35:34.144513');
INSERT INTO `django_session` VALUES ('3t7opp0jdb7b0kx4kj6ob1gpfjx9n6aw', 'eyIzNS4xODQuMTMuMTgzIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mIzbV:0OoPdlBksZJ2ywatU1wdvVhEbwIFEr25p6QbC5iZ9U0', '2026-08-24 20:34:33.722327');
INSERT INTO `django_session` VALUES ('3uanivuba3ffqugu44hc396caz5dclvc', 'eyIxNjguMTQ5LjEwMy4yMTAiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKHQm:yLwKbtwPouDdvEABsedf9cirsMBJVbLghowOiIDoLyY', '2026-08-28 09:48:48.473758');
INSERT INTO `django_session` VALUES ('3v3w3egiurzj1f4w54t611rjmp9ejrdt', 'eyI0NS45LjEyLjciOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mIFpl:4Ou9H_BJ6p1VIp1U8z8DF3NUS_Gx4nFPGnYlACTD_wo', '2026-08-22 19:42:13.058463');
INSERT INTO `django_session` VALUES ('3ws6ttacnzm2t3m1dj3sa0sh1b33j253', 'eyIxMDUuMTU1LjQ3LjQ3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJCuE:30B4eSP3ADpwq8cZt-PsH49ZKugXCkfhK5wqkuNnSrg', '2026-08-25 10:46:46.072752');
INSERT INTO `django_session` VALUES ('3xhfh10dssqx1o0b15txrvt51y499y5y', 'eyIxMy43OC40My43NCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mNS7X:qb1DaT_1V-D1P7q8GlO1tRVruDBW6gEPXaf0GoUl8Mc', '2026-09-06 03:50:03.767909');
INSERT INTO `django_session` VALUES ('3zzb2td4i1fl1href5bxn83u834smpxw', 'eyI3Ny4zNy4yNTIuMTMzIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHAvO:3RMDZksxwymPWJPrgpUlmUdmI_qlq5oRqAw5E39DQNw', '2026-08-19 20:15:34.677997');
INSERT INTO `django_session` VALUES ('46rc0muvqkpp02m30w8eqs0l6e95xumf', 'eyIzLjI0OS4xMDkuNTEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKsEv:Dje8WNguPEI2GL1zBTk7aJc6qRubPmGcxTyf-TTDIS0', '2026-08-30 01:07:01.658573');
INSERT INTO `django_session` VALUES ('47wuuubk1e4amqyvnuu6ejv9kw3r0h8q', 'eyI1LjI1NS4yMzEuMzUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mPfCS:BigGrNVrKE9jZIBUyD07fypbUvuN9LOezXKGufBY72c', '2026-09-12 06:12:16.651365');
INSERT INTO `django_session` VALUES ('48cickxtnu3fr8rheda159yq6t1dxsqb', 'eyIzNS4xODcuMTMyLjIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mLbY3:ySqrB_kUZvyybsbD7rJWIUzG0yFLpdPIL1OVVpkRDD0', '2026-09-01 01:29:47.259710');
INSERT INTO `django_session` VALUES ('4bcfgm5svjol47avrq6x0ewg3rhe6988', '.eJxdj8sOgjAQRf-la21KaSV1aeLSbyDTxwBKgPQRo8Z_tyVsMLOac-887odUvKEsV0XOBPxxHLo-kgNpR5i6BJ1bcQGQYt-m4Hw72AyF3EMN5uGmoth7Hp2pmafoB02LhW5qoLfZuvGyeXcLegh9OYZcMGEbBqxGpispETVwRO4MSiUQjHHC1EYpeVKy1qCgyZCZxllkPC_9e3Jt42spUUJM1k0l4AIhPGdfXNfxnTQMviLfH-LnWIM:1mbcyV:z_9IuLfJ9tPexKrKnAdQmfBdz56vUCOd-YsVmRE9Wqw', '2026-10-15 06:15:19.227079');
INSERT INTO `django_session` VALUES ('4fg10kpy8r7jygjztj0eyd5cltzkg7y8', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTN5:3MbzWDUAF7GZsR6qwRptZ59upO-DbVty85a-3t_x6nk', '2026-09-11 17:34:27.629317');
INSERT INTO `django_session` VALUES ('4lhw9ju4unhp8jxjokvtf7co4pmcbv8y', 'eyIyMTMuMTgwLjIwMy44OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mMDgm:PSoD13tXoCVoUoef48_WooXpQrdPHabmb8t7tIO-szY', '2026-09-02 18:13:20.614505');
INSERT INTO `django_session` VALUES ('4lx7njabpip5hr57vzvuf5k8f7l2rigk', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHRRv:otYFYiG7lHIlu7vHWee6pTUdhtvp9_qkakd5z-uOM_8', '2026-08-20 13:54:15.510747');
INSERT INTO `django_session` VALUES ('4q0mzewgh9en2lysax9bhzi2m43c3qvp', 'eyIxODYuMjAyLjE2MS40NiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mL5mW:3v-XygX7sTdwKHgxl6GDcwZt6tnbO56t-V0eyC9lNF4', '2026-08-30 15:34:36.521029');
INSERT INTO `django_session` VALUES ('4qsgll44anp7dqdtsqu1ieh4bll57i9g', 'eyIyMTMuMTgwLjIwMy4xMjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mPeaa:noIaWbavV7Z8FF4AUbTWpxO1qQvKD-pDo2wZAPDoNjY', '2026-09-12 05:33:08.828317');
INSERT INTO `django_session` VALUES ('4svokgch1aocz9j5zxt30ghdnq6ks5rm', '.eJyrVjI0MtczAEJDJSulxCLdnMz0jBIlHaX4nMS89NLE9FSwMFAgLTE5NSk_Pzu-uCSxBCSa6phYXBjk5JVXWOzplRpYWlnhHOHlnhdVmJ1RGJZUZQnUk56fn56TqpufWFqSYQTXaBThZ-Tn7RQYnGpempvqkeGcFVBe5uYR4pYalZFpZOmsVAsAIAUxSQ:1lvGsK:FJPyyp-rkTDs_ncuVi4qUnNmeT7HcTOWSLnNzuri61s', '2026-06-20 10:09:52.468632');
INSERT INTO `django_session` VALUES ('4tjmic9mo6kigkdy3dn9fmbq3jj41i90', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTOW:ikSYvJ_1SQ63q-XpvEhK_LFMQHqe37vteal7y07eNdI', '2026-09-11 17:35:56.801637');
INSERT INTO `django_session` VALUES ('4wa5r19xdx5ovm8rzrmfax9c1k8peob3', 'eyI0NS4xMzIuMjA3LjE3NSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mL2qA:K_tELtPFAmCQfsMMAeS5Y-SnJ6Wp9f39Eta5F9fi11o', '2026-08-30 12:26:10.274598');
INSERT INTO `django_session` VALUES ('4xfqj1kx3bsrysrtsxxo8zxu8yiksnj1', 'eyIxODguNDMuMjM1LjE3NyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHGAO:jRs26e23ySgYRGytlkS2SJjWf71TTOvZYncXbStNMag', '2026-08-20 01:51:24.289536');
INSERT INTO `django_session` VALUES ('4zpzicdy7mjmri65qfp9x04wmeqya92j', 'eyI1LjI1NS4yMzEuMTAiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMEiz:CXv5-rcse0q4PkyJpT0m1OO5RQuJ_it2hC_IdcrYdTA', '2026-09-02 19:19:41.551897');
INSERT INTO `django_session` VALUES ('538mlyqnn6oj10owcjfrp59wtsm4plwf', 'eyIxNTcuNDcuMTQ5LjIwNSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mI1LJ:WNmDGIIH_OnVxq4mHLhWkqgqHLF6qY2RFTEjf8kPdgQ', '2026-08-22 04:13:49.816032');
INSERT INTO `django_session` VALUES ('5abijchm7fsjx1iry8jfxwpycr28vzzz', 'eyI2Ni4yNDkuNjkuMTAyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mGh7E:sIxV1QVlsFN6IGEFddEWGA8rcz3eRwUIcEy6wp4LtLs', '2026-08-18 12:25:48.830518');
INSERT INTO `django_session` VALUES ('5ccccsefha3jm63ccdm9obhgvvi0zm6k', 'eyJmYWNlYm9va19zdGF0ZSI6InN0ME02SWVxd1NUdVRyZUEwelh0eTJIMWtUMUJHWnI2In0:1mKND8:LQAzYtOZpOm6Fvo7vozcimeEpE428CmyWyaYs8jk8Sg', '2026-08-28 15:59:06.766668');
INSERT INTO `django_session` VALUES ('5i6kths5qx66869x486ewxbtoe3yztkf', 'eyI2Ni4yNDkuNjYuMzIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKAo0:rjsgOX4l0qfJpR9_L-TlwSF_GYiqrQ0baxN2veG0U70', '2026-08-28 02:44:20.580710');
INSERT INTO `django_session` VALUES ('5lw0di4wo4djz2cvayfyna50qmjavz31', '.eJxdj80OgjAQhN-lZ21K6VbwaOLRZyDbHyhKgLQlRo3vbku4YPa038xsdj6k4CfK0hTkTNAfh75zkRxIM-DYLdjZFWeAS3TNEqxvepOgYHuoUD_smBVzT9GJ6mmMvlc0W-imBnqbjB0um3d3wGFwKa1sXQoOCJXAFjSYVjLgXAKXNSu0Ykq01ggtOVaGn6AtZSk1sFpApSTDdPTvyXWNrzlXiRa1s7nPjCE8J59d1-G9KOx9Qb4_J9FWRw:1m4L16:iijvrBKKNywiIvECSCeVlD3sqvv09GcUOpnylNY0YPU', '2026-07-15 10:24:24.891914');
INSERT INTO `django_session` VALUES ('5mihvrydznk16axipfp5h6n6p7nb3rf3', '.eJyrVjI0N9UzNDHSMzI01zM1VrJSSizSzclMzyhR0lGKz0nMSy9NTE8FCwMFwIqNLfSMTIG0mRmqakMLAz1zIz1DIwM9Q0NTZLlaAFscGrU:1mP0nX:zGRM1Br-_TY78nSPn3vdGnrzfUy1xPeyZ8XKfILZ5sA', '2026-09-10 11:03:51.056401');
INSERT INTO `django_session` VALUES ('5qvn03ladyo03tbpcyic72jj8gnuse2n', 'eyIzNS4xOTcuMTA1LjkyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJq3g:LhIoZYhBt9s_h7jM4GSovXkCNi5roFpJL6m3a0rh5xI', '2026-08-27 04:35:08.003206');
INSERT INTO `django_session` VALUES ('5rrarrkqeui4mxbd55g7jdcro2faj82r', 'eyI1LjI1NS4yMzEuMjgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMLkd:f4y8d3hbfp-FQTyM_oJR6KPhKWckqGcrJ_tZsVtiYiA', '2026-09-03 02:49:51.243343');
INSERT INTO `django_session` VALUES ('5ypcps1e98u096q7gd2tj9bq2bfz4jfr', 'eyIzLjIzNi4xMzMuMTQxIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mN3zB:X1ZrtjIsB633lFs40CPKjLudAtNEjwk2-xS6DsmhE34', '2026-09-05 02:03:49.663777');
INSERT INTO `django_session` VALUES ('5zjt6kcqp44m0wiujfttx91snke9k27j', '.eJxdjsFOxCAQht-FsxKgYMXjJh59hmYYZkq1aTdAs1mN7y7oHtTjfN8__8yHOArlaYniSdhB3P2M9XqmBioBJsqN6kclRyO1UVJr1xTk-3WZU21uWmGbD5jpG3cAR03Tv95fMAC-0dZNfG2ru8R9q3kJskfkzRb5skdaT7fsn4IEJfVjbKyycVSgBlZBO8ccwDAbQnbeMiCSxQG9dw_eDQE8jA0qHCmyMq30DKVc9tx_eV7fjwBL1uLzCwyRWVU:1mOk7U:dfF9109T-4NqT4HL6shxzRyJf16qu7Zz2qUTllMUrFI', '2026-09-09 17:15:20.481191');
INSERT INTO `django_session` VALUES ('61w0a7tzi22xmfyj5hjtf18ith4mjxwt', 'eyI0OS4zNi4yMzcuMjIwIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHAxE:1Y9ys0lSJAAFPsxermf4zbFE1QxO_CJoBmwhYsDgEqM', '2026-08-19 20:17:28.253637');
INSERT INTO `django_session` VALUES ('64emhgat3xutdt3f9zf4qfiacvdss82j', 'eyI5My4xNTguMTYxLjQ0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mICGc:ugebptBZpjw9MbLQ_CNsWNGAtNxygChHtu4gMKvtq_8', '2026-08-22 15:53:42.781555');
INSERT INTO `django_session` VALUES ('68clgz0glvwqklj5g23odlhv6qeu7vbw', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lv5Cl:44Ud4jY-7ra0U_HeEQl1-3HyC3ljcP0wXZjfVrQDsDw', '2026-06-19 21:42:11.606511');
INSERT INTO `django_session` VALUES ('68d4os6sk6sqo8qp3ywoxeafpb8m2hvc', '.eJw9i70OwiAYAN-F2TaUSvzZNGpstwatwaX5bBFIUSzQGDW-u9XB4Za73AulNCbjdADHJE3QHIGLjJYqoBGqDFxlD1L89CCktdKIyEIfFKl8gPBNVIjF48D0rsWObujEqUZ1-2VZ1qv8UoIexjPU4mRt-3-mHvN1zbssn_FnQWjC-rDNGsD3G_esOKL3B3d3MY4:1mJppi:xXW4f2KGiDaxMgTLxzLC0T48zzsyQjAnhVnsJVnH19g', '2026-08-27 04:20:42.684696');
INSERT INTO `django_session` VALUES ('68mu2duvhf0yyrzgy1199vuuzmovt797', 'eyIzNS4xODcuMTMyLjgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJ98D:WqiTfJL1uNmNHoMTXzn45oQ0zyCG4O0jaNTz1vvX7k0', '2026-08-25 06:44:57.011578');
INSERT INTO `django_session` VALUES ('69xbaawphkwgarud5gef0lwpti22nt2j', 'eyIxOTIuMTYxLjE3Ny4yMCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mOtQB:pqPHLjEkMGXTA5hSGk6u1s8Yi6-v46GrwQWH9tNsQkQ', '2026-09-10 03:11:15.936636');
INSERT INTO `django_session` VALUES ('6bfvsda4vm500xwpmvblwqmbnhpfoykj', 'eyI1LjQ1LjIwNy4xMzYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMb74:WokIyiaS551-4MAsncgx-RCXJdMk2BA7XmMlrFgw4mA', '2026-09-03 19:14:02.601930');
INSERT INTO `django_session` VALUES ('6ibr04pxkz1bgsdw19qftg744la66294', 'eyI1LjI1NS4yMzEuMTE3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJgda:Gum5wOHigDMq0lX089otoRTMfMTD7bfE0Nnj6dFDGWI', '2026-08-26 18:31:34.075323');
INSERT INTO `django_session` VALUES ('6jpdci0p3j5prg8pgqzdnslzovgn4f9o', 'eyIyMTMuMTgwLjIwMy44OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPeZN:GpJGC9i_b8I4vodBMwPSSp30n-syMGmh72I3bwA2zOE', '2026-09-12 05:31:53.563758');
INSERT INTO `django_session` VALUES ('6nl4qoubweoz6nzegzcglfwoan5gckjl', 'eyI3Ny44OC41LjExNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mFu7y:qiJzZczegfdLzrNf4ide4G6bNfSvXcqYJ77BKhWH7R4', '2026-08-16 08:07:18.287659');
INSERT INTO `django_session` VALUES ('6r5k7d4byy5i7zkncufnwevxhmymtfss', 'eyI2Ni4yNDkuNjUuOTQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mIxoN:nj22JvtAg2wZQtOtKPITI6_ddKNbWqVv5AgPwp5Yez0', '2026-08-24 18:39:43.726280');
INSERT INTO `django_session` VALUES ('6rtbre7k7uww1ycxdh3k8xkcz08bez82', 'eyI5Mi4xMTguMTYwLjE3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mMwU5:GTWr3aGHkiOiMW4xXaLQ8U8mlA6TJcZHDBKlms4Njx8', '2026-09-04 18:03:13.260797');
INSERT INTO `django_session` VALUES ('6ulffbljjtturq86i8c8nxl7k6h7zh97', '.eJyrVjI20TM30TM0NNUzMVCyUkos0s3JTM8oUdJRis9JzEsvTUxPBQsDBdLz89NzUnXzE0tLMozii0sSS0BSHoXZjoU5ZnmhkeneJWluFaEl2REVGTn-jtmGiZk-xdlAjWmJyalJ-fnZcD2pLqnBEVnGFll-uVURjlGGic5OTlne4SYBoU4RuSkhpUq1AIKrMgk:1mIRCi:Q7U7aj_9v7MlA16DbNOG5aVdFgE7rAH4mPCc1MTppFQ', '2026-08-23 07:50:40.875747');
INSERT INTO `django_session` VALUES ('6urqhn4dbki5ab7q4d7tzsekxmknendi', '.eJxVjssOgjAURP-la9LcCy0Pl-79BnL7wOKjbSjEEOO_WxI0upw5M5N5sp6W2fVLslM_GnZgyIpfT5G-Wr8BcyF_DlwHP0-j4luE7zTxUzD2dtyzfwOOksttNWiQEhGUlthIrKEpG2qgBTAWVCUrNUiRSVthjSCEBC3KwSBQp6q2y6Pfj1iwSCk9wrT9chTj-sHzGm320hKzIHMfPXu9Ad4oSdg:1mPsxj:YqtpASMAGbDpl73WqYjE5XBdXVIX-bkaAp3kUELwoz0', '2021-09-27 20:53:59.646165');
INSERT INTO `django_session` VALUES ('6vk9mzdactrby3vyrx1eu84duito9ii1', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvLLs:fOGQnSmlIR5YOC5ISWBjiXMRavB79gl6scB_5gwdfSk', '2026-06-20 14:56:40.798265');
INSERT INTO `django_session` VALUES ('6wzegdwjc6ixms7c0dsw80vlz8lq70dp', 'eyI1OC41My4xMjguODgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mIG9z:Cg92NE_vqeBLBv0fmgHhYwR1i6ZsHZiO1AiW6hh1RpY', '2026-08-22 20:03:07.972984');
INSERT INTO `django_session` VALUES ('6zv2oqxhexq72j41gzreptbl2j6392kv', 'MjQ3MzIwNzBlNjdjNzJlMDg5MDhlNzBkODljYTdiOTUyMjg5ODUyOTp7IjEyNy4wLjAuMSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWNjNDQ1YzVlNTA3YzAyOGU2YTcwNThiZTdhZGMyMmE1NmMyNjkyNyIsInVzZXJfaWQiOiIyIiwidXNlcl90eXBlIjoic3R1ZGVudCIsInBhc3N3b3JkIjoiRWx6dWJhaXIxIn0=', '2026-06-19 02:25:35.385921');
INSERT INTO `django_session` VALUES ('748fl1mtr50ddfd55hewtsrbuucb1728', '.eJxVjssKwjAURP8l61Iaax51Kbj0G8q9edhoTUrSICr-uylU0eXMnBnmSXrI89DnZGLvNNkRSqpfD0FdjF8CfQZ_CrUKfo4O6wWp1zTVx6DNuF_Zv4EB0lDaDbYIUjENRnLZmqYzLefQSUSupVDUCjCF4ExoprjagkVtW9xwi8ikKKPfj7QiE6R0C3H5dRgfGcFF-kHm-2SKn_JUBOir8-T1BhzZTi8:1mAB6D:Y0kR_e7O1iOE1lIKIvqNUg3EeIvJr-hpnmIn3bGZWAo', '2026-07-31 13:01:49.748398');
INSERT INTO `django_session` VALUES ('76fgcec0r4bq40cbrq99j1jok8tkwbl1', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mckVS:jfb-_J_0tEMkNKSbDxwehH1JFbfgSA3JLJ6A1wD_Tx0', '2026-10-18 08:29:58.673878');
INSERT INTO `django_session` VALUES ('76gugtwv3mt1jdxsijo3ttztgkrypprj', 'eyI3MC4zNi4xMDYuMjE0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mKg2V:ayuMF1K9lJiksyn3IdAR5fAPFGVTZaS8egTN78o9d_8', '2026-08-29 12:05:23.956104');
INSERT INTO `django_session` VALUES ('77fogowmuyu096qo36392yq25hqfpek6', 'eyJmYWNlYm9va19zdGF0ZSI6IlREaDFtY1N2S0ZFQUgxZUdlQjZkZGRXbm54WHpjUUVjIn0:1mMFVC:AGpqDwv6sObPZzYGZAlgV0I1q_4OMy0hPSI7ikqMwdk', '2026-09-02 20:09:30.771317');
INSERT INTO `django_session` VALUES ('78c53qbnuox0828sm0zte4nf30l3rbbb', '.eJxVjzluwzAQRe_COia4STZdBkiZMwhDciQq0QYuCGzDdw9pyIXKeX_B_AdRnHKhKeeSKk2uBMJpGgefyAfpJliGDAO-cAWQk-9yxNCNrkB-ZAbsLy5VcD8luVK7LimMhlYL3dVIv1eH0-fuPRR4iL7W9r3lBtBY04BkDbauVRcJtlVSMnFB1TMmdaNBIAjnUEt7RnbubStk43QpPf64QYx_a6jn13TPBsZQccAZZ4Oh4BQyvmPpttXFCcH6Ij7_AUmWXc4:1mJtXu:x-AaJAP9WxUBOaZR6oYNH4J12lxTIOe4nifUrAV64AA', '2026-08-27 08:18:34.134331');
INSERT INTO `django_session` VALUES ('7a8b64sefbo15fdvyosdicgq8lhrmiwl', 'eyIxNTcuNTUuMzkuNDQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMiKb:7FjZTd-Be79N7qSUbD9eM3b_kVNeGXc8p6g-B3SnS1U', '2026-09-04 02:56:29.765555');
INSERT INTO `django_session` VALUES ('7bqwnwolrq4qyfgk8lknygo795xwh9n4', 'eyIzNC4yMTkuOC4yIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHqeF:-bqHCFBsSjlkbjuNv4NONBIsl6CtTNyahsWb6ij-XIQ', '2026-08-21 16:48:39.866632');
INSERT INTO `django_session` VALUES ('7dltwfejrsf727g2ofstjbo45tl5l422', 'eyI2OS45NC44MS4yMTkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJHTQ:LgbZ1GXURVNPjksXUcEvcBYelVEjJvbL_R7ljNYGyxg', '2026-08-25 15:39:24.619370');
INSERT INTO `django_session` VALUES ('7i5fyrkl24nygvnxivkt4m8lqx191rff', 'eyIxMDMuMjAwLjg0LjI1MCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHL0k:wqVOyet7OsvUqCqdPxaHrTCk2jZmANhWUL746dCIDKg', '2026-08-20 07:01:46.977681');
INSERT INTO `django_session` VALUES ('7jytdflq889bo8oc1ah9ldy758ceuvbj', '.eJxdkM1OwzAQhN8lZ7Bsx44xxwokBKqAAwJO0fovThrFUeyotIh3x656oBz32_HseL4rImpEMUeSI1rdVrBcj33nU3VVtSNM3QqdPeEMHGirQti1MUEqdD7eqMFS1x-24-udZo9v71-meXH-ef_08PkxFBNYk2_XaJe2N_kJqy-hAr2zU9mYIZ8LSIcpLb1CRYLO24i2wdhxc9ZeGHiIvgR0lGFmBAZcO6wI584poM5Rqx2XLGfXlulaS8kbyWsFEkSGWAtrHKbZ9F_I05gOc_losqC9LR3MEOM-LEV1Px5XBf1CMiaSItIQRITIbf7t8ecXK1NxtA:1mPtAg:T6ql6YQV2wln6nser6KiD-LD3JrRUrUiPKCs4jDhRiM', '2026-09-12 21:07:22.935024');
INSERT INTO `django_session` VALUES ('7oj3ywoqo226owgkcrwaatqdms97e01w', 'eyIzNS4yMzcuMjM4LjI5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mI43I:UZKKgua4KYKWx2zxSnRkZCN2Zj0rn0bZ6GhKw7YPd2Y', '2026-08-22 07:07:24.765582');
INSERT INTO `django_session` VALUES ('7sc2daw99tzx44nz308u74qfbx9q9iiz', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTNs:IriYPFsqxKYfqFXanM3AgYWzsLFrNz7zjwueJpodok8', '2026-09-11 17:35:16.849637');
INSERT INTO `django_session` VALUES ('7tdq6wzwgq14noia63bhq1kh42auuoli', '.eJxdj01uwyAQhe_CukEYQy26jJRlzmANw4xxa9kRYEVJ1LsXomxSzWq-9-bnPUSnB6lqdeJLQDos8xSL-BDjAuu0w0RP3ADsJY57pjTOoULTv0MP-ENrU8J3Hd0kbmtJs5fNIl9qluct0HJ8ed8WRMixHWNtlAmDAtWz8p21zB40syZk6wwDIhns0Tn76WzvwcFQocKBAitdl_578tmW26VFKQQYqeW5QM7XLTXXabnvHubUid8_2-RYVA:1meDhk:uevBVsg0N3U8VaDQP-HtnzWp-MmNoSeiq0NSACCupo4', '2026-10-22 09:52:44.584534');
INSERT INTO `django_session` VALUES ('7tz47txk0q6ylmiq86ly0zxa30wode3z', 'eyIyMTMuMTgwLjIwMy44OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mMGTH:L2MUPXd85OD-As-oUw2eYBMaGSowMihc4XdGtdUFI7w', '2026-09-02 21:11:35.960488');
INSERT INTO `django_session` VALUES ('7zd5ku8iryemsaakf6mr0kcjormujsf4', 'eyIzNS4xODcuMTMyLjE5MSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mK3HI:SQUnsjdtOI6ipdKzkItB8k5eSrTMKV7qL7LJoPC_A44', '2026-08-27 18:42:04.913917');
INSERT INTO `django_session` VALUES ('80d39f90mgydm4890jtphdavlja9ro5g', 'eyI3Ny44OC41LjE3MCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHOYD:CuSzGPa9VWzjCd52Lr-HXd8TzGc9MIpsQRgR7rYG6dI', '2026-08-20 10:48:33.904593');
INSERT INTO `django_session` VALUES ('818bq2bcs7ouolcyl1vfobpfp9eko2qy', '.eJw9y7EOgjAUQNF_6SwNpYrihsHgYiwMDCzktSlFJLyIbRSM_27j4HpvzpsYRDPoAMHZLmoeFqwme9JmOS78JHoHio07lVUg69lhGs9VsfRAVqQFpSXi7W_kPSmnSyzOz1KPeR3ntVqHr0zJEMOjOBTe8A2NOKOMc8qSrTcwBcPVdNa_ZoDRODD6l8nnC-2dMcE:1mFu9W:Iu8JWKTi_nErk9VUBQ3DOOfdorO84KpV95hVAiOr2gQ', '2026-08-16 08:08:54.827240');
INSERT INTO `django_session` VALUES ('82ahf94iq4rgc3ttfpec0doqkmfic04q', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTOC:rZ7lSU4rkfWpJ-bVN_r-u9eHV8EsYCCxQ-LLVuRk6Wo', '2026-09-11 17:35:36.002305');
INSERT INTO `django_session` VALUES ('85kmnu2olea0egztcxrqsenzdkrlssvw', 'eyI2Ni4yNDkuNjkuMTAyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHCuJ:FIHPWlwO-YgEBpX_XBZdfcj3nSQD2NVO5CLXUt_ZYLc', '2026-08-19 22:22:35.491608');
INSERT INTO `django_session` VALUES ('87puolwyzti1iq2bykbl9eucmp5ddqx5', 'eyIzNS4xODcuMTMyLjUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGkop:exRHgGo3bWbmLzlq5g8WxQovgJcSVw86ptfNwkDIz3g', '2026-08-18 16:23:03.769995');
INSERT INTO `django_session` VALUES ('8booyzg9q4gzfmpuzicxslxi3lrkyvvl', 'eyIxNzUuMTQyLjIxNy41MyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mKZv6:nVaTVl3QDjQGwsiPC3C2PbgQzEIKMwknRDeB_p1-YxU', '2026-08-29 05:33:20.906719');
INSERT INTO `django_session` VALUES ('8d92nsx1sho069d8p1k5lg11fek1g21d', 'eyI1LjE4OC42Mi4yMTQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJ5Ij:q-ywLoJwGJ97hOsmpnyl4jwpgmvaKZ9xaCO368uoFmY', '2026-08-25 02:39:33.386057');
INSERT INTO `django_session` VALUES ('8efkecw78hz9ktbu524xkn7bf14b28uu', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiaklMYU1MMlpnMnNvQjFscUlEc1laUThHZklsejV1TnEifQ:1mGRPM:Lq90GYv1xsuNvyrJyHc-cbLRkt-gofbgtAApR33_qJQ', '2026-08-17 19:39:28.558518');
INSERT INTO `django_session` VALUES ('8ey2fdx204qq3ui84gpakmbjfle1nmm2', 'eyI2Ni4yNDkuNjYuMzIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMY5Q:tdXQ3N0oUpCRm1k9tGXvHSckoZoacQOb3TBR_zuNago', '2026-09-03 16:00:08.701944');
INSERT INTO `django_session` VALUES ('8fjyegtzulohn9co7s34l2ltaud4lb4z', 'eyI1LjI1NS4yNTMuOTciOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mLa6B:HUuC-SNOTp3MMwJG1h3A1SwA7Ee-KgsK1DSJzXWrvKg', '2026-08-31 23:56:55.736042');
INSERT INTO `django_session` VALUES ('8h5336vr1xdtjq42v38dzo9mxdv0lfc3', 'eyI2Ni4yNDkuNjUuNjQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJ8eJ:V4dcwzLFkFWCJ3zaAZLY45qDp6qQ3c2bHnINXtK8-J8', '2026-08-25 06:14:03.670756');
INSERT INTO `django_session` VALUES ('8j8n3pb3wwu2n5sv42c7aadmxhpvltlj', 'eyIzLjIzMS4xNDUuMjA3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mPcIc:0RT_iTQr8m06Bv-JZGrzaTulwBGl3YdObzDgBbkd69I', '2026-09-12 03:06:26.921179');
INSERT INTO `django_session` VALUES ('8liwx3c87t1z45rlurfe39rfcwbjyf6i', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1m1Jgu:j7IBGld43FufT6irbASjc6N8aN0esDdiPq9cOWYI5B4', '2026-07-07 02:23:04.921437');
INSERT INTO `django_session` VALUES ('8lsh0vcqspb4gaz9jugqgbo8cecrxerd', '.eJxdj8FuwyAQRP-Fc4NYGwzkGKnHfoO1wNq4tWwLsKIk6r_XRLmkl5X2zcxq58HACK4bDo3gAIqdGabTPI2xsA_Wz7iMO470xBXgXmK_Z0r9FA5o5Tt06H9oqUr4PqIr9-tS0uR4tfCXmvnXGmi-vLxvByLmWNOD8UFJ5QeLVtgO_TEIdGsG3couCNlptK0YNJlGGaGkdpI0htBKJ8AcR_89-VzLbatVCqGPVPtsmPN1TdX1Od93h1MCAcB-_wBfsFgK:1mPKUz:tJ-mSXSYxzo75xHYC-XmaTv2_oejtRUJNxfhi56XivE', '2026-09-11 08:06:01.996524');
INSERT INTO `django_session` VALUES ('8q8viiu8t6ndsv2q90whir0009s1r3uk', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHcuy:WrcQMuNQjP7Bvk-91rUPBDOLtOKAZ_TGkovpuBcLnRA', '2026-08-21 02:09:00.316847');
INSERT INTO `django_session` VALUES ('8qcb0hr4ev4i5mewllknodiox2emk523', 'eyIzNS4yNDUuMTg4LjE3NSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mIQIy:TfW3TIorcSG_2pYDjUsCI8XGGGtO7TNq6pH2vshiEQI', '2026-08-23 06:53:04.669456');
INSERT INTO `django_session` VALUES ('8yaf64o6nm5d4amjme3v0npsjgh02goz', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lzpxS:chCWrkhwsPpsaJhOmK9EKlASgOZZmS-NF_Ok0S5RsVg', '2026-07-03 00:26:02.978590');
INSERT INTO `django_session` VALUES ('8zjdgn7hkmznvmdwbq6alfjkdf9ycmhm', 'eyI1LjI1NS4yMzEuMTAwIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJrup:DDE-sr3iLS6fDOSs8BRgOG-3I7GhuhQXf2JJDyR-c5Q', '2026-08-27 06:34:07.920449');
INSERT INTO `django_session` VALUES ('90zaqfo7vu38azsl12kp8msgrl5jjj4b', 'eyIxOTIuMTYxLjE3Ny4yMCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mP8Tf:A_qXKbWMq15AXrj7ziWiRa9N3is3dXAI6S_znCmM9eM', '2026-09-10 19:15:51.622354');
INSERT INTO `django_session` VALUES ('9g9vi5esx1svaqw08rh6xhihf0e9w9s9', '.eJxdj90OgjAMhd9l17owtol4aeKlz0A62gFKgOwnRo3v7ka8UNurfj09OX2yBmLom-jJNQOyA1OSbb6hgfZKU97gBaZu5u08BTcYniX8s_X8PCONx4_2x6AH36drUIVUxmgBYAURSpJWGw22roTVVJRY4h7qUtmC1K5CretUEvdWSKFbSqZ_Idcx3BdKwIeINIVEF_D-NrusOo2PaGBwImFRVrxILXIUtx2Hrs_qZkw_Rehoxez1BllVV3I:1lyLoh:GFulexhTF3YsX6ZF9lT339Vaom17_nea-UDzNUIAZus', '2026-06-28 22:02:51.503561');
INSERT INTO `django_session` VALUES ('9hn1mjmwuu73xvlybd5vbirakqovkcsm', '.eJxdj01uwyAQhe_CukEYQy26jJRlzmANw4xxa9kRYEVJ1LsXomxSzWq-9-bnPUSnB6lqdeJLQDos8xSL-BDjAuu0w0RP3ADsJY57pjTOoULTv0MP-ENrU8J3Hd0kbmtJs5fNIl9qluct0HJ8ed8WRMixHWNtlAmDAtWz8p21zB40syZk6wwDIhns0Tn76WzvwcFQocKBAitdl_578tmW26VFKQQYqeW5QM7XLTXXabnvHubUid8_2-RYVA:1mZr2o:rM-XCqYn-odyKfcHhmEokLnx21cC2RNxJJFhtuOQTEU', '2026-10-10 08:52:26.083399');
INSERT INTO `django_session` VALUES ('9ickdfpc5fa0lgipo49qdce4xc11b0rw', 'eyIzNC44My40MC4xMDEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMUlG:pKaJIZ9oh9Agpqd5bDe0HRdzw1KSXBwxJetX0Ggv67w', '2026-09-03 12:27:06.675862');
INSERT INTO `django_session` VALUES ('9lp5ci97q7vzvh4fvel5bpy3ydw3ocu2', '.eJxdj01uwyAQhe_CukEYQy26jJRlzmANw4xxa9kRYEVJ1LsXomxSzWq-9-bnPUSnB6lqdeJLQDos8xSL-BDjAuu0w0RP3ADsJY57pjTOoULTv0MP-ENrU8J3Hd0kbmtJs5fNIl9qluct0HJ8ed8WRMixHWNtlAmDAtWz8p21zB40syZk6wwDIhns0Tn76WzvwcFQocKBAitdl_578tmW26VFKQQYqeW5QM7XLTXXabnvHubUid8_2-RYVA:1mZv4g:AsiOo9bZkyGMD3xNLlVpdRzm66r2tOLfPPQo10_SbfY', '2026-10-10 13:10:38.867779');
INSERT INTO `django_session` VALUES ('9m7a67x7n99y3vcc4voc7av9o4cqgzn3', 'eyIxODguNDMuMjM1LjE3NyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPvX6:cF3j8QgVY2TfPp8mMz0UbSeX0iFwunjPdzpOtz44ldE', '2026-09-12 23:38:40.946519');
INSERT INTO `django_session` VALUES ('9mm5k04ui7dkr37fttudxipcluamk5jf', 'eyIzNS4xODcuMTMyLjUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMzDY:8vd-3AlJ5svZ2w6Gfv2m8lHdQM1PbQlKks9pSkizoMc', '2026-09-04 20:58:20.779432');
INSERT INTO `django_session` VALUES ('9qixdc3q53vzy19lg6j823g8jkb2oku7', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lyL1X:YPVImu0147VRJnwJvyRCjSvgSPQ7Nvq9Vf-2v6Cl_X4', '2026-06-28 21:12:03.475081');
INSERT INTO `django_session` VALUES ('9wxfja2qmih74atjjvxqzt4383ezvkhp', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTNm:L8rVpd-TCVZ5jIAWZ742orDR55k82U_44L_q-sk-Rew', '2026-09-11 17:35:10.112661');
INSERT INTO `django_session` VALUES ('9xukoagerinth1e43dgr00ynmktsvmnw', 'eyI2NS4xNTQuMjI2LjE2NSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mFxNE:P5VO4Keuihyykm5PtW66Pi7-gcm08S3t2Ul4hB9EDRg', '2026-08-16 11:35:16.309719');
INSERT INTO `django_session` VALUES ('9xzwqts6fm369kg5meue9h43pb7qtmvz', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvJsL:za8c7cLfH7n-nBCabKNwX7M45vES4UV7KLWWTkO4ix0', '2026-06-20 13:22:05.128899');
INSERT INTO `django_session` VALUES ('9yom9r2q72t6wxm7vz2op7few8ww8hoc', 'eyIxMTkuNDAuMTI2LjIyOCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mLi2Y:gKclZm04zYihM2hVfMqkiZApO3vOR3gPHJlK9Loogsw', '2026-09-01 08:25:42.807026');
INSERT INTO `django_session` VALUES ('a55relsr6cgdu6q2unxrn5exraylifex', '.eJxdj8sOgjAQRf-la21KaSV1aeLSbyDTxwBKgPQRo8Z_tyVsMLOac-887odUvKEsV0XOBPxxHLo-kgNpR5i6BJ1bcQGQYt-m4Hw72AyF3EMN5uGmoth7Hp2pmafoB02LhW5qoLfZuvGyeXcLegh9OYZcMGEbBqxGpispETVwRO4MSiUQjHHC1EYpeVKy1qCgyZCZxllkPC_9e3Jt42spUUJM1k0l4AIhPGdfXNfxnTQMviLfH-LnWIM:1mbihA:-TAgp2mymhEF3JxSAogXkyhcAT44BrzqNG75D3sd3Hs', '2026-10-15 12:21:48.798262');
INSERT INTO `django_session` VALUES ('a7fc1g7zaoqut0jtgvfviwjghp8zou5p', 'eyI1LjQ1LjIwNy4xNDYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKMbC:Mf9Ieb-m8VV60nesrM60orfcHjipG27shzCCuWECftE', '2026-08-28 15:19:54.177405');
INSERT INTO `django_session` VALUES ('a8069dz5f1zttopytirhjmwawm617s37', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiTFlHcGpweTZnWkZKYVNZYTk4dWRHck93R2sxTGdnZUkifQ:1mGASU:4_EvCpkYMEAEf6HN0U2b5X93ilhIyeocMwa22W1jc44', '2026-08-17 01:33:34.185789');
INSERT INTO `django_session` VALUES ('a8s84nb8kmwq7grzcdkzbm2qjijvb2yn', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1m5isL:DOqGKYBc4acFzigiEx9BiNt3PvN82Ge7gtDiIEtzIts', '2026-07-19 06:05:05.704808');
INSERT INTO `django_session` VALUES ('a9sdef3ou2ecmy1pq4s91mys3fk6pwt5', 'eyIxODUuMjUzLjQyLjMiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKsNG:hNWJZfPPVogrV_5dAfLvwA-un1oa9ryJRRSLY-aF1r4', '2026-08-30 01:15:38.051720');
INSERT INTO `django_session` VALUES ('afbkn268ffhbboc8jdhzamvjltwkixak', 'eyIxMDQuMTk2LjIxOC4yNDEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mI2Gt:5B3mk3yyltZoDi9Eax5eBTqiENmTVW1kxRyTGvePVOI', '2026-08-22 05:13:19.507961');
INSERT INTO `django_session` VALUES ('ah36r3k6eqs95uzgxcfqtmlaix3dsg3m', 'eyIzNC4xMzkuMjQ2LjM4IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mFqmf:I8kDVgvhQ1yhV2CtI08P2AGQPrIHy1JxNqOvqCQaXOQ', '2026-08-16 04:33:05.031639');
INSERT INTO `django_session` VALUES ('ai79awmmmpu2jc4pcj0sx0jri6rk7uwx', '.eJxdj8sOgjAQRf-la21KaSV1aeLSbyDTxwBKgPQRo8Z_tyVsMLOac-887odUvKEsV0XOBPxxHLo-kgNpR5i6BJ1bcQGQYt-m4Hw72AyF3EMN5uGmoth7Hp2pmafoB02LhW5qoLfZuvGyeXcLegh9OYZcMGEbBqxGpispETVwRO4MSiUQjHHC1EYpeVKy1qCgyZCZxllkPC_9e3Jt42spUUJM1k0l4AIhPGdfXNfxnTQMviLfH-LnWIM:1mcgtP:LJwy3nkn10AwhXAPQrD9HlLZidTcirslheqaGZXlbqc', '2026-10-18 04:38:27.076137');
INSERT INTO `django_session` VALUES ('ajcjtmljxqaks328bghe8lw6vt1xnnhg', '.eJxdj01uwyAQhe_COkUYmyCyrNRlT1BF1jCAceuYlB9FbZS7ByJvEs1qvnnvzcyVdFxSVqsjBwLxbZknn8mOjAusU4HJPnADULIfS7JxnE2Fav8MNeCPXdvEfFdroBjWHGdNm4Ru00Q_g7HL-6Z9CvCQfFvm-MAGIxmw3jHdCeGcBu4ct-iEGhwg2gF7VErsleg1KJAVMpTWOMZr6MuRjzb_ndsr2QJ62_45Q0qXEJvqY_kvGubYVVzJZv4iv6YolDKQ447AKZQ1k0PPKbvdAerWZBY:1mdzL0:veO9nsJq3YoMAotcUsSl7L16_qlINB3_0waqSsHODQQ', '2026-10-21 18:32:18.601705');
INSERT INTO `django_session` VALUES ('alczcojvg5zjeiy8qccs0ty1rczxxge6', 'eyIxNjcuOTkuMTEyLjIxMiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mL1lu:ptGxhgvgIdDbCyF5JHkzesPpR9Gr36jMh5tJ8Ap8yq4', '2026-08-30 11:17:42.005665');
INSERT INTO `django_session` VALUES ('arb45hh9y2snv3jv273rybcyc3rwvdn6', 'eyI1LjQ1LjIwNy4xODUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mLRiH:6IOhnqWz_PrGj__0Gv3VIop_Q7NSb5HJuzOvEa8zxoo', '2026-08-31 14:59:41.111937');
INSERT INTO `django_session` VALUES ('as91gcibs8lwlbe8c8hetx6ni3eqfdf6', 'eyI2Ni4yNDkuNjUuNjQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNRxj:VefbnXTPMZHPJbQQRhqNI0sRFZPq6aUiwI2qq5MUlqY', '2026-09-06 03:39:55.130942');
INSERT INTO `django_session` VALUES ('b07kge98cyjeks90ru2hrkbozo9qhjja', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHAsI:kPbTvJdpoia4qBZFrh9PQXuJas6tThALNye9nhEXfTc', '2026-08-19 20:12:22.523612');
INSERT INTO `django_session` VALUES ('b1zucioc27o3gnr74fb13p9m11b6wcs6', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiNWNMSXMySHFtWXp3cVVLZmlYRXc1YUVFNG56bDFVaGgifQ:1mL2Eh:aSKywrIm1pRkiU4zc7AadeDDPkeWAUM03rzDxGAOkfs', '2026-08-30 11:47:27.924330');
INSERT INTO `django_session` VALUES ('b2orm9jintrwdmqz5566nxzildsiu3hm', 'eyIzNC44My40MC4xMDEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMUlG:pKaJIZ9oh9Agpqd5bDe0HRdzw1KSXBwxJetX0Ggv67w', '2026-09-03 12:27:06.507112');
INSERT INTO `django_session` VALUES ('b3aicvh85aqskzaodxrp87ksi38i83sq', 'eyI2Ni4yNDkuNjYuMzgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mL4WT:es9Hj_fyjLHHTPJgjHhKfxVxtm-1Q9169R1pUKRDXGE', '2026-08-30 14:13:57.299852');
INSERT INTO `django_session` VALUES ('b3zdjf74oqje1qwzuqoiwgx1avknlnli', '.eJxVjs0OwiAQhN-Fc0NKS2XxaOLRZ2gWFiz-0KaUGDW-u21SjR5n5pvJPFmLeeranNzYBmJbJljx6xm0ZxeXgE4Yjz23fZzGYPiC8DVN_NCTu-xW9m-gw9TNbUnKgK1LBN0AmdoqWTuoFNRaK_KIxgE0ldHeSr8BXwpdWS1JgiUSWM6j34-iYAOmdOvH5df-8sgGwyg-yHQf3OynPMwC6Roie70Bt3tNHw:1mG3lx:H7RI2O006VIZWTKFRx4GiL4nVVCdC2gCJd18JCK1IlA', '2021-08-31 18:25:13.674943');
INSERT INTO `django_session` VALUES ('b6glojma2pdxutssz52upscheqsapbmq', 'eyIxNTEuMjU1LjE5Ni40OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHXc7:2VCuA5ozOeWYysaQ0rtOm-tNH2zYLm0Kvf3oDAK-sxw', '2026-08-20 20:29:11.368282');
INSERT INTO `django_session` VALUES ('b73xqoy46ynwm3x34ua15992kndmc22z', 'eyIxMDMuMjUxLjE5LjEyNSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mJBGK:8Vcksit9cUZ6AZ0d644HUHDN_h3vDTbTdAYXc_qr0Ic', '2026-08-25 09:01:28.386784');
INSERT INTO `django_session` VALUES ('b7aijltvaalq1ew1mnzbkxg21w2gp15f', '.eJw9i8EKgkAUAP9lzym2GkbHijQswUwFL_IMexu-eqhrCtG_Zx06zGWGeQnbMd2FOZ-Q0hIrAa1BN1RazERB8MAesPrpSSAzUmUw9FrJotOgv2nM9tCOUu8wpTzwqM7IHZLBCiI6heMhmsYrXKqSuf4_arMu6b5tkmXQDfHTP5cNsuPZHVtxeEx98f4AlfoyNg:1mP6HV:xRvxNMQZiLguW9xJ975sTrxevOpaUNdlZtgU6TXcoRU', '2026-09-10 16:55:09.384777');
INSERT INTO `django_session` VALUES ('b9ii4bivqijy1naubi37fjjtwl6imc0d', 'eyIxODIuMTYzLjExMy4yMDkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJ9m4:kZfxycGB0Ba1yYYt6Ml30G7XcJwhnb8lNOuvnToSKdQ', '2026-08-25 07:26:08.663304');
INSERT INTO `django_session` VALUES ('bamu67cwjojeg1ac1et3wyosuhi1j1zq', 'eyI0Mi44My4xNDcuMzYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mItVU:Hqh9Xtaaw18GC9VqMxSVPg5nlr4LNO2LXTEyjsTqazU', '2026-08-24 14:03:56.606033');
INSERT INTO `django_session` VALUES ('bf009p7s7tbsyivedpw0r659tw2vxtjn', 'eyI0NS4xMjkuMTguMTcyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mKNDp:VX6avvU6toDsHT6K9jEj3t9HkT5Jkis3OmtuSWyKvME', '2026-08-28 15:59:49.074065');
INSERT INTO `django_session` VALUES ('bodev055n0a9gtcknwdmkt0e7ow9rwfk', '.eJxdj0tuwzAMRO-idSro40RylwW67BkMSqQtt44d6IMiCXL3SkUKNAFXfDNDDK9sgJLDUBLFYUb2yjrBdv-hA_9Fa1PwE9Zp435bc5wdbxZ-VxP_2JCWt7v34UCAFGp67K3RPbleInRGkexQoVfS2FEJtBpRqIPckzloO3pjDcJeSe2UVgIQTT36VPIEKX1vse3vy6U4mKOsONKRjo5ixTkW-svl84kaIvChijsmleGijqwU4ssyTyG35kv9ssBEv5jdfgA-G1x7:1mAB6I:ywIkLyAuR0fwCqZzHG-x4afWczHu9IpWHAWA0QJZVrg', '2026-07-31 13:01:54.918276');
INSERT INTO `django_session` VALUES ('boo7al7ibol7iehbeo7kw9lkwhyg0ixc', 'eyI2Ni4yNDkuNjYuMzgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHSA3:aCoqRuj34Un_R3iA1HfjaAubE1tjeCjMmeXWgdpzkaY', '2026-08-20 14:39:51.369282');
INSERT INTO `django_session` VALUES ('bplmexwmfrt0incymithlnkgh4upb1nm', 'eyI0MS4yMzkuMzcuMTczIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHNC4:9na7JyCnkpdEMD8rhnfsH_4CYaHEQ5TiMI0DrgSd7DM', '2026-08-20 09:21:36.982002');
INSERT INTO `django_session` VALUES ('bslwnwx6zgv9rde7pyhtof2dgz3bogr9', 'eyIyLjU3LjEyMi45IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mLHfT:55_f5qHCKxHvcmrMHnsoUOPt55xZgZW3lGRikZ1AV7c', '2026-08-31 04:16:07.527399');
INSERT INTO `django_session` VALUES ('btjkwiwhoxbkmy86pmms7ly2fqtog8h4', 'eyIxMTcuMjA5LjE1OC4xNTYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJLT9:twcEQWoYiT6EiulyDW4Jn5Z0rumfDpSrHjzc7yjYnEE', '2026-08-25 19:55:23.310341');
INSERT INTO `django_session` VALUES ('c1thobhln5xijfu4y2wlb0jq4n9q3wfe', 'eyIzNC43MS4xOTAuMzEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKbyT:u8rpIJi2T7_JBV6w0y2fowCCrAR_xDsCXdmgE4ENGmg', '2026-08-29 07:44:57.241608');
INSERT INTO `django_session` VALUES ('c20674lha02icrhl2q4rlpm1fueiaqhs', 'eyIxNTQuNTcuMjAwLjEzNSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHLt4:5d3YFv6pfJ2qcLB2AvSwbA63aQRj_XA8CkbrimU4IE8', '2026-08-20 07:57:54.900511');
INSERT INTO `django_session` VALUES ('c2b8as5jwmsilgnwht9346yz0zuf1qqg', '.eJyrVjK0sNAzNdEzN9EztLBUslJKLNLNyUzPKFHSUYrPScxLL01MTwULAwWgag0NjPWMTEyRFdcCAMKfE6E:1mNFFj:dI-VwPWLnbEUker16uobHUk83Q7EYS1HaM0qjMDbkE8', '2026-09-05 14:05:39.812269');
INSERT INTO `django_session` VALUES ('c3ido9at52t16zmhsjt2z9gyu0vv16dv', 'eyIzNS4yNDMuMjUyLjIyMCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mI22r:LMHvMqcwiEglI51FMBl60IJYrEgri4HCgL8elZjL2YE', '2026-08-22 04:58:49.223166');
INSERT INTO `django_session` VALUES ('c97nq4wh5hkza9f5yp4o5w683t2xjivy', 'eyIxODguMTQ2LjE2NS4yMDIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJCUJ:Eh1ZB1VDioG9f0mMvRR01VU4OZshPVynaTc_X6fdjw0', '2026-08-25 10:19:59.432407');
INSERT INTO `django_session` VALUES ('cb5kf0bra60ttgt096ognp14n64vmu4t', 'eyI5MS43OS4yNy4xODciOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHc5R:8GwyEDDvVOLKZVKVaCDcZfTqQrihslESAP-kaciKKGQ', '2026-08-21 01:15:45.815250');
INSERT INTO `django_session` VALUES ('ccxvpxsybx67upzr01c0f7u68h1i5nfh', 'eyIxODAuNzUuMTk0LjIzMSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHN62:mo5Y7IAwL49IX2frbQnbdR07PWXhjZeZUiksn4JjprE', '2026-08-20 09:15:22.237998');
INSERT INTO `django_session` VALUES ('cf03t6vto8opqy2usulx9ygy35b7e6my', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvvX3:yTRhpEtri4MH_i4eLAnIvnDad-cQcu7IHfsWRIZEQhg', '2026-06-22 05:34:37.977122');
INSERT INTO `django_session` VALUES ('cgphyd5u3h04p4lq5uwnfpuuxon8y23x', 'eyIxMDUuMjM1LjEzNS4xNDIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHIR0:DxLsWi0wQOcAWG4JCBCISPLIVqskUVJF330wFJGMtXM', '2026-08-20 04:16:42.824213');
INSERT INTO `django_session` VALUES ('ch2931qv2j2j9xu9dwnflwe32d4ci98m', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiU0hodlZOTmtqb2UxM2FGTkkzWUdNb0VsTXI4SnRuN3AifQ:1mMa8Y:7zeQfe0H7_sZ1NaL9C7w4cw5D3mzih2ZGdgpQ64hPL4', '2026-09-03 18:11:30.970984');
INSERT INTO `django_session` VALUES ('cpp5xjqegxl05i7w9vqi451m9yx793in', 'eyJ1c2VyX2lkIjoiODMiLCJ1c2VyX3R5cGUiOiJzdHVkZW50In0:1mO9If:ouHEDZSGlpqOP1aUyJyhwUDqVcJ8XwKTaBJwkl7tN-A', '2026-09-08 01:56:25.753415');
INSERT INTO `django_session` VALUES ('cs8o30ievp0ibafutyogux9k87obhb3x', 'eyIxNjMuMTcyLjExMC4xNTQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHJML:2w5q5Vewld3KXM5TGWq1ZmTxorpOpvoYFDAOLxfaj5o', '2026-08-20 05:15:57.679365');
INSERT INTO `django_session` VALUES ('cvggw0y2vw3d0rl28z43vjre5rw0zd2o', 'eyIxMDQuMTk2LjIzNi4xMzQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNuDg:Z1_Q8dX0Nbc70MK-XOYAFVt2-Rwwf0zCuX4gLEnc-V4', '2026-09-07 09:50:16.406179');
INSERT INTO `django_session` VALUES ('cxkxjyn4y2stw8ez2unfh4rpyd8f0ilk', 'eyIzNS4yNDMuMjMyLjQwIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJfkJ:OufEqrdwElsdlfhvPj_gAIPf_aJVqa3XhWmsUIK4ubc', '2026-08-26 17:34:27.920452');
INSERT INTO `django_session` VALUES ('cy61fnizb6jzo73ow471teca08h6cf4c', 'eyJmYWNlYm9va19zdGF0ZSI6IncwM1c2dXNMYzk1VWtJWG9OUXpxVlRqaHRPOHJsakZDIn0:1mL2Eb:Vrw_wUrjMPBXRzR2z_YSiRfkLvG2xKFt2fhswyhotvo', '2026-08-30 11:47:21.555994');
INSERT INTO `django_session` VALUES ('cz8f87hylm0hujs9mbxa8546hie80zgr', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJDUc:AI3vQHMIelLe3hiC2KbregTta3z8hm8nWHOIClViMt8', '2026-08-25 11:24:22.518774');
INSERT INTO `django_session` VALUES ('czm7m4mapdh61zqt8ula29i59wuiejti', 'eyI3Ny44OC41LjkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGg5U:xuP_qpydZeosywz6RfH91wQJbWhSBbTV5rmp51h6VYI', '2026-08-18 11:19:56.818332');
INSERT INTO `django_session` VALUES ('d5bb3hxm75utytfcsd416xmqphxq3gfb', 'eyIzNS4yMjcuMTI1LjQ4IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mMm4t:nlkbWC3CjrBqMHHxt2NBB-qEKxwMcpdcoAPBQABSXmQ', '2026-09-04 06:56:31.561799');
INSERT INTO `django_session` VALUES ('d65tui8n4yp94zsdkokekuilmfyjsyn9', 'eyIzNS4yMDIuNTAuMTE1IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mPgJR:gtwqXxuTxrzYrZJIWSCJIzq8fx9wEDS7pFQ0RCI4RW8', '2026-09-12 07:23:33.113705');
INSERT INTO `django_session` VALUES ('d9bhqgt698l8o4p5dlgap175x9p5sq4e', 'eyI2Ni4yNDkuNzUuMjkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGXiY:Wi6irYqZPAjABxQxXzLlLbrrxMHPN1VUP7grzhLxmS4', '2026-08-18 02:23:42.060097');
INSERT INTO `django_session` VALUES ('dbxdbqyho9a6q1ohrbrznp632zh4zpjy', 'eyIyMTMuMTgwLjIwMy44OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPfNX:BxaKBLBpZx_K8cg8w3KActUnCUZVTjTpPTDHqU0b-AE', '2026-09-12 06:23:43.872438');
INSERT INTO `django_session` VALUES ('dgtnf5pr0x3atc25d3tz3dphstvs635d', '.eJxdj8sOgjAQRb-FrrVpCykdlyYu_QYy9AEIKYSWGGP8d1vCRpdz7iNz34SDoFxyyuuaCkYuBNfzNHR9JCfSTOi7DTu74wxwi32zBbs2g0kQyl_Yoh6tz4p5pOhM9ezjOrQ0W-ihBnqfjZ2uh_enoMfQp7Q0vHKIWqlKCYYCpeNl7aAyivEWhBGOOw0SALVVyjFZAjKwmDw2sVT69-R-xteSp4S4GevzwAVDeM5rdgnG2G10biyKgny-pQtYOA:1mPPdW:Rdn_dQAjYfe_eQreGcM7uSwaXGO8YoLUzYkQiI1AXiY', '2026-09-11 13:35:10.324371');
INSERT INTO `django_session` VALUES ('djcmkjodhndvvefvjn0gbl0genissast', 'eyIzNS4xODcuMTMyLjUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMRIK:ldhcfq9idocNHgeJV_hEla9OfwIFmaGtdeeio_qCicQ', '2026-09-03 08:45:00.122865');
INSERT INTO `django_session` VALUES ('djjxqb7zvpthpkvevgcs0sy0fbniv49t', 'eyI2NC4xMjQuNTEuMTU0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHzFC:TjI_oTTvj9MZPiW1IhIl0m3C6qHtKtbZmQg5Y4LkQ-M', '2026-08-22 01:59:22.372351');
INSERT INTO `django_session` VALUES ('do6xjjhte7cgwtw8s3lelols3dxt0p7m', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luvX2:ACybVkX0ixGIsI75jXJVT1JFi6wBGQJ16BrxG2qzAKA', '2026-06-19 11:22:28.719858');
INSERT INTO `django_session` VALUES ('dpngpdkq4x9lokvijy2gbvuv3i33g43x', 'eyI2Ni4xODcuNzUuMTg2IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHlMv:1dzBHpZE3ZBqlKQcn-VpELruQF6X8L89-1EcKMck75Y', '2026-08-21 11:10:25.828847');
INSERT INTO `django_session` VALUES ('dw4dx8yh86qvlw0lu963mqxpzhdt4o42', 'eyIzNC4xNDUuNTEuMjQzIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mNuE7:pkvkDJHdviG66ss0vutUlxRmEqxJ2XjXbcaYP0Is6_0', '2026-09-07 09:50:43.610108');
INSERT INTO `django_session` VALUES ('dw6e4kdpcwp1440hx0119cxwkiny547y', 'eyI2Ni4yNDkuNzUuMjkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGXib:kgi47quc1xXiMI5qAUz9bdpM2tZiC1NFNqRWSc8arGA', '2026-08-18 02:23:45.193375');
INSERT INTO `django_session` VALUES ('dwenr0td84ap58mxgmc16451lsxegzb9', 'eyI2Ni4yNDkuNzUuMzAiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGduq:wKbjC4BMT6-ijLtCiJ8O83qi5aybtcbwDvzch_KTF-A', '2026-08-18 09:00:48.869609');
INSERT INTO `django_session` VALUES ('dx4fnr460v5xnz2luhhqn38c2vbtitt4', 'eyIzNS4xODcuMTMyLjE5MCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mKK6X:4iHZ3gJMBVO5yuaP9m9HjUsLm6X7Ub32wNZRjEldiCA', '2026-08-28 12:40:05.881730');
INSERT INTO `django_session` VALUES ('dx4udlcn6ghwybwqqeirsibq3lckk1es', 'eyJmYWNlYm9va19zdGF0ZSI6IjhUTW1JYmwwZ2N3VkNlZzIwVTAydTNjZzg5Rzd0SGtkIn0:1mKMax:rgNsfFqK7u8fJsbSUPBekTVUnxhXCVDbuIoVTWZDCYk', '2026-08-28 15:19:39.303907');
INSERT INTO `django_session` VALUES ('dxgte13pgkh0odo0w4kuewd9is878kv1', 'eyIxMjIuMTc3LjEuMTA5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJCtj:xgnQGRIayn4L6QcE1MQUUSJinIts6bmWc2HXeoJhDbw', '2026-08-25 10:46:15.493675');
INSERT INTO `django_session` VALUES ('dxsz59o2fym0vw9ppc7j24mgr7ttl8da', '.eJyrVjIx1DM0MNczNNYzNLJUslJKLNLNyUzPKFHSUYrPScxLL01MTwULAwVAag0N9Uz1jAxNkJXWAgCW_hMS:1mIg5z:GO9qN5H9BRCfAdbwITGoju553TTzhU36aLempakRR84', '2026-08-23 23:44:43.313419');
INSERT INTO `django_session` VALUES ('dyae8tl93n84e6iahz5ssp0l59iale9v', 'eyIxNTYuMjE1LjExOC4xNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHTfk:moZaiOOcVhoMthM3nhbnXswPvAbBdelJErZvtjZSA0o', '2026-08-20 16:16:40.157963');
INSERT INTO `django_session` VALUES ('e1cdqgcpvmx7uo95uymv1mfb7q8zx5gz', 'eyIxODUuMTA0LjIxNy42NiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPfdp:jKUFSnNj6jE8Sc7CiZw8dzFl9R1dE_APdV0c6VUK2no', '2026-09-12 06:40:33.368565');
INSERT INTO `django_session` VALUES ('e2ou8m3y8oavaasocwf91ibuwet58yo0', 'eyJmYWNlYm9va19zdGF0ZSI6IkZ0eTM4R3ZtbzBKYmVtdVpmbnlnYzB5MVMyVlc0QzNIIn0:1mG0Mm:nEM4zfr-EvKScdtxuOLBvEK0XK3H5HD4AdCj9LLs63o', '2026-08-16 14:47:00.704204');
INSERT INTO `django_session` VALUES ('e33m4zw3el5i4zvt766dtsoz37jlelj5', '.eJw9y0ELgjAYgOH_snPKZs6wW40YFUQQkTf51DVnw8XcKBf996xD1-flfSGyoDFJcUxoHlOMlghspJVsHZqhUkMvPUjx4wmkMVKLyIB3bVIODtw3Mc53Gewdn58t64o8FZQ9Rt5lIWzqUKlpvEItKmNu_4fQ4cJPT3qw95VYK6txIo_KbMeiLXrPGvT-AG45Me4:1mGiWd:_E7e3KnlQgO6vkglgcXipLExJGlP5ykqiq3A45lKsfA', '2026-08-18 13:56:07.961301');
INSERT INTO `django_session` VALUES ('e7pv8x8unmmbd9ifu1mczpz7pn1u4t58', 'eyI1LjEwOC40MC4yMTgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGI9K:GVlXOekmjrgpWuYHt23pzPanH942jcQ1cZxcZFonIaY', '2026-08-17 09:46:18.294122');
INSERT INTO `django_session` VALUES ('e926cysfmyibxs9jg495cez392tvhcmw', '.eJxdj8sOgjAQRf-la21KaSV1aeLSbyDTxwBKgPQRo8Z_tyVsMLOac-887odUvKEsV0XOBPxxHLo-kgNpR5i6BJ1bcQGQYt-m4Hw72AyF3EMN5uGmoth7Hp2pmafoB02LhW5qoLfZuvGyeXcLegh9OYZcMGEbBqxGpispETVwRO4MSiUQjHHC1EYpeVKy1qCgyZCZxllkPC_9e3Jt42spUUJM1k0l4AIhPGdfXNfxnTQMviLfH-LnWIM:1mcjnZ:Ux1E9Uk1j8crX3dAP_v_2W1lGviZEJDGyPtkwRkrzm0', '2026-10-18 07:44:37.808826');
INSERT INTO `django_session` VALUES ('ea5l5aupkvbbaaoayf2n4aefpmqmcfkh', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHAvM:KNJPaPxndvhIABcNYTYcHA_4tCXyrxf1mRhHtXSUbB8', '2026-08-19 20:15:32.131236');
INSERT INTO `django_session` VALUES ('ed8yeminp8a04n0jtxpx5xgbs49zrbjc', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvPMV:5zcAQTNyXi33CSi1U2nODSROm8bdYWUPBEvfXVcBENE', '2026-06-20 19:13:35.606719');
INSERT INTO `django_session` VALUES ('egj35rfnyxtj6tmbz3ioy631qpfy3a3g', 'eyI2Ni4yNDkuNjYuMzUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJzP0:01atid3FpY_WmBvYSNvRjmb6TnNSs41oUE6gERJqE90', '2026-08-27 14:33:46.188949');
INSERT INTO `django_session` VALUES ('ehrb6rfb9aeud8h8p3mcywj8olz9rykf', 'eyI2Ni4yNDkuNjQuMTI0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mOfNH:4xe8svUusIKhMJurjLSHHgJu6tnRXK7R1qStdgpIm1M', '2026-09-09 12:11:19.965206');
INSERT INTO `django_session` VALUES ('ej26uqz6npt7u35cb726t7ygvoc8bv4w', 'eyI1LjI1NS4yNTMuMTY5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mMb7X:mxtUj4QJtuD21sJL2o739TPHBQZYHS0OpEK7RdWvILs', '2026-09-03 19:14:31.278283');
INSERT INTO `django_session` VALUES ('ejwtpn6vcm51cqp475czecoiyws8vm3e', '.eJyrVjI20TM31TM10zM0t1CyUkos0s3JTM8oUdJRis9JzEsvTUxPBQsDBdLz89NzUnXzE0tLMozii0sSS0BSxpalniEGmZHhER5u-W5F6RWBqb5JFs6ZJkYuUU7mQN06SmmJyalJ-fnZcD1ZFc4VzlVOxe7l_i6F7pmGlk7ZFhF-pblZAQbGUUEelUq1ACq9MNk:1mOqyT:_O8yZOEJHIT4paHCfknKuGoqJadcp9gI-nWi9LrjXjk', '2026-09-10 00:34:29.564015');
INSERT INTO `django_session` VALUES ('ekjhzbb5pcbngi4hm1ujcv1pmyqbshge', 'eyI2Ni4yNDkuNjYuMzIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMjNn:HYH5a9a-t1in1W1Qo1xP4YL6DEkdgOJkgi8ak9pxtes', '2026-09-04 04:03:51.125455');
INSERT INTO `django_session` VALUES ('en0hpur0klvo2nbt5e57bvqup3o7mk4v', 'eyIxMy41OC4xOTAuOTgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mL4h7:PjFQMRmkEAa64QKU932RIu6G5F2Zar9a-los1AiZ434', '2026-08-30 14:24:57.863151');
INSERT INTO `django_session` VALUES ('eoi23kbplqpfma5axajnavo8pyt0jcao', 'eyI1LjI1NS4yMzEuMjgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMJdJ:z7Jjglp2SAM8gJ7UbZraWMNv-uzkuPHJV-XwUJwh1iE', '2026-09-03 00:34:09.375458');
INSERT INTO `django_session` VALUES ('epesocclbznsom6nm0i7xqul3ydnfi92', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mcGC4:NnOuXePpGqpJ2sm2rAd8I0B2mEQeQXjuLn-WR-npHkM', '2026-10-17 00:07:56.610470');
INSERT INTO `django_session` VALUES ('epmewsgyot3xaw9hzqbdw7af09oh5o06', 'eyJmYWNlYm9va19zdGF0ZSI6Ikw2bkVpdFVJb2w2eVJVYWF0MlBoOG5OanBVWXBEY2MyIn0:1mPFWX:iCHidYw_EetIIdd2M2WXQ3lwyfj9c3xL2rqottr2elU', '2026-09-11 02:47:17.488995');
INSERT INTO `django_session` VALUES ('eprxmsv1b58i3uxr3xq7imlc11h6r5wm', 'eyIyMDguODAuMTk0LjQyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHpi6:h9YcQyHZlQzsL5n8GThol9YTJCVSy7J49Qgs5MfB02I', '2026-08-21 15:48:34.833989');
INSERT INTO `django_session` VALUES ('eqg08g74vfu4qmfqqqmz08g23uap6qfs', 'eyIzNC43NC4yMjkuMTM4IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mPteZ:nwvtRsaE9HPm54cv7WxlNIwFoAgAsgtcA2bI-0_TbdA', '2026-09-12 21:38:15.580324');
INSERT INTO `django_session` VALUES ('es6r1cpg2erj6ekg8wcgaecwnxx625nb', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiTlY5MVVtN3NxQmsxUkRmb3FPbm9oT3djV1A4dXFicEMifQ:1mJrz4:_HZ3Dv5a9rjyylmE9S0-VuCfbxcbV-WJ59YeoDBxFxc', '2026-08-27 06:38:30.464274');
INSERT INTO `django_session` VALUES ('eugl71483azz6agcr5t1ehyjll9cqfle', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1m1zDb:S-ZjZBTxdjO0X8YfZUZqwkGj0EUqh63dIT3PV9tdbxI', '2026-07-08 22:43:35.053984');
INSERT INTO `django_session` VALUES ('ewu88ejymfev3mh7o03v14oz70j37q0a', '.eJxdj01uwyAQhe_CukEYQy26jJRlzmANw4xxa9kRYEVJ1LsXomxSzWq-9-bnPUSnB6lqdeJLQDos8xSL-BDjAuu0w0RP3ADsJY57pjTOoULTv0MP-ENrU8J3Hd0kbmtJs5fNIl9qluct0HJ8ed8WRMixHWNtlAmDAtWz8p21zB40syZk6wwDIhns0Tn76WzvwcFQocKBAitdl_578tmW26VFKQQYqeW5QM7XLTXXabnvHubUid8_2-RYVA:1mda3e:RIZxu70h7BYK5c0g6Jc1o7gp3x_rbl3XBU3YL7xKU6U', '2026-10-20 15:32:42.895437');
INSERT INTO `django_session` VALUES ('f3ne46w12pn6uj93hf9yedqhpt7gwc17', 'eyIxOTIuMTYxLjE3Ny4yMCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mNkD4:ZBxvIcGXHt4yj8Ey9Q-c9_tqDRA5AQQWdUNsx6soMt8', '2026-09-06 23:08:58.753703');
INSERT INTO `django_session` VALUES ('fbwbfxqfufxljf4od8vkiwz2b7iiqkzp', 'eyI1LjQ1LjIwNy4xNDYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKMbP:4q7ItRJiY_skqoEp7AtqzAYkezn_7YdMtchYTxoEoUU', '2026-08-28 15:20:07.016097');
INSERT INTO `django_session` VALUES ('fe125c0fifoxx1ux23z5vbc07ndmeipb', 'eyI2Ni4yNDkuNjkuMTAyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mGhFI:MqFw4srChHaqXqM-IQ0oamqUE1ED0qPASEXZ6zc9Zcg', '2026-08-18 12:34:08.231548');
INSERT INTO `django_session` VALUES ('fhap3q2ltfjhsp8gjs6dydfgaqhnb0dt', 'eyIxNTcuNTUuMzkuNDQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMbag:PSDYrTrJX-J1wzu1dugZYVZ0_pkW8kx_ugn7oYwHYxU', '2026-09-03 19:44:38.948913');
INSERT INTO `django_session` VALUES ('fk657uobft87o67iisb7lgqe9ufwc14t', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiN1RBTGRCNmNoNUZReVJPb0ZER29DVGs2NllaUnJyOG0ifQ:1mGBBu:M0Gz0NRZ1j_lnm-0cy9Gcdp2QRMLWMrr8ivVtk-8aEM', '2026-08-17 02:20:30.300656');
INSERT INTO `django_session` VALUES ('fopbkoeiph5a9jfvyy1ipawgcesrk4ds', 'eyIxMTIuMTM0LjE3NC4xNjMiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJTUp:4qgq0pKd-nuXFNudVf7vpiQ_7eNqRiAR2yE8CO9-0kQ', '2026-08-26 04:29:39.809465');
INSERT INTO `django_session` VALUES ('fow3jhyrb87gktbwnsvmbh116p23txfz', 'eyIxNTEuODAuNDAuMTYzIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mMUm1:T37SflA1O7EZs_T5b6l7QIb28d6xSHCi-zemBIW7BJQ', '2026-09-03 12:27:53.805670');
INSERT INTO `django_session` VALUES ('fqxos6s9cc856gv22o8aql3zaxz5ipg0', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1m0nyD:79xJoE2v1QrTt47vZPDJz5sMApGnyswczkZQuADPRXM', '2026-07-05 16:30:49.967867');
INSERT INTO `django_session` VALUES ('fvr23vqukoq8h6nky6j74cd5lmgtaegf', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lycgE:Abgt1kLa_2WTc4FyKf1TbL3zI5dC-7SKcXnyaSr5cL8', '2026-06-29 16:03:14.320509');
INSERT INTO `django_session` VALUES ('fwvbxbftczf363nuiuejvcoxzu0re3zi', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHBF0:NNbuvYxxS0Y_fx6bp4239n1foy5mMzVoy5s8sMSlT90', '2026-08-19 20:35:50.804859');
INSERT INTO `django_session` VALUES ('fyz3a40fxrrk6y47rlari4jmbdymrhcl', 'eyIzNC44My40MC4xMDEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMUlF:iLsmyEkctgC22JZwHUkk1sqTAMUW4z1Le2BfaEkNU-w', '2026-09-03 12:27:05.881020');
INSERT INTO `django_session` VALUES ('g1lfhn2jw50qs3eakui6672qgli1xovg', 'eyI2Ni4yNDkuNjYuMzIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHY7Y:h3yFX-woVmT4BI87h0ywYhLOLyVzrt0qco3a4sGl89Y', '2026-08-20 21:01:40.174993');
INSERT INTO `django_session` VALUES ('g1vop4lachdxmv6xk8wfgkguswkx5ryv', '.eJxVjssOgjAURP-la9LcCy0Pl-79BnL7wOKjbSjEEOO_WxI0upw5M5N5sp6W2fVLslM_GnZgyIpfT5G-Wr8BcyF_DlwHP0-j4luE7zTxUzD2dtyzfwOOksttNWiQEhGUlthIrKEpG2qgBTAWVCUrNUiRSVthjSCEBC3KwSBQp6q2y6Pfj1iwSCk9wrT9chTj-sHzGm320hKzIHMfPXu9Ad4oSdg:1mPkTy:HIhhNSCa9iZ45pSAlS1UGkv0UUF8rQ3gbW-1BWHRL9M', '2021-09-27 11:50:42.252938');
INSERT INTO `django_session` VALUES ('g485srz0ax6f5unhpp6wjjt040ft8ynz', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lwNr2:OvmdoY0eCxouOHSizvO5FGhZxKy_IrAd3Kx9IIG4EAo', '2026-06-23 11:49:08.309168');
INSERT INTO `django_session` VALUES ('g7049r0ohpxg48nttssj1vq46luc1c9y', 'eyIzNy4yMjguMjM1LjIwOSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mKekC:bF1hwf0GzUgLAIVdUqfjCkDXU8AofOqCg8pl18RDom4', '2026-08-29 10:42:24.424926');
INSERT INTO `django_session` VALUES ('gdapib9m3vemizg5arez98yyc46mmq81', 'eyI5My4xNzAuMTIzLjIwNCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mMq09:NQNgPDehscsFX3XcsxcofniqLIGEWy8oFgTNtnzIobk', '2026-09-04 11:07:53.849057');
INSERT INTO `django_session` VALUES ('gfpkcq0zla4lzqm3nr3hby8b5oig81n6', 'eyIzNC44My40MC4xMDEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMUlG:pKaJIZ9oh9Agpqd5bDe0HRdzw1KSXBwxJetX0Ggv67w', '2026-09-03 12:27:06.200674');
INSERT INTO `django_session` VALUES ('ghcjaymjkku4jhe1sv3aovhi4hlm0bnz', 'eyIxNTcuNTUuMzkuMjUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJh44:X3T8kih2nRQG4dXbBE4TW057_6GQL7e9vGm30bthigk', '2026-08-26 18:58:56.937683');
INSERT INTO `django_session` VALUES ('gkc19ztj1lmomqnnvhj8d4vgmjhu23wb', 'eyIzNC43NC4yMjkuMTM4IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJCs7:_vC5qnFk5Ikix9Rnzs-QDE18W7UwBMMAwup345eQ9CE', '2026-08-25 10:44:35.717891');
INSERT INTO `django_session` VALUES ('gmmdl6rgmmnem2hlbbyd2p6qrxdwz096', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTO4:zv7u5vR6YPjqah7BjoW5AhjXYBVdW8jCyJBYLyRv_pc', '2026-09-11 17:35:28.849428');
INSERT INTO `django_session` VALUES ('gr972zlt4j7500hcvse0euqbgkauel0p', 'eyIxNzguMTc1LjEzNC4xODciOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mM1ef:_rEQ1xqhDNp-3zwhCd8uQp_0WKBPpOHVCDr3hYl8apg', '2026-09-02 05:22:21.724225');
INSERT INTO `django_session` VALUES ('gsqyjmk10gg9jzy36qrbcrx431egpbof', 'eyI2Ni4yNDkuNjkuMTAyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mH9ch:17oZTJEoxaJ7tnUt6qRhZP2WfDWcrRI3TaECwW7T4m8', '2026-08-19 18:52:11.409480');
INSERT INTO `django_session` VALUES ('h56yui2gv3tp3q556mpa7hi0kv2slq9c', 'eyIzLjIzMS4xNDUuMjA3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mPcIR:iGB7J5r7MKvbM6QmXicYMGUc4mgxeZ5OlwFgGuFe_5s', '2026-09-12 03:06:15.491951');
INSERT INTO `django_session` VALUES ('h6fjrci1utbuv0xs5bez2kuczia38rz6', '.eJxdj80OgjAQhN-lZ21K6VbwaOLRZyDbHyhKgLQlRo3vbku4YPa038xsdj6k4CfK0hTkTNAfh75zkRxIM-DYLdjZFWeAS3TNEqxvepOgYHuoUD_smBVzT9GJ6mmMvlc0W-imBnqbjB0um3d3wGFwKa1sXQoOCJXAFjSYVjLgXAKXNSu0Ykq01ggtOVaGn6AtZSk1sFpApSTDdPTvyXWNrzlXiRa1s7nPjCE8J59d1-G9KOx9Qb4_J9FWRw:1lzmHS:eb2VD4M2eDYnYqfwVPxbA8HKnR1EDczUjT9m2hw_oaI', '2026-07-02 20:30:26.807931');
INSERT INTO `django_session` VALUES ('h6qajtx1pwdtwerhid65ppuryhe09q86', 'eyIxMDMuMTM5LjE5Ni4xMCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mJCEf:lU84w0yG-b8mxrbRt90swzrdaEMACWbY3CV3FY9Wnr4', '2026-08-25 10:03:49.958095');
INSERT INTO `django_session` VALUES ('h8ir3hw7bpfbkrqi9qtcshz9qihtaski', 'eyI3Ny44OC41LjkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mI1Eg:bVyB3sWdAfrA-oOidrmsoq0eyrUwiRu4sY_SvMsOMsc', '2026-08-22 04:06:58.311113');
INSERT INTO `django_session` VALUES ('hcxnt87a50wylzkaxi0cwlqmjtgtegc0', 'eyI0MS4xMDcuMTIzLjEzNSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHB9Q:tsubqn9sz4Qwi_Jv5gULE8pQNRRDhgwEllTDA1sgmO0', '2026-08-19 20:30:04.900916');
INSERT INTO `django_session` VALUES ('hdgfqt7lyqvfjndtogqpr0nsw1zu9prv', 'eyI2Ni4yOS4xNDMuMTA1IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJQsN:pfEgsvD-SkfShHgmJjo9-JS3KjWcuwkpeoEy5f6EuQU', '2026-08-26 01:41:47.046363');
INSERT INTO `django_session` VALUES ('he1bn6z9i32618d6t4kxplocf376fzh2', 'eyIxMDQuMTk2LjIzNi4xMzQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNuDg:Z1_Q8dX0Nbc70MK-XOYAFVt2-Rwwf0zCuX4gLEnc-V4', '2026-09-07 09:50:16.193969');
INSERT INTO `django_session` VALUES ('hgmjrnumrqmqumlnr2rz94qlk324z1ue', 'eyI5My4xNTguMTYxLjY2IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mI1Sy:KxbV3rECtlUhV45ls_jbwSnGt76HnTG48ZOpgu3YgN0', '2026-08-22 04:21:44.721491');
INSERT INTO `django_session` VALUES ('hhmjyqrtl25y4wiecsdfv6k12vr29ftl', 'eyI4Ni45Ny4xLjk3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mI3Ld:o9gJXifMf6M4xkW88ysdpyW2OT2zU55z3-Aq9bbZmlw', '2026-08-22 06:22:17.388914');
INSERT INTO `django_session` VALUES ('hizm72ha74ro54mhbdn87yfb8nwurxm0', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lx3Ci:wLO84r6DKkAk_Cfm_KCs2mCkq3KoDacMG9Nzo65NlTM', '2026-06-25 07:58:16.008675');
INSERT INTO `django_session` VALUES ('hlnn7jrlurzk5p3evilyily1cve77hnh', 'eyI2Ni4yNDkuNjkuMTAyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mFvSx:axyQH5hoEgfMP4GRCK7ymhoRDKC1as4dIY0gaulwmhw', '2026-08-16 09:33:03.319514');
INSERT INTO `django_session` VALUES ('hrc49mkygn9a8zahv4877ip8pt1tr3pk', '.eJyrVjI21TMyNtezNNMzt1SyUkos0s3JTM8oUdJRis9JzEsvTUxPBQsDBdLz89NzUnXzE0tLMozii0sSS0BSnom-ucY5lmnF4QWReVmFQWUeyRlGue5OOUXGReHpyQFAjWmJyalJ-fnZcD2VIRX5ZmnpyUH-YRahueWZFYUBuY7FpRmG7pY-7kEFmUq1AIwkMr0:1mHAf0:FQhikziusNliqduJKSPbqXSr1c5b4wInJJ7x7nVyIE4', '2026-08-19 19:58:38.829281');
INSERT INTO `django_session` VALUES ('hsz9a2yfaug2ms90jajyw7ha1dsb2puo', 'eyI2NS4xNTQuMjI2LjE2NSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mFyEq:TmE3gdbwzRoTXpRfGl0S1hlQoIYKZXlhFhnvqXuyq4Y', '2026-08-16 12:30:40.248580');
INSERT INTO `django_session` VALUES ('hy2mgsuaf9odqa2rfonvjl4hd0tsm3ww', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luwHm:ZwT5pgPjItMmrM9Ft8MlqrqI0tYnBvCxzp7i5FGN-Us', '2026-06-19 12:10:46.837996');
INSERT INTO `django_session` VALUES ('i124oun5ql6z7weoxe9iummrrlpeuzhv', 'eyI2OS4xNjAuMTYwLjUwIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mL2Ed:Xk5ALULYGjPQt___X04zFswahgAxMW5gSEzDc8-AnOA', '2026-08-30 11:47:23.869103');
INSERT INTO `django_session` VALUES ('i328h4hyxlosqgdmnevu64ovrgv6gi3u', 'eyI2Ni4yNDkuNjQuMTI0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHz2B:UYdPc2DrDWHwSpcxKH3TknsKXobyzj_3gFiXN-iWGNw', '2026-08-22 01:45:55.318091');
INSERT INTO `django_session` VALUES ('i4l02bfdronexymq1cqb2vxgftubtmq9', '.eJxdjsFuwyAQRP-Fc4pgcQLuMVKP_QZrYdfGrWVHgFW1Vf49EKVSW-1pZt6O5ltosFLV0-JZYHpa5ikWcRDDguu048R3uxp75jTMVGWnfmT5vLS8MIbIDRpwL3H4h_4yPYZ3XltCb7V_k2FbS5q9bIh8pFm-bsTL-cH-KYiYY_0ee2dNz77XhJ0F1h0BBdDWjaDIGSIFJ31kezJuDNZZwiNo48GAQiJbSy-Y88eW2paX5Wv3OCctrjc-GlZ-:1m9lQt:cYAYQVWBwLQmbHhmD8AFp5BH8EFlnk0AdpeBQ2b0kGs', '2026-07-30 09:37:27.617005');
INSERT INTO `django_session` VALUES ('i72gv3t06hvm1ttewnvpn8303mco915t', 'eyIxODYuMTY3LjI0NS41NiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHGuc:WmEt-TVnFTkbpFDfKxR7N3zXfhITgY0ys34RHVvYBC8', '2026-08-20 02:39:10.323332');
INSERT INTO `django_session` VALUES ('i9ax6wnpknj1je4ze5ekm9itah3co311', 'eyI2Ni4yNDkuNjYuMzIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJxec:nXVHCaQ04J0oSjv6BZZxLoiD3hmXSSck4_zd-bjAz-s', '2026-08-27 12:41:46.688953');
INSERT INTO `django_session` VALUES ('ibbtkxs3604snz650kgukefko0scv1vl', 'eyI2Ni4yNDkuNjUuOTIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNUQ9:6Qvoec4X7jWli-KGZFvGE9ckVZGBMz5SwNSxnCNuv-A', '2026-09-06 06:17:25.397680');
INSERT INTO `django_session` VALUES ('ibx3x4rvqismxgnh1p5pk92lmqp2ew8d', 'eyI1LjQ1LjIwNy4xODUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mL8ap:5MMeRTDMW-YXucH_DzxIzkYxYdG25XqddqYfjpqzZJQ', '2026-08-30 18:34:43.700470');
INSERT INTO `django_session` VALUES ('icoits7wnpp4p7ojldthse5jrpxzid97', 'eyIzNS4xODQuMTMuMTgzIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHlPE:oP8UuPaLTjDrabAi7QXjNsJdfrjZq-rpwqEwKNjyqZI', '2026-08-21 11:12:48.967648');
INSERT INTO `django_session` VALUES ('idysq3gvnmq6xod4bmwxi73qv2vznyuj', 'eyIzNC4xNDUuNTEuMjQzIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mNuE7:pkvkDJHdviG66ss0vutUlxRmEqxJ2XjXbcaYP0Is6_0', '2026-09-07 09:50:43.632272');
INSERT INTO `django_session` VALUES ('if0jajlt3h277278vpjb1aodz8kusr5a', 'eyIzLjIzNi4xMzMuMTQxIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mN48r:Fl5hsq8kis2vGpEqaG-X9Wo73TR_1KJ-y-2VvK2IUJk', '2026-09-05 02:13:49.652467');
INSERT INTO `django_session` VALUES ('ifq66j6cr1udfg6q4vc5uxhe8flaz063', 'eyI1NC4xNzQuNTMuMTk1IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJ3Vv:yKAyOGuSrWTWvqN7sMBrKAG3bU-HlzSzOOACKV0HcfY', '2026-08-25 00:45:03.885453');
INSERT INTO `django_session` VALUES ('igxrlcoreovv4t7b39k01sax3vt9t9v4', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHaFz:VySpdFDwrqKE-Dt8qAFa1lIeZbzorn13s9KzyZtEazI', '2026-08-20 23:18:31.389939');
INSERT INTO `django_session` VALUES ('ilr83os8pwhntpc6syuglb23yxq77wug', 'eyIyMTMuMTgwLjIwMy44OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPin8:TA8jnllrVvuhi7vNdIwX82MXoCF2oPSEzhcs6A7dea4', '2026-09-12 10:02:22.731932');
INSERT INTO `django_session` VALUES ('imamrw3zk8l0m85awybuejrxc9hzevki', 'eyI2Ni4yNDkuNzUuMzAiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGNzX:_QSPmadv_9k3BA0TQJSm279xAtKJ7PHcrcveynju-Lg', '2026-08-17 16:00:35.013697');
INSERT INTO `django_session` VALUES ('in009jxapfmpd1oeiiscgpmbw75hh6lg', 'eyIxMy41OC4xOTAuOTgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mL4h7:PjFQMRmkEAa64QKU932RIu6G5F2Zar9a-los1AiZ434', '2026-08-30 14:24:57.608205');
INSERT INTO `django_session` VALUES ('iogp86n6p902ebtsk2vk2idqp7gma1nn', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1m0nht:Pij_HrMlH6zn8rm3BSMLXi3iRpt4o8e_fUwpIEIhkiI', '2026-07-05 16:13:57.859692');
INSERT INTO `django_session` VALUES ('iowmash47w4i7s6q0dqik0vdjkooozq4', 'eyIzLjIyOC40LjI1MSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mI7It:cppcKDuqHmdMWMNUqDpxMawTFvxD4slIvOGXYSuKqBw', '2026-08-22 10:35:43.463457');
INSERT INTO `django_session` VALUES ('isgtj273p8qgkcz1qzpgeep1bcdb2pjm', 'eyIxMDAuMjEuMjE4LjE1OCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mIkiP:NNjKhiBsFU2s-gTGCMYX-LhZayQYHG0ziYhWZdOTAIw', '2026-08-24 04:40:41.282332');
INSERT INTO `django_session` VALUES ('itfs00o422zw2gwr806jnb6rjs57masw', 'eyIxNTAuMTI5LjExMy4xMiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mJZyM:txHAMogSnWeJKwQdoR7Ou8H0mBiat--4ixnkh83DTss', '2026-08-26 11:24:34.514316');
INSERT INTO `django_session` VALUES ('iuqcq3glajb8kl9w4ex79r2ose1y37oz', 'eyIxMDQuMTk2LjIzNi4xMzQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNuDg:Z1_Q8dX0Nbc70MK-XOYAFVt2-Rwwf0zCuX4gLEnc-V4', '2026-09-07 09:50:16.638574');
INSERT INTO `django_session` VALUES ('iy9r65rdwzk6kjxtp8j2a9s7shts1c4j', 'eyI2Ni4yNDkuNjUuOTIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJ5q8:ZOUfkTRDc0MoNlXtJ_3cZh9A9cGyqpipuRKbP3Rj_6Y', '2026-08-25 03:14:04.152620');
INSERT INTO `django_session` VALUES ('j2nheayh2gztp09ruy6kx7d3qn5s1rye', 'eyIxODguNTQuMTAyLjE5MiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mJVUy:s6exdLiYbw4Uk4b1Omve8pxrhpVKJxb17-5yLuHC_CA', '2026-08-26 06:37:56.286387');
INSERT INTO `django_session` VALUES ('j4mp9ut3o0eupf9vgrltjlt6utnozoir', 'eyI1LjI1NS4yMzEuODYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMEiP:T1ZSO5nfLDPdWP2vCSN5bQ5HrOPnbpKN11Z8f2mRSLc', '2026-09-02 19:19:05.828412');
INSERT INTO `django_session` VALUES ('j6ssbjeb4jxzz75j7j66esobrq4obmmx', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHZIn:EkblMrzDKjU2kByuY3tySQ0gPqpD8OoBMgbPnQ8qtDQ', '2026-08-20 22:17:21.396831');
INSERT INTO `django_session` VALUES ('jauofkpr6cqsq63waxyf5u6yk1nwy8bd', 'eyI2Ni4yNDkuNjYuMzUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMYCh:w31YbsKFTLkCtwDdUXexakjKPOst8uqaIFiJJqLlO10', '2026-09-03 16:07:39.581138');
INSERT INTO `django_session` VALUES ('jcl1ph2hosnepcsufwef1x0hg8hcqgy7', 'eyIxMjMuMjMxLjEwNy4xNDMiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJBS2:J0Gflm5N3WIvjFeUD0Yxvu29tkAdx_Pa0y_Ch_1jShA', '2026-08-25 09:13:34.348189');
INSERT INTO `django_session` VALUES ('jdl2ioynivbypi2ghesd71zd71m73ok7', 'eyIzNS4xODcuMTMyLjUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHuWw:u4hpkrlIn9AWXDA56M2dpT5c9OI5c8Zduhlrjd47DC0', '2026-08-21 20:57:22.193102');
INSERT INTO `django_session` VALUES ('ji2oy4fpuxdjrjdaqpsm878k8z4qsjpz', 'eyI1Mi4xNzMuMTguMTY1IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mGpfB:0Mt9RYS5oY2cH4WkJcuDGjA5NOOnKcn4tBCUFvVRHqY', '2026-08-18 21:33:25.099995');
INSERT INTO `django_session` VALUES ('jso4k2tue7hkabmtffaqg3i1zibxtysx', 'eyIzNS4xOTcuMTA1LjkyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJq3f:fLIyYwOwn-j7VbUGA91SF7Dxk6j9tZ9GUR4x7axAvG4', '2026-08-27 04:35:07.722226');
INSERT INTO `django_session` VALUES ('jsuk8jh83wqg8dzx624klnr5tohsw3dp', 'eyI0OS4yMDYuMTI0LjE1OCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mLQ9E:TVqjzO9wqx9B5ene1o1obiW2cYXVuwgFe9zB1hkxmt4', '2026-08-31 13:19:24.795990');
INSERT INTO `django_session` VALUES ('ju4g409oz55k7ln6kul2w1eygm9s20mx', 'eyI1LjI1NS4yNTMuNzciOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mLOv7:tcRkF5QrUZclV76CSQeyb8RWtBpYpMwMFcOLWvKg1qk', '2026-08-31 12:00:45.781324');
INSERT INTO `django_session` VALUES ('juhudoutp5xdbpqyu3tiltw8axbi487h', 'eyJmYWNlYm9va19zdGF0ZSI6IlBEblNuTlVGaUJ2MHJmODdrU3VjaFlmM29kalhnT2xIIn0:1mGKwN:uM9ESPV5i6eROFtGuWkmAfDrCTUiwGiJKF8_PE2PD2U', '2026-08-17 12:45:07.486299');
INSERT INTO `django_session` VALUES ('juu7a4p4ytruz2kdzbgf01jcwdsdblwv', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiQ0s3b09lM0RTRldyNUJWdW5Ga2ZVeFJxS0FXUm1RUXgifQ:1mPTKD:UVAE_SdclNpQkalFgH4742ovaAz98ArPrXkPN-M3l0E', '2026-09-11 17:31:29.902153');
INSERT INTO `django_session` VALUES ('jz25ubvu5ahwerphjk6zz8urs7omiw0j', 'eyIyMTMuMTgwLjIwMy44OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPfBr:wOlSjCtrK9Zuigc7wHMXN_4lbfcfRXegfRL-HOE9nBQ', '2026-09-12 06:11:39.836055');
INSERT INTO `django_session` VALUES ('jz5ypslfnzoqp6muwlt9i8b6mjtmie2g', 'eyI4OS4xODcuMTg3Ljc3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mPw4i:zTkJ5nmsGrmKTR00Xg9rJsiJZ65W3PL31tn5ekEjIpI', '2026-09-13 00:13:24.769210');
INSERT INTO `django_session` VALUES ('jzcw4lqb3mo5e5o7r2n938n8smxh8n4y', '.eJyrVjI21TO0NNOzMNQzMlCyUkos0s3JTM8oUdJRis9JzEsvTUxPBQsDBdLz89NzUnXzE0tLMozii0sSS0BSlonu6SlOhk6F5nlGuSG-4QYmBp5B_v5VGYZmYSYl_mFAjWmJyalJ-fnZCD1Zho5ZzoWWzrmZhq6-Ke5pHhlGFv4B7gFlXlHGycVFSrUA6s4vrA:1mLSfz:wR-DurETFcnsT0qHWRfLk-sPeZlsLH0ggW8CQ2lP-IE', '2026-08-31 16:01:23.683026');
INSERT INTO `django_session` VALUES ('k17hxfreftivxdyn0d5d5uvgbbhvzvqi', 'eyIxMTkuNDAuMTI2LjIyOCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mNrar:oawZFDZ8lVwWi-hfm7scNWP5ZwECJm88_dsbb3XdlRY', '2026-09-07 07:02:01.026219');
INSERT INTO `django_session` VALUES ('k1l6q2hui0r9pmlch2f6xez7pn3kyjzx', '.eJxVjssOgjAURP-la9LcCy0Pl-79BnL7wOKjbSjEEOO_WxI0upw5M5N5sp6W2fVLslM_GnZgyIpfT5G-Wr8BcyF_DlwHP0-j4luE7zTxUzD2dtyzfwOOksttNWiQEhGUlthIrKEpG2qgBTAWVCUrNUiRSVthjSCEBC3KwSBQp6q2y6Pfj1iwSCk9wrT9chTj-sHzGm320hKzIHMfPXu9Ad4oSdg:1mPkUU:9pspEMsWpZomfDYnaZQTNG-Tg0vwi5JEI3biynubPb0', '2021-09-27 11:51:14.068325');
INSERT INTO `django_session` VALUES ('k4ajgz1l6hreioi735nw9uwm1d4lxkls', 'eyI2Ni4yNDkuNjQuMTI0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mKLUq:3s2geEjzee4zIlA70S3q2uwofbP-zqkPd9KNzE55yq4', '2026-08-28 14:09:16.972688');
INSERT INTO `django_session` VALUES ('k4vncpyhs50aihoe84o4uwbcn50rrvwd', 'eyIxNjcuOTkuNDguMjQ5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mMA0O:vCd_87wM-au-gty-lytkGH6v81WE-zTnea8BngJ63Fk', '2026-09-02 14:17:20.133187');
INSERT INTO `django_session` VALUES ('k5ml62jcmwcfl5q7k29btqqmf8n6kwwt', 'eyIyMjMuMTc4LjIwOS4xNjMiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJBeV:MlNmt5vSH1UVoDabME8zzM1S04w_ygC5hOXQ2pSFlBU', '2026-08-25 09:26:27.866790');
INSERT INTO `django_session` VALUES ('k5oh9gh80ekxyrauamzlwarn3h4ee0xg', 'eyI0NS4xMjkuMTguMjEzIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mGr1j:Smv53PEYEOSI43zKnObjyLOKwTyEEohWVKbtW3GjXUM', '2026-08-18 23:00:47.165472');
INSERT INTO `django_session` VALUES ('k78ofrke9fyqdpynmponla6cn15qfad1', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTPN:wSKwCc2BwDUP8yryzc9p6JGpNxE9Rfh3e-v5RMruQP0', '2026-09-11 17:36:49.060989');
INSERT INTO `django_session` VALUES ('k7kva3jjt9l0ius5pxhnnnoyed0er13b', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoidWFCalJ2anFUaUd2NUxnYjJLMThMa1hHMTF3cUxUSlIifQ:1mMa8c:2Z0knGkqJ6vrUQGxrTlyvwBhf8v_2RYDGX1z5yz4QRA', '2026-09-03 18:11:34.570282');
INSERT INTO `django_session` VALUES ('kcr1c34hp6dg78drqfd4rpv4knd25oqc', 'eyI2Ni4xODcuNzUuMTg2IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHlM9:-eYCG2a_-UxR4SjiQUiv5mxKhyzLVjMMussgvYiC9us', '2026-08-21 11:09:37.271637');
INSERT INTO `django_session` VALUES ('kfmuw56uymj43smrt1u5myzzdmcz25hn', 'eyIxMzIuMTQ1LjkuMTg5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mPVWS:HG-gmXWIWuWIPk2WnFmfnV_6yC5xen_81a-73PfUkig', '2026-09-11 19:52:16.309240');
INSERT INTO `django_session` VALUES ('kg3ua2qzfbv4013i26og8d0kq7jwexu7', 'eyIxNTguNjkuMjYuMTE4IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mMUkY:AA3eMPwZ2IiYFQrNn_drysDQCJDB1t2QIGNdvtLEoYE', '2026-09-03 12:26:22.802254');
INSERT INTO `django_session` VALUES ('kh8bgmkfpz3pmrrc80mx33v1hzrkp4pk', 'eyIxMDQuMTk2LjIzNi4xMzQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNuDg:Z1_Q8dX0Nbc70MK-XOYAFVt2-Rwwf0zCuX4gLEnc-V4', '2026-09-07 09:50:16.627825');
INSERT INTO `django_session` VALUES ('ki7itd0x3pgplfcs7dz5s5zunns4gqo4', 'eyI1LjI1NS4yMzEuMTAwIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mLOss:jZvmsrZeyfRitRps7N8E2kt5t_LkbLL5Lz8q6UD1A0I', '2026-08-31 11:58:26.516993');
INSERT INTO `django_session` VALUES ('kjjli0gw9cibmjr5362fwf06gairgwv8', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTPH:XA8d1trpA1t8ur6-b53VCLDuxjkeu8Nf4JvA25yiOW4', '2026-09-11 17:36:43.186285');
INSERT INTO `django_session` VALUES ('ko1m6fc293k3cmiibqguoot5jj4ovjnn', 'eyIzLjIzMS4xNDUuMjA3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mPd38:ZcA3aS4sSSJIkbBzdSSyRDFHgE1PJavIZ3YN8CM6VEY', '2026-09-12 03:54:30.265460');
INSERT INTO `django_session` VALUES ('ko7vtmm1y8v91o23erjuje0l3pwj593e', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lyKCL:YWKhSN1fVGxnavEkYui2aTRUT-qO-H9JSIYESJQ59Fo', '2026-06-28 20:19:09.668074');
INSERT INTO `django_session` VALUES ('kougvw1sazf8h6h08x0zuzphj526s7n3', '.eJxVjssKwjAURP8l61Iaax51Kbj0G8q9edhoTUrSICr-uylU0eXMnBnmSXrI89DnZGLvNNkRSqpfD0FdjF8CfQZ_CrUKfo4O6wWp1zTVx6DNuF_Zv4EB0lDaDbYIUjENRnLZmqYzLefQSUSupVDUCjCF4ExoprjagkVtW9xwi8ikKKPfj7QiE6R0C3H5dRgfGcFF-kHm-2SKn_JUBOir8-T1BhzZTi8:1mAGOK:oFtXU8oY206pB3vnS8ddxycLoQb_B4ZZz9tSXzSVuBY', '2026-07-31 18:40:52.707280');
INSERT INTO `django_session` VALUES ('krz5o7183emho5ttdhoqp565299k4xf8', 'eyIxODUuMzMuMzcuMTMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJCWB:GoGdGUDkSAffPmuAuNwh8jrSdBxXScTQf25k30o9tXc', '2026-08-25 10:21:55.014911');
INSERT INTO `django_session` VALUES ('kw2g42hw2ljk3gakjpjcru2ze6p1l106', 'eyIxMDcuMTcyLjEyOC4xMDMiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGmti:r9EXN2AjLxIrKxun1z32tODTqj2UNo7bNtPQJQfHpJo', '2026-08-18 18:36:14.996765');
INSERT INTO `django_session` VALUES ('l3ldemmxx2awvdn5x73sg0w9eax40yev', 'eyI1LjExNy4xMS4xOTciOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHICI:SWA51JD0tw4CVTbL4zUgJa13_jSDLqf2gzjYGZ0Ax8Q', '2026-08-20 04:01:30.872139');
INSERT INTO `django_session` VALUES ('l3p9yckoza8po6oa86bt1yqmbifclmoo', 'eyIyMTMuMTgwLjIwMy4xMjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMVcq:LeQ8Cc0v9iNwWlm1raHQoxzr7-hNv2ctuzyHz1gizRk', '2026-09-03 13:22:28.274201');
INSERT INTO `django_session` VALUES ('l4h0w072v9fxue8mwhhhv0hrunff418f', 'eyIxMzIuMTQ1LjkuMTg5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mPmpX:JmFU8CyDWU8ivo2SQsSSJdFQQck0DEauBURHSCThuwI', '2026-09-12 14:21:07.289992');
INSERT INTO `django_session` VALUES ('l4rl98wheovsyq0lfei6fc59b2a6fqhl', '.eJxdj90OgjAMhd9l17owtol4aeKlz0A62gFKgOwnRo3v7ka8UNurfj09OX2yBmLom-jJNQOyA1OSbb6hgfZKU97gBaZu5u08BTcYniX8s_X8PCONx4_2x6AH36drUIVUxmgBYAURSpJWGw22roTVVJRY4h7qUtmC1K5CretUEvdWSKFbSqZ_Idcx3BdKwIeINIVEF_D-NrusOo2PaGBwImFRVrxILXIUtx2Hrs_qZkw_Rehoxez1BllVV3I:1lyy1j:7LSeOF97IEGvQXSxBWhGdlFWWK1Dhwlon9BjaV2IzmI', '2026-06-30 14:50:51.869488');
INSERT INTO `django_session` VALUES ('l79ftvmd3namjiocm0khem0oyf7mhft3', 'eyIxMDIuMTg0LjEyNS4xODEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJv7Q:CScjrJlgcq44kN_qDUB1__3TaGh9daNFC18QpdDYs7k', '2026-08-27 09:59:20.180250');
INSERT INTO `django_session` VALUES ('lc1y6c9gmrpfzolxwexhpzkpxdcpv8l1', 'eyI2Ni4yNDkuNjkuOTYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGHYJ:AbyCKG4s61QuYv_U5gnsxItO7HfB1G0NWyOvDWXM8yg', '2026-08-17 09:08:03.724636');
INSERT INTO `django_session` VALUES ('lc8ri6v888dejwgak97ix65tsne2wv8i', '.eJw9y7EOgjAUQNF_6SwkD4qoG4sMiDEiibiQB7QPQ7URWtQY_110cD0398V87oaBC7B0wVuwFcPeUWdqDZuxUuGVLJL48QSkNSnhaLSm9crBoPmmJls3T7_lPBk38OiGfYKXfiszr6BIzE80jRJrUWnd_Z_7obdBegNeYy5D2FVFUOSK0niEyEbHmL0_Z8MxRA:1mHBiC:Aq4VctVU1T7si-4y45SiydtKY-MiwOZ4MzGJ3xzYnQA', '2026-08-19 21:06:00.715093');
INSERT INTO `django_session` VALUES ('lfqmf2pm6fluqoy15ih11w8vgzbe0cob', 'eyIyMTEuMjIuMTQ3LjIyNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mJIKU:eq9xhLHVG8l0VbrxzOJEQW6r3We8VbcLT6v1CDI0rZ8', '2026-08-25 16:34:14.036465');
INSERT INTO `django_session` VALUES ('lkn46oxt4wnqvd06rdwfb0kvz9jwpjkr', '.eJyrViotTi2Kz0xRslKyMFPSgXBLKgtSgQLFJaUpqXklQFFDSyM9QzNDPUNzcz0jA6BUYpFuTmZ6BkguPicxL700MT0VLKxUCwApVBkS:1mOow3:yQcOqRsj0CC0r3gl_zk5NFxruI0C8IYkDYfDx-jzgrQ', '2026-09-09 22:23:51.128561');
INSERT INTO `django_session` VALUES ('lm4yp2b43ak6uc21ziqndfq1hhlsuqfd', 'eyI2Ni4yNDkuNjYuMzUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHk8U:S2-ST5_5E4NOXstGXlgI9rCoZVpUWcqIIlgaT1okpfU', '2026-08-21 09:51:26.833554');
INSERT INTO `django_session` VALUES ('lnmptltgcyjp1rwqj08d48yuz04pbzt2', 'eyI2Ni4yNDkuNjYuMzUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMXjf:GmIuFVy7SdTz6_ClUlgJLMPWfhWnXh3388EzmeLDgbQ', '2026-09-03 15:37:39.425776');
INSERT INTO `django_session` VALUES ('lnv9hv3cs0xvrd58l9ez69abu0xdn2no', 'eyIzNS4xOTcuMTA1LjkyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJq3f:fLIyYwOwn-j7VbUGA91SF7Dxk6j9tZ9GUR4x7axAvG4', '2026-08-27 04:35:07.366831');
INSERT INTO `django_session` VALUES ('loqp3sqsvjiiyqluf9mikykifcsyyoff', 'eyI1LjI1NS4yMzEuMTM3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mMJdh:Kpoiq1eqaVKTn6jKzSOQgW91KPUc81MmCu4iHC8ejFI', '2026-09-03 00:34:33.650338');
INSERT INTO `django_session` VALUES ('ltsjn8ai7xyfvjkfzigg72a9nxmc2ut6', 'eyIzNS4xODcuMTMyLjE5MSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mJnaW:Wusu2PPlr_KMxi_o1anHRYFQT_ItVNI_VWmvUcOxX1U', '2026-08-27 01:56:52.135873');
INSERT INTO `django_session` VALUES ('lv2olttbsm6d7tco5rbflqjuneebfipp', 'eyIyMTIuMTQyLjE2MC42OCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mJ9nE:1Ze1jWBWEYRyVbqIjmJmAN00tqXyGmC1tsun53u4ZlQ', '2026-08-25 07:27:20.677077');
INSERT INTO `django_session` VALUES ('lvpbbiabg3ixii76dedgxszpcght1i84', 'eyI2Ni4yNDkuNjkuOTYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHQqO:WCH5NSwqD9enM6lfd0hPrDyzNc0qszxAfEb3f5jCMOQ', '2026-08-20 13:15:28.499186');
INSERT INTO `django_session` VALUES ('m2gp3ko2g0t78amavzczbe8yhxoftaud', 'eyI1NC4xNTEuMTc3LjExOCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mIyJD:Ux8Rw7W02xWlPuWXnTX9b-EBryb9xVAbQUiyQHxk_T0', '2026-08-24 19:11:35.217368');
INSERT INTO `django_session` VALUES ('m4kybm9i5h99egqfzs68bqmbrkm54xl4', 'eyIxMjAuMjM1LjEzOC4zNCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mN93D:WatO5n_zLOoaZtsRQPwgIz5z7ub9XjIBkMUBThGdrFA', '2026-09-05 07:28:19.670772');
INSERT INTO `django_session` VALUES ('m4lep827plxm850g9nph66aigwa5hqpo', 'eyIyMDMuODIuNzUuMTM0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mNIXx:PQ9XymY0TO4fJjMhIsOrZxFvvJeO8t_tEeiP7LB2-nI', '2026-09-05 17:36:41.751076');
INSERT INTO `django_session` VALUES ('m5f38h13mf5dup12sqv9nn7m5h9dnzkw', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoibUlJaE8xVk1kTW8xQjNkN0xZN3lYMFRNMnN6MFB3Y1cifQ:1mFu7C:WZoUIpzHE0qIwjSsw3FSrG3-LtHTilE3R_TLzPfhOdY', '2026-08-16 08:06:30.076348');
INSERT INTO `django_session` VALUES ('m8h23mhaexjxy8z4crsx5pcumxvc0uc2', 'eyIzNS4yNDMuMjUyLjIyMCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mNdgZ:riq1NRlt-pWfILFM62Ybz-jmjDPN_--w6vJLgdbHtlo', '2026-09-06 16:10:59.783138');
INSERT INTO `django_session` VALUES ('m8z8h6ezkbhcpdrpqigl6v1q9j2doc5h', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mdaSI:Y6VfaBJIjPbp1P7d0Ry8J399o-jtEQPYERsjJA4Aftw', '2026-10-20 15:58:10.791303');
INSERT INTO `django_session` VALUES ('m9ml1l6furdktfrdid788bshkpv5ibcv', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mc4tE:yrJX0Oo2I4sxlxzqrSBuHqEKwH6MWcKZbJL1NfcrOAQ', '2026-10-16 12:03:44.394922');
INSERT INTO `django_session` VALUES ('mdedkkuyqa3zbe1qfjv6xon6gjfkizw4', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvK3S:tHcKYdCnRpfrbFK6gT_XGMPmYmS9_-1VmsR52uO4_q0', '2026-06-20 13:33:34.648764');
INSERT INTO `django_session` VALUES ('mgbiuwtnwuw7djf2u0a5u0bipnqsqs6k', 'eyI3My44Ni4xODMuNzIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHavj:nSUIYmukWLHqZ9IWKWwhl5PA9K1iMxSpbZOjsjetoIw', '2026-08-21 00:01:39.732563');
INSERT INTO `django_session` VALUES ('mgkpc47ctc7698gw9vqrwg0v7ahdepzv', 'eyIzNS4xOTcuMTA1LjkyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJq3g:LhIoZYhBt9s_h7jM4GSovXkCNi5roFpJL6m3a0rh5xI', '2026-08-27 04:35:08.041611');
INSERT INTO `django_session` VALUES ('mh42whx1yuw3hojxb3o8psm8tr4n5gx1', 'eyI2Ni4yNDkuNjQuMTI2IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHqIi:byOYYcoXzdVJTy0_SLgrj0GMSCx1jt7kZy8gORwuTTI', '2026-08-21 16:26:24.562436');
INSERT INTO `django_session` VALUES ('mh5lgipw6z5q3z2u2n9iduxg97s9h2vq', 'eyIzNC44My40MC4xMDEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMUlG:pKaJIZ9oh9Agpqd5bDe0HRdzw1KSXBwxJetX0Ggv67w', '2026-09-03 12:27:06.693119');
INSERT INTO `django_session` VALUES ('mi7pcsrfuz1cbcmns1qhwupnaf66euhv', 'eyIxODguNDMuMjM1LjE3NyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPsfL:fQiSZYYX_TKmXA4SFbSzXbizRbN4q8_Iuz5SGjczhNI', '2026-09-12 20:34:59.942502');
INSERT INTO `django_session` VALUES ('migu1jn99k6ojla4uldxata9xba3xkt3', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTIk:Yq7n3eLrc6KVvLCP0-jjZFDK1pD6RHdBdPzBjwNt1s8', '2026-09-11 17:29:58.101384');
INSERT INTO `django_session` VALUES ('mkvgguga44i6vnuajypv0mtpa0hm9yrj', 'eyIzNS4xOTcuMTA1LjkyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJq3f:fLIyYwOwn-j7VbUGA91SF7Dxk6j9tZ9GUR4x7axAvG4', '2026-08-27 04:35:07.755517');
INSERT INTO `django_session` VALUES ('mlad4aps2w1kzf463pn1swyc5ocdtrlw', 'eyI1LjI1NS4yMzEuMTI0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mKVCa:LyppPMnCfJJeeFgSW6Tc8aKTAzSo8cMTCv1Z7o_L-wU', '2026-08-29 00:31:04.434097');
INSERT INTO `django_session` VALUES ('mso3m1128qw5w80gd3omzrfzou5o3ksv', 'eyI2Ni4yNDkuNzkuOTkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNcIs:qWvCQuab9pDHFt0dn25MS76w68DbdsPuLYe6gGn9Tbw', '2026-09-06 14:42:26.021903');
INSERT INTO `django_session` VALUES ('mt8p6dktrteduu25xij8kivmr2k1uiv1', 'eyIyMTMuMTgwLjIwMy4xMjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMtzl:YUks8bSxdOpXOpUwPewuqmkyRKrjnOV9JaWsr5ljJIE', '2026-09-04 15:23:45.680284');
INSERT INTO `django_session` VALUES ('muu65h1s3nydi1yyeip8806u7s6ttz1u', 'eyIyMDMuODIuNzUuMTM0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJOW7:-Nn3UdZb_HQibi0Y391giRxuEJLGHhPFMcuR361SVu8', '2026-08-25 23:10:39.932645');
INSERT INTO `django_session` VALUES ('mvlkh1xn63fizb6nip81ll0bjlapg5vs', 'eyIxOC4xODUuMTE3LjUxIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mGuJ0:dHwhD3QjaSc0L7qgFwDkjdigW5MBnO6C6b5_P7seX9g', '2026-08-19 02:30:50.109794');
INSERT INTO `django_session` VALUES ('mw98w1uuqkyrp7jgupe4k9zilw2zwleg', 'eyIxMDMuMTIxLjIzNC4yMzEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNB8J:dW7_ggfvIrJPUTohaeM-XIt3Z6v0mXASlysg0nP__FA', '2026-09-05 09:41:43.547186');
INSERT INTO `django_session` VALUES ('n1dvgxsrdyxc4ygamt7rpgu44fhsbroa', 'eyI2Ni4yNDkuNzUuMjkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGXic:-ejQ3Qb19L4orl3d9w1oG-_1MnRq9iGTD_cBzGuN9vo', '2026-08-18 02:23:46.846482');
INSERT INTO `django_session` VALUES ('n3ee1yync5iobpf2dxv1gn072kdi0rtf', 'eyIxMDAuMjEuMjE4LjE1OCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mL6iy:qewmuy-Y9kcbHo0b5KiCdCIBPois9IWJ_9xz5YOZdrw', '2026-08-30 16:35:00.633422');
INSERT INTO `django_session` VALUES ('n3idk3fislbas3y1953rmd5buhg74vyr', 'eyI5Mi4xMTguMTYwLjQxIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mPV44:KOSt7BTKkMcdUXeghn3re-3D5IbVU-3DSF6hN3W0eIM', '2026-09-11 19:22:56.148242');
INSERT INTO `django_session` VALUES ('n6bzwzpk5adb10ptmsiwur7mr1hv0lp2', 'eyIxMDQuMTk2LjIzNi4xMzQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNuDg:Z1_Q8dX0Nbc70MK-XOYAFVt2-Rwwf0zCuX4gLEnc-V4', '2026-09-07 09:50:16.161319');
INSERT INTO `django_session` VALUES ('n9wzrxneoawj6e0ktg5nrnfv45ub56zu', 'eyI2Ni4yNDkuNjQuOTYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mOLsH:iuD2OodNTMTpLQ91-wXd-PRGJrhYF3KcHEmOKRygYuM', '2026-09-08 15:22:01.069427');
INSERT INTO `django_session` VALUES ('nbe96sg8ts3ea4otoz6vhe8hrqj5me46', 'eyI2Ni4yNDkuNjkuOTYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mLU8W:b81-5O4rqxde7QyJv8-b4NMA9xP1r6qIX-307K4V9vo', '2026-08-31 17:34:56.271380');
INSERT INTO `django_session` VALUES ('nfhtb2fdspfmk5zv1rn3k37jdcqt6wsf', 'eyI5My4xNTguMTYxLjQ0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mFu80:b9qnCHGOyi5rRNtYwWpCcCN5Ap0qYbqFoKvrKyvywAY', '2026-08-16 08:07:20.203773');
INSERT INTO `django_session` VALUES ('nj3s63vgfqlthep0zits285tq5g9dgtw', 'eyIxNjIuNTUuMTg3LjIyMSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mIWjh:qFMkZoU8yJ6cvOxOR2NDYkGZtI89_Iq75E8lRyaxyDI', '2026-08-23 13:45:05.446593');
INSERT INTO `django_session` VALUES ('nj8lomkdsfz6df1l6jhefsr5bfnon9ze', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTNe:cpUkssohTu_O3ivmBHYFUiywyqbSZhLAy5NMZySV7Es', '2026-09-11 17:35:02.182498');
INSERT INTO `django_session` VALUES ('nm453a33stue82pr6aqk9wthmgl1p24x', 'eyIzNy40Mi4xMjIuMTY4IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHLNb:O9YAux5Qf5sexPw5pk0rKMKyxdrcuEcLiUSXlOXB_m4', '2026-08-20 07:25:23.871246');
INSERT INTO `django_session` VALUES ('nqkzz6ofyq8cizbaj0t4fsq209vl7xgr', 'eyI0OS4zNy4xODcuNzciOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHbk1:H954N7iaB8GM6kxjTtYR2uqIapETFauRpP_8Kjm9cds', '2026-08-21 00:53:37.527396');
INSERT INTO `django_session` VALUES ('nu8bd6ieizazs89kk1iufnffx5gg5u1l', 'eyI5My4xNTguMTYxLjQ0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mICE5:yz7VL77PfZ-j7KgRXyqaxLQQA05GENYv_UkcbfXEdgk', '2026-08-22 15:51:05.018886');
INSERT INTO `django_session` VALUES ('nvennngzo764e5bkfm1xythgtiafe98m', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoib1VBMTNjTDJYUnFBNDROWmk4c25Xakk2SkIxWElmWDEiLCJmYWNlYm9va19zdGF0ZSI6IkJ4cEdtS2R6aUlGTXJ0b1JBMk9GZmhmMUE4VzZlWlk1In0:1mOkJX:IJlT6ULIvfAmVKv7ZXUmCeMqwp6E2b6XYqmc2VHyrl0', '2026-09-09 17:27:47.317331');
INSERT INTO `django_session` VALUES ('nycfplt80kr5kqrzls440a7v2fnluz9w', 'eyIzNS4xOTcuMTA1LjkyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJq3f:fLIyYwOwn-j7VbUGA91SF7Dxk6j9tZ9GUR4x7axAvG4', '2026-08-27 04:35:07.719212');
INSERT INTO `django_session` VALUES ('nz7pg01b1t26i2bbqxhjryp30rxlewpc', '.eJxdj8sOgjAQRf-la21KaSV1aeLSbyDTxwBKgPQRo8Z_tyVsMLOac-887odUvKEsV0XOBPxxHLo-kgNpR5i6BJ1bcQGQYt-m4Hw72AyF3EMN5uGmoth7Hp2pmafoB02LhW5qoLfZuvGyeXcLegh9OYZcMGEbBqxGpispETVwRO4MSiUQjHHC1EYpeVKy1qCgyZCZxllkPC_9e3Jt42spUUJM1k0l4AIhPGdfXNfxnTQMviLfH-LnWIM:1mcIEq:INBZZp9xqm8oFQFLDsRKMI_JkRrfd7O3UZkfHCBBXHk', '2026-10-17 02:18:56.536809');
INSERT INTO `django_session` VALUES ('nzrodz3z9q82zp6t468645clrkecl26u', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lyUIj:KwK1WdfTZ7ANDteAu4VrfpyCvT-1SD5y_7I2-r9FlWw', '2026-06-29 07:06:25.877519');
INSERT INTO `django_session` VALUES ('nztk17mlxq0opopxjqox0nrzuqv4zikj', 'eyIxNTcuNTUuMzkuNDQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mPUNi:cgWZyDxfy8MwTH1H9wsQXKhm70e7_o_GOJ1ZEayuprg', '2026-09-11 18:39:10.152018');
INSERT INTO `django_session` VALUES ('o13hau69erwllu4k6ozh09rgz389d3uz', 'eyI1MS43Ny4yNDYuMTk5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJ6QA:AGvKgpjlKMxbbmFqSQO8XrDr4aUg_W4GTEdyyhekAVg', '2026-08-25 03:51:18.210387');
INSERT INTO `django_session` VALUES ('o1szwfo3ylwrvgbipi7rtl0hv1i5qbxl', 'eyIxOTUuMjIuMTUzLjE4MCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mNJPE:osxlZSPXcKNs2sGE8YsVB3wxq6WEDw23JWDZ3rqe9Ao', '2026-09-05 18:31:44.267493');
INSERT INTO `django_session` VALUES ('o8ebj9qs56q3kpjz2i0kmhtyb84k7kgd', 'eyI2Ni4yNDkuNzUuMjkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGXiT:qOkSbN2Wt_PEykKNWgU_GkiXqGpRtsE4wnwuTQo8GMQ', '2026-08-18 02:23:37.293968');
INSERT INTO `django_session` VALUES ('obb5xbp26yuqst68bpo6gqs94z1ynvl7', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiRTVIYkp4aWIybVhaMEJ5Yzd0UVcyNnU2bFhuWDhuUzUifQ:1mKMb0:Yi3H2qQc5ZvpU9OkSCyQTZdWy5CStfc0etI66PBZan0', '2026-08-28 15:19:42.029571');
INSERT INTO `django_session` VALUES ('obr577egmtyse7n43stoa337hgg3w6cv', 'eyI3Ny44OC41LjkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mFu83:_r8btXgNZJWlvwAG1Li_VYb5zFwjvc49X5cjAl2Jbqs', '2026-08-16 08:07:23.752726');
INSERT INTO `django_session` VALUES ('odonf0vomj8mcr50qles9zpc3eh01clw', 'eyIxODIuMTgyLjExNC42MCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHO9C:M-I9rnPnzm4pHN7LEx4xERDUqSesFRCsRCeIxhWBtmQ', '2026-08-20 10:22:42.582375');
INSERT INTO `django_session` VALUES ('ohkibbza0lj2nenxvler9lnbf3i92lrq', 'eyI1LjI1NS4yMzEuMTM3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mMLky:LxVuFpCmRxJRkwR2vlcEu0fJV7h0LSDAbPUc3bq_58I', '2026-09-03 02:50:12.118237');
INSERT INTO `django_session` VALUES ('om2dikcry0wrd62xqie1j0n72a7fom18', '.eJyrVjIx1TMyMdczMjDXM7QwULJSSizSzclMzyhR0lGKz0nMSy9NTE8FCwMFSotTi-IzU4BccyMYt6SyACRfXFKakppXolQLAMqZGRA:1mHIap:WtxvCjAnqjbj3xEbqlneAy7t68yvUJIKH5D-CvdGPso', '2026-08-20 04:26:51.993422');
INSERT INTO `django_session` VALUES ('omwpa7rbrrquadc4am1ck8nme2ry4bhs', '.eJw9y0ELgjAYgOH_8p1TbBpG1xZaGUspWF5kzbmZ4simgtF_b3To-r48b5Bay1Y4mg1GoeJlmBGwgXT2KcnIKUspvea7iifRQcz4RsmScE8_YQEV4-KudfM3Y3l8cK7CKGkU3tfdOb6M8YTTfiLlVsXIGj9ww8BFaO2ilWcJ6522lsrYVbSskwOT4pfh8wWZpzGk:1mGGhh:3quF29nQq4CDlLfUKUJChDRX4jO1eaZvDHVRVwQAzA8', '2026-08-17 08:13:41.701087');
INSERT INTO `django_session` VALUES ('op056qqf1rkcgz8bh65y89x0chzp3xqs', 'eyI1LjQ1LjIwNy4xNDYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKrjs:b5Mx4h2RFDWpl7SExNh4jId04s1NwYkhn4vjXuK0A0c', '2026-08-30 00:34:56.580859');
INSERT INTO `django_session` VALUES ('or1i9fq84isd47n6ugkfyh5f4u2w9nv5', 'eyI1LjQ1LjIwNy4xODUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKV6L:YQZV7yEQLiCngvecWNeACiDQl06-j0ecMcCPY97lFXk', '2026-08-29 00:24:37.696665');
INSERT INTO `django_session` VALUES ('ovfj67at3jyypubbgq8lqgpxgsyzbhqx', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvIge:BRTQGzdNO1hyY-A1K0urvWzi1B4rgV1876-xBmlDZcM', '2026-06-20 12:05:56.292649');
INSERT INTO `django_session` VALUES ('ow956dfip84eg6uit8vkjvni4vfwn2x3', '.eJxdj8FuwyAQRP-Fc4pgcQLuMVKP_QZrYdfGrWVHgFW1Vf49EOWSaE_7Zma18y80WKnqaPEuML0t8xSLOIhhwXXaceI7bgD3Eoc9cxpmqrBTz9Bj-Oa1KfRVo5sM21rS7GWzyIea5edGvJwf3qcDEXOs6bF31vTse03YWWDdEVAAbd0IipwhUnDSR7Yn48ZgnSU8gjYeDCgksvXoy5P3tfxeWpXCGCK3PhfM-WdLzfWx_O0e56TF9QY4dFZ-:1mAaAg:twaQRuctD_omBDWVTROKQjGzyw8503q81MTL6mhVsMA', '2026-08-01 15:48:06.082911');
INSERT INTO `django_session` VALUES ('owej4qo99n8yhkfsg2qbl9qwxrb966oo', 'eyIzNC44My40MC4xMDEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMUlG:pKaJIZ9oh9Agpqd5bDe0HRdzw1KSXBwxJetX0Ggv67w', '2026-09-03 12:27:06.211190');
INSERT INTO `django_session` VALUES ('oz1fl5w2957ofa886h8u7tfgysvcdm6x', 'eyIzNS4xODcuMTMyLjUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mH9Ow:nU0E9ViBSGoPwLU-xb3R0yS6QLGQdVjAt9HZFGBdcyo', '2026-08-19 18:37:58.045681');
INSERT INTO `django_session` VALUES ('p1uox8f5iw5eannqzy6a5r4aa0vnyfyi', '.eJxdj80OgjAQhN-lZ21K6VbwaOLRZyDbHyhKgLQlRo3vbku4YPa038xsdj6k4CfK0hTkTNAfh75zkRxIM-DYLdjZFWeAS3TNEqxvepOgYHuoUD_smBVzT9GJ6mmMvlc0W-imBnqbjB0um3d3wGFwKa1sXQoOCJXAFjSYVjLgXAKXNSu0Ykq01ggtOVaGn6AtZSk1sFpApSTDdPTvyXWNrzlXiRa1s7nPjCE8J59d1-G9KOx9Qb4_J9FWRw:1m0YYq:kF6GFgwcmL6Jei1-ArAzLbgUS-B56pS5upf1D5z0p3o', '2026-07-05 00:03:36.044840');
INSERT INTO `django_session` VALUES ('p2s5nxefya52klem5ed3ec80afkpa9qx', 'eyIxODYuMjAyLjE2MS40NiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mL5mi:K0SCgf88pvd7QFhutJ_EnKis-YVr68zJykRitOUVGwQ', '2026-08-30 15:34:48.139369');
INSERT INTO `django_session` VALUES ('p6jc9yssp03jno6m1owp757e05qscg01', 'eyI1LjQ1LjIwNy4xODUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mLZOU:pekBu5Yy0RnYNWIi2M3kmi1JKPIjjpwqWaUj8Fce7ZE', '2026-08-31 23:11:46.535944');
INSERT INTO `django_session` VALUES ('p7re4hojxueeq8k9ey6vc6y46vfkxtb9', 'eyI1LjE4OC42Mi4yMTQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJ5OO:lUNK8S_Il_EH7ZAg9aTxfLq2k7C65RWjm2TysAdXE3M', '2026-08-25 02:45:24.120158');
INSERT INTO `django_session` VALUES ('p8r67enptqxnbkx5wf25em3wixlf52qp', '.eJxdj8sOgjAQRf-la22mL2xduvcbyPQBRUkxtMQY479LDRtczrmPzH0TDpyyRtOTpIKRM8H5OA59LORA2hFTv2AffrgCXEpslxzmdvArNKc9tOjuIVXF39boRN2UyjxYWi10UzO9Tj6Ml827K4iY45qWXDunTcN5p1UjeQcoAvNgDROgUaEFo0DKrvNCWkCnrAQQTHtlG2PkWvr35O8sr0edksviQ6oDH5jzc5qrK2IaGBeckc8X_T1WTQ:1mPj1e:rR3xTn_bjodquIJaO21fq8Cm44eirWkldeZZ5j__3Eo', '2026-09-12 10:17:22.154044');
INSERT INTO `django_session` VALUES ('pa47emq6qnsw6sompxbb0kru66bm1uvr', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luwOl:4XGzAG4ahneSR969Z7tDAsKvNMYwxuD-wnfiPYjgtmg', '2026-06-19 12:17:59.851850');
INSERT INTO `django_session` VALUES ('pac1ptsbqwj64clvw09tdjold2wntn57', 'eyJmYWNlYm9va19zdGF0ZSI6IjdqQUxqRGdwQThEMm1rSzlKTHQ0RjdPWDNVcDdZb0ZLIn0:1mPTKb:yPc_qnY8vqo20vsAGtIA5lb2VXBeYJlbfVpvlNiNwes', '2026-09-11 17:31:53.012225');
INSERT INTO `django_session` VALUES ('parpf6dcm45xfuy2dgonbo3k5zunyowc', 'eyIxMDMuMTE5LjEwMi40IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHJvr:RF4xociWNv5Fh4ZCcJP71fQjOYKuQitwcYVzqjmgEaY', '2026-08-20 05:52:39.869802');
INSERT INTO `django_session` VALUES ('pcc773zn8o3e0rphzhiwfejqdg9mcva5', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mdxQa:M6LAdD86zIxZqy1f8GQfhxVotb36_Wgvy6yTdMZqmvY', '2026-10-21 16:29:56.719079');
INSERT INTO `django_session` VALUES ('pfj974ajq3wsn1e9zhp7e5ammaduiayn', 'eyI3OC4xODQuMTUyLjI0NCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHPEW:u7KaoSM3GfyoY7b1MF3vYPomhibKOJfDDJT6kGKcEQo', '2026-08-20 11:32:16.235765');
INSERT INTO `django_session` VALUES ('phhgg5uyctyb1dmn24dxj7i4mh8eo8nw', 'eyI1LjI1NS4yMzEuMTI0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mLRue:SocrlAhi_nfrJ8tDmPfaEYXTpuVSPmINU7fep_DvQZM', '2026-08-31 15:12:28.802365');
INSERT INTO `django_session` VALUES ('pl3cfdu073igyqwwbflfjss0ppxsumub', 'eyI0MS4yNTAuMjA3LjUyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHHhd:Jgd9oMivs9UK_dXCiLCAsg0sM1pwSUer-aKrKSDAyuQ', '2026-08-20 03:29:49.522370');
INSERT INTO `django_session` VALUES ('plbdo77sjw9nl0293jngoxuk7ye1gp7g', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lx4AK:J3rnuTHXS-VCvMF2D8Tu8VW6qcboAqdtxsmYi8DJT_g', '2026-06-25 08:59:52.223277');
INSERT INTO `django_session` VALUES ('pnjsusihb260qwemoyj8m9mrhtqqqds9', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luwqZ:iTPBRPP9ZuupN6OqRVvvSH92kjQQX2pnVRne2J7cZvU', '2026-06-19 12:46:43.718339');
INSERT INTO `django_session` VALUES ('pqp51i1g9roiaeg6dxdnilyfjl3isqph', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luwAO:Ozc67_EIkIKNsRsok6oyXhXOQOPRCatAkPhyWTdM3e0', '2026-06-19 12:03:08.188063');
INSERT INTO `django_session` VALUES ('pqrf4p2tgfnec5utdzbqn4j2dox3klxm', 'eyI2Ni4yNDkuNjQuMTI2IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHnlg:AzOxIQOTq60qrfM83T8Shpz1b7ay4LU1PsnXI077D-I', '2026-08-21 13:44:08.869785');
INSERT INTO `django_session` VALUES ('pqvxhltehrqs5w8hnskb6qpem7gze2s6', 'eyI0OS4yMDcuMTQwLjIwNyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPqRL:egHEviAink3RaEfGE6F3aca6ldgo5eaAGZmH9NQx_sE', '2026-09-12 18:12:23.154859');
INSERT INTO `django_session` VALUES ('pw6hfxlv92dmr10pwpxyrwmeecjby1i9', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luwBd:yJe-o3RnnDOL9ygwFtp9A7-ZOj9mHm1gtVoPaNijq6I', '2026-06-19 12:04:25.931994');
INSERT INTO `django_session` VALUES ('q0nyhgiuuoa8h69xr3z5st5h3zgurce2', 'eyIzNS4xOTcuMTA1LjkyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJq3g:LhIoZYhBt9s_h7jM4GSovXkCNi5roFpJL6m3a0rh5xI', '2026-08-27 04:35:08.195091');
INSERT INTO `django_session` VALUES ('q4k1y6jbfedcy2uzdj2wyxvyucfvs7cs', '.eJxVjssOgjAURP-la9LcCy0Pl-79BnL7wOKjbSjEEOO_WxI0upw5M5N5sp6W2fVLslM_GnZgyIpfT5G-Wr8BcyF_DlwHP0-j4luE7zTxUzD2dtyzfwOOksttNWiQEhGUlthIrKEpG2qgBTAWVCUrNUiRSVthjSCEBC3KwSBQp6q2y6Pfj1iwSCk9wrT9chTj-sHzGm320hKzIHMfPXu9Ad4oSdg:1met34:9TjPBe0uKNcSHzlDSX2WAIn7UA7iYd48FWkLoDWgu24', '2026-10-24 06:01:30.937477');
INSERT INTO `django_session` VALUES ('q8nv9gjcvos8jh9ys5cpqbimy87ks6kt', 'eyI2Ni4yNDkuNjkuMTAyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mLbc8:5rt4xrAryBRR2cXnFBBtirDHtHQby95TmE1WYnFwUv0', '2026-09-01 01:34:00.188414');
INSERT INTO `django_session` VALUES ('qfd7llnt1ew1mdimsimlzzb845jwjesa', 'eyIzOC43NS4xMzcuOTIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJBFY:BadRY_5WO8cvvpnpqasM_DAvXAOfwEw2wWT_zGpvmYQ', '2026-08-25 09:00:40.293239');
INSERT INTO `django_session` VALUES ('qg2vubj3mc45b5c208fy8xg46j5wcwas', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHAsG:J5lGOo73vSv3BGX9qjbQRG-_zPXdUwakra7cI336H2w', '2026-08-19 20:12:20.707780');
INSERT INTO `django_session` VALUES ('qgi9yst2hooe9iokcqnpetq8xo9dlqru', '.eJxdj8sOgjAQRf-la21KaSV1aeLSbyDTxwBKgPQRo8Z_tyVsMLOac-887odUvKEsV0XOBPxxHLo-kgNpR5i6BJ1bcQGQYt-m4Hw72AyF3EMN5uGmoth7Hp2pmafoB02LhW5qoLfZuvGyeXcLegh9OYZcMGEbBqxGpispETVwRO4MSiUQjHHC1EYpeVKy1qCgyZCZxllkPC_9e3Jt42spUUJM1k0l4AIhPGdfXNfxnTQMviLfH-LnWIM:1mckaY:5n9iThFgbz3uZ1L6QdacsNOOJb8NNLuVDprOzFx_Ojo', '2026-10-18 08:35:14.114517');
INSERT INTO `django_session` VALUES ('qgxe58s84kz4wy0xx63gltmucbn6g9vy', '.eJyrVjI0N9UzNDHSMzI01zM1VrJSSizSzclMzyhR0lGKz0nMSy9NTE8FCwMFwIqNLfSMTIG0mRmy6loA3zcT-Q:1mNVJk:tgWFSSU_NRxAYFchkZFbqwlJRzhi6BfP__6crehmNc0', '2026-09-06 07:14:52.818713');
INSERT INTO `django_session` VALUES ('qohkhv9xpkmohbz9s75h68vmc0iqvqv9', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lyMYO:vAQH8HI61sz63UV70Q-TWUWOUT5GdWJ40M6aRUhp9xw', '2026-06-28 22:50:04.597480');
INSERT INTO `django_session` VALUES ('qvm9eogj43bfhqer3a7ps9l689uw1f2f', 'eyIzLjIzNi4xMzMuMTQxIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mN3z0:xMmNnxD4RJlmoCd7nHqxAuu_y56-_gKkFABDXDZE4tU', '2026-09-05 02:03:38.893106');
INSERT INTO `django_session` VALUES ('r36vq484dc3gvoccgnh172qns5xjs2c8', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTP2:aZN6L0ElPByjxVLosgd1XL1MJ3C0ha3xQnOLJXNiuAc', '2026-09-11 17:36:28.730715');
INSERT INTO `django_session` VALUES ('r3ykyh47yldc3cydcfh03nmmk8zjygbx', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lx4O6:asaUlMEswFqcAtr6RvoByN553AjKOMVKAnaT2sJFZw8', '2026-06-25 09:14:06.842060');
INSERT INTO `django_session` VALUES ('r4kuz8rbs6lr4n49el2ub5x2dghh1vo5', 'eyIxNTcuNTUuMzkuMjUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHNqJ:QGb_aJi5miVkZzaCg4Tl5GkMh7ZqCsRpIg9KzTEK9_g', '2026-08-20 10:03:11.284328');
INSERT INTO `django_session` VALUES ('r4m4ulemhivhx2uay3gzv8ijj000cmg3', 'eyI2Ni4yNDkuNzUuMzAiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGSft:CPxYdnb19MQommP6HwTUvjfWR-NWgPivPAOglmUtb04', '2026-08-17 21:00:37.356322');
INSERT INTO `django_session` VALUES ('r5ayga0c8bw6aj16tz3bovbxrwz2xysy', 'eyI3Ny44OC41LjExNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mFu7t:SpLLT6GsmPEZ4277YHY_UyLn25qHU5rdKvJz4_fM1O4', '2026-08-16 08:07:13.969714');
INSERT INTO `django_session` VALUES ('r62aa949oanduubhenmhen6eqmzmye1m', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvLeX:nItAK0mgVbg7gOjM3zW4ajUdgsSk8AbBR3OLtU9mjIQ', '2026-06-20 15:15:57.294528');
INSERT INTO `django_session` VALUES ('rae8px2oypc6rwb7pu73dfm1hw6gz29b', 'eyIxNzUuMTQyLjIxNy41MyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mG0bC:7YZhJR2en5z5czzqEWD7iIxxcoSTN2JeymQ_uEJ21ao', '2026-08-16 15:01:54.505265');
INSERT INTO `django_session` VALUES ('reeslf1jjiwuch9pkq0vdlqcewz4hf30', 'eyIyMTMuMTgwLjIwMy44MSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mLCyW:At0n-Pj3pE8ThDtWAnTbC5zLuDN1dpntwyRy-t9s90Y', '2026-08-30 23:15:28.350220');
INSERT INTO `django_session` VALUES ('rew053q7azm9ryvegtksruxt988oflm2', 'eyIxNC4yMjQuMTI4LjE1NiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mJCiL:ti-9LDdE8NgbxCCB1Qtmtj9QH-qcqQIIWLmWxnpk4W4', '2026-08-25 10:34:29.041045');
INSERT INTO `django_session` VALUES ('rhx438wfh5gxztupqza3cd9o563d9t25', '.eJxdj00OwiAQhe_CWslAoRSXJi49QzN0sFSb1gCNUePdLcaNLud7P5n3ZKIBbiQXErgQmu0Yxu049CGzDWtHnPoFe__BBeCSQ7skH9uBVmjrX-iwu_ipKHReozPv5inHwfFi4V818eNMftx_vT8FAVNY00DKaTKKGjgRIlmnDGEFuqvISiM0nAxWuq5rQIkSGkIhDIG1SnqlSunfk58z369lSvbYBV_2XDGl2xyL6zA-FodDFOz1BnFkV60:1mPl4s:7sSXwPQiVX_nQdFBacCyqc3MxflUi55-Bpj25O369N8', '2026-09-12 12:28:50.194779');
INSERT INTO `django_session` VALUES ('rjdxpns48hqau1q5c4tdz4kwjy6el6le', '.eJw9y0ELgjAYgOH_snMO50ylo1QwT86w5kk-ZW7qalQzsOi_Zx26Pi_vC9EQE5rgdYJJHKENgptneqUdWqHawEVNoOSPF1DWKiM9C5PTQX134L6Jp-WpYfxYWjnPhaThI_Xb6sCSLmDDeTTL2EErG2vH_5PSLOZFTrIrPKss7wUTfhTsxLYc9nFHNHp_AFC4MGw:1mI2Vg:r7q6pY58IWpEySEEdvdQ_ZfKPopsL4CWKw0U8OwCwLw', '2026-08-22 05:28:36.413077');
INSERT INTO `django_session` VALUES ('rmytq6echrp1lvj6q6sgxegv5m9w9j6f', 'eyIzNS4xODcuMTMyLjIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mLzby:1kCNiXuQDamKPAQ2-E9bfHrSpCq0AS5qaB5JluAYLC0', '2026-09-02 03:11:26.575348');
INSERT INTO `django_session` VALUES ('rq245tg8hzj2huar30oqa0wnfglfz9vy', 'eyI1LjI1NS4yMzEuMTEyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJgfA:L-DJgonAKHA2ReIK9RXJ2zpqoneaS5AgYmcw5fyFIJM', '2026-08-26 18:33:12.047744');
INSERT INTO `django_session` VALUES ('rqot48tr83o9818pnn2rarqjrqqlovz0', 'eyI2Ni4yNDkuNjYuMzgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJVWH:KMh24A0d3yb7b8daalTy_eBEp3Ua0PabjxUlsSbykh8', '2026-08-26 06:39:17.982465');
INSERT INTO `django_session` VALUES ('rsegcvmouyt8futpzqwbdntx2xp4f7c6', 'eyI0NC4yMzQuNTkuMTk0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJ9CA:RYqivMyQkd287jN9We2d1t4ggzeUgqcpUGTzoxtH0Oc', '2026-08-25 06:49:02.536318');
INSERT INTO `django_session` VALUES ('rzzbms9xlji8q4os9t9wqc3aay5xx4ud', 'eyIzNS4xOTcuMTA1LjkyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJq3f:fLIyYwOwn-j7VbUGA91SF7Dxk6j9tZ9GUR4x7axAvG4', '2026-08-27 04:35:07.353698');
INSERT INTO `django_session` VALUES ('s0ahux4rwokq1foimnqh69pmu923brmq', 'eyI2Ni4yNDkuNjkuMTAyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mGGYp:OZLUQfFSH7Ho0ZwX4c9I8lPE877mB_bWCpNdXdTXMT8', '2026-08-17 08:04:31.146266');
INSERT INTO `django_session` VALUES ('s36ai5e4ydgqll6a9bhv39i1gcfh0wrm', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lwB4z:lrrz_PxDPq9B778g1JSj4UmmpK2fLKO1HWR5kKTv1lk', '2026-06-22 22:10:41.325751');
INSERT INTO `django_session` VALUES ('s57hb56ziy2e50x00pb6ijeoqqz5dfks', 'eyIxNzUuMTM4LjI1NS4xNjYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNcF9:-Xvti8yoOXL6IsaPhddVbXnhYxY2UEq00fmxnT28c2I', '2026-09-06 14:38:35.003998');
INSERT INTO `django_session` VALUES ('s6me7cm1ojwfiohfr4kaq38waf2gskk4', 'eyIxMDQuMjMyLjIxNS4yMTEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMUkY:L3kj2yqjEkk3bdtdOXsbXc0z8WpFvkcoIPi4Y6tw7qE', '2026-09-03 12:26:22.632397');
INSERT INTO `django_session` VALUES ('sik9kjd4utnlkos9cb04aj3qebxx65f0', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHBXF:4iTS5GaO7wcK_IFIZPEwsxNFcKGclWkquLl8wOAtV-o', '2026-08-19 20:54:41.530171');
INSERT INTO `django_session` VALUES ('sj1sgopk4s79q2gf8sel68q93a7p4a7u', 'eyIzNS4yMjcuNTguOSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mI3SQ:9fkF9Gd-NNTf59KS31tDg4DIl15IOYWHqIy0AIhvaHQ', '2026-08-22 06:29:18.899964');
INSERT INTO `django_session` VALUES ('spz2syioshb53uczal9qnm2a0v2y2ixv', 'eyI3Ny44OC41LjExNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mICGQ:Z8-l6g4p6ErMA-XqEgVovJbh_RuQkEMe8FMCV8gm5Ps', '2026-08-22 15:53:30.811066');
INSERT INTO `django_session` VALUES ('sr158esllq3gm5p487mbcp1hk0eeqv8z', 'eyIyMTMuMTY2LjE0NC41IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJbsV:xjMlFt7IDd3XSJtGGKfdJJZChbFqU1RlMqf0yvbAEbM', '2026-08-26 13:26:39.601006');
INSERT INTO `django_session` VALUES ('sr3l55o54mi64pvvna50cjf7e2vi9krt', 'eyIxNzUuMTQyLjIxNy41MyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mGV85:lldPgA9P4gB13X8yR5h4mRc1k4XYDrjzDoDR-HgVI1k', '2026-08-17 23:37:53.660208');
INSERT INTO `django_session` VALUES ('ssuv0pkuh1i0c6u7w6zb7b1ynea7wdkt', 'eyIzNS4xOTcuMTA1LjkyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJq3g:LhIoZYhBt9s_h7jM4GSovXkCNi5roFpJL6m3a0rh5xI', '2026-08-27 04:35:08.212832');
INSERT INTO `django_session` VALUES ('su1po2ntftv0642frw84fou45dt00ybg', 'eyI2Ni4yNDkuNjYuMzUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mIPDO:ffFEoQTsoeiJCp2xJCW6yHfe6oGkExSLraovcKmoIpA', '2026-08-23 05:43:14.405268');
INSERT INTO `django_session` VALUES ('suepbgv636y7yst0ukj9ctxcvnfop37g', 'eyIyLjU3LjEyMi45IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mLHfS:yTtbY2V2qZqk-X5VeD0r5Zkg6kagnEaSke0TXdt_zHU', '2026-08-31 04:16:06.436498');
INSERT INTO `django_session` VALUES ('swayiyeo5t6v2snsgxdo7dwz2ydnl1xd', 'eyI1LjQ1LjIwNy4xNDYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mL2yw:Z-3YUFGqdzhHaBuNWch21HrykgpBZdluBlNG60_huls', '2026-08-30 12:35:14.126393');
INSERT INTO `django_session` VALUES ('t25f61uv36jijyxn9uxxoyxmdmhn9jfd', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvLWR:V8jrttJALn9iiSQ_U7gnlQys95t2rClsDnQ4X4CApHE', '2026-06-20 15:07:35.691956');
INSERT INTO `django_session` VALUES ('t2g0c96hczvl1nu10q5ym431axi1guwe', 'eyI2Ni4yNDkuNjYuMzUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHa3G:dH7Egyq0njL6KKrf1Y0Wpku3comVmLa1-NLKa_ZHBp4', '2026-08-20 23:05:22.633063');
INSERT INTO `django_session` VALUES ('t54p4vd0sr56ssiiugr8rrgyf8bnd6cv', 'eyIxMDMuMTE0LjEwNy45OCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPckB:W4QjfXwWGbv5kNpl5UhSM7xh-weZSKX_a8YslNULYpo', '2026-09-12 03:34:55.773973');
INSERT INTO `django_session` VALUES ('t6tcrd00ejt0u4jq05gprzzzwdfp4wyi', 'eyIxMzIuMTQ1LjkuMTg5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mPODl:nhYo0CwrGRwe8Ps4LiD2sAfQXE0jZ5nUnJeKU4CgXfo', '2026-09-11 12:04:29.209541');
INSERT INTO `django_session` VALUES ('t7zxx55ps62r99x359vlods210se8691', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiME91cmNoS05DWHprUjJWcnBhUHVycHdZcmdvT3p0b3cifQ:1mPeey:xNZERxrkajnhtmiZxlAidDQ1o_3I5r6j9q4dQrtGwjo', '2026-09-12 05:37:40.749907');
INSERT INTO `django_session` VALUES ('taa25z55lh2q64zddxxe83wrkh8d9hz3', 'eyIxMDUuMTEwLjEwOS4zNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHLsP:nIN9YAgxTnEN7opprDI4QOhFmNwO0ulC6UUaA5ctdvE', '2026-08-20 07:57:13.765711');
INSERT INTO `django_session` VALUES ('tamv9bwyt5m29dhf5e6fsine0rh15zc5', 'eyIzNS4xODcuMTMyLjE5MSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mKG3W:x1ZejtTrTwE8gBzizc5g3rqnI8buVfFf-AbOfSKeFlk', '2026-08-28 08:20:42.193089');
INSERT INTO `django_session` VALUES ('tfl6fjfo5b6vwkngdgey4386o007vz0a', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHE6u:_mquN9Br9yiekCnTZ6zCq-HcW5PTR-D7VP0VqXikNH4', '2026-08-19 23:39:40.512841');
INSERT INTO `django_session` VALUES ('thcbn5hf3023cm4t1vqa34il0knlhgc1', 'eyI2Ni4yNDkuNzUuMjkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGXNP:KbKtJH58XF_tFOMhKnMmKgS3DP1PJdwBdc4oRqpLR6k', '2026-08-18 02:01:51.940824');
INSERT INTO `django_session` VALUES ('thkn543qo3g8uvnwvwltj87xx7r3uihx', 'eyIxNTQuMTgyLjkzLjE3NCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHQK8:inIOWBwtlxnVmaWmNPNgz-5Nw2NyjDJVLM15g7bucaU', '2026-08-20 12:42:08.502255');
INSERT INTO `django_session` VALUES ('tiydvbropmo3tthzqr8ua52kpqr31i77', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHAza:EDdeZXjLvwZlB0LUf1xvw_UyWu3c_dI8MK2Szh1sF5k', '2026-08-19 20:19:54.715246');
INSERT INTO `django_session` VALUES ('tkxpp04bu0i7iyryu7ziixbhgt15ibs9', '.eJw9iz0PgjAUAP9LZyGGllQdiRgXSAQTDAupWl8rhRfkNfEj_nfRweGWu9yL8TiMuJzgoeBsxdQtcBYMsRlrnOrBK9A_PQlABKcDVJ5M1Iyk6Jvs_plmaZ31_rwmSpMitlUr8tweHqLmlZjGizrpI2L7f64SdlYiH0yxHTdJt4RYLu7ZXHSlKwc07P0BXE4xOA:1mL6fy:zV3nsjrt51sDmHJrHDGXXb7gEa7BvJH1lcMbgAe0qYs', '2026-08-30 16:31:54.749129');
INSERT INTO `django_session` VALUES ('tpy6pjwiekgr16gd9rdxh4wqox1dxjyv', '.eJxdj80OgjAQhN-lZ21K6VbwaOLRZyDbHyhKgLQlRo3vbku4YPa038xsdj6k4CfK0hTkTNAfh75zkRxIM-DYLdjZFWeAS3TNEqxvepOgYHuoUD_smBVzT9GJ6mmMvlc0W-imBnqbjB0um3d3wGFwKa1sXQoOCJXAFjSYVjLgXAKXNSu0Ykq01ggtOVaGn6AtZSk1sFpApSTDdPTvyXWNrzlXiRa1s7nPjCE8J59d1-G9KOx9Qb4_J9FWRw:1m1AJd:3uk_D6UeRivK8Ae04Izdcd5jBnF5OEWtizk-HTdmw8Q', '2026-07-06 16:22:25.410529');
INSERT INTO `django_session` VALUES ('tr72w2doco7i474gx1jue0mremuwx8by', 'eyIxNzUuMTM4LjI1NS4xNjYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNuDp:ZjTquvp5cmbwMrgfSKGTjZgklBeYS4qckyRMOgnWWTE', '2026-09-07 09:50:25.759508');
INSERT INTO `django_session` VALUES ('tsfd4tgiik5hnmnv4yng7yrotun7wffq', 'eyI1Mi4xNzMuMTguMTY1IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mGpfB:0Mt9RYS5oY2cH4WkJcuDGjA5NOOnKcn4tBCUFvVRHqY', '2026-08-18 21:33:25.775015');
INSERT INTO `django_session` VALUES ('tu72l7pxutki8pqo9gk3a06rrbws0d4n', 'eyJmYWNlYm9va19zdGF0ZSI6ImJFRnFNb2dURkJBQUlLWnI4MmZGUnA2QzhxTlVHMmlhIn0:1mFu7G:iHfV0CKt8qUqB_XNS3wBXZxRcJJGJs2Phk-v_hbcZTY', '2026-08-16 08:06:34.081524');
INSERT INTO `django_session` VALUES ('tutgkq6h1e8m26ma7t130yf3igp8fumy', 'eyI1LjI1NS4yMzEuMTAiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMEj2:WdWpLX6Iluj5qF4TkOLGVCxkv1X0aWncckpQ3buiKt4', '2026-09-02 19:19:44.310816');
INSERT INTO `django_session` VALUES ('tv8hqgkslukfysu6i2c0vj4j0evgtp3w', '.eJxdj8sOgjAQRf-la21KaSV1aeLSbyDTxwBKgPQRo8Z_tyVsMLOac-887odUvKEsV0XOBPxxHLo-kgNpR5i6BJ1bcQGQYt-m4Hw72AyF3EMN5uGmoth7Hp2pmafoB02LhW5qoLfZuvGyeXcLegh9OYZcMGEbBqxGpispETVwRO4MSiUQjHHC1EYpeVKy1qCgyZCZxllkPC_9e3Jt42spUUJM1k0l4AIhPGdfXNfxnTQMviLfH-LnWIM:1mcSKV:HNUEKoqqscxsbOubsyb3SV6BWQDQcY_-S_1kg8gGMcY', '2026-10-17 13:05:27.329602');
INSERT INTO `django_session` VALUES ('tvtyeym03wyhpi0fzlop7nt5y2tkw0ma', 'eyI2Ni4yNDkuNjYuMzgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKsHD:Wn2dqMM89nHQoMRlC3HZngHN1XMXEOPnqVM9AgtN0Uo', '2026-08-30 01:09:23.399151');
INSERT INTO `django_session` VALUES ('tw1l7poxigw6ce8cwgwj49tl0l4x18hz', 'eyI2Ni4yNDkuNjYuMzIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHRh0:1TTHky90nD6yvawSRRGEIgARIdz_lOnc8a0eKb9jZ0Q', '2026-08-20 14:09:50.978956');
INSERT INTO `django_session` VALUES ('u13twil6ugjnxaene41opy0mu6ku7ucp', 'eyI1NC4xNzQuNTUuMTM5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mGWB1:Z57mMIOilgh8zr_cqXHKcDWqTJhmw28U2hjA1mL0i-M', '2026-08-18 00:44:59.677889');
INSERT INTO `django_session` VALUES ('u1q1gbi5l4iic88el30q4qdpa8aue48z', '.eJyrVjI20TM0ttQzMtAzNDBWslJKLNLNyUzPKFHSUYrPScxLL01MTwULAwXS8_PTc1J18xNLSzKM4otLEktAUmWOiQGBJk6pAS7hyaEeERae7sHhue7uReU5_r7myYFhQI1picmpSfn52XA9IXlVbm4Vxj7GRWZ5xqa5OcGFzkGWJXk5viXmrgZZ5t5KtQA_KTDG:1mP3mF:NKnbuP24u62CaoV7z75VEjsseBtKM7y2Jqglt8d4W8k', '2026-09-10 14:14:43.243242');
INSERT INTO `django_session` VALUES ('u218ryzwlkwq3p1jd3tvxhiwewheyo15', 'eyIxNzcuMTM4LjI0OS40NiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mJMqP:ULXr_b3H7lyQWQVEugCHyYgr7tojbLkZhne6bIJKo7Q', '2026-08-25 21:23:29.410284');
INSERT INTO `django_session` VALUES ('ubate6tdq1wrjlar8qxi6pbyp3tz6hae', 'eyI5Mi4xMTguMTYwLjkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHkzn:cPDidixictGm7Db2CJ4TTGNlz9Q3LbUxFii3g5LiIwc', '2026-08-21 10:46:31.449623');
INSERT INTO `django_session` VALUES ('ubk1m18qsa5xylijsc6q12ocbhe51a67', 'eyIxMTkuNDAuMTI2LjIyOCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mP0nc:uNhlGHfb94PxEJgXh8LVILLLkx-72T0viT-iP5srSoM', '2026-09-10 11:03:56.399354');
INSERT INTO `django_session` VALUES ('uhvuqtvzrf0p6689ej9htd7pg7bd7z2s', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiZXNjSkZycDNLWTl6VHZXdDhPakZLeHhkVzVYU3ZFdnYifQ:1mMPIn:ZKrfPsytz0Y3VWy7S5ZXrsJxCZn1cKLN--yFJM9iNaM', '2026-09-03 06:37:21.693437');
INSERT INTO `django_session` VALUES ('um5l3n4p0fnj61zwgeuabupwc5waz0b4', 'eyI0OS4yMDQuMjkuMjA3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHg9o:OTkNzzZeWvBsJ8FtlwqYpBrSIu1N9cEyW6V5Kygly5g', '2026-08-21 05:36:32.033269');
INSERT INTO `django_session` VALUES ('uo4rm3yp18s17h1kafaa44mcq6ivaw0k', 'eyI2Ni4yNDkuNzkuMTAyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mIlN9:WCKqWx7E_4PYGx21eQ5Sd9-s7DpKCC50Y3xlwz_fN0E', '2026-08-24 05:22:47.203127');
INSERT INTO `django_session` VALUES ('upe0fwysybjw4yx3n3gy9si6kejyatj6', 'eyIzLjI1MS43Ny41OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mMfvl:hYE6VP-tEFjnS_e3eMnVklMe3J5HR26Y2hXlOVSqtRc', '2026-09-04 00:22:41.306991');
INSERT INTO `django_session` VALUES ('uqcdd57u1hof85ykd35bm2cg0510hetd', 'eyI4NS4xMC4yMDcuMjQ2IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mFtza:OUihw_rmhgFh_3KniwezUGZbF71QZe_TT5RJhBJMpFg', '2026-08-16 07:58:38.622873');
INSERT INTO `django_session` VALUES ('uttw85o9769w7ewo1wslyhr0083onhlc', 'eyI1LjI1NS4yMzEuMTAwIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mKvS8:5xaVuwPo7ZAkVkb2XU4oj8H3wa0c3si6aXHVnhZXOHg', '2026-08-30 04:32:52.759751');
INSERT INTO `django_session` VALUES ('uul2p3js2zs3nakjzrayqp28btg65gxz', 'eyI2Ni4yNDkuNjYuMzUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKkJU:LcD4v_SRSA9fKROyVSGR8k0fOMJw8_IZPNDtNvffX2c', '2026-08-29 16:39:12.944372');
INSERT INTO `django_session` VALUES ('uuwhkzc8kksghpvj3sgt6fu8drjdh20r', 'eyI2Ni4yMjAuMTQ5LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mLm9w:ENCV6LM74GhqGcnD0rZMzCPbfH_EHzrPktg0PQSXj_Y', '2026-09-01 12:49:36.746519');
INSERT INTO `django_session` VALUES ('uy1ixvhduz7vp26awgx7ontj39s5trk1', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lw54H:8iFGvFX-o1Ngat1bVGDkPLC42P4y16E5MqLjMtVtIZo', '2026-06-22 15:45:33.413933');
INSERT INTO `django_session` VALUES ('uz1pj7n1vmxr4cpszwgltadhygetk6so', 'eyI3OC45NS4yMzQuMjAyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJOjI:NWy75YseRtGAi56Zkdgl0iPx8hTnxFEFhExiWGuPq_g', '2026-08-25 23:24:16.988898');
INSERT INTO `django_session` VALUES ('v47e88ji3grapdzwr06h3qsb0jijuk4q', 'eyIxODUuMjU1LjQ2LjEwMyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHK5l:dGMbU1a1gXUAQ6mVHjAdcqCNlokPxgosy5zToUTbvoo', '2026-08-20 06:02:53.585300');
INSERT INTO `django_session` VALUES ('v54bufp2hfcmpjnd5ml6cig1unmh4qtm', 'eyI1LjQ1LjIwNy4xODUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKMXx:2jmYAeRn-oFqI4gLnFsDF1MshiR5K9xKnn1ueygwg_0', '2026-08-28 15:16:33.146967');
INSERT INTO `django_session` VALUES ('v9ugqzloy7rcgnubfo9wwcsoxifu7va7', 'eyI3Ny44OC41LjExNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mICGY:0wtaXdB1pvzFaRYdri1a7cOz8B478-CDTerSwekYJhc', '2026-08-22 15:53:38.885403');
INSERT INTO `django_session` VALUES ('vca64r4pi4pdbj7dqy6vn9r6dn334xx3', 'eyIxMy43OC40My43NCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mNS7S:GIZmfrFof9qXRncDSkHCVgEDtoIVq0UvFcep-Id64aM', '2026-09-06 03:49:58.964430');
INSERT INTO `django_session` VALUES ('vce2fti05ea5lwwb3dci7zirtgicg3ew', 'eyI2Ni4yNDkuNjkuOTkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mG0Jj:dO6KADEwnlxkLzdJOFMmwd_xFgQK-2_VMI_WAaBzG7U', '2026-08-16 14:43:51.297932');
INSERT INTO `django_session` VALUES ('vdqy2vvviasrxhlcrhzdylg1m8kdzcyq', 'eyIyNC45LjEyNC45NSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHCWS:GXQFFtO1XGhZ4lq2PvxR4A_sKURf6lN98oxWSR9Xbso', '2026-08-19 21:57:56.057534');
INSERT INTO `django_session` VALUES ('vec97ruy6zok2rwijsplj7ire7eotb8m', '.eJyrVjI21TMyNtQzNDDWMzZTslJKLNLNyUzPKFHSUYrPScxLL01MTwULAwXS8_PTc1J18xNLSzKM4otLEktAUoH5wRmWWS7JjlFhgd4BocaR4ZHupYYhYeF5WUGmJaEeQI1picmpSfn52XA9FU4mnokGhr7moUmBlSV-FYlFZWkuAZH5PpnemYYulWZKtQBH8jEw:1mKofi:nlFDn5eGXaZI3EcbqJ0gJQGujgZB_x4OsUMqW4dy7Pc', '2026-08-29 21:18:26.974862');
INSERT INTO `django_session` VALUES ('vgg32qnqzphkrv71mivlgz1jawvnxbpw', 'eyI0MS4yMzkuMzcuMTczIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHODW:GgZaHmQydD76yW4K-bbrqVrqbYiQUb2Bfx2OUpY1UlU', '2026-08-20 10:27:10.923844');
INSERT INTO `django_session` VALUES ('vk76cpdxt3zrkixusga4aifyytaitn1w', '.eJw9y7EOgjAUQNF_ebOQtiKimyaCNDAYB2EiD1JbAa1CCbHGfxcdXM_NfQElnktXvksD4jIyhzVg57QXqQzMoGjxJgeU4scTSK1lKxyNg1Gs6A2ab8p0fKdhLcnBqjEhQYp5X9omOj1qa6OtncYzVqLUuvk_T7478o0Ze-aFLPe7KlyIJaf7pLvGaWYFvD--AzIW:1mKyX7:CyXas9tL50QgCgguqCj0m8I4XZxa121OMKxZtaQtvuU', '2026-08-30 07:50:13.643566');
INSERT INTO `django_session` VALUES ('vlkshvxd315o92862d5e8lbziwl8lihx', 'eyI2Ni4yNDkuNjYuNjYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNWgB:BWy12XjIAsYlLlf75yTc9T_sul0pqITN9SKploToPvM', '2026-09-06 08:42:07.516968');
INSERT INTO `django_session` VALUES ('vll8nnespzolzvq1fmiyfqk0j91gvraz', 'eyIxODguNDMuMTM2LjMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJDW4:YR8OgbovzNbAPdue-0WxQ0WaKjhGCr_L9G_0CmZZI80', '2026-08-25 11:25:52.246831');
INSERT INTO `django_session` VALUES ('vn1vv53obe5mzrcw3v7v3x2xgwjzjxw9', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lw0L6:4TQP9PXwexmtwlIT1w5qAzDSI38cQSf-5Tke_z5IVpM', '2026-06-22 10:42:36.129379');
INSERT INTO `django_session` VALUES ('vpf8s50yysjpaiqq3hn1bjnbondtoq0z', 'eyI2Ni4yNDkuNjYuMzIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJkPj:AorA2XkrOTlQLEpR-VOknWjsQ3YBLBcv4ios64o7LPU', '2026-08-26 22:33:31.121067');
INSERT INTO `django_session` VALUES ('vpmsc6xi3aiu21gxl1aykiyxf5k7pn1n', '.eJxdj8sOgjAQRb-FrrVpCykdlyYu_QYy9AEIKYSWGGP8d1vCRpdz7iNz34SDoFxyyuuaCkYuBNfzNHR9JCfSTOi7DTu74wxwi32zBbs2g0kQyl_Yoh6tz4p5pOhM9ezjOrQ0W-ihBnqfjZ2uh_enoMfQp7Q0vHKIWqlKCYYCpeNl7aAyivEWhBGOOw0SALVVyjFZAjKwmDw2sVT69-R-xteSp4S4GevzwAVDeM5rdgnG2G10biyKgny-pQtYOA:1mPUCb:sQ8CP8wW5gC3jOfxPx_o8MF8MDR3krTMflnaD0kzYEk', '2026-09-11 18:27:41.743660');
INSERT INTO `django_session` VALUES ('vpxsn7muv47trgm8txnjuq7sekezn2g3', 'eyI5My4xNTguMTYxLjEwIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mFu5Y:dspjoQVW-BRrE4Ia5AM9gqusx5RSQsr1O6PfFms4zoU', '2026-08-16 08:04:48.208984');
INSERT INTO `django_session` VALUES ('vviiff48tku7im32er6s4h3da6r3wkfr', '.eJw9y0ELgjAYgOH_snMKy1mzY0IdhAhqS7rIl84pjX2Un1JG_z3r0PV5eV8sEuFShDIJOZdsxeAeuNY2xGascOBtD9b8eAKLaJ0JEHpq5kVHQN-09gvSYhxQUdnl-DxU6dEKpTPoYukrPo01lOaCeP0_-VAbd9s8SCLpUz2OGW_3OlIJbmOg3Zm9P4TjMnQ:1mPExn:ao-DMrRu7hce87WN5wE3tcORSEYFfOpkNxZq2dEdpS4', '2026-09-11 02:11:23.079868');
INSERT INTO `django_session` VALUES ('vw3e098aqhrxr0uu5v4mfwqp5fevthqi', 'eyIxNjguMTQ5LjY3LjE0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHowf:h_28iI96ZcRs45bPdBgsXyUM9Ur9Iy_GSZ1UPMRLLt4', '2026-08-21 14:59:33.175898');
INSERT INTO `django_session` VALUES ('vwxjkaeggohhifud5few40mkf8kt9r5a', 'eyIxMDQuNTcuNDYuMTMiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJt8R:Wi4BxwbsgJULa8IefZXL711ptEqj_x3sdaqqmPoC-Xw', '2026-08-27 07:52:15.174131');
INSERT INTO `django_session` VALUES ('vx4hxa7ibaj6duiev2zak2cogxj0kubr', 'eyIxNDEuOC4xNDIuNjYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKvf5:g-xrFZoxgZht614u55wFzzrehQBu0wRbpZKqFS-nvxE', '2026-08-30 04:46:15.203356');
INSERT INTO `django_session` VALUES ('w26mpf6ew9bu2ro28dc0ffz1wi9lsehp', 'eyIyMDMuODIuNzUuMTM0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mPKTu:SqiX4QkLBR_07ts2B0SNkDUw2nQsahmm0ateJgiiQSw', '2026-09-11 08:04:54.005212');
INSERT INTO `django_session` VALUES ('w95sx3ehzetbsltst5l3xe7z16zlwdlr', 'eyI2Ni4yNDkuNjkuOTYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHQNM:uV0Vr7pJeuTVHPn0HpBzq3K-QMIm7Oypph3xs-ft23E', '2026-08-20 12:45:28.490595');
INSERT INTO `django_session` VALUES ('wdy84gl0d4k97jmpq1dma7win7bt4mxs', 'eyIzNS4xODcuMTMyLjgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mLkgu:AsgPZ6dokarUrX3O-DcVS8tCppjKekXL3VNOWver908', '2026-09-01 11:15:32.471728');
INSERT INTO `django_session` VALUES ('wf065pblm30zqzgmpwmf8pn83hf43apw', 'eyI1LjI1NS4yMzEuMTE3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mKvSm:RbgOsPWyLShhd-OJT5If9tUppM6el70BPQl6k9-elB4', '2026-08-30 04:33:32.434916');
INSERT INTO `django_session` VALUES ('wf7vzm3qjftq5yjvbm31cad0zorn2ohx', 'eyIxMTMuMjMuMjguMjMiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHaXY:cvFOz60M8Ln7IWSs1mpRCKzR4l_K9-puFQrMNubWzV0', '2026-08-20 23:36:40.299641');
INSERT INTO `django_session` VALUES ('wg1qqcownqfis2iqxnksvn7s6k882b48', 'eyIzLjIzNi4xMzMuMTQxIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mN48h:wsJMRdY2FNWPyqHoBl2OTmrZ0DRYUKdQn5ErjsAJJrA', '2026-09-05 02:13:39.637479');
INSERT INTO `django_session` VALUES ('wgya95b054m5cc0km8fqn8t070pvylx2', 'eyIxODUuMjIwLjEwMS4xNyI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHZeL:CheWxnMDK4adrmQxt-Ly9vf2s0EDfMnjjd6LH2xgPV8', '2026-08-20 22:39:37.490759');
INSERT INTO `django_session` VALUES ('wid42wyiol9t8oqw3d8seox6jhy7f3m7', 'eyIxOTYuMjQyLjExNS4xNTIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKrla:K1MGggdTX8oSt-szJXDhUes5ZKEDrmM8yY3m5bDKX1o', '2026-08-30 00:36:42.626418');
INSERT INTO `django_session` VALUES ('wjje8nzv0zdmretuhkqmex9s2bq0do6q', '.eJw9y0ELgjAYgOH_snMONsWym9QmRaAgEXWRTdemLj-qDYvov2cduj4v7wuFEZ5HmFCKKV2gJRK3wLbaODRDlRWD9kKrH0-gAbRVAQjvDK3uTrhv6nhq5bDblyw9lvnI4u0pM0Wy3kibg29hGs-iVhKg_z-uj7PhQYldJaTgpDs0I7-w55WlTdjVo0fvD1lIMYY:1mHF6N:-RVyZjrromPn9SnnPB9d52SjRuY87cxtrYBQDMppygQ', '2026-08-20 00:43:11.874865');
INSERT INTO `django_session` VALUES ('wjxl0mxspeki417exj6pr4z6uerx51dz', 'eyI2Ni4yNDkuNzUuMjkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGXnU:CMtRXGytI8rSQpUmiGX0GAYRV0vwRanZH8CEOkw9PLY', '2026-08-18 02:28:48.191530');
INSERT INTO `django_session` VALUES ('wkit2fr91zizqcop8or7z76docu78qt6', 'eyI2Ni4yNDkuNjkuOTYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHErF:bcau4GzPcknnwOhY8wC4XsuDoatEdUIhBu6J-MqSkqY', '2026-08-20 00:27:33.304238');
INSERT INTO `django_session` VALUES ('woversbluuf8hx2197e769ak8wwcl2qq', 'eyIxMy41OC4xOTAuOTgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mL4h7:PjFQMRmkEAa64QKU932RIu6G5F2Zar9a-los1AiZ434', '2026-08-30 14:24:57.881654');
INSERT INTO `django_session` VALUES ('wpivvipmaff8852bhnhc40lsb0wkpcao', 'eyIzNC4yMDAuMjI4Ljg3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mKX2M:jmylMX8hTIO7UzEAlLpER0Yy3NgpiZ43ZRV31vKxJwg', '2026-08-29 02:28:38.982004');
INSERT INTO `django_session` VALUES ('wthj213794u63wy9xlsc9yji04bgezw9', 'eyIzNS4xODUuMTE2LjU1IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mI7sn:H1y6OpFCx_wAngdCBVsLjX-RKYmG2zt2pPis_0tDB38', '2026-08-22 11:12:49.300889');
INSERT INTO `django_session` VALUES ('wtlac8u4ogz11o6vulp74kkojvyfwmh5', 'eyI2Ni4yNDkuNjkuMTU0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mFu2n:bsc0yxmNvjKKl2Ievc1YiUgkBxhmmXP_lyPKSWPy24o', '2026-08-16 08:01:57.345455');
INSERT INTO `django_session` VALUES ('wx3fts9l2fr2mw06cps3rw7rlcsq5pv5', 'eyIxODguNTQuNzQuMTg5IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mKFL7:ZL2-hj1GlGrpJUr3OcH8TWvpZda5C76sIGtaLc3oM0k', '2026-08-28 07:34:49.338945');
INSERT INTO `django_session` VALUES ('wxoynjozao5v6vhivb1l3ncxqvva5hni', 'eyIxOTkuNTkuMTUwLjE4MiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mMUkR:sbNtRbUo2ZZieY9UQtf62EY2aCFRXKEMakKWy8KadfE', '2026-09-03 12:26:15.800629');
INSERT INTO `django_session` VALUES ('wzwm8z8ueizqhn11p9pjf0j8h404v8rp', 'eyIzNC4xNDUuNTEuMjQzIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mNuE7:pkvkDJHdviG66ss0vutUlxRmEqxJ2XjXbcaYP0Is6_0', '2026-09-07 09:50:43.613255');
INSERT INTO `django_session` VALUES ('x0pominve3nqhh4y7murjp3dhont0e23', 'eyI2OC4yMjkuNjQuMTQ2IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHZGx:L2vvAwY9LvNCs1rr4rHdQb8Nq1f6S1Z0RGIqipxd9eg', '2026-08-20 22:15:27.562754');
INSERT INTO `django_session` VALUES ('x1cj8ucoo08n7gxw20u11dn84cn4gq1q', 'eyIxOTkuNTkuMTUwLjE4MiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mMUhz:ADw4LuV3QrLnA5VttZkzbqAH_UK6Q1U6HFzFrWIYYbs', '2026-09-03 12:23:43.004556');
INSERT INTO `django_session` VALUES ('x1fgf4es6w7z7vq1rmumhbvbw2tk0oua', '.eJyrVjI21TO0NANiAz1DI3MlK6XEIt2czPSMEiUdpficxLz00sT0VLAwUCA9Pz89J1U3P7G0JMMovrgksQQklZZVlhuZn-NqHuATkBtZaBrsF2qY6pvkHx5eaRmQmBME1JiWmJyalJ-fDdfjaOBbUJHsFOiRWVUYlZHr5mZmap7qkmZkamhWEFFu7qtUCwCUfzFZ:1mIE7d:yi9af1Bm2vxvMQkcEOEQnY15Gb_NqPxfxCbavbWExNA', '2026-08-22 17:52:33.708046');
INSERT INTO `django_session` VALUES ('x1x9k4c0yedgvrbvx2j4gmhqz3qgoikw', '.eJxdj8FuxCAMRP-Fc4uAwCJ6rLTHfkNkjB3SRskKiKrdqv_esNrL9ug347HnR-hgpD5pqb2XRok3AeV1mafcxIsYF1inHSa64w5gb3ncK5VxTge0wzOMgF-0diV9HqubxG1tZY6yW-RDrfJjS7S8P7xPARlq7sfYWGWTV6AGVlE7xxzBMBtCdsEyIJLFAUNwp-CGCAH8ARV6SqzMEfrvyfvYrpdepRFgpt7nArV-b6W7zsttjzAXLX7_APpKWV4:1mPkpn:Y0cd2VQqIncLBHy20YkWPT4bjkeH3egJDZTlonUe4XQ', '2026-09-12 12:13:15.948115');
INSERT INTO `django_session` VALUES ('x37i4uduvumx9c1wphxq4w425hrzdopw', 'eyI2Ni4yNDkuNzUuMzAiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGW7v:_RNBLsHAgA05zPMlHYEiLd6WikfCpUrymUL8kq7Aoz8', '2026-08-18 00:41:47.973755');
INSERT INTO `django_session` VALUES ('x54guycj31u3o3knhhcfoa0puox106jo', 'eyIxOTIuOTkuMTAwLjk4IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mLi2l:m-TXDa6EtD42mUhOjK_9Z0R5LdYV6cKwru1Unh8A_4I', '2026-09-01 08:25:55.830959');
INSERT INTO `django_session` VALUES ('x6051mjutlbc1f1n8u7dwdb3zyiol3yr', 'eyI1NC4xNzQuNTMuMjM4IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mLaqa:S7Ces2zggT67sBd8VNqLDENyYJR25ZvO6-OtowJbRRQ', '2026-09-01 00:44:52.434959');
INSERT INTO `django_session` VALUES ('x6admi5qb84m92p4123jfs74bxuwk760', 'eyI1NC4xNTEuMTc3LjExOCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mIi53:VGhakN44ZWKgdYf0WUFjq-Od7k9rr5QGjUrpcVTMfMU', '2026-08-24 01:51:53.111004');
INSERT INTO `django_session` VALUES ('x9sgehe6f1xs9nxfnknt73hiy9bz81cn', 'eyIzNC4yMDAuMjI4Ljg3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mKWpc:f5-dHZnGgBZNLbZqyOmJvqpUlqWIJxyLz8jUHNueO0o', '2026-08-29 02:15:28.524439');
INSERT INTO `django_session` VALUES ('xawhv6hu0zh637eg4vzcj78rtu1xzche', 'eyI2Ni4yNDkuNjkuOTYiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mH3g5:H7DcH_UwOr464mXq5rJi1gWa0tBqfSza2-rVfjc2u4I', '2026-08-19 12:31:17.687912');
INSERT INTO `django_session` VALUES ('xerw73i1c6ys6wphe2q2ftrvj82tj8dl', 'eyI2OS4xNjAuMTYwLjUwIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mL2E4:6AUk7za9S17uV8Arfg8ft96_cR4vfgApQWlmZwBKFBg', '2026-08-30 11:46:48.531300');
INSERT INTO `django_session` VALUES ('xetphknsmie5m2su1u8rxx60i6twmcgm', 'eyI2Mi4xNDkuMTA1LjcyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mLk3g:8t5HsUVnJk9zjrwAL-McFlylAKeBfCmn5XAeQP8t9-g', '2026-09-01 10:35:00.042085');
INSERT INTO `django_session` VALUES ('xl6knjdcbcjoieuahq5nu37x55eaeors', 'eyIxMDQuMTk2LjIzNi4xMzQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNuDg:Z1_Q8dX0Nbc70MK-XOYAFVt2-Rwwf0zCuX4gLEnc-V4', '2026-09-07 09:50:16.410536');
INSERT INTO `django_session` VALUES ('xlpwr7wh6tklkk7gidhn6rojbnar57m8', 'eyIxNDYuNzUuMTU0LjIxNCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mLbYe:vkF4zcYpgBYVR4Ibrp5NFFJW4_xsGDSXCpeFrMQ8qSE', '2026-09-01 01:30:24.177073');
INSERT INTO `django_session` VALUES ('xp3247eab8drhj982vmhwjtwktyuw4r6', 'eyIyMDMuMTkyLjIyNS4xMzEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mJBVe:61JBJVxrUYqPdZ5b32PuFIfNZAtu0PqUngLLiSUIlsk', '2026-08-25 09:17:18.509505');
INSERT INTO `django_session` VALUES ('xrnro7p082n2aeyku1v9hxjqu4squ0m1', '.eJyrVjI0N9UzNLbQMzIF0mZmSlZKiUW6OZnpGSVKOkrxOYl56aWJ6algYaBAaXFqUXxmCpBrbgHjllQWgOSLS0pTUvNKlGoB3g4ZUA:1mO064:6YxV7OKILRZS1zJE1Y2kskyaSKNmtZrGEN35wkqRtLg', '2026-09-07 16:06:48.279602');
INSERT INTO `django_session` VALUES ('xronba6mos1eejp5wfx76p71epfdwpe0', '.eJxdj01uwyAQhe_CukEYQy26jJRlzmANw4xxa9kRYEVJ1LsXomxSzWq-9-bnPUSnB6lqdeJLQDos8xSL-BDjAuu0w0RP3ADsJY57pjTOoULTv0MP-ENrU8J3Hd0kbmtJs5fNIl9qluct0HJ8ed8WRMixHWNtlAmDAtWz8p21zB40syZk6wwDIhns0Tn76WzvwcFQocKBAitdl_578tmW26VFKQQYqeW5QM7XLTXXabnvHubUid8_2-RYVA:1md1G3:lJ7byk3RdaauM5qPuQl7eFe1uBKtieeua1svQZTgtec', '2026-10-19 02:23:11.296954');
INSERT INTO `django_session` VALUES ('xrp2y3nnp1p4xntkwhds1yg8iv90o11n', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luwnw:m_XPAAaSxDS2MBseby2f1MpPZsH6M6StreF-QRfEJXM', '2026-06-19 12:44:00.638112');
INSERT INTO `django_session` VALUES ('xryro07oinchq4vaeri4greacpf4gkvu', 'eyI2Ni4yNDkuNjkuMTAyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mPnfP:iD8YT_E2ECX0wKvhiCjKNWIa38HZfeEhTP7rMjn7Mi0', '2026-09-12 15:14:43.365772');
INSERT INTO `django_session` VALUES ('xz3ubhpc9kkak73qg811yfvf6rmzzczl', 'eyI5MS43Ni4xNzIuMjI0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJITK:1b_M_Jl1fztW3-ruOWEe3Q5xUiJISdb_pJJVt-V-7n4', '2026-08-25 16:43:22.038334');
INSERT INTO `django_session` VALUES ('y1ylt4ckiw3pe3ciuh6yd6rb1iic5g7n', 'eyI2Ni4yNDkuNjkuOTkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mG8jz:jfaXrCAnFksLoXwBlPRSWp9Mam5mlL3fn9HfcQ_XXQM', '2026-08-16 23:43:31.280992');
INSERT INTO `django_session` VALUES ('y2asphl6igzpn2xtuunsij2n50ghsmfu', 'eyIxNDQuNzYuMjIuMTMxIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mMUkm:47lTsXlRUE-3nFFd4gh0WxBYv7hP6f2BAFk6aO5piCQ', '2026-09-03 12:26:36.494587');
INSERT INTO `django_session` VALUES ('y3uuay8qrg2cfl0wvuxcf46eeesc8ue7', 'eyIzNC44My40MC4xMDEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMUlF:iLsmyEkctgC22JZwHUkk1sqTAMUW4z1Le2BfaEkNU-w', '2026-09-03 12:27:05.847151');
INSERT INTO `django_session` VALUES ('y7p0r1dym1zf1j2q9tyadbuc24d3koi3', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lyMTM:KTZdQMFXJfT2noJULWBD0s4TQQBqf-a9YYw_vpu-_EY', '2026-06-28 22:44:52.937686');
INSERT INTO `django_session` VALUES ('y9cpnxpld1czon69k5znfd2fv6p13lh6', 'eyIxOTguNTAuMTgyLjQwIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mHEHd:iTAuOfk3FmFg_1g9LUKBblTiGW3TjVlZMup9Z2YlBQw', '2026-08-19 23:50:45.021744');
INSERT INTO `django_session` VALUES ('ya5cyh31mw3hkbvgsjj72wlr2i7uymf9', '.eJw9y80KgkAUQOF3mXUOXSt_2oVGoUJEQ9FKbjHdsZkcstGE6N2zFm2_w3kxCEIOMOU-AIcZsDnDxjMVKcdGrDRYU4skfzwAWUtGehZbp_zy4dB901Pl441I1ssgFZNCNn6-BQHHvj9kXeeKaBgveJYna_X_0fc93gipJ7OK6muShV0sZRXEVbPYpUqz9wd_ZTHi:1mIIZn:BJskcXmz29pg1qCWro1YMCH-rxS8Dd73PbTRwbGkraY', '2026-08-22 22:37:55.606976');
INSERT INTO `django_session` VALUES ('ye0s41uj8eu8eapm986ecm3i25m4due9', 'eyIyMTMuMTgwLjIwMy44OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPet5:Su-ZdX7z22DfrSIma2xNl70lXjmnCrf6FvoP1GaX4n4', '2026-09-12 05:52:15.839035');
INSERT INTO `django_session` VALUES ('ygvpuqtfzre0ff578j6zpe1w1setiex8', '.eJxdj01uwyAQhe_CukEYQy26jJRlzmANw4xxa9kRYEVJ1LsXomxSzWq-9-bnPUSnB6lqdeJLQDos8xSL-BDjAuu0w0RP3ADsJY57pjTOoULTv0MP-ENrU8J3Hd0kbmtJs5fNIl9qluct0HJ8ed8WRMixHWNtlAmDAtWz8p21zB40syZk6wwDIhns0Tn76WzvwcFQocKBAitdl_578tmW26VFKQQYqeW5QM7XLTXXabnvHubUid8_2-RYVA:1mckmr:uPuEnjcf0qOyPIq0eym1QdtOf2byHX09gSsaApfPHDo', '2026-10-18 08:47:57.184027');
INSERT INTO `django_session` VALUES ('ygymd56gn0yi024d26w076yhb5z5jwkb', 'eyIxMy41OC4xOTAuOTgiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mL4h8:sHEmhKWTW0pTE6_2AU4uQhJPVn3q3nsuVfxW8FKchH0', '2026-08-30 14:24:58.099232');
INSERT INTO `django_session` VALUES ('yi6ybakpuvx5vtt8tv9eeqfrnu15t51c', 'eyIxMDQuMTk2LjIzNi4xMzQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mNuDg:Z1_Q8dX0Nbc70MK-XOYAFVt2-Rwwf0zCuX4gLEnc-V4', '2026-09-07 09:50:16.632872');
INSERT INTO `django_session` VALUES ('yircc3x7qm7tkkoenqje9xl9etyfhnxp', 'eyI0MS4xODcuMTE0LjQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mI861:Z-sVgc7Fb0gMwA3TlGjplxFOyIBw_MHs0CcytsKmCyo', '2026-08-22 11:26:29.246349');
INSERT INTO `django_session` VALUES ('yiw0fkqletywmhoppztqdp7j5u1oa3mm', 'eyI1NC4xOTAuMTU3LjgxIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJEvu:Ym0w5UAq6aaRyvP651JIJd9CIeBzmqAjrPzPvdhPZPc', '2026-08-25 12:56:38.659306');
INSERT INTO `django_session` VALUES ('yk525e440kuse3l9jxfaxab8r467tj78', 'eyIzNC43NC42NS4yNDMiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mGvOX:VL9GLab_MpiOiLnkb-r0LpUSxzt7VA5u9ac7naSISAQ', '2026-08-19 03:40:37.913705');
INSERT INTO `django_session` VALUES ('ykj66pu0h3dfhgamo140i6gknbrdm68j', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lwTRP:6yIu1G5LbjrjXnmRxqBupsCLMo3DX8O9XCvXZ72oQWA', '2026-06-23 17:47:03.663631');
INSERT INTO `django_session` VALUES ('yktlxi521npaleth37gz92637xw3u8de', 'eyIxMDcuMTc0LjE1MC4xNDAiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mLJAD:AsxU4BM48X-YgIuUTvu520ZXvTmUjPBPiFVVjoJKAcE', '2026-08-31 05:51:57.971239');
INSERT INTO `django_session` VALUES ('yqdhtovnz3oupre97wszizcje9urdqov', 'eyI2Ni4yNDkuNzAuNjIiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mOvIc:VYkML-N1fcu56zhB5QNPOE4vIVT6djSMr9CYCBmxaJ4', '2026-09-10 05:11:34.945110');
INSERT INTO `django_session` VALUES ('ysnor0keqik3pkb0qv9y7xaw30lvtawt', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvLNP:2NEYftKwxexY-NI3Y6111kecy2ycO11oXcvU8i-n0cM', '2026-06-20 14:58:15.296764');
INSERT INTO `django_session` VALUES ('yubxz89q9cmip9cmte5gcn2kswxpsv4g', '.eJyrVjI21zMyNtQzM9czNLRQslJKLNLNyUzPKFHSUYrPScxLL01MTwULAwUMLSyAis30DM0N9EzRFFua6BkaWeiZWeqZmiLL1AIAAScaCg:1mFw6v:YFwVbrw79MTR-eI_6QdmT54fFaRS1hNL0lpn65GUpw0', '2026-08-16 10:14:21.550699');
INSERT INTO `django_session` VALUES ('yuvg6lzq79pg5um5817j61m0bhpar7k0', 'eyIxNy4xMjEuMTE0Ljc3IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mGTCZ:pSd3NF95uUhHZZRgmo74kA9rcMzXu1W3g69faF8rJaA', '2026-08-17 21:34:23.315994');
INSERT INTO `django_session` VALUES ('z0pq5qe90u7eps5n6mz72kg9f2kzi9l1', 'eyI5My4xNTguMTYxLjQ0IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mICGH:BP1ExdfIOtZb3m7xg2FCDp9cNtxVITCH5R0dxpDZQvY', '2026-08-22 15:53:21.120605');
INSERT INTO `django_session` VALUES ('z3fh2arwvq8csjhoqzhrasduw3dihtrp', 'eyIxNjcuMTE0LjIxMS4xNTEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mIIZY:L5rmalwxlVCpVUjpthBbTvdVRQquYIvHeItgdNu2Gi0', '2026-08-22 22:37:40.992812');
INSERT INTO `django_session` VALUES ('z4gdmurmjro8sme1rvhvoqle23bhrins', 'eyIxMjQuMTI2Ljc4LjE3MCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mIJcz:ZzvLzgXmrezBTkcLW2zXlGbgsgGawAaGXuQImrLaHkk', '2026-08-22 23:45:17.819623');
INSERT INTO `django_session` VALUES ('z4v98xnzxookyx3vu52dnowce3wg2hjt', 'eyIzNC4xNDUuNTEuMjQzIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mNuE7:pkvkDJHdviG66ss0vutUlxRmEqxJ2XjXbcaYP0Is6_0', '2026-09-07 09:50:43.681874');
INSERT INTO `django_session` VALUES ('za2faxvaipkevo9h4lzn7xp8bk5joqqk', 'eyI3NC45MS4yNi4yNiI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPTLX:3P_aNH6WoRjH-JGFuTtC-oBBhl5twd7B7VBuE8fYADo', '2026-09-11 17:32:51.992477');
INSERT INTO `django_session` VALUES ('zao1b93a1hc4ns1q5p02rmajrxxony9c', 'eyIxMDIuMTIzLjY1LjE5OCI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHIx2:HDAVNBALJxKyCF4UXDQo67x8aWErsrmsQYuvLshvn5I', '2026-08-20 04:49:48.990918');
INSERT INTO `django_session` VALUES ('zbvl0acin6vaupl3es4i8sw7475ygthd', 'eyIxNTcuNTUuMzkuMjUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mK40W:WcesfCDj_2nQSzTSXVBuYaA0G6cU5GA2Fzx8LFQ-WH4', '2026-08-27 19:28:48.400257');
INSERT INTO `django_session` VALUES ('zd4j0nch7wbpj9ti4s408n9alu2pa5u0', '.eJxdj8sOgjAQRb-FrrVpCykdlyYu_QYy9AEIKYSWGGP8d1vCRpdz7iNz34SDoFxyyuuaCkYuBNfzNHR9JCfSTOi7DTu74wxwi32zBbs2g0kQyl_Yoh6tz4p5pOhM9ezjOrQ0W-ihBnqfjZ2uh_enoMfQp7Q0vHKIWqlKCYYCpeNl7aAyivEWhBGOOw0SALVVyjFZAjKwmDw2sVT69-R-xteSp4S4GevzwAVDeM5rdgnG2G10biyKgny-pQtYOA:1mPi3B:128VvrfM4NBaZwdDLNNxSlH0PYkGjjjfwlZj8jP7ouE', '2026-09-12 09:14:53.386551');
INSERT INTO `django_session` VALUES ('zeszfxosj3px6me4zff6n9agq5gvxk5q', '.eJxdj0kOwjAMRe-SNURNk1DKEoklZ6ic2mkLHVAGIUDcnQQhJLBXft_fw4OJsuJFSsF2DNx6HLo-sBVrRpi7CB29cQYQQ99ET64ZMEElf6GB9kxzVvCUrAtvlzm4wfDcwj-q58cFadx_en8G9OD7vEwVUhmjBYAVRChJWm002LoSVlNRYolbqEtlC1KbCrWuU0jcWiGFbikN_TvyAt5fF5frw3iPBgYnEnY00WTIJRxc_PrC7ZJ_9iEizYE9X9_dXW8:1mAa3A:zA70iTLtr2ixhjJw7FD3LEfglREx5EkXZHG0pz1Fwvs', '2026-08-01 15:40:20.322931');
INSERT INTO `django_session` VALUES ('zjlwmluqulp163v964mxvzcmslvkqoq3', 'eyI2OS4xNjAuMTYwLjUwIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mL2EY:GUX6Q4lDGJSmPJh2IwZRag7LCZW4xN5ueyDphLmhDs0', '2026-08-30 11:47:18.221770');
INSERT INTO `django_session` VALUES ('zn7dkr312y82hwd4r8ga0cyfbxjo6t3s', 'eyI5My4xNjguMS4xOTQiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mMVJT:alydJjPIr3BcLRmeJYv-WFxySddqsrgCy5_EUWO3sMg', '2026-09-03 13:02:27.263610');
INSERT INTO `django_session` VALUES ('zo6j0c9pg6sdy8yqk0g1o1611hxxxn1t', 'eyIyMTMuMTgwLjIwMy44OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mPiqP:YLmk5b0MfJQm9yTxcSN89lrA-tV-r35ZfFXuzTVHxXk', '2026-09-12 10:05:45.621157');
INSERT INTO `django_session` VALUES ('zq1yrzx623trcaihgnvb3cebpphw300x', 'eyIyMDMuODIuNzUuMTMyIjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mJOOa:BiDmW_j2gPDIIY4M8zFywhKjbJ3CzsTS142wcUr26Aw', '2026-08-25 23:02:52.008247');
INSERT INTO `django_session` VALUES ('zs0kx8cm8umojiifxi6qs2z5uzo8w1tv', '.eJxdj8sOgjAQRf-la22mpaXUpYlLv4FMmQooAdNHjBr_XWrc6HLOfWTuk4kGuJFcSOBCaLZjGLbT2A-JbVg74dxn7P0HF4A5DW2OPrQjrdDWv9Bhd_FzUei8RhfeLXMKo-PFwr9q5MeF_LT_en8KBozDmgZSTpNR1MCJEMk6ZQgr0F1FVhqh4WSw0nVdA0qU0BAKYQisVdIrVUr_nvyc6X4tU2LK5Ocy8Iox3pZQXIfpkR2OQbDXG3ZdV9g:1mPkgJ:BmlsPzshzS7w8MOsixTKw79TXymRU3O3pOipWcVA0zc', '2026-09-12 12:03:27.542573');
INSERT INTO `django_session` VALUES ('zt1n67jkusk7yncn62n6gttm8iry86qh', 'eyIyMDcuNDYuMTMuMTMiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mLtgK:-qMyn6O0zMFe2FmZYg81PzbrOclCEv1x5PNtgVxF0NA', '2026-09-01 20:51:32.877545');
INSERT INTO `django_session` VALUES ('zu4qvaq9x9p5145iwnae2p3z0afeda56', 'eyI5Mi4xMTguMTYwLjkiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mHZnt:krPzziNR61xyKXz4kznJlWDrxcBTDnjs3l9bEYXDRvE', '2026-08-20 22:49:29.289418');
INSERT INTO `django_session` VALUES ('zun1iua8lvewgvp2v6wdcdttiihzldw5', 'eyI3Ny45NS42NS42OSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIifQ:1mHEHf:SYuEHvrDrkuVsBXc7RrgYnr39ESamY9IXg3sh1zZevU', '2026-08-19 23:50:47.560312');
INSERT INTO `django_session` VALUES ('zw9736t8x8mze52nvwxlu6wsn079qngz', 'eyI2Ni4yNDkuNjYuMzUiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1mKj4K:LLPr5Mc8XrXCfBFZ2d9YcDaOnmp7tFIAJ3YMB74F-kE', '2026-08-29 15:19:28.304882');
INSERT INTO `django_session` VALUES ('zyjku4o0havljnx6fx6kkyh8mk7da02f', 'eyI2Ni4yNDkuNjQuMTI2IjoiYXItbGlnaHQiLCJfbGFuZ3VhZ2UiOiJhciJ9:1mNyt6:Q1Cd4gOq-8vLW9nccp5mqC1UtkRxLMYCYf5csvUL_1E', '2026-09-07 14:49:20.853795');

-- ----------------------------
-- Table structure for home_admin
-- ----------------------------
DROP TABLE IF EXISTS `home_admin`;
CREATE TABLE `home_admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_login` datetime NULL DEFAULT NULL,
  `date_joined` datetime NULL DEFAULT NULL,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `img` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` tinyint NULL DEFAULT 1 COMMENT '0: admin 1: super user 2: employee',
  `address` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position_id` tinyint NULL DEFAULT NULL COMMENT 'employee or superuser\'s position. 0: not allocated',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_admin
-- ----------------------------
INSERT INTO `home_admin` VALUES (1, 'yarxalo@gmail.com', 'pbkdf2_sha256$260000$HGxHXuc3d72h3NGSBw7KXR$YlbzF2by1ul895NE99iV/kC6Ep1KHG/q6TnVzA0Is6U=', '2021-10-25 06:01:30', '2021-05-07 05:40:43', 'Yaroslav Xalabuda', '/img/user_images/72f277bb-287c-4da7-af40-b03c0b5a62fc.png', 0, 'Moscow', 1);
INSERT INTO `home_admin` VALUES (4, 'ivan@gmail.com', 'pbkdf2_sha256$216000$sSQGOeaqskf7$M2wE3i4h3BkLOBtYSELPSKz5gKBD0IYDRut+tnWZweg=', '2021-05-13 10:12:07', '2021-05-07 05:40:43', 'ronaldinho', '/img/user_images/5d0c01e2-737b-43f0-8c74-3aafe3f20cdd.png', 2, 'moscow', 2);
INSERT INTO `home_admin` VALUES (6, 'ronaldo@gmail.com', 'pbkdf2_sha256$260000$d4rgS6cS83isDIiyj9xpPU$7qw0dWnX7zqJj3F710beod2yh5jpNW1Prc27Xo3Cb9w=', '2021-05-06 03:34:18', '2021-05-07 05:40:43', 'Ronaldo', '', 2, 'risbon', 7);
INSERT INTO `home_admin` VALUES (7, 'messi@gma.net', 'pbkdf2_sha256$260000$ePxqA57fZc8ocqGdw6BBzf$KFqygJ2m5swJTtj4NwZoHoa1DaGnQDcPfxYeWqdobOI=', '2021-05-06 03:45:08', '2021-05-07 05:40:43', 'mes', '', 1, 'madrid', 8);
INSERT INTO `home_admin` VALUES (9, 'demaria@gmail.com', 'pbkdf2_sha256$260000$bGEoe1ELh6I4k2uvOKyKaN$oH3nlO9UYlda+oU2gD7mie6JkxQDTXZFjRbZvu8HcYg=', '2021-05-06 17:20:06', '2021-05-07 05:40:43', 'demaria', '', 2, '', 1);
INSERT INTO `home_admin` VALUES (10, 'officialcontactservices@gmail.com', 'pbkdf2_sha256$216000$PsHgox2tqSDC$yx9k669xd+PKmyHaWbEQcwkkpVWcd2lTCTDX3H7/UCg=', '2021-05-09 09:08:54', '2021-05-09 07:49:43', 'Elzubair1', '/img/user_images/f06d78c1-dc9b-4e52-a18f-70877f0370d2.png', 2, 'KSA', 3);
INSERT INTO `home_admin` VALUES (11, 'booctepdotcom2030@gmail.com', 'pbkdf2_sha256$216000$gi9Su98oGCnl$565IbwTzP6KYGLGpt6uxuR0zWzDop6kWjmzq2jIhxtM=', '2021-05-09 09:15:46', NULL, 'Ahmed', '', 1, 'London', 1);
INSERT INTO `home_admin` VALUES (12, 'hilalu@gmail.com', 'pbkdf2_sha256$216000$NCqLTykPS0rC$EvN6udP7gETpMrJb0okyniXjQ7aZvU3MaqnjXLb97FI=', '2021-05-09 10:41:50', NULL, 'Khalid', '', 1, 'London', 1);
INSERT INTO `home_admin` VALUES (13, 'test@gmail.com', 'pbkdf2_sha256$216000$3DTVXnq2Zp8U$ZZcSmcix8YZO21sc4GLboL2p9j1VzglkWF0TtAxh4eA=', '2021-05-09 10:41:58', NULL, 'test super user', '', 1, 'sdfsdfsdf', 4);
INSERT INTO `home_admin` VALUES (14, 'ma@gmail.com', 'pbkdf2_sha256$216000$R9C7d4AAEU8Z$nvL+PJECPdhc9c4V9G5Czh9BfU9j5bNNugdvwWGj22o=', '2021-05-09 10:46:35', NULL, 'Test', '', 1, 'London', 1);
INSERT INTO `home_admin` VALUES (15, 'ak@gmail.com', 'pbkdf2_sha256$216000$rUeYf1rgw6LJ$aeJcCyxYA2ykjPjD3VJOaaKYiD0aiMzwk78I440q1LM=', '2021-05-09 10:48:11', NULL, 'Another', '', 1, 'ryiadh', 2);
INSERT INTO `home_admin` VALUES (16, 'khalid@gmail.com', 'pbkdf2_sha256$216000$Y2jHM7TAwzT7$oafrHDuRRFa06S84jEMoXBTNCm1MYzazBTuUM5pFXiE=', '2021-08-18 20:22:44', NULL, 'Khalid', '', 1, 'England ', 8);
INSERT INTO `home_admin` VALUES (17, 'kopchikvlada@mail.ru', 'pbkdf2_sha256$260000$fKLTJieApBWoXlaLeShkaT$kZg6R4VppJeHsFiCbyHOPPBT+HIslyO/6/RXEMQ3PQg=', '2021-10-19 15:12:38', NULL, 'kopchik', '', 1, 'tomsk', 1);
INSERT INTO `home_admin` VALUES (18, 'kop@gmail.com', 'pbkdf2_sha256$260000$5vn0OenR0veES97cMeBeqN$ZwSQlvhAUPwJAjMuWbo8qQXVpDWo6592wcY9G1/h8O8=', '2021-10-19 15:16:13', NULL, 'kop', '', 1, 'tomsk', 1);

-- ----------------------------
-- Table structure for home_admincontrol
-- ----------------------------
DROP TABLE IF EXISTS `home_admincontrol`;
CREATE TABLE `home_admincontrol`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `priority` int NULL DEFAULT NULL,
  `student_tax` int NULL DEFAULT NULL,
  `teacher_tax` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_admincontrol
-- ----------------------------
INSERT INTO `home_admincontrol` VALUES (1, 0, 10, 5);

-- ----------------------------
-- Table structure for home_adminnotifications
-- ----------------------------
DROP TABLE IF EXISTS `home_adminnotifications`;
CREATE TABLE `home_adminnotifications`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `sender_id` int NULL DEFAULT NULL,
  `receiver_id` int NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `is_read` tinyint NULL DEFAULT 0,
  `good_bad` tinyint NULL DEFAULT NULL COMMENT '1: good 2: bad 0: all',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_adminnotifications
-- ----------------------------
INSERT INTO `home_adminnotifications` VALUES (1, 'Hello ser', 'this is good news', 1, 4, '2021-05-07 06:32:05', 0, 1);
INSERT INTO `home_adminnotifications` VALUES (2, 'hello teacher', 'You are successfully rgistgeed', 1, 6, '2021-05-07 11:19:13', 0, 1);
INSERT INTO `home_adminnotifications` VALUES (3, 'HHH', 'wwwww', 1, 4, '2021-05-07 12:12:25', 1, 2);
INSERT INTO `home_adminnotifications` VALUES (5, 'every body', 'goooddddd', 1, 4, '2021-05-07 12:12:41', 1, 1);
INSERT INTO `home_adminnotifications` VALUES (6, 'every body', 'goooddddd', 1, 4, '2021-05-07 12:12:41', 1, 1);
INSERT INTO `home_adminnotifications` VALUES (7, 'are you there?', 'It is not good', 1, 4, '2021-05-07 12:44:38', 1, 2);
INSERT INTO `home_adminnotifications` VALUES (8, 'Change something', 'yarxalo@gmail.com', 1, 6, '2021-05-09 07:52:57', 0, 1);
INSERT INTO `home_adminnotifications` VALUES (10, 'Hi', 'bad job', 1, 10, '2021-05-09 07:55:14', 1, 2);
INSERT INTO `home_adminnotifications` VALUES (12, 'Change something', 'Hello', 10, 7, '2021-05-09 07:55:54', 0, 3);
INSERT INTO `home_adminnotifications` VALUES (17, 'Thanks', 'ivan@gmail.com\nivan@gmail.com\nivan@gmail.com\n', 4, 7, '2021-05-13 10:12:43', 0, 3);
INSERT INTO `home_adminnotifications` VALUES (19, 'Thanks', 'ivan@gmail.com\nivan@gmail.com\nivan@gmail.com\n', 4, 11, '2021-05-13 10:12:43', 0, 3);
INSERT INTO `home_adminnotifications` VALUES (20, 'Thanks', 'ivan@gmail.com\nivan@gmail.com\nivan@gmail.com\n', 4, 12, '2021-05-13 10:12:43', 0, 3);
INSERT INTO `home_adminnotifications` VALUES (21, 'Thanks', 'ivan@gmail.com\nivan@gmail.com\nivan@gmail.com\n', 4, 13, '2021-05-13 10:12:43', 0, 3);
INSERT INTO `home_adminnotifications` VALUES (22, 'Thanks', 'ivan@gmail.com\nivan@gmail.com\nivan@gmail.com\n', 4, 14, '2021-05-13 10:12:43', 0, 3);
INSERT INTO `home_adminnotifications` VALUES (23, 'Thanks', 'ivan@gmail.com\nivan@gmail.com\nivan@gmail.com\n', 4, 15, '2021-05-13 10:12:43', 0, 3);

-- ----------------------------
-- Table structure for home_admintarget
-- ----------------------------
DROP TABLE IF EXISTS `home_admintarget`;
CREATE TABLE `home_admintarget`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sale_target` int NOT NULL,
  `course_target` int NOT NULL,
  `user_target` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_admintarget
-- ----------------------------
INSERT INTO `home_admintarget` VALUES (1, 10, 80, 0);

-- ----------------------------
-- Table structure for home_card
-- ----------------------------
DROP TABLE IF EXISTS `home_card`;
CREATE TABLE `home_card`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `card_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `card_number` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bank_number` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bank_user`(`user_id`) USING BTREE,
  CONSTRAINT `bank_user` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_card
-- ----------------------------
INSERT INTO `home_card` VALUES (8, 40, 'debit card', '1234567890', '1920');
INSERT INTO `home_card` VALUES (9, 96, 'paypal', '123456789', '254');

-- ----------------------------
-- Table structure for home_discount
-- ----------------------------
DROP TABLE IF EXISTS `home_discount`;
CREATE TABLE `home_discount`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `discount` int NOT NULL DEFAULT 0,
  `not_apply_course` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `expire_date` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_discount
-- ----------------------------
INSERT INTO `home_discount` VALUES (7, 17, '64', '2021-12-06', 'hh');

-- ----------------------------
-- Table structure for home_expense
-- ----------------------------
DROP TABLE IF EXISTS `home_expense`;
CREATE TABLE `home_expense`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `buyer` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` float NOT NULL,
  `description` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_expense
-- ----------------------------
INSERT INTO `home_expense` VALUES (1, 'g', 'a', 3, 'a', NULL);
INSERT INTO `home_expense` VALUES (2, 'server', 'Elzubair', 400, 'ingg', NULL);

-- ----------------------------
-- Table structure for home_logtime
-- ----------------------------
DROP TABLE IF EXISTS `home_logtime`;
CREATE TABLE `home_logtime`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `in_time` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `out_time` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_logtime
-- ----------------------------
INSERT INTO `home_logtime` VALUES (1, 1, '2021-05-09 13:09:44', '');
INSERT INTO `home_logtime` VALUES (2, 1, '2021-05-09 13:18:04', '');
INSERT INTO `home_logtime` VALUES (3, 1, '2021-05-09 13:19:06', '');
INSERT INTO `home_logtime` VALUES (4, 1, '2021-05-09 14:10:41', '');
INSERT INTO `home_logtime` VALUES (5, 1, '2021-05-09 14:15:21', '');
INSERT INTO `home_logtime` VALUES (6, 1, '2021-05-11 10:01:53', '');
INSERT INTO `home_logtime` VALUES (7, 1, '2021-05-11 11:46:19', '');
INSERT INTO `home_logtime` VALUES (8, 1, '2021-05-11 12:10:14', '');
INSERT INTO `home_logtime` VALUES (9, 4, '2021-05-11 12:14:01', '');
INSERT INTO `home_logtime` VALUES (10, 1, '2021-05-11 12:16:44', '');
INSERT INTO `home_logtime` VALUES (11, 4, '2021-05-11 12:18:39', '');
INSERT INTO `home_logtime` VALUES (12, 1, '2021-05-11 12:29:54', '');
INSERT INTO `home_logtime` VALUES (13, 1, '2021-05-11 12:51:48', '');
INSERT INTO `home_logtime` VALUES (14, 1, '2021-05-11 12:57:05', '');
INSERT INTO `home_logtime` VALUES (15, 4, '2021-05-11 13:09:14', '');
INSERT INTO `home_logtime` VALUES (16, 4, '2021-05-11 13:26:42', '');
INSERT INTO `home_logtime` VALUES (17, 4, '2021-05-11 13:29:55', '2021-05-11 14:19:09');
INSERT INTO `home_logtime` VALUES (18, 1, '2021-05-11 14:19:49', '2021-05-11 14:43:20');
INSERT INTO `home_logtime` VALUES (20, 4, '2021-05-11 14:44:28', '');
INSERT INTO `home_logtime` VALUES (21, 1, '2021-05-11 17:50:56', '');
INSERT INTO `home_logtime` VALUES (22, 4, '2021-05-11 17:57:22', '');
INSERT INTO `home_logtime` VALUES (23, 1, '2021-05-12 01:54:27', '');
INSERT INTO `home_logtime` VALUES (24, 1, '2021-05-12 04:46:41', '');
INSERT INTO `home_logtime` VALUES (26, 4, '2021-05-12 06:15:23', '2021-05-12 06:15:58');
INSERT INTO `home_logtime` VALUES (27, 1, '2021-05-12 06:16:17', '2021-05-12 06:18:19');
INSERT INTO `home_logtime` VALUES (28, 4, '2021-05-12 06:18:29', '2021-05-12 06:23:55');
INSERT INTO `home_logtime` VALUES (29, 1, '2021-05-12 06:24:17', '2021-05-12 06:25:16');
INSERT INTO `home_logtime` VALUES (30, 4, '2021-05-12 06:25:38', '');
INSERT INTO `home_logtime` VALUES (31, 1, '2021-05-12 06:33:02', '');
INSERT INTO `home_logtime` VALUES (32, 4, '2021-05-12 06:34:11', '');
INSERT INTO `home_logtime` VALUES (33, 4, '2021-05-12 06:36:55', '2021-05-12 07:17:54');
INSERT INTO `home_logtime` VALUES (34, 1, '2021-05-12 07:19:50', '2021-05-12 07:19:56');

-- ----------------------------
-- Table structure for home_messages
-- ----------------------------
DROP TABLE IF EXISTS `home_messages`;
CREATE TABLE `home_messages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `course_id` int NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `time` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `delete_id` int NULL DEFAULT 0 COMMENT 'who is deleted',
  `is_read` tinyint NOT NULL DEFAULT 0 COMMENT '0:unread 1:read',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `message_sender_user`(`sender_id`) USING BTREE,
  INDEX `message_receiver_user`(`receiver_id`) USING BTREE,
  CONSTRAINT `message_receiver_user` FOREIGN KEY (`receiver_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `message_sender_user` FOREIGN KEY (`sender_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_messages
-- ----------------------------
INSERT INTO `home_messages` VALUES (15, 1, 40, 29, 'Hi', '2021-05-20 17:48:03', 40, 1);
INSERT INTO `home_messages` VALUES (16, 40, 1, 29, 'Ok', '2021-05-20 19:35:35', 40, 1);
INSERT INTO `home_messages` VALUES (17, 2, 43, 29, 'Hi', '2021-05-20 19:36:46', 40, 0);
INSERT INTO `home_messages` VALUES (18, 2, 40, 29, 'there', '2021-05-20 19:36:49', 40, 1);
INSERT INTO `home_messages` VALUES (19, 1, 40, 29, 'OK OK', '2021-05-20 19:37:45', 40, 1);
INSERT INTO `home_messages` VALUES (20, 40, 1, 29, 'Hi', '2021-05-20 19:38:41', 40, 1);
INSERT INTO `home_messages` VALUES (21, 40, 1, 29, 'Hi', '2021-05-20 19:38:44', 40, 1);
INSERT INTO `home_messages` VALUES (22, 40, 1, 29, 'Hi', '2021-05-20 19:38:45', 40, 1);
INSERT INTO `home_messages` VALUES (23, 1, 40, 29, 'Ok as', '2021-05-20 19:39:35', 40, 1);
INSERT INTO `home_messages` VALUES (24, 2, 40, 29, 'Test', '2021-05-20 19:40:16', 40, 1);
INSERT INTO `home_messages` VALUES (25, 40, 1, 29, 'Ok', '2021-05-20 19:41:19', 40, 1);
INSERT INTO `home_messages` VALUES (26, 40, 43, 29, 'hhhhhhhhhhhh', '2021-05-20 19:41:46', 40, 1);
INSERT INTO `home_messages` VALUES (27, 40, 1, 29, 'hhhhhhhhhhhh', '2021-05-20 19:41:55', 40, 1);
INSERT INTO `home_messages` VALUES (28, 40, 2, 29, 'Hi', '2021-05-20 19:47:49', 40, 1);
INSERT INTO `home_messages` VALUES (29, 40, 2, 29, 'OK', '2021-05-20 20:02:54', 40, 1);
INSERT INTO `home_messages` VALUES (30, 40, 1, 29, 'MKL', '2021-05-20 20:02:59', 40, 1);
INSERT INTO `home_messages` VALUES (31, 2, 40, 29, 'HII', '2021-05-20 20:04:36', 40, 1);
INSERT INTO `home_messages` VALUES (32, 1, 40, 29, 'OKK', '2021-05-20 20:05:17', 40, 1);
INSERT INTO `home_messages` VALUES (33, 40, 2, 29, 'Hi', '2021-05-20 20:09:28', 40, 1);
INSERT INTO `home_messages` VALUES (34, 1, 40, 29, 'UI', '2021-05-21 06:28:23', 40, 1);
INSERT INTO `home_messages` VALUES (35, 1, 40, 29, 'OK', '2021-05-21 06:30:15', 40, 1);
INSERT INTO `home_messages` VALUES (36, 43, 40, 29, 'Hello', '2021-08-01 20:52:33', 0, 1);
INSERT INTO `home_messages` VALUES (37, 43, 93, 56, 'Hello', '2021-09-12 10:54:36.601428000', 0, 1);
INSERT INTO `home_messages` VALUES (38, 93, 43, 56, 'Hello', '2021-09-12 10:54:36.601428000', 0, 1);
INSERT INTO `home_messages` VALUES (40, 43, 93, 56, 'how are you?', '2021-09-13 00:37:59', 0, 1);
INSERT INTO `home_messages` VALUES (41, 93, 43, 56, 'I am pretty good thanks', '2021-09-13 00:38:35', 0, 1);
INSERT INTO `home_messages` VALUES (42, 43, 93, 56, 'sounds good', '2021-09-13 00:38:47', 0, 1);
INSERT INTO `home_messages` VALUES (43, 93, 43, 56, 'what about you?', '2021-09-13 00:46:38', 0, 1);
INSERT INTO `home_messages` VALUES (44, 43, 93, 56, 'I am aslo pretty good :)', '2021-09-13 00:46:49', 0, 1);
INSERT INTO `home_messages` VALUES (45, 93, 43, 56, 'nice nice', '2021-09-13 00:46:55', 0, 1);
INSERT INTO `home_messages` VALUES (46, 93, 43, 56, 'dont\' want to remove', '2021-09-13 00:47:19', 0, 1);
INSERT INTO `home_messages` VALUES (47, 93, 43, 56, 'hha', '2021-09-13 00:53:19', 0, 0);
INSERT INTO `home_messages` VALUES (48, 93, 43, 56, ':)_', '2021-09-13 00:58:01', 0, 0);
INSERT INTO `home_messages` VALUES (49, 40, 43, 29, 'hgsgghl', '2021-09-13 09:35:43', 0, 1);
INSERT INTO `home_messages` VALUES (50, 40, 43, 29, 'Ni', '2021-09-13 09:35:51', 0, 1);
INSERT INTO `home_messages` VALUES (51, 43, 40, 29, 'Hi', '2021-09-13 09:37:35', 0, 1);
INSERT INTO `home_messages` VALUES (52, 43, 40, 29, 'Hi', '2021-09-13 09:37:38', 0, 1);
INSERT INTO `home_messages` VALUES (85, 45, 43, 64, 'sadfsaf', '2021-10-18 02:48:40', 0, 1);
INSERT INTO `home_messages` VALUES (86, 45, 43, 64, 'gggggggggggg', '2021-10-18 02:51:39', 0, 1);
INSERT INTO `home_messages` VALUES (87, 45, 43, 64, 'tttttttttttt', '2021-10-18 02:51:43', 0, 1);
INSERT INTO `home_messages` VALUES (88, 45, 43, 64, 'sadfsadfsa gggg fgsgfs ggggg', '2021-10-18 11:07:58', 0, 1);
INSERT INTO `home_messages` VALUES (89, 45, 43, 64, 'qqqqqqqqqqqqqqqqqqqqqqqqq', '2021-10-18 11:08:03', 0, 1);
INSERT INTO `home_messages` VALUES (90, 45, 43, 64, 'aaaaaaaa aaaa', '2021-10-18 11:10:38', 0, 1);

-- ----------------------------
-- Table structure for home_notifications
-- ----------------------------
DROP TABLE IF EXISTS `home_notifications`;
CREATE TABLE `home_notifications`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` int NULL DEFAULT NULL,
  `course_id` int NOT NULL,
  `sender_id` int NOT NULL,
  `created_at` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL COMMENT 'type:0  teacher -> student 1: admin -> teacher or student',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `home_notifications_sender_id_7936b019_fk_home_user_id`(`sender_id`) USING BTREE,
  CONSTRAINT `home_notifications_sender_id_7936b019_fk_home_user_id` FOREIGN KEY (`sender_id`) REFERENCES `home_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_notifications
-- ----------------------------
INSERT INTO `home_notifications` VALUES (9, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:53', 1);
INSERT INTO `home_notifications` VALUES (10, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:53', 1);
INSERT INTO `home_notifications` VALUES (11, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:53', 1);
INSERT INTO `home_notifications` VALUES (12, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:53', 1);
INSERT INTO `home_notifications` VALUES (13, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:53', 1);
INSERT INTO `home_notifications` VALUES (14, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:54', 1);
INSERT INTO `home_notifications` VALUES (15, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:54', 1);
INSERT INTO `home_notifications` VALUES (16, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:54', 1);
INSERT INTO `home_notifications` VALUES (17, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:54', 1);
INSERT INTO `home_notifications` VALUES (18, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:34', 1);
INSERT INTO `home_notifications` VALUES (19, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:36', 1);
INSERT INTO `home_notifications` VALUES (20, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:36', 1);
INSERT INTO `home_notifications` VALUES (21, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:36', 1);
INSERT INTO `home_notifications` VALUES (22, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:37', 1);
INSERT INTO `home_notifications` VALUES (23, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:37', 1);
INSERT INTO `home_notifications` VALUES (24, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:37', 1);
INSERT INTO `home_notifications` VALUES (25, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:37', 1);
INSERT INTO `home_notifications` VALUES (26, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:37', 1);
INSERT INTO `home_notifications` VALUES (27, 2, 'test notification ', 'Are you there?', 0, 999, 1, '2021-06-10 22:07:50', 1);
INSERT INTO `home_notifications` VALUES (28, 2, 'test notification ', 'Are you there?', 0, 999, 1, '2021-06-10 22:08:46', 1);
INSERT INTO `home_notifications` VALUES (29, 2, 'test notification ', 'Are you there?', 0, 999, 1, '2021-06-10 22:10:25', 1);
INSERT INTO `home_notifications` VALUES (30, 2, 'test notification ', 'Are you there?', 0, 999, 1, '2021-06-10 22:11:21', 1);
INSERT INTO `home_notifications` VALUES (31, 2, 'test notification ', 'Are you there?', 0, 999, 1, '2021-06-10 22:15:10', 1);
INSERT INTO `home_notifications` VALUES (32, 2, 'test notification', 'hey hey', 0, 999, 1, '2021-06-10 22:22:13', 1);
INSERT INTO `home_notifications` VALUES (33, 2, 'test notification', 'hey hey', 0, 999, 1, '2021-06-10 22:25:56', 1);
INSERT INTO `home_notifications` VALUES (34, 2, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (35, 4, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (36, 5, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (37, 6, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (38, 7, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (39, 8, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (40, 35, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (41, 38, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (42, 39, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (43, 43, 'listen to me all student', 'I am admin', 1, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (44, 46, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (45, 53, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (46, 54, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (47, 55, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (48, 56, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (49, 57, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (50, 58, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (51, 60, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (52, 61, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (53, 64, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (54, 65, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (55, 66, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1);
INSERT INTO `home_notifications` VALUES (56, 40, 'test notification', 'thisi is test', 0, 999, 1, '2021-06-10 22:27:54', 1);
INSERT INTO `home_notifications` VALUES (57, 1, 'test notification', 'thisi is test', 0, 999, 1, '2021-06-10 22:28:18', 1);
INSERT INTO `home_notifications` VALUES (58, 40, 'hello abraham', 'there?\n', 0, 999, 1, '2021-06-10 23:23:42', 1);
INSERT INTO `home_notifications` VALUES (59, 40, 'hello abraham', 'there?\n', 0, 999, 1, '2021-06-11 00:41:00', 1);
INSERT INTO `home_notifications` VALUES (60, 40, 'hello abraham', 'there?\n', 0, 999, 1, '2021-06-11 00:43:06', 1);
INSERT INTO `home_notifications` VALUES (61, 1, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (62, 9, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (63, 10, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (64, 11, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (65, 12, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (66, 13, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (67, 14, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (68, 15, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (69, 17, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (70, 18, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (71, 19, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (72, 20, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (73, 23, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (74, 36, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (75, 40, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (76, 45, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (77, 47, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (78, 48, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (79, 49, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (80, 50, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (81, 51, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (82, 52, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (83, 59, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (84, 62, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1);
INSERT INTO `home_notifications` VALUES (85, 40, 'test noti', 'hey', 0, 999, 1, '2021-06-11 01:02:55', 1);
INSERT INTO `home_notifications` VALUES (86, 40, 'test noti', 'hey', 0, 999, 1, '2021-06-11 01:03:30', 1);
INSERT INTO `home_notifications` VALUES (87, 1, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (88, 9, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (89, 10, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (90, 11, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (91, 12, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (92, 13, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (93, 14, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (94, 15, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (95, 17, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (96, 18, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (97, 19, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (98, 20, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (99, 23, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (100, 36, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (101, 40, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (102, 45, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (103, 47, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (104, 48, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (105, 49, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (106, 50, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (107, 51, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (108, 52, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (109, 59, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (110, 62, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1);
INSERT INTO `home_notifications` VALUES (111, 1, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (112, 9, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (113, 10, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (114, 11, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (115, 12, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (116, 13, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (117, 14, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (118, 15, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (119, 17, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (120, 18, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (121, 19, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (122, 20, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (123, 23, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (124, 36, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (125, 40, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (126, 45, 'sdfsd', 'sdfsdfsdf', 1, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (127, 47, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (128, 48, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (129, 49, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (130, 50, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (131, 51, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (132, 52, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (133, 59, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);
INSERT INTO `home_notifications` VALUES (134, 62, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);

-- ----------------------------
-- Table structure for home_position
-- ----------------------------
DROP TABLE IF EXISTS `home_position`;
CREATE TABLE `home_position`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_position
-- ----------------------------
INSERT INTO `home_position` VALUES (1, 'Ai Director', '');
INSERT INTO `home_position` VALUES (2, 'Programmer', '');
INSERT INTO `home_position` VALUES (3, 'Designer', '');
INSERT INTO `home_position` VALUES (4, 'Course Publiser', '');
INSERT INTO `home_position` VALUES (5, 'Photographer', '');
INSERT INTO `home_position` VALUES (6, 'Deployer', '');
INSERT INTO `home_position` VALUES (7, 'Dev Ops', '');
INSERT INTO `home_position` VALUES (8, 'Manager of Finance ', '');

-- ----------------------------
-- Table structure for home_refund
-- ----------------------------
DROP TABLE IF EXISTS `home_refund`;
CREATE TABLE `home_refund`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `title` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `approval_status` int NULL DEFAULT 1,
  `date_created` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_refund
-- ----------------------------

-- ----------------------------
-- Table structure for home_spam
-- ----------------------------
DROP TABLE IF EXISTS `home_spam`;
CREATE TABLE `home_spam`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `title` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `approval_status` int NULL DEFAULT 1,
  `date_created` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_spam
-- ----------------------------
INSERT INTO `home_spam` VALUES (6, 40, 2, 29, 'aaaa', 'aaaa', 2, '2021-05-24 14:43:23');
INSERT INTO `home_spam` VALUES (7, 40, 2, 29, '', '', 2, '2021-05-26 17:20:45');

-- ----------------------------
-- Table structure for home_task
-- ----------------------------
DROP TABLE IF EXISTS `home_task`;
CREATE TABLE `home_task`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `start_date` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `end_date` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `done_date` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `priority` tinyint NOT NULL,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `file_url` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `answer` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_task
-- ----------------------------
INSERT INTO `home_task` VALUES (11, 'to check', 'to check it only', '2021-05-12', '2021-05-13', '', 1, 1, 4, '', '');
INSERT INTO `home_task` VALUES (12, 'new task', 'new task', '2021-05-12', '2021-05-13', '', 1, 1, 4, '', '');
INSERT INTO `home_task` VALUES (13, 'New Task', 'New tasks', '2021-05-12', '2021-05-13', '', 1, 1, 4, '', '');
INSERT INTO `home_task` VALUES (14, 'new tasks', 'new tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksn', '2021-05-12', '2021-05-13', '', 1, 1, 4, '', '');
INSERT INTO `home_task` VALUES (15, 'مهمة جديدة مهمة جديدة مهمة جديدة مهمة جديدة مهمة جديدة', 'مهمة جديدة مهمة جديدة مهمة جديدة مهمة جديدة مهمة جديدة', '2021-05-12', '2021-05-13', '', 1, 1, 4, '', '');

-- ----------------------------
-- Table structure for home_user
-- ----------------------------
DROP TABLE IF EXISTS `home_user`;
CREATE TABLE `home_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `email` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL DEFAULT NULL,
  `first_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone_number` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `group_id` int NOT NULL,
  `receive_notifications` tinyint(1) NOT NULL,
  `receive_email` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  INDEX `home_user_group_id_ab9cda55_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `home_user_group_id_ab9cda55_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_user
-- ----------------------------
INSERT INTO `home_user` VALUES (1, 'pbkdf2_sha256$260000$48jLnnLPPemRxZSmTXh5Ho$SPwyYrFzjWace/FpCxQrLuXL2ZwtIz84GPrmaDIm34Y=', 'e6546f2b5c01a18032bad2365f592681', '2021-08-30 04:10:41.423443', 'admin@gmail.com', 1, 1, 1, '2020-06-15 04:44:35.052800', 'Parshotam', 'Kumar ', NULL, '/user_images/349b34ad-d01e-4b37-a225-80bb95b78e66.png', 2, 1, 1);
INSERT INTO `home_user` VALUES (2, 'pbkdf2_sha256$260000$1A9PzLLBxIZ9v4TyNBP8z1$6YiEufaAbnUbgmIyRq3OuAe2qk4/CRrBjTN9etRCzKg=', '', '2021-06-20 11:02:43.829138', 'test@test.com', 1, 1, 0, '2020-06-15 08:21:13.245323', 'beauty', 'beautyful', '09781804565', '/user_images/7275173f-1565-4fca-ab52-1d7b4b86ab2e.jpg', 1, 1, 1);
INSERT INTO `home_user` VALUES (4, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2021-06-11 13:53:07.662398', 'student@test.com', 0, 1, 0, '2020-06-15 12:13:43.888853', 'student', 'test', '09781804565', '/user_images/03cf48ae-eab3-48f0-b82c-5c40be57eb97.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (5, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@1.com', 0, 0, 0, '2020-06-18 02:53:19.925709', 'test', 'test', '+123456789', '/user_images/cabe52a5-ef8e-402e-b5ab-e0252e6539a2.png', 1, 1, 0);
INSERT INTO `home_user` VALUES (6, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@2.com', 0, 0, 0, '2020-06-18 02:53:19.925709', 'test', 'test', '+12456789', '/user_images/71f4b0da-2a22-422d-9f35-609a6433c57d.png', 1, 1, 0);
INSERT INTO `home_user` VALUES (7, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@gmail.com', 0, 0, 0, '2020-06-18 05:54:53.496232', 'test', 'test', '123456789', '/user_images/9b027baa-4760-480f-9881-f22550ba2d51.png', 1, 1, 0);
INSERT INTO `home_user` VALUES (8, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@tt.com', 0, 0, 0, '2020-06-18 05:57:01.752994', 'test', 'test', '123456', '/user_images/a4104da7-0ddb-4978-bb56-3c03ba6a7268.png', 1, 1, 0);
INSERT INTO `home_user` VALUES (9, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@11.com', 0, 0, 0, '2020-06-18 05:57:01.752994', 'test', 'test', '123456', '/assets/img/man.jpg', 3, 1, 0);
INSERT INTO `home_user` VALUES (10, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@3.com', 0, 0, 0, '2020-06-18 09:27:25.940813', 'testing', 'test', '123456789', '/user_images/809a2a33-84ea-47db-846f-2a10e53f8fe7.png', 3, 1, 0);
INSERT INTO `home_user` VALUES (11, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@4.com', 0, 0, 0, '2020-06-18 09:27:25.940813', 'test', 'test', '123456789', '/user_images/065dc4c9-42bb-450e-91fa-300de55a6715.png', 2, 1, 0);
INSERT INTO `home_user` VALUES (12, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'jackson@test.com', 0, 0, 0, '2020-06-18 09:48:00.364321', 'jackson', 'v', '123456789', '/user_images/9a070c69-f885-4314-96aa-2bbb3402de5a.png', 3, 1, 0);
INSERT INTO `home_user` VALUES (13, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2020-06-23 06:42:42.031176', 'jackey@test.com', 0, 1, 0, '2020-06-23 06:11:59.139771', 'Jackey', 'jenis', '123456789', '/user_images/5d7941a6-ee87-49bc-9b6b-92e64b32882a.jpg', 3, 1, 0);
INSERT INTO `home_user` VALUES (14, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2020-06-23 07:28:02.162262', 'test123@gmail.com', 0, 1, 0, '2020-06-23 07:14:48.212016', 'Jackey', 'John', '12345678911', '/user_images/ceb9c481-e878-41b7-929d-ebde889dfb89.jpg', 3, 1, 0);
INSERT INTO `home_user` VALUES (15, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'jjj@1.com', 0, 0, 0, '2020-06-25 15:49:42.038890', 'jackey', 'jjj', 'none', '/assets/img/man.jpg', 3, 1, 0);
INSERT INTO `home_user` VALUES (17, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'jjj@3.com', 0, 0, 0, '2020-06-25 15:49:42.038890', 'jjjj', 'jjjj', '123456789', '/assets/img/man.jpg', 3, 1, 0);
INSERT INTO `home_user` VALUES (18, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'jjj@5.com', 0, 0, 0, '2020-06-25 15:49:42.038890', 'jjj', 'jjj', 'none', '/assets/img/man.jpg', 3, 1, 0);
INSERT INTO `home_user` VALUES (19, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'jjj@6.com', 0, 0, 0, '2020-06-25 15:49:42.038890', 'jjj', 'jjj', 'none', '/assets/img/man.jpg', 2, 1, 0);
INSERT INTO `home_user` VALUES (20, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'Hello@dd.com', 0, 1, 0, '2020-06-30 08:32:53.339761', 'sdf', 'sdf', 'none', '/user_images/7c586b74-138a-4018-86c6-9ca1edab4486.png', 3, 1, 0);
INSERT INTO `home_user` VALUES (23, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2020-11-25 09:33:11.163138', 'john@bool.com', 1, 1, 1, '2020-11-04 15:07:01.049878', 'john', 'bool', 'none', '/assets/img/man.jpg', 2, 1, 0);
INSERT INTO `home_user` VALUES (35, 'pbkdf2_sha256$260000$rBg6UyXZZmZr5i7NZuQoUI$dl7+enprOMA4rkyWeEz9iFI4327jAlAZzMIzs0IDS50=', '90b88405908c4009750738ac9132a3f4', '2021-08-01 17:29:25.863853', 'yarxalo@gmail.com', 0, 1, 0, '2020-11-23 08:45:55.229224', 'Yaroslav', 'Xalabuda', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (36, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2020-11-23 10:44:35.035160', 'booctepdotcom2030@gmail.com', 0, 1, 0, '2020-11-23 09:50:59.713614', 'Elzubair', 'Mohammed', 'none', '/user_images/74f15e43-e4e6-483f-94fb-466706008871.png', 2, 1, 0);
INSERT INTO `home_user` VALUES (38, 'pbkdf2_sha256$260000$48jLnnLPPemRxZSmTXh5Ho$SPwyYrFzjWace/FpCxQrLuXL2ZwtIz84GPrmaDIm34Y=', 'e6546f2b5c01a18032bad2365f592681', '2021-09-09 07:32:35.925173', 'mkaaaaani@gmail.com', 0, 1, 0, '2020-11-23 10:07:14.991897', 'Elzubair ', 'Mohamed', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (39, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2020-11-24 20:42:17.328926', 'mkaaaani@gmail.com', 0, 1, 0, '2020-11-23 10:46:46.632032', 'Bandar', 'Emad', 'none', '/user_images/2a521e24-b318-4932-97bb-7b191e353966.png', 1, 1, 0);
INSERT INTO `home_user` VALUES (40, 'pbkdf2_sha256$260000$L3ScNNkmeiRgrcvENWCHKN$E4XjpqKwxHwKIwtRLjlgZWDGnFwa9UfxvMNMiaDE5XM=', '2a6dde22b15108c5a99531f4c339a073', '2021-09-13 11:55:16.282449', 'officialcontactservices@gmail.com', 0, 1, 0, '2020-11-23 12:25:29.324248', 'Khaled', 'AbrahamAbrahamAbraham', 'none', '/user_images/db15f9e7-16c8-465b-9db1-784a78b983ee.png', 3, 1, 1);
INSERT INTO `home_user` VALUES (43, 'pbkdf2_sha256$260000$48jLnnLPPemRxZSmTXh5Ho$SPwyYrFzjWace/FpCxQrLuXL2ZwtIz84GPrmaDIm34Y=', 'e6546f2b5c01a18032bad2365f592681', '2021-10-25 05:53:50.873283', 'alzober1414@gmail.com', 0, 1, 0, '2020-11-29 11:36:44.934900', 'Ko', ' صالح جميل', 'none', '/user_images/3f2c0b2e-bf52-4ae5-a526-d179886c726a.png', 3, 0, 0);
INSERT INTO `home_user` VALUES (45, 'pbkdf2_sha256$260000$48jLnnLPPemRxZSmTXh5Ho$SPwyYrFzjWace/FpCxQrLuXL2ZwtIz84GPrmaDIm34Y=', 'e6546f2b5c01a18032bad2365f592681', '2021-10-22 12:54:48.708805', 'hello@gmail.com', 0, 1, 0, '2021-01-16 05:44:15.261946', 'hello', 'love', 'none', '/user_images/3689cb65-0a4d-4ad2-ae14-8a70050f0155.jpg', 2, 1, 0);
INSERT INTO `home_user` VALUES (46, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'ebari2017@yandex.com', 0, 0, 0, '2021-01-20 10:38:05.351369', 'Farabi', 'Siddique', 'none', '/user_images/869d50c4-3d6a-4653-855d-3be6bbe6ce9e.png', 1, 1, 0);
INSERT INTO `home_user` VALUES (47, 'pbkdf2_sha256$260000$48jLnnLPPemRxZSmTXh5Ho$SPwyYrFzjWace/FpCxQrLuXL2ZwtIz84GPrmaDIm34Y=', 'e6546f2b5c01a18032bad2365f592681', NULL, 'amifarabi@fara.com', 0, 0, 0, '2021-02-14 12:10:08.149865', 'Gamal', 'Naser', 'none', '/user_images/172a4f9f-727e-4e07-97c0-d615188d957a.jpg', 2, 1, 0);
INSERT INTO `home_user` VALUES (48, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'zz@zz.com', 0, 0, 0, '2021-02-14 12:13:03.573707', 'Gamal', 'Naser', 'none', '/user_images/41a8cc9a-c937-4dcf-b971-3ec078a6f0cc.jpg', 2, 1, 0);
INSERT INTO `home_user` VALUES (50, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'flsohwgjeguuwqscuo@wqcefp.com', 0, 0, 0, '2021-02-14 12:28:02.085032', 'Ka', 'Ka', 'none', '/user_images/2a0b4938-1013-4e4d-b370-6a57290f8426.jpg', 2, 1, 0);
INSERT INTO `home_user` VALUES (51, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'yuycsbecbvoicfsgcz@twzhhq.online', 0, 0, 0, '2021-02-14 12:40:09.980534', 'Ja', 'Ja', 'none', '/user_images/e9b03d36-567d-461e-bdb4-0b83dfae516b.jpg', 2, 1, 0);
INSERT INTO `home_user` VALUES (52, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'ulmzdemfetbxbnlkkp@twzhhq.com', 0, 0, 0, '2021-02-14 12:50:29.337522', 'A', 'B', 'none', '/user_images/5c0e0fef-d949-48e3-abc5-67cfa8d188ee.jpg', 2, 1, 0);
INSERT INTO `home_user` VALUES (53, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2021-02-21 03:07:40.555825', 'okw56095@zwoho.com', 0, 1, 0, '2021-02-21 02:46:45.668445', 'adsada', 'sfsfdf', 'none', '/user_images/c86ef74d-773f-468b-a234-ec7a13ea63a2.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (54, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2021-02-21 04:13:50.235049', 'tns45086@cuoly.com', 0, 1, 0, '2021-02-21 03:57:52.065720', 'sdsdf', 'sdfdsf', 'none', '/user_images/63c24633-8ed4-4fd2-b702-eece75c815ba.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (55, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2021-02-21 06:18:35.181201', 'okv26267@zwoho.com', 0, 1, 0, '2021-02-21 05:35:29.181431', 'fdf', 'fdsdf', 'none', '/user_images/33366e52-f9df-4919-b69f-3320ce77517f.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (56, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'wyk90703@cuoly.com', 0, 1, 0, '2021-02-21 07:07:27.676765', 'fdf', 'fsdf', 'none', '/user_images/4b04dbc1-9294-49ea-a5e2-701d36aeb7c4.jpeg', 1, 1, 0);
INSERT INTO `home_user` VALUES (57, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'tjw64926@cuoly.com', 0, 1, 0, '2021-02-22 12:39:41.360226', 'bhjbhj', 'bhhkh', 'none', '/user_images/5a367837-b0bc-4624-aced-abe3870bf7ae.jpeg', 1, 1, 0);
INSERT INTO `home_user` VALUES (58, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'lyx74109@cuoly.com', 0, 1, 0, '2021-02-22 12:51:20.708227', 'ghjg', 'gjgjg', 'none', '/user_images/5a9c4e71-079f-4b91-a56e-2b22c1522a3a.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (59, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'wwwwwww@gmail.com', 0, 0, 0, '2021-05-17 18:50:07.150784', 'test', 'sfsdf', 'none', '/assets/img/man.jpg', 2, 1, 0);
INSERT INTO `home_user` VALUES (60, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'testsese@gmail.com', 0, 0, 0, '2021-05-17 19:16:05.831839', 'liman', 'testtest', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (61, 'pbkdf2_sha256$216000$ijzqJtClSYA9$omnoc7xH1utAMR/ajZsIMsrDIAFwDiER5QQnuVSgKsM=', '', NULL, 'admin@hotmail.com', 0, 0, 0, '2021-05-17 19:17:19.515552', 'liman', 'wfwefwef', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (62, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, '555@gmail.com', 0, 0, 0, '2021-05-17 19:21:22.808380', '555', '555', 'none', '/assets/img/man.jpg', 2, 1, 0);
INSERT INTO `home_user` VALUES (64, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'sdfsdf@gmail.com', 0, 0, 0, '2021-05-18 10:54:42.450477', 'test', 'sdfsdf', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (65, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'sdsfdf@gmail.com', 0, 0, 0, '2021-05-18 11:05:19.641495', 'test', 'sdfsdf', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (66, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'admin@agdsf.com', 0, 0, 0, '2021-05-18 17:27:07.734215', 'sdsdf', 'sdfsdf', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (68, '!zMw0AERyobhtOarub7uIvmKFZFe1dc25MpLCJx5S', '', '2021-06-15 00:34:30.899370', 'ernestpapyan96@gmail.com', 0, 1, 0, NULL, 'Ernest', 'Papyan', NULL, NULL, 3, 1, 0);
INSERT INTO `home_user` VALUES (69, 'pbkdf2_sha256$260000$4U47JWqlCQdReVF46Pa0Rj$E0LCbfhvAA8hOO4jvkhhktelteBhYMHr4qPznLQcPNE=', NULL, NULL, 'dyadkovdevelasdfasdfasdfop@gmail.com', 0, 0, 0, '2021-07-28 23:27:57.265214', 'asdfasdfadsf', 'asdfadsadfas', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (70, 'pbkdf2_sha256$216000$5nlRXaRJGN8L$WgedwBDLcBLGR4GroqLmTe55h/2wwK8zKRk4tTbc3v4=', NULL, NULL, 'aliquaydhib@gmail.com', 0, 0, 0, '2021-08-17 05:35:07.031316', 'Ali', 'Ali', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (71, 'pbkdf2_sha256$216000$G2nII29NaBsp$4o8356mrEqKsDzKlfgyljcng5m9A8p2Yb6rodPSzNQY=', NULL, NULL, 'abdulatif.alsabr1@hotmail.com', 0, 0, 0, '2021-08-17 05:42:54.801181', 'Abdulatif', 'Alsaber', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (72, 'pbkdf2_sha256$216000$q88s7jEJeZZz$lOsGikBPAsMPyDzLO/s+TzUyB+2sk7X9NLh0wW8W6eo=', NULL, NULL, 'mbaumy250@gmail.com', 0, 0, 0, '2021-08-21 04:26:51.308192', 'Mohamed', 'Baumy', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (82, 'pbkdf2_sha256$260000$TtSFCxV2CHrL2O8q7lRTYx$94kwmWFnMlWXd6Lo6IHqJlutXH1gVyualhuZFZTYJ94=', NULL, NULL, 'staratnight@outlook.com', 0, 0, 0, '2021-09-09 01:53:44.706707', 'Christopher', 'Kim', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (83, 'pbkdf2_sha256$260000$e4vAAAWUWL0T3sNCfVEFl6$XPaBvAV03YMFix+9UJ4h4TBU1+EVyxnZi46Mbx/1RrQ=', NULL, NULL, 'staratnight1@outlook.com', 0, 0, 0, '2021-09-09 01:56:24.459663', 'Christopher', 'Kim', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (93, 'pbkdf2_sha256$260000$wIBd3GMILoP2Ixq4ui50qu$VRHSA4+bI75P3e2VDQI+sZFRyXYmYA1KJafS4+8b5Qc=', '5bf3f754876c5e5cd003ec8f5f5cf522', '2021-09-13 00:45:46.879481', 'shinystaratnight@gmail.com', 0, 1, 0, '2021-09-12 03:00:03.817848', 'Christopher', 'Frost', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (95, 'pbkdf2_sha256$260000$sV8pCRMO05AXAIHnEbzS2P$8Y6r93LsT1jVxqxRAqqdlAReSQXXDmwDWpPam4Wz2As=', NULL, '2021-09-12 16:28:10.643189', 'star-atnight@outlook.com', 0, 1, 0, '2021-09-12 16:27:40.825686', 'Christopher', 'Frost', 'none', '/assets/img/man.jpg', 1, 1, 0);
INSERT INTO `home_user` VALUES (96, 'pbkdf2_sha256$260000$48jLnnLPPemRxZSmTXh5Ho$SPwyYrFzjWace/FpCxQrLuXL2ZwtIz84GPrmaDIm34Y=', 'e6546f2b5c01a18032bad2365f592681', '2021-10-23 09:38:11.470126', 'mofidon2030@gmail.com', 0, 1, 0, '2021-09-12 22:14:08.853198', 'Elzubair', 'Mohammed', 'none', '/assets/img/man.jpg', 3, 1, 0);
INSERT INTO `home_user` VALUES (97, 'pbkdf2_sha256$260000$ZsN1HejthtWpT0k6272HMT$xBZCJn4yyQKucJISPueeca/A6AaI2BRE5y8WHkb4htI=', '8f040a5d9c6b2d514385d61ebe37585f', '2021-09-13 10:06:02.479412', 'h.b120934@gmail.com', 0, 1, 0, '2021-09-13 05:35:16.058276', 'king', 'hani', 'none', '/assets/img/man.jpg', 1, 1, 0);

-- ----------------------------
-- Table structure for home_user_activation
-- ----------------------------
DROP TABLE IF EXISTS `home_user_activation`;
CREATE TABLE `home_user_activation`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `home_user_activation_user_id_eb286180_fk_home_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `home_user_activation_user_id_eb286180_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_user_activation
-- ----------------------------
INSERT INTO `home_user_activation` VALUES (1, '0ed5bc6b-9c0c-4bf9-bd9f-b96f57ba3521', '2020-06-15 08:22:55.262948', '2020-06-15 08:22:55.263008', 2);
INSERT INTO `home_user_activation` VALUES (3, '6a02ed30-7687-43c2-8929-98e1d5771983', '2020-06-15 12:17:30.910789', '2020-06-15 12:15:26.767434', 4);
INSERT INTO `home_user_activation` VALUES (4, '6519f11f-338c-4314-91eb-b2758c81a3a0', '2020-06-18 02:58:22.080473', '2020-06-18 02:58:22.080473', 5);
INSERT INTO `home_user_activation` VALUES (5, 'a47e6f99-dc04-433c-876c-9a22268b224d', '2020-06-18 03:34:35.476094', '2020-06-18 03:34:35.476094', 6);
INSERT INTO `home_user_activation` VALUES (6, '497847f5-b774-4362-a7db-80be33938c53', '2020-06-18 05:55:56.402675', '2020-06-18 05:55:56.402675', 7);
INSERT INTO `home_user_activation` VALUES (7, '5e19049e-f111-4fa0-b447-6cbfc4494da9', '2020-06-18 05:57:28.160966', '2020-06-18 05:57:28.160966', 8);
INSERT INTO `home_user_activation` VALUES (8, '61e1ddc6-dcbb-47a1-b417-5039d6c8284f', '2020-06-18 05:58:28.488558', '2020-06-18 05:58:28.488558', 9);
INSERT INTO `home_user_activation` VALUES (9, 'fdeae4b5-8b4f-4c72-a796-9d2aca4d6d3d', '2020-06-18 09:29:14.726907', '2020-06-18 09:29:14.726907', 10);
INSERT INTO `home_user_activation` VALUES (10, '38f067c1-6174-42e0-9353-6316a548e978', '2020-06-18 09:30:42.403362', '2020-06-18 09:30:42.403362', 11);
INSERT INTO `home_user_activation` VALUES (11, '0bd8bdd1-d55c-4632-acd7-55a00e60f06a', '2020-06-18 10:00:24.081245', '2020-06-18 10:00:24.081245', 12);
INSERT INTO `home_user_activation` VALUES (12, '55e09932-79c5-4939-a768-9a0d9b9fdc5f', '2020-06-23 06:39:50.316507', '2020-06-23 06:39:50.316507', 13);
INSERT INTO `home_user_activation` VALUES (13, '49e612ce-e895-46d3-a2a0-704dfcdab6eb', '2020-06-23 07:25:15.530899', '2020-06-23 07:25:15.530899', 14);
INSERT INTO `home_user_activation` VALUES (14, '564c41ac-8547-44da-9280-6e7916ee6c43', '2020-06-25 16:00:49.427755', '2020-06-25 16:00:49.427755', 15);
INSERT INTO `home_user_activation` VALUES (16, 'ebf95753-bb0d-40cb-93bd-5944aa2ce786', '2020-06-25 16:02:21.208823', '2020-06-25 16:02:21.208823', 17);
INSERT INTO `home_user_activation` VALUES (17, 'f92449bc-b79a-4493-a72a-8059011877c0', '2020-06-25 16:03:23.786296', '2020-06-25 16:03:23.786296', 18);
INSERT INTO `home_user_activation` VALUES (18, '6a00f9af-f72a-4769-adb0-ac3dcb2a44f2', '2020-06-25 16:04:18.375247', '2020-06-25 16:04:18.375247', 19);
INSERT INTO `home_user_activation` VALUES (19, '59c199b4-4a1e-4e09-abe4-6448db58213d', '2020-06-30 10:01:52.805918', '2020-06-30 10:01:52.805918', 20);
INSERT INTO `home_user_activation` VALUES (22, 'b08823d3-1ac4-4eca-a7ec-15c1f081eff4', '2020-11-04 12:07:01.316418', '2020-11-04 12:07:01.316418', 23);
INSERT INTO `home_user_activation` VALUES (34, 'eadec692-4857-4faf-88b1-c485296e9cee', '2020-11-23 08:46:49.191199', '2020-11-23 08:45:55.271230', 35);
INSERT INTO `home_user_activation` VALUES (35, 'b01f5b90-b815-4c97-ac49-dbc88b7e9676', '2020-11-23 09:52:03.937733', '2020-11-23 09:50:59.757005', 36);
INSERT INTO `home_user_activation` VALUES (37, 'eacebb87-ee7b-4be3-8d02-0b4c541e515e', '2020-11-23 10:11:23.582564', '2020-11-23 10:07:15.044036', 38);
INSERT INTO `home_user_activation` VALUES (38, '7ff316b4-1007-424a-ba9c-b47721b4ef01', '2020-11-23 10:46:46.674346', '2020-11-23 10:46:46.674379', 39);
INSERT INTO `home_user_activation` VALUES (39, 'ec964748-a422-4880-8a20-46ef8a7719d1', '2020-11-23 12:26:19.874807', '2020-11-23 12:25:29.366042', 40);
INSERT INTO `home_user_activation` VALUES (42, '170ee7e3-11fc-4cb2-974e-c2589a67ec21', '2020-11-29 11:36:45.118970', '2020-11-29 11:36:45.119004', 43);
INSERT INTO `home_user_activation` VALUES (44, '86cc85b8-d9d0-45f6-9117-1915e8631b56', '2021-01-16 13:44:15.608944', '2021-01-16 13:44:15.608944', 45);
INSERT INTO `home_user_activation` VALUES (45, '6b4be902-62e8-475d-b1bd-e70dbbbb7b1a', '2021-01-20 10:38:06.212931', '2021-01-20 10:38:06.212983', 46);
INSERT INTO `home_user_activation` VALUES (46, '366b0534-0169-4459-9fde-5e58cea3fba2', '2021-02-14 12:10:08.757433', '2021-02-14 12:10:08.757488', 47);
INSERT INTO `home_user_activation` VALUES (47, '5a08eba4-db72-4920-b8ab-4f5695594270', '2021-02-14 12:13:04.083305', '2021-02-14 12:13:04.083432', 48);
INSERT INTO `home_user_activation` VALUES (49, 'bd66042e-afa0-480c-8779-439aadf24f9f', '2021-02-14 12:28:02.695259', '2021-02-14 12:28:02.695337', 50);
INSERT INTO `home_user_activation` VALUES (50, '08c98406-8a6e-44bd-b136-41c8bfd33f2f', '2021-02-14 12:40:10.491030', '2021-02-14 12:40:10.491112', 51);
INSERT INTO `home_user_activation` VALUES (51, '5cd5d36e-1508-4c5d-aaad-9c43514de992', '2021-02-14 12:50:30.586891', '2021-02-14 12:50:30.587029', 52);
INSERT INTO `home_user_activation` VALUES (52, '13061214-c83c-43ab-afaa-d776c941d743', '2021-02-21 02:47:39.580106', '2021-02-21 02:46:46.219301', 53);
INSERT INTO `home_user_activation` VALUES (53, 'aa9584da-e028-4900-b17f-20df0627e0aa', '2021-02-21 03:59:10.452802', '2021-02-21 03:57:53.276682', 54);
INSERT INTO `home_user_activation` VALUES (54, 'c3dcf83e-1073-40da-a04d-f07441377e56', '2021-02-21 05:36:47.373094', '2021-02-21 05:35:29.819279', 55);
INSERT INTO `home_user_activation` VALUES (55, '6fd6a455-ae1f-407e-8268-e74b464b5347', '2021-02-21 07:07:51.163219', '2021-02-21 07:07:28.490634', 56);
INSERT INTO `home_user_activation` VALUES (56, '87a09f7c-6c5e-4408-87be-0bbbb00d1b0d', '2021-02-22 12:40:55.415532', '2021-02-22 12:39:45.674969', 57);
INSERT INTO `home_user_activation` VALUES (57, '1ef9264d-3852-452e-aa00-aaf910f8494d', '2021-02-22 12:52:08.408516', '2021-02-22 12:51:21.526384', 58);
INSERT INTO `home_user_activation` VALUES (58, 'a2ad2730-e5f6-4395-b7e7-2fac5176df16', '2021-05-14 16:28:34.403295', '2021-05-14 16:28:34.403337', 59);
INSERT INTO `home_user_activation` VALUES (59, 'c71eb122-deb0-47cd-9b7d-ecf3a81b19af', '2021-05-17 16:44:00.317969', '2021-05-17 16:44:00.318036', 60);
INSERT INTO `home_user_activation` VALUES (60, 'fa9c4168-9a5f-4be6-894b-d97f0f09e32f', '2021-05-18 14:14:08.233403', '2021-05-18 14:14:08.233448', 64);
INSERT INTO `home_user_activation` VALUES (61, '932b2d7a-78d9-4f1b-aa12-b27364b975dc', '2021-05-18 14:49:05.610331', '2021-05-18 14:49:05.610376', 65);
INSERT INTO `home_user_activation` VALUES (62, '1fbf9e29-401e-4ffc-a83f-6d3dd3a2e2d3', '2021-05-19 12:57:40.284124', '2021-05-19 12:56:49.564633', 66);
INSERT INTO `home_user_activation` VALUES (63, 'bbc9dc48-766f-452c-81d3-4bacea351797', '2021-07-28 14:27:57.511257', '2021-07-28 14:27:57.511257', 69);
INSERT INTO `home_user_activation` VALUES (64, 'b930a3de-9197-4e34-b4c6-ecbe4f250556', '2021-08-17 05:35:07.324121', '2021-08-17 05:35:07.324178', 70);
INSERT INTO `home_user_activation` VALUES (65, 'b02a64e9-47dc-4210-94eb-001db160080e', '2021-08-17 05:42:54.962946', '2021-08-17 05:42:54.962988', 71);
INSERT INTO `home_user_activation` VALUES (66, '17708271-2ca0-4c08-b6fe-c5e27228e594', '2021-08-21 04:26:51.499548', '2021-08-21 04:26:51.499598', 72);
INSERT INTO `home_user_activation` VALUES (76, '5b182f6f-bd50-475b-a6bc-1e2a15d16bbe', '2021-09-09 01:53:44.904016', '2021-09-09 01:53:44.904058', 82);
INSERT INTO `home_user_activation` VALUES (77, '043de8ec-4458-455e-9f47-d6891a3c2fe4', '2021-09-09 01:56:24.800016', '2021-09-09 01:56:24.800071', 83);
INSERT INTO `home_user_activation` VALUES (86, '34f9fbb1-01b4-4409-994d-596b253cd2a8', '2021-09-12 03:00:27.391905', '2021-09-12 03:00:04.147198', 93);
INSERT INTO `home_user_activation` VALUES (88, 'f9846e86-5364-403b-90c4-25795226cd61', '2021-09-12 16:28:10.255697', '2021-09-12 16:27:41.237420', 95);
INSERT INTO `home_user_activation` VALUES (89, '883041ac-500b-4639-aa17-37dad45ce3b5', '2021-09-12 22:14:47.366193', '2021-09-12 22:14:09.037887', 96);
INSERT INTO `home_user_activation` VALUES (90, '8872a39d-adbf-4cef-9335-c8be94aa4e0d', '2021-09-13 05:35:38.245615', '2021-09-13 05:35:16.266563', 97);

-- ----------------------------
-- Table structure for home_user_become
-- ----------------------------
DROP TABLE IF EXISTS `home_user_become`;
CREATE TABLE `home_user_become`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `cat_id` int NULL DEFAULT NULL,
  `sub_catid` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permit` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_user_become
-- ----------------------------
INSERT INTO `home_user_become` VALUES (1, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for home_user_categories
-- ----------------------------
DROP TABLE IF EXISTS `home_user_categories`;
CREATE TABLE `home_user_categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `home_user_categories_category_id_fa0b8c7f_fk_teacher_s`(`category_id`) USING BTREE,
  INDEX `home_user_categories_user_id_1fff0465_fk_home_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `home_user_categories_category_id_fa0b8c7f_fk_teacher_s` FOREIGN KEY (`category_id`) REFERENCES `teacher_subcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `home_user_categories_user_id_1fff0465_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_user_categories
-- ----------------------------
INSERT INTO `home_user_categories` VALUES (2, 11, 48);
INSERT INTO `home_user_categories` VALUES (4, 13, 50);
INSERT INTO `home_user_categories` VALUES (5, 13, 51);
INSERT INTO `home_user_categories` VALUES (6, 13, 52);

-- ----------------------------
-- Table structure for home_user_profile
-- ----------------------------
DROP TABLE IF EXISTS `home_user_profile`;
CREATE TABLE `home_user_profile`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `bio` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `header_img` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cat_id` int NULL DEFAULT NULL,
  `subcat_ids` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `instagram_url` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `twitter_url` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `website_url` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `notification` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_user_profile
-- ----------------------------
INSERT INTO `home_user_profile` VALUES (1, 40, 'sfasdadasdasdas', '/user_images/02af5cda-bd0d-48f2-923a-aa2b3618b869.jpeg', 8, '16', '', '', '', '', '0', '2021-07-07 19:16:29.886354', '2021-06-02 03:44:07.941802');
INSERT INTO `home_user_profile` VALUES (2, 43, '', '/user_images/8c5cf29f-cd58-4b4a-9c21-477aa2721923.jpeg', 1, '1', '', '', '', '', '0', '2021-09-13 09:34:43.065701', '2021-08-20 17:09:55.060704');

-- ----------------------------
-- Table structure for paypal_ipn
-- ----------------------------
DROP TABLE IF EXISTS `paypal_ipn`;
CREATE TABLE `paypal_ipn`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `business` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charset` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notify_version` decimal(64, 2) NULL DEFAULT NULL,
  `parent_txn_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_email` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `residence_country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_type` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verify_sign` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_country` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_city` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_country_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_state` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_status` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_street` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_zip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_business_name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_amount` decimal(64, 2) NULL DEFAULT NULL,
  `auth_exp` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_status` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` decimal(64, 16) NULL DEFAULT NULL,
  `invoice` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_number` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mc_currency` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mc_fee` decimal(64, 2) NULL DEFAULT NULL,
  `mc_gross` decimal(64, 2) NULL DEFAULT NULL,
  `mc_handling` decimal(64, 2) NULL DEFAULT NULL,
  `mc_shipping` decimal(64, 2) NULL DEFAULT NULL,
  `memo` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_cart_items` int NULL DEFAULT NULL,
  `option_name1` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_name2` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_status` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` datetime(6) NULL DEFAULT NULL,
  `payment_gross` decimal(64, 2) NULL DEFAULT NULL,
  `payment_status` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pending_reason` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `protection_eligibility` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NULL DEFAULT NULL,
  `reason_code` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remaining_settle` decimal(64, 2) NULL DEFAULT NULL,
  `settle_amount` decimal(64, 2) NULL DEFAULT NULL,
  `settle_currency` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping` decimal(64, 2) NULL DEFAULT NULL,
  `shipping_method` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` decimal(64, 2) NULL DEFAULT NULL,
  `transaction_entity` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auction_buyer_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auction_closing_date` datetime(6) NULL DEFAULT NULL,
  `auction_multi_item` int NULL DEFAULT NULL,
  `for_auction` decimal(64, 2) NULL DEFAULT NULL,
  `amount` decimal(64, 2) NULL DEFAULT NULL,
  `amount_per_cycle` decimal(64, 2) NULL DEFAULT NULL,
  `initial_payment_amount` decimal(64, 2) NULL DEFAULT NULL,
  `next_payment_date` datetime(6) NULL DEFAULT NULL,
  `outstanding_balance` decimal(64, 2) NULL DEFAULT NULL,
  `payment_cycle` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `period_type` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_type` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_status` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `recurring_payment_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rp_invoice_id` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_created` datetime(6) NULL DEFAULT NULL,
  `amount1` decimal(64, 2) NULL DEFAULT NULL,
  `amount2` decimal(64, 2) NULL DEFAULT NULL,
  `amount3` decimal(64, 2) NULL DEFAULT NULL,
  `mc_amount1` decimal(64, 2) NULL DEFAULT NULL,
  `mc_amount2` decimal(64, 2) NULL DEFAULT NULL,
  `mc_amount3` decimal(64, 2) NULL DEFAULT NULL,
  `password` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `period1` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `period2` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `period3` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reattempt` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `recur_times` int NULL DEFAULT NULL,
  `recurring` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `retry_at` datetime(6) NULL DEFAULT NULL,
  `subscr_date` datetime(6) NULL DEFAULT NULL,
  `subscr_effective` datetime(6) NULL DEFAULT NULL,
  `subscr_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_creation_date` datetime(6) NULL DEFAULT NULL,
  `case_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_type` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receipt_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `handling_amount` decimal(64, 2) NULL DEFAULT NULL,
  `transaction_subject` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipaddress` char(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `from_view` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mp_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `option_selection1` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_selection2` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `paypal_ipn_txn_id_8fa22c44`(`txn_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paypal_ipn
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_association
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_association`;
CREATE TABLE `social_auth_association`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued` int NOT NULL,
  `lifetime` int NOT NULL,
  `assoc_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_auth_association_server_url_handle_078befa2_uniq`(`server_url`, `handle`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_association
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_code
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_code`;
CREATE TABLE `social_auth_code`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_auth_code_email_code_801b2d02_uniq`(`email`, `code`) USING BTREE,
  INDEX `social_auth_code_code_a2393167`(`code`) USING BTREE,
  INDEX `social_auth_code_timestamp_176b341f`(`timestamp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_code
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_nonce
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_nonce`;
CREATE TABLE `social_auth_nonce`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int NOT NULL,
  `salt` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq`(`server_url`, `timestamp`, `salt`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_nonce
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_partial
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_partial`;
CREATE TABLE `social_auth_partial`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_step` smallint UNSIGNED NOT NULL,
  `backend` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `social_auth_partial_token_3017fea3`(`token`) USING BTREE,
  INDEX `social_auth_partial_timestamp_50f2119f`(`timestamp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_partial
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_usersocialauth
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_usersocialauth`;
CREATE TABLE `social_auth_usersocialauth`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_auth_usersocialauth_provider_uid_e6b5e668_uniq`(`provider`, `uid`) USING BTREE,
  INDEX `social_auth_usersocialauth_user_id_17d28448_fk_home_user_id`(`user_id`) USING BTREE,
  INDEX `social_auth_usersocialauth_uid_796e51dc`(`uid`) USING BTREE,
  CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_usersocialauth
-- ----------------------------
INSERT INTO `social_auth_usersocialauth` VALUES (1, 'google-oauth2', 'yarxalo@gmail.com', '{\"auth_time\": 1623740669, \"expires\": 3597, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfH6SMCdGPazLzyOV9jFqIrN2KIPG2UvtfVoGKOT7sYw7ysyXnYLtHKv3dgEzRfFMXNm5ZceQJy3sqCiq6QnaqZS9gRbzhPuG6-WTWm62qMi0Mka6kIKnsUcJXnKOaxQV5qCNXBNSPdyicTYNFCgT1xFcBZ8qg\"}', 35, '2021-06-15 00:04:49.212724', '2021-06-15 07:04:29.941485');
INSERT INTO `social_auth_usersocialauth` VALUES (2, 'google-oauth2', 'mikhaildevpay@gmail.com', '{\"auth_time\": 1623717234, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfH6SMB_jHkVdxofCVps5uHZIgJwiAA_U7erzvSgDUcIW_-DBRj87APTrmdVAHq8h0fJPOnED72msKXo6C-1HW8O-VQAWresZpZElSrhYdvH93UpYzPW6OjXsNz_lD_4AIY0pYmI84dL_loA67zaIsUoAZZc\"}', 35, '2021-06-15 00:23:09.495962', '2021-06-15 00:33:54.292076');
INSERT INTO `social_auth_usersocialauth` VALUES (3, 'google-oauth2', 'ernestpapyan96@gmail.com', '{\"auth_time\": 1623717270, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfH6SMBr9O5cEjNpqVqW8e1AXbXWkM2ivSQlxEr1DUTSihT5A-EtrfQVkycJEWyVJ8DWu_RIb7NAz_NaaNSSzLL9Dx4HukNIhRG2gU7AxkcDfT7yzSxFZQBDNzNKglLBKeKXWPzRdRdCecvZ81TVmEAmFjpX\"}', 68, '2021-06-15 00:26:39.876997', '2021-06-15 00:34:30.748895');

-- ----------------------------
-- Table structure for student_course_comments
-- ----------------------------
DROP TABLE IF EXISTS `student_course_comments`;
CREATE TABLE `student_course_comments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `rating` double NULL DEFAULT NULL,
  `reply` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `date` datetime(6) NOT NULL,
  `date_updated` datetime(6) NOT NULL,
  `course_id_id` int NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  `approved_by_teacher` tinyint(1) NOT NULL COMMENT '0: not added to profile, 1: added to profile',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_course_comme_course_id_id_484b0f1c_fk_teacher_c`(`course_id_id`) USING BTREE,
  INDEX `student_course_comments_user_id_ed721845_fk_home_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `student_course_comme_course_id_id_484b0f1c_fk_teacher_c` FOREIGN KEY (`course_id_id`) REFERENCES `teacher_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_course_comments_user_id_ed721845_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_course_comments
-- ----------------------------
INSERT INTO `student_course_comments` VALUES (1, 'user comment 1', 4.5, '', '2021-06-28 12:58:18.738842', '2021-06-28 12:58:18.738866', 29, 2, 0);
INSERT INTO `student_course_comments` VALUES (4, 'user comment 2', 4.7, '', '2021-06-28 12:44:40.917868', '2021-06-28 12:44:40.917878', 29, 4, 0);
INSERT INTO `student_course_comments` VALUES (5, 'user comment 3', 4.8, '', '2021-06-14 09:29:22.699201', '2021-06-14 09:29:22.699201', 29, 5, 0);
INSERT INTO `student_course_comments` VALUES (8, 'user comment 4', 4.5, '', '2021-06-14 09:29:18.655050', '2021-06-14 09:29:18.655050', 29, 6, 0);
INSERT INTO `student_course_comments` VALUES (13, 'user comment 6', 4.8, NULL, '2021-06-14 12:18:58.000000', '2021-06-14 12:19:08.000000', 29, 7, 1);
INSERT INTO `student_course_comments` VALUES (17, 'dsaasfdasfd', 2.5, NULL, '2021-10-19 08:34:52.543598', '2021-10-19 08:34:52.543598', 64, 45, 0);

-- ----------------------------
-- Table structure for student_payment
-- ----------------------------
DROP TABLE IF EXISTS `student_payment`;
CREATE TABLE `student_payment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `card_no` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cvv` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `month` int NULL DEFAULT NULL,
  `year` int NULL DEFAULT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_payment_student_id_50961a5c_fk_home_user_id`(`student_id`) USING BTREE,
  CONSTRAINT `student_payment_student_id_50961a5c_fk_home_user_id` FOREIGN KEY (`student_id`) REFERENCES `home_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_payment
-- ----------------------------
INSERT INTO `student_payment` VALUES (1, '4520171666197100', '333', 12, 2021, 43);

-- ----------------------------
-- Table structure for student_student_cart_courses
-- ----------------------------
DROP TABLE IF EXISTS `student_student_cart_courses`;
CREATE TABLE `student_student_cart_courses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id_id` int NULL DEFAULT NULL,
  `student_id_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_student_cart_course_id_id_529cc64c_fk_teacher_c`(`course_id_id`) USING BTREE,
  INDEX `student_student_cart_student_id_id_406bf019_fk_home_user`(`student_id_id`) USING BTREE,
  CONSTRAINT `student_student_cart_course_id_id_529cc64c_fk_teacher_c` FOREIGN KEY (`course_id_id`) REFERENCES `teacher_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_student_cart_student_id_id_406bf019_fk_home_user` FOREIGN KEY (`student_id_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_student_cart_courses
-- ----------------------------
INSERT INTO `student_student_cart_courses` VALUES (103, 29, 2);
INSERT INTO `student_student_cart_courses` VALUES (124, 46, 43);
INSERT INTO `student_student_cart_courses` VALUES (127, 46, 96);
INSERT INTO `student_student_cart_courses` VALUES (129, 48, 97);
INSERT INTO `student_student_cart_courses` VALUES (130, 48, 96);
INSERT INTO `student_student_cart_courses` VALUES (137, 64, 43);
INSERT INTO `student_student_cart_courses` VALUES (153, 57, 43);
INSERT INTO `student_student_cart_courses` VALUES (157, 65, 43);
INSERT INTO `student_student_cart_courses` VALUES (160, 65, 96);

-- ----------------------------
-- Table structure for student_student_certificate
-- ----------------------------
DROP TABLE IF EXISTS `student_student_certificate`;
CREATE TABLE `student_student_certificate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NULL DEFAULT NULL,
  `course_id` int NULL DEFAULT NULL,
  `url` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_student_certificate
-- ----------------------------
INSERT INTO `student_student_certificate` VALUES (2, 43, 29, '/certificates/beauty_beautyful_35360547.pdf', '96388838');

-- ----------------------------
-- Table structure for student_student_favourite_courses
-- ----------------------------
DROP TABLE IF EXISTS `student_student_favourite_courses`;
CREATE TABLE `student_student_favourite_courses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id_id` int NULL DEFAULT NULL,
  `student_id_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_student_favo_course_id_id_6184b43a_fk_teacher_c`(`course_id_id`) USING BTREE,
  INDEX `student_student_favo_student_id_id_50cb2362_fk_home_user`(`student_id_id`) USING BTREE,
  CONSTRAINT `student_student_favo_course_id_id_6184b43a_fk_teacher_c` FOREIGN KEY (`course_id_id`) REFERENCES `teacher_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_student_favo_student_id_id_50cb2362_fk_home_user` FOREIGN KEY (`student_id_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_student_favourite_courses
-- ----------------------------
INSERT INTO `student_student_favourite_courses` VALUES (90, 29, 43);
INSERT INTO `student_student_favourite_courses` VALUES (106, 48, 97);
INSERT INTO `student_student_favourite_courses` VALUES (110, 64, 43);
INSERT INTO `student_student_favourite_courses` VALUES (111, 57, 43);

-- ----------------------------
-- Table structure for student_student_performance
-- ----------------------------
DROP TABLE IF EXISTS `student_student_performance`;
CREATE TABLE `student_student_performance`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NULL DEFAULT NULL,
  `total_cnt` int NULL DEFAULT NULL,
  `answer_cnt` int NULL DEFAULT NULL,
  `rate` double NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_student_performance_user_id_f15a4565_fk_home_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `student_student_performance_user_id_f15a4565_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_student_performance
-- ----------------------------

-- ----------------------------
-- Table structure for student_student_rating_courses
-- ----------------------------
DROP TABLE IF EXISTS `student_student_rating_courses`;
CREATE TABLE `student_student_rating_courses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` double NULL DEFAULT NULL,
  `course_id_id` int NULL DEFAULT NULL,
  `student_id_id` int NULL DEFAULT NULL,
  `comment` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_student_rati_course_id_id_a636893f_fk_teacher_c`(`course_id_id`) USING BTREE,
  INDEX `student_student_rati_student_id_id_d6eb3c4c_fk_home_user`(`student_id_id`) USING BTREE,
  CONSTRAINT `student_student_rati_course_id_id_a636893f_fk_teacher_c` FOREIGN KEY (`course_id_id`) REFERENCES `teacher_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_student_rati_student_id_id_d6eb3c4c_fk_home_user` FOREIGN KEY (`student_id_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_student_rating_courses
-- ----------------------------
INSERT INTO `student_student_rating_courses` VALUES (1, 3, 29, 2, 'Not Good course');

-- ----------------------------
-- Table structure for student_student_register_courses
-- ----------------------------
DROP TABLE IF EXISTS `student_student_register_courses`;
CREATE TABLE `student_student_register_courses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id_id` int NULL DEFAULT NULL,
  `student_id_id` int NULL DEFAULT NULL,
  `last_completed_section_id` int NOT NULL,
  `date_created` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw` tinyint NOT NULL DEFAULT 0 COMMENT '0: none 1: hold 2: ready 3: done',
  `approve_date` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT 'time that admin approve this withdraw',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_student_regi_course_id_id_890510c7_fk_teacher_c`(`course_id_id`) USING BTREE,
  INDEX `student_student_regi_student_id_id_dcba9c6f_fk_home_user`(`student_id_id`) USING BTREE,
  CONSTRAINT `student_student_regi_course_id_id_890510c7_fk_teacher_c` FOREIGN KEY (`course_id_id`) REFERENCES `teacher_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_student_regi_student_id_id_dcba9c6f_fk_home_user` FOREIGN KEY (`student_id_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_student_register_courses
-- ----------------------------
INSERT INTO `student_student_register_courses` VALUES (1, 29, 1, 0, '2021-05-10 20:52:58', 3, '2021-08-20 18:56:53');
INSERT INTO `student_student_register_courses` VALUES (8, 29, 2, 0, '2021-04-20 12:20:10', 3, '2021-06-07 22:17:02');
INSERT INTO `student_student_register_courses` VALUES (10, 56, 43, 566, '2021-09-12 10:54:36', 0, '');
INSERT INTO `student_student_register_courses` VALUES (11, 56, 93, 566, '2021-09-12 10:54:36', 0, '');
INSERT INTO `student_student_register_courses` VALUES (12, 64, 45, 594, '2021-10-12 10:54:36', 0, '');

-- ----------------------------
-- Table structure for teacher_answers
-- ----------------------------
DROP TABLE IF EXISTS `teacher_answers`;
CREATE TABLE `teacher_answers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` int NOT NULL,
  `pending` int NULL DEFAULT NULL,
  `student_id` int NULL DEFAULT NULL,
  `course_id` int NOT NULL,
  `question_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teacher_answers_course_id_b393bd3c_fk_teacher_courses_id`(`course_id`) USING BTREE,
  INDEX `teacher_answers_question_id_b202c822_fk_teacher_questions_id`(`question_id`) USING BTREE,
  CONSTRAINT `teacher_answers_course_id_b393bd3c_fk_teacher_courses_id` FOREIGN KEY (`course_id`) REFERENCES `teacher_courses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `teacher_answers_question_id_b202c822_fk_teacher_questions_id` FOREIGN KEY (`question_id`) REFERENCES `teacher_questions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_answers
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_categories
-- ----------------------------
DROP TABLE IF EXISTS `teacher_categories`;
CREATE TABLE `teacher_categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `namear` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_categories
-- ----------------------------
INSERT INTO `teacher_categories` VALUES (1, 'Web Development', 'تطوير الموقع', 'assets/img/categories/single_categories/p-languages.svg', '2020-06-15 04:48:03.233279', '2020-06-15 04:45:36.220035');
INSERT INTO `teacher_categories` VALUES (3, 'Design', 'تصميم', 'assets/img/categories/single_categories/design.svg', '2020-06-15 04:48:28.184719', '2020-06-15 04:48:28.184776');
INSERT INTO `teacher_categories` VALUES (4, 'Drama & Cinema', 'الدراما والسينما', 'assets/img/categories/single_categories/drama.svg', '2020-06-15 04:48:37.472006', '2020-06-15 04:48:37.472109');
INSERT INTO `teacher_categories` VALUES (5, 'Mathmatics', 'الرياضيات', 'assets/img/categories/single_categories/math.svg', '2020-06-15 04:48:51.188720', '2020-06-15 04:48:51.188797');
INSERT INTO `teacher_categories` VALUES (6, 'Aviation', 'طيران', 'assets/img/categories/single_categories/aviation.svg', '2020-06-15 04:49:31.913913', '2020-06-15 04:49:31.913959');
INSERT INTO `teacher_categories` VALUES (7, 'Engineering', 'هندسة', 'assets/img/categories/single_categories/Engineer.svg', '2020-06-15 04:49:42.566084', '2020-06-15 04:49:42.566132');
INSERT INTO `teacher_categories` VALUES (8, 'Art', 'فن', 'assets/img/categories/single_categories/art.svg', '2020-06-15 04:50:02.291568', '2020-06-15 04:50:02.291674');
INSERT INTO `teacher_categories` VALUES (9, 'Food', 'طعام', 'assets/img/categories/single_categories/food.svg\r\n', '2020-06-15 04:50:19.272292', '2020-06-15 04:50:19.272474');
INSERT INTO `teacher_categories` VALUES (10, 'softwares Programming', 'برمجة البرامج', 'assets/img/categories/single_categories/softwares.svg\r\n', '2020-06-15 04:50:39.513182', '2020-06-15 04:50:39.513246');
INSERT INTO `teacher_categories` VALUES (11, 'skills', 'مهارات', 'assets/img/categories/single_categories/skills.svg\r\n', '2020-06-15 04:51:18.457590', '2020-06-15 04:51:18.457636');
INSERT INTO `teacher_categories` VALUES (12, 'sewiing', 'خياطة', 'assets/img/categories/single_categories/sewiing.svg\r\n', '2020-06-15 04:51:33.474797', '2020-06-15 04:51:33.474892');
INSERT INTO `teacher_categories` VALUES (13, 'Self Development', 'تطوير الذات', 'assets/img/categories/single_categories/self-dev.svg\r\n', '2020-06-15 04:51:55.006838', '2020-06-15 04:51:55.006895');
INSERT INTO `teacher_categories` VALUES (14, 'Information Technology', 'تكنولوجيا المعلومات', 'assets/img/categories/single_categories/robot.svg\r\n', '2020-06-15 04:52:12.510722', '2020-06-15 04:52:12.510774');

-- ----------------------------
-- Table structure for teacher_courses
-- ----------------------------
DROP TABLE IF EXISTS `teacher_courses`;
CREATE TABLE `teacher_courses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `requirements` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `gains` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `scat_id` int NULL DEFAULT NULL,
  `subcat_id` int NULL DEFAULT 0,
  `spam` int NULL DEFAULT 0,
  `price` double NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  `user_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `students_admitted` int NOT NULL,
  `students_passed` int NOT NULL,
  `header_img` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_img` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_url` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `course_level` tinyint NOT NULL DEFAULT 1 COMMENT '0: all levels, 1: beginer, 2: immediate, 3: advanced',
  `dripping` tinyint NULL DEFAULT NULL COMMENT '0: normal 1: dripping',
  `pending` int NOT NULL,
  `approval_status` tinyint NOT NULL COMMENT '0: none, 1: send to admin 2: approved',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_user`(`user_id`) USING BTREE,
  CONSTRAINT `course_user` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_courses
-- ----------------------------
INSERT INTO `teacher_courses` VALUES (29, 'happy course 1', 'qwesdfsdfsdfsdfsdfsdfdsfsdfsdfsdfsdfsdgsdfsdgsdfsdf&lt;p&gt;qwesdfsdfsdfsdfsdfsdfdsfsdfsdfsdfsdfsdgsdfsdfsdfsdfsdfsdgsdfsdf&lt;/p&gt;', 'qwe&lt;p&gt;sdfgsdfsdsvsdvs&lt;/p&gt;', 'qwe&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1, 0, 0, 40, 'Khaled AbrahamAbrahamAbraham', 0, 0, 0, '/user_images/60dece45-923c-439f-b69e-e3be15a24267.jpg', '/user_images/8633d7d8-c081-4267-84a1-ff732c116a5b.jpg', 'Khaled_AbrahamAbrahamAbraham_0029', '2021-07-31 21:38:47.984829', 1, 0, 4, 2);
INSERT INTO `teacher_courses` VALUES (46, 'Learning Django', 'Learning Django Description', 'Learning Django Requirements', 'Learning Django Gains', 9, 19, 0, 200, 40, 'Khaled AbrahamAbrahamAbraham', 0, 0, 0, '/user_images/dee09277-8902-41ea-b0f2-d0ee67bf8745.png', '/user_images/76b8a9a0-0c8b-4e4d-9a9f-702f3acc9ab9.jpg', 'Learning_Django', '2021-08-30 04:25:28.997925', 0, 0, 4, 2);
INSERT INTO `teacher_courses` VALUES (48, 'ahaka', 'aa', 'aaa', 'aa', 1, 1, 0, 10, 43, 'الزبير محمد   صالح جميل', 0, 0, 0, '/user_images/930573c1-6f3e-462a-a4dc-363e2e85b026.jpeg', '/user_images/5aee0c64-8053-4633-bee2-6c603f77bfb3.jpeg', 'ahaka', '2021-08-30 04:11:36.900020', 0, 0, 4, 2);
INSERT INTO `teacher_courses` VALUES (53, 'Learn Rails', 'Learn Rails', 'Learn Rails', 'Learn Rails', 1, 1, 0, 0, 43, 'الزبير محمد   صالح جميل', 1, 0, 0, '/user_images/d300c75b-3a4f-460a-bd58-5a789329ec98.jpg', '/user_images/44815fca-177f-4891-b148-7ad2407530e8.jpg', 'الزبيرمحمد_صالحجميل_0053', '2021-09-12 03:34:33.553785', 0, 0, 3, 0);
INSERT INTO `teacher_courses` VALUES (54, 'Rails course', 'course', 'course', 'course', 1, 1, 0, 0, 43, 'الزبير محمد   صالح جميل', 1, 0, 0, '/user_images/9bb93a52-fe8f-4ff1-914f-4dce98d84ffd.jpg', '/user_images/048d9b9a-5d9b-487f-b8f0-9907188b5a89.jpg', 'Rails_course', '2021-09-12 05:39:21.849723', 0, 0, 0, 0);
INSERT INTO `teacher_courses` VALUES (55, 'Rails course', 'Rails course', 'Rails course', 'Rails course', 1, 1, 0, 0, 43, 'الزبير محمد   صالح جميل', 1, 0, 0, '/user_images/c874a39f-f4e8-41ff-ac33-37be209c3443.jpg', '/user_images/36cf5912-8489-43ab-bfa0-ccaa96bd53d7.jpg', 'Rails_course', '2021-09-12 05:43:18.604580', 0, 0, 2, 0);
INSERT INTO `teacher_courses` VALUES (56, 'Laravel Course', 'Laravel Course', 'Laravel Course', 'Laravel Course', 1, 1, 0, 11, 43, 'الزبير محمد   صالح جميل', 0, 0, 0, '/user_images/1948f4b6-4740-45d4-8c98-36657a73f93a.jpg', '/user_images/50dc5495-1c55-40d3-a3da-072ce2990368.jpg', '/course/Laravel Course/الزبير محمد _ صالح جميل_0056', '2021-09-12 06:03:54.263144', 0, 0, 4, 1);
INSERT INTO `teacher_courses` VALUES (57, 'Laravel course 2', 'Laravel course 2', 'Laravel course 2', 'Laravel course 2', 1, 1, 0, 0, 43, 'الزبير محمد   صالح جميل', 1, 0, 0, '/user_images/3a99d923-fb7b-40d6-9f31-bb1d81fcb92c.jpg', '/user_images/cdb83297-e1bd-4c35-951e-79534adfed92.jpg', '/course/Laravel course 2/الزبير محمد _ صالح جميل_0057', '2021-09-12 06:14:45.065987', 0, 0, 4, 1);
INSERT INTO `teacher_courses` VALUES (64, 'kopchik test course', 'test description', 'test requirements', 'tteset gains', 1, 1, 0, 12, 43, 'Ko  صالح جميل', 0, 0, 0, '/user_images/b5d152c4-21c6-4420-b0e3-652c59c84547.png', '/user_images/810a1395-3b4e-4342-9ba8-bfcdbb8cba1f.png', 'kopchiktestcourse', '2021-10-07 15:56:06.606264', 0, 0, 3, 2);
INSERT INTO `teacher_courses` VALUES (65, 'test for approve', 'This is test for approve', 'course requirements', 'course gains', 1, 1, 0, 40, 43, 'Ko  صالح جميل', 0, 0, 0, '/user_images/6e90a1f6-4b85-4cd7-a2b6-63a2feec11cd.jpg', '/user_images/3bf8e6e4-bdb7-442f-b3f3-c51e02c8aecd.png', 'testforapprove', '2021-10-20 00:36:29.418661', 0, 0, 4, 2);
INSERT INTO `teacher_courses` VALUES (66, 'Test for admin modal', 'aaa', 'a', 'a', 3, 5, 0, 60, 43, 'Ko  صالح جميل', 0, 0, 0, '/user_images/8f132716-abb5-4769-85d9-c20f1cffd704.png', '/user_images/42733873-817e-4418-9586-a9b3b629eb4b.png', 'Testforadminmodal', '2021-10-25 06:00:37.891013', 0, 0, 4, 1);

-- ----------------------------
-- Table structure for teacher_questions
-- ----------------------------
DROP TABLE IF EXISTS `teacher_questions`;
CREATE TABLE `teacher_questions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `section_id` int NULL DEFAULT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `answer` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nos` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_questions
-- ----------------------------
INSERT INTO `teacher_questions` VALUES (1, 4, 'HTML?', 'Hyper Text Markup Language,', 'true,', 1);
INSERT INTO `teacher_questions` VALUES (2, 7, 'Okay?', 'ok,', 'true,', 1);
INSERT INTO `teacher_questions` VALUES (3, 11, 'okay?', 'ok,', 'true,', 1);
INSERT INTO `teacher_questions` VALUES (4, 15, 'Okay?', 'Ok,', 'true,', 1);
INSERT INTO `teacher_questions` VALUES (5, 32, 'Full Meaning CCNA?', 'Cisco Certified Network Associate,', 'true,', 1);
INSERT INTO `teacher_questions` VALUES (6, 35, 'Okay?', 'ok,', 'true,', 1);
INSERT INTO `teacher_questions` VALUES (7, 39, 'Okay?', 'ok,', 'true,', 1);
INSERT INTO `teacher_questions` VALUES (8, 43, 'Cool?', 'cool,', 'true,', 1);
INSERT INTO `teacher_questions` VALUES (9, 46, 'Who was Batman\'s butler?', 'Alfred,Robin,Jhon,', 'true,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (10, 49, 'Konta?', 'Sotto,ff,ffgdfgdf,hgh,', 'true,false,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (11, 49, 'Eta?', 'eta vai,dgdg,dfgdgfd,dgdfgfdg,', 'true,false,false,false,', 2);
INSERT INTO `teacher_questions` VALUES (12, 49, 'tarpor?', 'hmm,fgdfgfdg,dgdfgdfg,dgdfgdfg,', 'true,false,false,false,', 3);
INSERT INTO `teacher_questions` VALUES (13, 52, 'Okay?', 'Ok,fsdf,ffsdfds,ffdsfffff,', 'true,false,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (14, 52, 'Tare nare?', 'yes,dfds,hhh,hgfdsrfe,', 'true,false,false,false,', 2);
INSERT INTO `teacher_questions` VALUES (15, 52, 'alright?', 'dfsdfsd,yay,jks,qqq,', 'false,true,false,false,', 3);
INSERT INTO `teacher_questions` VALUES (16, 53, 'Hmm?', 'yes,ewe,kjhf,rrwe,', 'true,false,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (17, 53, 'Will you?', 'kkg,ggdd,hmm,uio,', 'false,false,true,false,', 5);
INSERT INTO `teacher_questions` VALUES (18, 55, 'dfdfd', 'dfdd,', 'true,', 1);
INSERT INTO `teacher_questions` VALUES (27, 67, 'test1', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 1);
INSERT INTO `teacher_questions` VALUES (30, 67, 'test2', 'asdfsdf,sadfasdfas,fasdfasdf,sadfasdf,', 'false,false,false,true,', 2);
INSERT INTO `teacher_questions` VALUES (31, 67, 'test3', 'scsdcs,sgfdsfsfe,fwefwef,csdcsdc,', 'false,false,false,true,', 3);
INSERT INTO `teacher_questions` VALUES (32, 67, 'test4', 'gfdfg,fscdsc,vgfdgdf,bdfbdfv,', 'false,false,false,true,', 4);
INSERT INTO `teacher_questions` VALUES (33, 67, 'test5', 'asd,cascx,asdsd,dqwdqwd,', 'false,true,false,false,', 5);
INSERT INTO `teacher_questions` VALUES (34, 68, 'test1', 'sdfsdf,sdfsdf,sdfsdf,sdfsdf,', 'false,false,false,true,', 1);
INSERT INTO `teacher_questions` VALUES (35, 68, 'test2', 'sdfsdf,sdgsdfs,sdfsdf,sdwdwe,', 'false,false,true,false,', 2);
INSERT INTO `teacher_questions` VALUES (36, 68, 'test3', 'xcvsddsf,vdsf,vsdvsdfs,sassad,', 'false,true,false,false,', 3);
INSERT INTO `teacher_questions` VALUES (37, 68, 'test4', 'qwwef,gfdgf,fdgdf,sdfsdf,', 'true,false,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (38, 68, 'test5', 'sdgsdf,sdfsdf,sdfs,asdasd,', 'false,false,true,false,', 5);
INSERT INTO `teacher_questions` VALUES (39, 79, 'question 1', 'sdfsdfsdf,sdf,sdf,sdf,', 'false,false,false,true,', 1);
INSERT INTO `teacher_questions` VALUES (40, 79, 'question 2', 'sdfsdf,sdfsd,sdfsdf,sdfsdf,', 'false,false,true,false,', 2);
INSERT INTO `teacher_questions` VALUES (41, 79, 'question 3', 'sgdfsdf,sdf,sdf,sdfsdf,', 'true,false,false,false,', 3);
INSERT INTO `teacher_questions` VALUES (42, 79, 'question 4', 'sdfsdf,sdgdsf,sdgsfd,sdgsdf,', 'false,false,true,false,', 4);
INSERT INTO `teacher_questions` VALUES (43, 79, 'question 5', 'gdfsf,dfgdfg,dfg,dfhdfgd,', 'true,false,false,false,', 5);
INSERT INTO `teacher_questions` VALUES (44, 81, 'question 1', 'sdfsdf,sdfsdf,sdfsdf,sdfsdf,', 'false,false,false,true,', 1);
INSERT INTO `teacher_questions` VALUES (45, 81, 'question 2', 'sgdf,dfsfsd,gfgfd,dfgdfg,', 'true,false,false,false,', 2);
INSERT INTO `teacher_questions` VALUES (46, 81, 'question 3', 'gdsfd,sdfs,asdasd,asdasd,', 'false,false,false,true,', 3);
INSERT INTO `teacher_questions` VALUES (47, 81, 'question 4', 'dfgdfg,sdf,sdgdfg,dfgdfg,', 'false,true,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (48, 81, 'question 5', 'dfgdfg,dfg,dfg,dfg,', 'true,false,false,false,', 5);
INSERT INTO `teacher_questions` VALUES (49, 85, 'question 1', 'sdfsdf,sdfsdf,sdfsd,sdf,', 'false,false,false,true,', 1);
INSERT INTO `teacher_questions` VALUES (50, 85, 'question 2', 'sdfsdf,sdfsdf,sdfsdf,sdfsdf,', 'true,false,false,false,', 2);
INSERT INTO `teacher_questions` VALUES (51, 85, 'question 3', 'sdfsgd,sdfsdf,sdf,gfdgdfg,', 'true,false,false,false,', 3);
INSERT INTO `teacher_questions` VALUES (52, 85, 'question 4', 'sgdsfs,sdgsdf,sdfsdf,vsdvf,', 'true,false,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (53, 85, 'question 5', 'sdfsf,sdfsd,sdf,gdfdgfg,', 'false,true,false,false,', 5);
INSERT INTO `teacher_questions` VALUES (54, 88, 'question 1', 'sds,sdf,sdf,sdf,', 'false,false,false,true,', 1);
INSERT INTO `teacher_questions` VALUES (55, 88, 'question 2', 'sdsd,ssd,sdf,sdf,', 'false,false,true,false,', 2);
INSERT INTO `teacher_questions` VALUES (56, 88, 'question 3', 'sdf,sdf,sdf,sdd,', 'false,true,false,false,', 3);
INSERT INTO `teacher_questions` VALUES (57, 88, 'question 4', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 4);
INSERT INTO `teacher_questions` VALUES (58, 88, 'question 5', 'sdf,sdf,sdf,sdf,', 'false,false,true,false,', 5);
INSERT INTO `teacher_questions` VALUES (59, 92, 'A1', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 1);
INSERT INTO `teacher_questions` VALUES (60, 92, 'A2', 'sd,sd,sd,sd,', 'false,false,true,false,', 2);
INSERT INTO `teacher_questions` VALUES (61, 92, 'A3', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 3);
INSERT INTO `teacher_questions` VALUES (62, 92, 'A4', 'sdf,sdf,sdf,sdf,', 'false,false,true,false,', 4);
INSERT INTO `teacher_questions` VALUES (63, 92, 'A5', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 5);
INSERT INTO `teacher_questions` VALUES (64, 96, 'B1', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 1);
INSERT INTO `teacher_questions` VALUES (65, 96, 'B2', 'sdf,sdf,sdf,sdf,', 'false,false,true,false,', 2);
INSERT INTO `teacher_questions` VALUES (66, 96, 'B3', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 3);
INSERT INTO `teacher_questions` VALUES (67, 96, 'B4', 'sdf,sdf,sdf,sdg,', 'false,true,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (68, 96, 'B5', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 5);
INSERT INTO `teacher_questions` VALUES (69, 100, 'C1', 'sdf,sdf,sdf,sdf,', 'false,false,true,false,', 1);
INSERT INTO `teacher_questions` VALUES (70, 100, 'C2', 'sdf,sdf,sdf,sdf,', 'false,false,true,false,', 2);
INSERT INTO `teacher_questions` VALUES (71, 100, 'C3', 'sd,sdf,sdf,sdf,', 'false,false,false,true,', 3);
INSERT INTO `teacher_questions` VALUES (72, 100, 'C4', 'sdf,sdf,sdf,sdf,', 'false,false,true,false,', 4);
INSERT INTO `teacher_questions` VALUES (73, 100, 'C5', 'sdf,sdf,sdf,sdf,', 'true,false,false,false,', 5);
INSERT INTO `teacher_questions` VALUES (74, 495, 'Where are you from?', 'Ukraine,Russia,UK,India,', 'true,false,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (75, 495, 'Who are you', 'Seller,Buyer,Teacher,developer,', 'false,false,false,true,', 2);
INSERT INTO `teacher_questions` VALUES (76, 495, 'what is 1?', 'Character,one,first,integer,', 'false,false,false,true,', 3);
INSERT INTO `teacher_questions` VALUES (77, 495, 'What is 1 next?', '2,second,0,nothing,', 'true,false,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (78, 495, 'What is your name?', 'I am not sure because I have nick name and full name, mid, ,Michel,Andrey,Tom,', 'true,false,false,false,', 5);
INSERT INTO `teacher_questions` VALUES (79, 500, 'aaa', 'aaa,daf,afd,gagd,', 'true,false,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (80, 500, 'www', 'www,aweg,aewg,agsd,', 'true,false,false,false,', 2);
INSERT INTO `teacher_questions` VALUES (81, 500, 'right', 'asdfafsd,ww,top,python,', 'false,true,false,false,', 3);
INSERT INTO `teacher_questions` VALUES (82, 500, 'asd', 'afdsa,aaa,sadf,as,', 'true,false,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (83, 500, 'python', 'lang,lib,attr,eat,', 'true,false,false,false,', 5);
INSERT INTO `teacher_questions` VALUES (84, 546, 'What is the Django?', 'Html ,Javascript framework,Python-based framework,Python library,', 'false,false,true,false,', 1);
INSERT INTO `teacher_questions` VALUES (85, 546, 'You can to run Django project by below command', 'pip django 127.0.0.1:8000,python manage.py,python home.py server 8000,python manage.py runserver,', 'false,false,false,true,', 2);
INSERT INTO `teacher_questions` VALUES (86, 546, 'You can to run the django project * .', 'only local server,only live hosting server,local and hosting server,only node environments ,', 'false,false,true,false,', 3);
INSERT INTO `teacher_questions` VALUES (87, 546, 'Choose incorrected conditional syntax.', 'if (x == 1){\n   print \"Okay\"\n},if (x != 1){\n   print \"Okay\"\n},if x == 1\n   print \"Okay\"\n,if x == 1:\n   print \"Okay\",', 'false,false,false,true,', 4);
INSERT INTO `teacher_questions` VALUES (88, 546, 'Where do you using \"{{ course }}\"syntax?', 'model,view,query,template,', 'false,false,false,true,', 5);
INSERT INTO `teacher_questions` VALUES (89, 549, 'asdasdfasdf a dasdf', 'asdf asdf,asdfasdf,asdfasdfads,asdfassadf ,', 'true,false,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (90, 549, 'asdfasd', 'fasdfasd,fasdfas,assd,asdfasdf,', 'false,false,false,true,', 2);
INSERT INTO `teacher_questions` VALUES (91, 549, 'asdsfaewf wef awe', 'sda fsdfas,fasd f sad df,sadfasdf ,asasfdas,', 'false,false,true,false,', 3);
INSERT INTO `teacher_questions` VALUES (92, 549, 'asdf asd fasdfsdfs', 'sdafadsf, sadfasd, sdfs f ds asdfsdf,asdf asdfasdf,', 'true,false,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (93, 549, 'asdfasdf', 'asdf,asdfasdfasd,asdfasd,asdasdfd,', 'true,false,false,false,', 5);
INSERT INTO `teacher_questions` VALUES (94, 552, 'asdfasdfasdf', 'asdfasdfas,as,asdf,asdf,', 'true,false,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (95, 552, 'asdfasdf', 'asdfasd,fasdfasd,fasdfas,fsdf,', 'true,false,false,false,', 2);
INSERT INTO `teacher_questions` VALUES (96, 552, 'asdfasdf', 'asdfasd,fasdf,adsfasdf,asdfasdf,', 'true,false,false,false,', 3);
INSERT INTO `teacher_questions` VALUES (97, 552, 'asdfasdf', 'asdf,asdf,asdfa,sfdf,', 'true,false,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (98, 552, 'asdfasdf', 'asdfasdf,asdfasdf,asdfadsfa,sdfasdf,', 'false,false,false,true,', 5);
INSERT INTO `teacher_questions` VALUES (99, 555, 'Question1?', 'c,w,w,w,', 'true,false,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (100, 555, 'qw?', 'w,w,c,w,', 'false,false,true,false,', 2);
INSERT INTO `teacher_questions` VALUES (101, 555, 'aa?', 'a,a,a,a,', 'false,false,false,true,', 3);
INSERT INTO `teacher_questions` VALUES (102, 555, 'aa?', 'aasaa,aa,aaa,aaa,', 'true,false,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (103, 555, 'aas?', 'aasss,amen,amen,amn,', 'false,false,false,true,', 5);
INSERT INTO `teacher_questions` VALUES (104, 558, 'What is the capital of Russia?', 'Moscow,Hassan,Vladivostok,Ural,', 'true,false,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (105, 558, 'Where is Brazil?', 'South America,North America,Africa,Europe,', 'true,false,false,false,', 2);
INSERT INTO `teacher_questions` VALUES (106, 558, 'What is Angular?', 'Javascript,Ruby,Python,HTML,', 'true,false,false,false,', 3);
INSERT INTO `teacher_questions` VALUES (107, 558, 'What is Django?', 'Python framework,Ruby framework,JS framework,PHP framework,', 'true,false,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (108, 558, 'What is Wordpress?', 'PHP framework,Python,Ruby,Javascript,', 'true,false,false,false,', 5);
INSERT INTO `teacher_questions` VALUES (109, 561, 'Quiz1', '1,2,3,4,', 'true,false,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (110, 561, 'Quiz2', '1,2,3,4,', 'true,false,false,false,', 2);
INSERT INTO `teacher_questions` VALUES (111, 561, 'Quiz3', '1,2,3,4,', 'true,false,false,false,', 3);
INSERT INTO `teacher_questions` VALUES (112, 561, 'Quiz4', '1,2,3,4,', 'true,false,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (113, 561, 'Quiz5', '1,2,3,4,', 'true,false,false,false,', 5);
INSERT INTO `teacher_questions` VALUES (114, 568, 'Quiz1', '1,2,3,4,', 'true,false,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (115, 568, 'Quiz2', '1,2,3,4,', 'true,false,false,false,', 2);
INSERT INTO `teacher_questions` VALUES (116, 568, 'Quiz3', '1,2,3,4,', 'true,false,false,false,', 3);
INSERT INTO `teacher_questions` VALUES (117, 568, 'Quiz4', '1,2,3,4,', 'true,false,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (118, 568, 'Quiz5', '25,1,2,3,', 'true,false,false,false,', 5);
INSERT INTO `teacher_questions` VALUES (119, 572, 'Laravel quiz 1', '1,2,3,4,', 'true,false,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (120, 572, 'Laravel quiz 2', '1,2,3,4,', 'true,false,false,false,', 2);
INSERT INTO `teacher_questions` VALUES (121, 572, 'Laravel quiz 3', '5,1,2,3,', 'true,false,false,false,', 3);
INSERT INTO `teacher_questions` VALUES (122, 572, 'Laravel quiz 4', '1,2,3,4,', 'true,false,false,false,', 4);
INSERT INTO `teacher_questions` VALUES (123, 572, 'Laravel quiz 5', '1,2,3,4,', 'true,false,false,false,', 5);
INSERT INTO `teacher_questions` VALUES (131, 595, 'what is the earthbrake?', 'a,asdf,dsfs,sdfs,', 'true,false,false,false,', 1);
INSERT INTO `teacher_questions` VALUES (132, 597, 'asdfs', 'sadf,sdf,asdf,asfd,', 'false,false,false,true,', 1);

-- ----------------------------
-- Table structure for teacher_questions1
-- ----------------------------
DROP TABLE IF EXISTS `teacher_questions1`;
CREATE TABLE `teacher_questions1`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` int NULL DEFAULT NULL,
  `aw_1_type` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_1_result` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_1_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `aw_2_type` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_2_result` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_2_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `aw_3_type` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_3_result` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_3_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `aw_4_type` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_4_result` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_4_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_questions1
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_sections
-- ----------------------------
DROP TABLE IF EXISTS `teacher_sections`;
CREATE TABLE `teacher_sections`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int NULL DEFAULT NULL,
  `type` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nos` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 600 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_sections
-- ----------------------------
INSERT INTO `teacher_sections` VALUES (89, 'sec1', 29, 'video', '1');
INSERT INTO `teacher_sections` VALUES (90, 'sec2', 29, 'video', '2');
INSERT INTO `teacher_sections` VALUES (91, 'sec3', 29, 'video', '3');
INSERT INTO `teacher_sections` VALUES (92, 'quiz section', 29, 'question', '1');
INSERT INTO `teacher_sections` VALUES (97, 'sec21', 31, 'video', '1');
INSERT INTO `teacher_sections` VALUES (98, 'sec22', 31, 'video', '2');
INSERT INTO `teacher_sections` VALUES (99, 'sec23', 31, 'video', '3');
INSERT INTO `teacher_sections` VALUES (100, 'quiz section', 31, 'question', '1');
INSERT INTO `teacher_sections` VALUES (101, 'sec1', 29, 'video', '4');
INSERT INTO `teacher_sections` VALUES (102, 'sec1', 29, 'video', '5');
INSERT INTO `teacher_sections` VALUES (103, 'sec1', 29, 'video', '6');
INSERT INTO `teacher_sections` VALUES (104, 'sec1', 29, 'video', '7');
INSERT INTO `teacher_sections` VALUES (105, 'sec1', 29, 'video', '8');
INSERT INTO `teacher_sections` VALUES (106, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (107, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (111, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (117, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (118, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (122, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (128, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (134, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (135, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (136, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (139, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (140, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (145, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (146, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (151, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (152, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (157, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (158, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (159, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (162, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (163, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (168, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (169, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (174, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (175, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (180, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (181, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (186, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (187, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (188, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (189, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (191, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (192, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (193, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (197, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (198, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (199, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (203, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (204, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (205, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (209, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (210, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (211, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (215, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (216, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (217, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (221, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (222, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (223, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (224, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (225, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (226, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (227, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (228, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (229, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (232, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (233, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (234, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (235, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (238, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (239, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (240, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (241, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (244, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (245, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (246, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (247, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (250, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (251, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (252, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (253, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (256, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (257, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (258, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (259, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (262, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (263, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (264, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (265, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (266, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (267, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (268, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (269, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (270, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (273, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (274, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (275, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (276, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (279, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (280, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (281, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (282, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (285, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (286, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (287, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (288, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (291, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (292, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (293, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (294, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (297, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (298, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (299, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (300, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (303, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (304, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (305, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (306, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (309, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (310, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (311, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (312, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (313, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (314, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (315, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (316, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (317, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (318, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (320, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (321, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (322, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (323, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (324, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (326, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (327, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (328, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (329, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (330, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (332, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (333, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (334, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (335, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (336, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (338, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (339, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (340, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (341, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (342, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (344, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (345, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (346, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (347, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (348, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (350, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (351, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (352, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (353, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (354, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (356, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (357, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (358, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (359, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (360, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (362, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (363, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (364, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (365, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (366, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (367, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (368, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (369, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (370, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (371, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (373, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (374, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (375, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (376, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (377, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (379, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (380, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (381, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (382, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (383, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (385, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (386, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (387, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (388, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (389, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (391, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (392, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (393, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (394, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (395, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (397, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (398, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (399, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (400, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (401, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (403, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (404, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (405, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (406, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (407, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (409, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (410, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (411, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (412, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (413, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (415, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (416, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (417, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (418, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (419, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (420, 'New Section', 36, 'video', '6');
INSERT INTO `teacher_sections` VALUES (421, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (422, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (423, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (424, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (425, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (426, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (427, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (428, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (429, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (430, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (431, 'New Section', 36, 'video', '6');
INSERT INTO `teacher_sections` VALUES (432, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (433, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (434, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (435, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (436, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (437, 'New Section', 36, 'video', '6');
INSERT INTO `teacher_sections` VALUES (438, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (439, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (440, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (441, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (442, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (443, 'New Section', 36, 'video', '6');
INSERT INTO `teacher_sections` VALUES (444, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (445, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (446, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (447, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (448, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (449, 'New Section', 36, 'video', '6');
INSERT INTO `teacher_sections` VALUES (450, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (451, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (452, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (453, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (454, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (455, 'New Section', 36, 'video', '6');
INSERT INTO `teacher_sections` VALUES (456, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (457, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (458, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (459, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (460, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (461, 'New Section', 36, 'video', '6');
INSERT INTO `teacher_sections` VALUES (462, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (463, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (464, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (465, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (466, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (467, 'New Section', 36, 'video', '6');
INSERT INTO `teacher_sections` VALUES (468, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (469, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (470, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (471, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (472, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (473, 'New Section', 36, 'video', '6');
INSERT INTO `teacher_sections` VALUES (474, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (475, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (476, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (477, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (478, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (479, 'New Section', 36, 'video', '6');
INSERT INTO `teacher_sections` VALUES (480, 'New Section', 36, 'video', '1');
INSERT INTO `teacher_sections` VALUES (481, 'New Section', 36, 'video', '2');
INSERT INTO `teacher_sections` VALUES (482, 'New Section', 36, 'video', '3');
INSERT INTO `teacher_sections` VALUES (483, 'New Section', 36, 'video', '4');
INSERT INTO `teacher_sections` VALUES (484, 'New Section', 36, 'video', '5');
INSERT INTO `teacher_sections` VALUES (485, 'New Section', 36, 'video', '6');
INSERT INTO `teacher_sections` VALUES (544, 'New Section', 46, 'video', '1');
INSERT INTO `teacher_sections` VALUES (545, 'New Section', 46, 'video', '2');
INSERT INTO `teacher_sections` VALUES (546, 'quiz section', 46, 'question', '1');
INSERT INTO `teacher_sections` VALUES (550, 'New Section', 48, 'video', '1');
INSERT INTO `teacher_sections` VALUES (551, 'New Section', 48, 'video', '2');
INSERT INTO `teacher_sections` VALUES (552, 'quiz section', 48, 'question', '1');
INSERT INTO `teacher_sections` VALUES (553, 'New Section', 47, 'video', '1');
INSERT INTO `teacher_sections` VALUES (554, 'New Section', 47, 'video', '2');
INSERT INTO `teacher_sections` VALUES (555, 'quiz section', 47, 'question', '1');
INSERT INTO `teacher_sections` VALUES (556, 'New Section', 50, 'video', '1');
INSERT INTO `teacher_sections` VALUES (557, 'New Section', 50, 'video', '2');
INSERT INTO `teacher_sections` VALUES (558, 'quiz section', 50, 'question', '1');
INSERT INTO `teacher_sections` VALUES (559, 'New Section', 53, 'video', '1');
INSERT INTO `teacher_sections` VALUES (560, 'New Section', 53, 'video', '2');
INSERT INTO `teacher_sections` VALUES (561, 'quiz section', 53, 'question', '1');
INSERT INTO `teacher_sections` VALUES (562, 'New Section', 55, 'video', '1');
INSERT INTO `teacher_sections` VALUES (563, 'New Section', 56, 'video', '1');
INSERT INTO `teacher_sections` VALUES (564, 'New Section', 56, 'video', '2');
INSERT INTO `teacher_sections` VALUES (565, 'New Section', 56, 'video', '1');
INSERT INTO `teacher_sections` VALUES (566, 'New Section', 56, 'video', '2');
INSERT INTO `teacher_sections` VALUES (567, 'New Section', 56, 'video', '3');
INSERT INTO `teacher_sections` VALUES (568, 'quiz section', 56, 'question', '1');
INSERT INTO `teacher_sections` VALUES (569, 'New Section', 57, 'video', '1');
INSERT INTO `teacher_sections` VALUES (570, 'New Section', 57, 'video', '2');
INSERT INTO `teacher_sections` VALUES (571, 'New Section', 57, 'video', '3');
INSERT INTO `teacher_sections` VALUES (572, 'quiz section', 57, 'question', '1');
INSERT INTO `teacher_sections` VALUES (594, 'test section1', 64, 'video', '1');
INSERT INTO `teacher_sections` VALUES (595, 'quiz section', 64, 'question', '1');
INSERT INTO `teacher_sections` VALUES (596, 'ApproveSection', 65, 'video', '1');
INSERT INTO `teacher_sections` VALUES (597, 'quiz section', 65, 'question', '1');
INSERT INTO `teacher_sections` VALUES (598, 'first section', 66, 'video', '1');
INSERT INTO `teacher_sections` VALUES (599, 'quiz section', 66, 'question', '1');

-- ----------------------------
-- Table structure for teacher_student_mark
-- ----------------------------
DROP TABLE IF EXISTS `teacher_student_mark`;
CREATE TABLE `teacher_student_mark`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NULL DEFAULT NULL,
  `student_id` int NULL DEFAULT NULL,
  `mark` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_student_mark
-- ----------------------------
INSERT INTO `teacher_student_mark` VALUES (1, 1, 43, 1);
INSERT INTO `teacher_student_mark` VALUES (2, 11, 43, 1);
INSERT INTO `teacher_student_mark` VALUES (3, 13, 43, 0.6);
INSERT INTO `teacher_student_mark` VALUES (4, 7, 43, 1);

-- ----------------------------
-- Table structure for teacher_subcategories
-- ----------------------------
DROP TABLE IF EXISTS `teacher_subcategories`;
CREATE TABLE `teacher_subcategories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `namear` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `categories_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teacher_subcategorie_categories_id_36e8aa60_fk_teacher_c`(`categories_id`) USING BTREE,
  CONSTRAINT `teacher_subcategorie_categories_id_36e8aa60_fk_teacher_c` FOREIGN KEY (`categories_id`) REFERENCES `teacher_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_subcategories
-- ----------------------------
INSERT INTO `teacher_subcategories` VALUES (1, 'HTML Language', 'لغة HTML', 'assets/img/categories/p-language.svg', '2020-06-15 04:53:34.033123', '2020-06-15 04:53:34.033196', 1);
INSERT INTO `teacher_subcategories` VALUES (2, 'Python Langauage', 'لغة بايثون', 'assets/img/categories/p-language.svg', '2020-06-15 04:54:01.954997', '2020-06-15 04:54:01.955099', 1);
INSERT INTO `teacher_subcategories` VALUES (4, 'Figma to HTML', 'Figma إلى HTML', 'assets/img/categories/p-language.svg', '2020-06-15 06:04:24.133294', '2020-06-15 06:04:24.133341', 3);
INSERT INTO `teacher_subcategories` VALUES (5, 'Bootstrap', 'Bootstrap', 'assets/img/categories/p-language.svg', '2020-06-15 06:05:07.612448', '2020-06-15 06:05:07.612495', 3);
INSERT INTO `teacher_subcategories` VALUES (6, 'Drama', 'دراما', 'assets/img/categories/p-language.svg', '2020-06-15 06:05:32.872232', '2020-06-15 06:05:32.872287', 4);
INSERT INTO `teacher_subcategories` VALUES (7, 'Cinema', 'سينما', 'assets/img/categories/p-language.svg', '2020-06-15 06:05:48.467563', '2020-06-15 06:05:48.467613', 4);
INSERT INTO `teacher_subcategories` VALUES (8, 'Film Theory', 'نظرية الفيلم', 'assets/img/categories/p-language.svg', '2020-06-15 06:06:07.292197', '2020-06-15 06:06:07.292249', 4);
INSERT INTO `teacher_subcategories` VALUES (9, 'Algebra', 'الجبر', 'assets/img/categories/p-language.svg', '2020-06-15 06:06:29.103482', '2020-06-15 06:06:29.103566', 5);
INSERT INTO `teacher_subcategories` VALUES (10, 'Geometry', 'الهندسة', 'assets/img/categories/p-language.svg', '2020-06-15 06:06:42.985701', '2020-06-15 06:06:42.985749', 5);
INSERT INTO `teacher_subcategories` VALUES (11, 'Flight', 'رحلة جوية', 'assets/img/categories/p-language.svg', '2020-06-15 06:06:54.468098', '2020-06-15 06:06:54.468189', 6);
INSERT INTO `teacher_subcategories` VALUES (12, 'Parachute', 'المظلة', 'assets/img/categories/p-language.svg', '2020-06-15 06:07:05.942984', '2020-06-15 06:07:05.943037', 6);
INSERT INTO `teacher_subcategories` VALUES (13, 'Helicopter', 'هليكوبتر', 'assets/img/categories/p-language.svg', '2020-06-15 06:07:17.965425', '2020-06-15 06:07:17.965484', 6);
INSERT INTO `teacher_subcategories` VALUES (14, 'Machine', 'آلة', 'assets/img/categories/p-language.svg', '2020-06-15 06:07:35.279371', '2020-06-15 06:07:35.279450', 7);
INSERT INTO `teacher_subcategories` VALUES (15, 'Force', 'فرض', 'assets/img/categories/p-language.svg', '2020-06-15 06:07:49.035951', '2020-06-15 06:07:49.036038', 7);
INSERT INTO `teacher_subcategories` VALUES (16, 'Noble', 'النبيل', 'assets/img/categories/p-language.svg', '2020-06-15 06:08:05.320043', '2020-06-15 06:08:05.320134', 8);
INSERT INTO `teacher_subcategories` VALUES (17, 'Music', 'موسيقى', 'assets/img/categories/p-language.svg', '2020-06-15 06:08:16.924817', '2020-06-15 06:08:16.924915', 8);
INSERT INTO `teacher_subcategories` VALUES (18, 'Dance', 'الرقص', 'assets/img/categories/p-language.svg', '2020-06-15 06:08:32.277649', '2020-06-15 06:08:32.277705', 8);
INSERT INTO `teacher_subcategories` VALUES (19, 'Cooking', 'طبخ', 'assets/img/categories/p-language.svg', '2020-06-15 06:08:42.709775', '2020-06-15 06:08:42.709996', 9);
INSERT INTO `teacher_subcategories` VALUES (20, 'Noodle', 'المعكرونة', 'assets/img/categories/p-language.svg', '2020-06-15 06:08:53.389245', '2020-06-15 06:08:53.389363', 9);
INSERT INTO `teacher_subcategories` VALUES (21, 'C++', 'C++', 'assets/img/categories/p-language.svg', '2020-06-15 06:09:04.308025', '2020-06-15 06:09:04.308080', 10);
INSERT INTO `teacher_subcategories` VALUES (22, 'Java Developing', 'تطوير جافا', 'assets/img/categories/p-language.svg', '2020-06-15 06:09:13.934983', '2020-06-15 06:09:13.935090', 10);
INSERT INTO `teacher_subcategories` VALUES (23, 'Bitcoin', 'بيتكوين', 'assets/img/categories/p-language.svg', '2020-06-15 06:09:24.220757', '2020-06-15 06:09:24.220807', 11);
INSERT INTO `teacher_subcategories` VALUES (24, 'Data mining', 'بيانات التعدين', 'assets/img/categories/p-language.svg', '2020-06-15 06:09:34.875003', '2020-06-15 06:09:34.875052', 11);
INSERT INTO `teacher_subcategories` VALUES (25, 'SEO', 'SEO', 'assets/img/categories/p-language.svg', '2020-06-15 06:09:44.929468', '2020-06-15 06:09:44.929631', 11);
INSERT INTO `teacher_subcategories` VALUES (26, 'Sewing_machine', 'ماكينة الخياطة', 'assets/img/Categories/p-language.svg', '2020-06-15 06:09:55.590051', '2020-06-15 06:09:55.590096', 12);
INSERT INTO `teacher_subcategories` VALUES (27, 'Good to know sewing', 'من الجيد معرفة الخياطة', 'assets/img/Categories/p-language.svg', '2020-06-15 06:10:14.454531', '2020-06-15 06:10:14.454581', 12);
INSERT INTO `teacher_subcategories` VALUES (28, 'Architecturing', 'الهندسة المعمارية', 'assets/img/Categories/p-language.svg', '2020-06-15 06:10:31.983094', '2020-06-15 06:10:31.983196', 13);
INSERT INTO `teacher_subcategories` VALUES (29, 'DB Structure', 'هيكل DB', 'assets/img/Categories/p-language.svg', '2020-06-15 06:10:46.728059', '2020-06-15 06:10:46.728115', 13);
INSERT INTO `teacher_subcategories` VALUES (30, 'Data collecting', 'جمع البيانات', 'assets/img/Categories/p-language.svg', '2020-06-15 06:11:02.110872', '2020-06-15 06:11:02.110934', 14);
INSERT INTO `teacher_subcategories` VALUES (31, 'Blockchain', 'بلوكشين', 'assets/img/Categories/p-language.svg', '2020-06-15 06:11:16.458510', '2020-06-15 06:11:16.458558', 14);
INSERT INTO `teacher_subcategories` VALUES (32, 'Maintence', 'صيانة', 'assets/img/Categories/p-language.svg', '2020-06-15 06:11:28.909687', '2020-06-15 06:11:28.909750', 14);
INSERT INTO `teacher_subcategories` VALUES (33, 'Testing', 'اختبارات', 'assets/img/Categories/p-language.svg', '2020-06-15 06:11:52.952747', '2020-06-15 06:11:52.952828', 10);

-- ----------------------------
-- Table structure for teacher_testvideo
-- ----------------------------
DROP TABLE IF EXISTS `teacher_testvideo`;
CREATE TABLE `teacher_testvideo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `review` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `testvideo_user`(`user_id`) USING BTREE,
  CONSTRAINT `testvideo_user` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_testvideo
-- ----------------------------
INSERT INTO `teacher_testvideo` VALUES (1, 'deploy django on apache2.mp4', '/uploads/courses/videos/c71ec5ef-8b8a-4283-beba-be909747884f.mp4', 40, 0);
INSERT INTO `teacher_testvideo` VALUES (2, 'Elz.mov', '/uploads/courses/videos/5285fc48-57fd-4f26-a5f4-fec696dd8eed.mov', 40, 0);

-- ----------------------------
-- Table structure for teacher_todo
-- ----------------------------
DROP TABLE IF EXISTS `teacher_todo`;
CREATE TABLE `teacher_todo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_todo
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_transactions
-- ----------------------------
DROP TABLE IF EXISTS `teacher_transactions`;
CREATE TABLE `teacher_transactions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fees` double NOT NULL,
  `revenue` double NOT NULL,
  `course_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_transactions
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_videouploads
-- ----------------------------
DROP TABLE IF EXISTS `teacher_videouploads`;
CREATE TABLE `teacher_videouploads`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` int NULL DEFAULT NULL,
  `url` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo` int NOT NULL,
  `duration` int NULL DEFAULT NULL,
  `lock` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Video_section`(`section_id`) USING BTREE,
  CONSTRAINT `Video_section` FOREIGN KEY (`section_id`) REFERENCES `teacher_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1550 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_videouploads
-- ----------------------------
INSERT INTO `teacher_videouploads` VALUES (174, 'kkk.mp4', 89, '/uploads/courses/videos/135402da-02d5-45ec-9b86-a3031cc53efc.mp4', 0, 6, 1);
INSERT INTO `teacher_videouploads` VALUES (175, 'kkk.mp4', 89, '/uploads/courses/videos/62cfe59e-17f2-496e-864f-865417ac75b3.mp4', 0, 6, 0);
INSERT INTO `teacher_videouploads` VALUES (176, 'kkk.mp4', 89, '/uploads/courses/videos/192ffdd7-20f1-4e44-b918-72de82bdf49a.mp4', 0, 6, 1);
INSERT INTO `teacher_videouploads` VALUES (177, 'kkk.mp4', 89, '/uploads/courses/videos/f0d8463c-3b8c-4b70-966c-13649110420b.mp4', 0, 6, 1);
INSERT INTO `teacher_videouploads` VALUES (178, 'kkk.mp4', 89, '/uploads/courses/videos/ecc7c999-33f5-490d-8bf8-d3d49625ea29.mp4', 0, 6, 0);
INSERT INTO `teacher_videouploads` VALUES (179, 'kkk.mp4', 90, '/uploads/courses/videos/253e640c-923a-43d3-8d59-709bc54047dd.mp4', 0, 6, 1);
INSERT INTO `teacher_videouploads` VALUES (180, 'kkk.mp4', 90, '/uploads/courses/videos/36c83e95-2c57-4fe0-b6cd-7b5eb669d70a.mp4', 1, 6, 0);
INSERT INTO `teacher_videouploads` VALUES (181, 'kkk.mp4', 90, '/uploads/courses/videos/dffd8808-03e0-4969-9a17-1a2f1ad8c641.mp4', 0, 6, 0);
INSERT INTO `teacher_videouploads` VALUES (182, 'kkk.mp4', 91, '/uploads/courses/videos/7ba794e2-cb7a-4897-a946-bc35673802ae.mp4', 0, 6, 0);
INSERT INTO `teacher_videouploads` VALUES (183, 'kkk.mp4', 91, '/uploads/courses/videos/41a20744-f80d-433a-989f-8ceda863af44.mp4', 0, 6, 1);
INSERT INTO `teacher_videouploads` VALUES (194, 'kkk.mp4', 97, '/uploads/courses/videos/c64fad66-1cff-4112-bc92-fc3e80b6e6d2.mp4', 0, 6, 0);
INSERT INTO `teacher_videouploads` VALUES (195, 'kkk.mp4', 97, '/uploads/courses/videos/09672bf3-48a3-49f7-855d-4e1aea9d21f3.mp4', 0, 6, 1);
INSERT INTO `teacher_videouploads` VALUES (196, 'kkk.mp4', 97, '/uploads/courses/videos/0e523221-a8be-4486-ba1e-d63a2ae60b55.mp4', 0, 6, 0);
INSERT INTO `teacher_videouploads` VALUES (197, 'kkk.mp4', 97, '/uploads/courses/videos/82df3e97-0a41-4420-8e34-b456993d04c3.mp4', 0, 6, 1);
INSERT INTO `teacher_videouploads` VALUES (198, 'kkk.mp4', 97, '/uploads/courses/videos/c26a791a-94a1-4d2e-9d29-a085c9ccc95c.mp4', 0, 6, 1);
INSERT INTO `teacher_videouploads` VALUES (199, 'kkk.mp4', 97, '/uploads/courses/videos/420a7255-e4ec-4a0c-89c9-48f44c7c4ff2.mp4', 0, 6, 1);
INSERT INTO `teacher_videouploads` VALUES (200, 'kkk.mp4', 98, '/uploads/courses/videos/538fe0a4-905d-4095-a49c-3b277a2b3062.mp4', 0, 6, 0);
INSERT INTO `teacher_videouploads` VALUES (201, 'kkk.mp4', 98, '/uploads/courses/videos/08ca0775-20d5-4de5-a058-d96d3444125b.mp4', 0, 6, 1);
INSERT INTO `teacher_videouploads` VALUES (202, 'kkk.mp4', 99, '/uploads/courses/videos/1299c6c0-268c-4e23-98af-340ee5c635e8.mp4', 0, 6, 0);
INSERT INTO `teacher_videouploads` VALUES (203, 'kkk.mp4', 99, '/uploads/courses/videos/253739aa-2f0e-455f-a1af-ec11c98b06b9.mp4', 0, 6, 0);
INSERT INTO `teacher_videouploads` VALUES (204, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 106, '/uploads/courses/videos/642038dc-dc1a-4368-a5d6-65b8c7fd7956.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (205, 'shahadah.mp4', 106, '/uploads/courses/videos/78099b46-0b16-4112-bf22-3e6b26ece4b4.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (206, 'shahadah.mp4', 106, '/uploads/courses/videos/64cd2e0d-666d-40bf-8886-53e70a5f9057.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (207, 'Intro.mov', 106, '/uploads/courses/videos/8007736c-7665-40f8-867c-8314b1b81c8d.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (208, 'What-is-Html5.mov', 106, '/uploads/courses/videos/eed32c5a-4fd4-420b-b307-262d77f28a6b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (209, 'Text-Editor.mov', 106, '/uploads/courses/videos/a7583e68-c618-4523-b961-2c9be0336baa.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (210, 'Semantic.mov', 106, '/uploads/courses/videos/1c27cfdc-a13a-4712-9716-89671897e5e0.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (211, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 107, '/uploads/courses/videos/37031cac-1db7-4ee1-a8a3-75e4df832f90.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (212, 'shahadah.mp4', 107, '/uploads/courses/videos/e11fa114-5a4a-4949-98f5-12e8f12915a4.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (213, 'shahadah.mp4', 107, '/uploads/courses/videos/85241ea9-c455-465d-93b0-525257b227fd.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (214, 'Intro.mov', 107, '/uploads/courses/videos/fb48157d-2cf6-42ef-9329-542e016b5802.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (215, 'What-is-Html5.mov', 107, '/uploads/courses/videos/acd45236-fcb2-42fb-911f-87106a6ebad6.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (216, 'Text-Editor.mov', 107, '/uploads/courses/videos/32dae5a7-d37c-407e-83e9-28ef62e3ee74.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (217, 'Semantic.mov', 107, '/uploads/courses/videos/393e9bb9-986c-4e5f-a633-ea9b51be51e3.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (222, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 111, '/uploads/courses/videos/2e42cc13-0ad9-407b-8118-6827a73e447e.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (223, 'shahadah.mp4', 111, '/uploads/courses/videos/a645d6b3-0efe-4fa2-80d2-913b90543187.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (224, 'shahadah.mp4', 111, '/uploads/courses/videos/65caf2a8-66ad-4004-a8fc-bcdbae90456a.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (225, 'Intro.mov', 111, '/uploads/courses/videos/9dbc20c0-2142-4d68-976d-0655512fd7ed.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (226, 'What-is-Html5.mov', 111, '/uploads/courses/videos/7f57d7fc-7b3a-4d4d-85c8-ecc7c72b60fa.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (227, 'Text-Editor.mov', 111, '/uploads/courses/videos/550bfe6b-90ce-4393-81a8-31a1ad823d55.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (228, 'Semantic.mov', 111, '/uploads/courses/videos/eebaae0b-ead9-40e7-9df3-cc05ea2dfac4.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (241, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 117, '/uploads/courses/videos/9150bce0-29e8-40ab-84b5-028c2930baf1.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (242, 'shahadah.mp4', 117, '/uploads/courses/videos/2e1e548f-8ede-4324-8528-0bf59727a37f.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (243, 'shahadah.mp4', 117, '/uploads/courses/videos/de6b115d-51a0-4158-b3a5-aa964d99cc6e.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (244, 'Intro.mov', 117, '/uploads/courses/videos/e5324ca2-53e2-45a0-a280-1aa2b2f26339.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (245, 'What-is-Html5.mov', 117, '/uploads/courses/videos/f64ffb0c-2cfb-4499-9902-0753425ea8af.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (246, 'Text-Editor.mov', 117, '/uploads/courses/videos/77361ae7-fd5a-404e-bec6-8697587e2029.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (247, 'Semantic.mov', 117, '/uploads/courses/videos/5304f28f-0769-4114-b5c1-5984e766a809.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (248, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 118, '/uploads/courses/videos/e3716cf2-3d6f-4ff3-bae0-237faedce61c.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (249, 'shahadah.mp4', 118, '/uploads/courses/videos/da6e47ae-4552-483b-aea1-61198d8c2b6f.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (250, 'shahadah.mp4', 118, '/uploads/courses/videos/93034e6a-60f3-4fed-b48d-cfcf8636e723.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (251, 'Intro.mov', 118, '/uploads/courses/videos/6d221376-aa42-4e91-89ae-2db435eeb1fa.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (252, 'What-is-Html5.mov', 118, '/uploads/courses/videos/ba0aee08-771e-444d-9c5c-40558fc72e26.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (253, 'Text-Editor.mov', 118, '/uploads/courses/videos/93dfe9e4-d989-4c56-a63e-d17c1da9da0e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (254, 'Semantic.mov', 118, '/uploads/courses/videos/7aa92c4c-3b06-48b4-aef4-d6059c8c8793.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (259, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 122, '/uploads/courses/videos/2786231a-71e5-43de-a512-f95da40bde34.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (260, 'shahadah.mp4', 122, '/uploads/courses/videos/1808b00a-fc5e-4b7c-ae9a-5ea5559daac0.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (261, 'shahadah.mp4', 122, '/uploads/courses/videos/74ad2533-4c96-4e3a-bd51-a5145ccb0283.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (262, 'Intro.mov', 122, '/uploads/courses/videos/82f91a6c-f8e4-488f-956d-9af39d859730.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (263, 'What-is-Html5.mov', 122, '/uploads/courses/videos/bc7f3848-ea52-4cd0-8ec6-08c85bde7360.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (264, 'Text-Editor.mov', 122, '/uploads/courses/videos/db60403f-5581-4a30-8d68-610ef3ddf33e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (265, 'Semantic.mov', 122, '/uploads/courses/videos/74a2ddf6-258b-44e4-84f8-4a977e7b426e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (278, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 128, '/uploads/courses/videos/ded09b03-2c8d-4da9-9e3e-b569d9a74855.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (279, 'shahadah.mp4', 128, '/uploads/courses/videos/685218f8-f34b-46e4-8f78-6f2c980922e0.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (280, 'shahadah.mp4', 128, '/uploads/courses/videos/325f3d2f-406c-47a5-bfb4-39f462392f31.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (281, 'Intro.mov', 128, '/uploads/courses/videos/73a0c196-ef26-4920-b55c-afb548e5ba01.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (282, 'What-is-Html5.mov', 128, '/uploads/courses/videos/83c3302e-3839-4e2e-9b1b-39e9347dd793.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (283, 'Text-Editor.mov', 128, '/uploads/courses/videos/468ef5bf-8ed3-4c98-9131-09bd2ad31e6f.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (284, 'Semantic.mov', 128, '/uploads/courses/videos/2dcbe6ac-236c-4877-8f2e-24fe2e1cfb7d.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (297, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 134, '/uploads/courses/videos/78f753a9-53df-4db0-897b-f5d7d4fa9edf.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (298, 'shahadah.mp4', 134, '/uploads/courses/videos/a9674f16-88de-4571-b734-51b8779008bb.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (299, 'shahadah.mp4', 134, '/uploads/courses/videos/95079bf1-a838-4707-868b-afb30ddf4953.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (300, 'Intro.mov', 134, '/uploads/courses/videos/3b4904dc-71f5-4fcd-9e14-5afb6d6bd84e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (301, 'What-is-Html5.mov', 134, '/uploads/courses/videos/4d1af833-1648-41e2-9dcc-54eb9c795503.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (302, 'Text-Editor.mov', 134, '/uploads/courses/videos/d1725eba-6ebb-47e2-a5a7-2b5cfeb704ff.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (303, 'Semantic.mov', 134, '/uploads/courses/videos/f81e45db-3de4-4b1c-8360-f5273b5614a0.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (304, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 135, '/uploads/courses/videos/112ad7fd-f5f0-4119-b44a-565e51d720c1.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (305, 'shahadah.mp4', 135, '/uploads/courses/videos/15ed9f14-6499-4a91-aef0-b1f41058e15a.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (306, 'shahadah.mp4', 135, '/uploads/courses/videos/746bc654-f54f-430b-b903-ec87d925f10a.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (307, 'Intro.mov', 135, '/uploads/courses/videos/f8322f22-f776-43e5-8bbd-65f40c6e39cc.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (308, 'What-is-Html5.mov', 135, '/uploads/courses/videos/256cd086-eb8d-43d1-ba23-8776e32416d9.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (309, 'Text-Editor.mov', 135, '/uploads/courses/videos/7b8fe3da-6530-463e-a2b3-7e78e5e7534d.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (310, 'Semantic.mov', 135, '/uploads/courses/videos/56fdfb01-f9b8-4608-bd40-54a3a297ce82.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (311, 'Semantic.mov', 136, '/uploads/courses/videos/19d4881b-3f6e-4377-84d8-80626350b3a2.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (312, 'What-is-Html5.mov', 136, '/uploads/courses/videos/e3346cbb-60f3-4d60-9c5a-832823d78cea.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (315, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 139, '/uploads/courses/videos/cf340853-c8e1-4ac1-a2e0-6ddf696a4c9f.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (316, 'shahadah.mp4', 139, '/uploads/courses/videos/158d1cd8-33eb-49b4-99be-67bef098f946.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (317, 'shahadah.mp4', 139, '/uploads/courses/videos/d9a6b547-dd30-429e-a3fc-216a308d7b52.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (318, 'Intro.mov', 139, '/uploads/courses/videos/601020e4-195f-45e1-8e2b-520e8730f798.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (319, 'What-is-Html5.mov', 139, '/uploads/courses/videos/bcfab51b-d6d3-4dde-a75d-31eb667bb964.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (320, 'Text-Editor.mov', 139, '/uploads/courses/videos/0c61f2b7-ab5a-467e-b21a-06da494115d6.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (321, 'Semantic.mov', 139, '/uploads/courses/videos/7e1dbe93-335b-481f-9488-c105f04bd7b0.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (322, 'Semantic.mov', 140, '/uploads/courses/videos/aab4232e-0b3e-4ce1-9715-1fff34cde349.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (323, 'What-is-Html5.mov', 140, '/uploads/courses/videos/b2620aba-772d-4ca1-93ae-3f9be7b6eea9.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (334, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 145, '/uploads/courses/videos/ced6e565-3b23-46f7-a2c8-6acf8d250001.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (335, 'shahadah.mp4', 145, '/uploads/courses/videos/42fe0081-0034-402e-8a39-5c966f8bd9ce.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (336, 'shahadah.mp4', 145, '/uploads/courses/videos/cb013f7d-29b7-4ef6-a3f4-fc73435f2ab6.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (337, 'Intro.mov', 145, '/uploads/courses/videos/55d0afb8-df87-411c-bbcf-879379ba0437.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (338, 'What-is-Html5.mov', 145, '/uploads/courses/videos/8f4654e7-0fd1-4190-9d85-d59dd3ef1179.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (339, 'Text-Editor.mov', 145, '/uploads/courses/videos/efca5c66-ec45-4699-a20c-0ebc96cb6e8f.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (340, 'Semantic.mov', 145, '/uploads/courses/videos/2422a6b4-fe5c-48d7-ac14-4d2c916cfad2.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (341, 'Semantic.mov', 146, '/uploads/courses/videos/f7880444-8a15-4099-815d-6cf78e79e76d.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (342, 'What-is-Html5.mov', 146, '/uploads/courses/videos/bdda16bf-cde9-48f7-9f38-b9abadab22db.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (353, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 151, '/uploads/courses/videos/ee730b1d-47b9-4cf0-aa87-2b838d747abd.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (354, 'shahadah.mp4', 151, '/uploads/courses/videos/534f02dc-f66f-408b-9f17-e3049296c22e.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (355, 'shahadah.mp4', 151, '/uploads/courses/videos/126d4a7e-9e9a-4bd7-a591-08d356afdf85.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (356, 'Intro.mov', 151, '/uploads/courses/videos/14b36651-99be-4f43-8d0a-49c91ea7296f.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (357, 'What-is-Html5.mov', 151, '/uploads/courses/videos/fea72af1-bbe3-4cb1-b702-b893d9a58f50.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (358, 'Text-Editor.mov', 151, '/uploads/courses/videos/e7e64e09-bc2a-4580-bdba-43e3fdf0791d.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (359, 'Semantic.mov', 151, '/uploads/courses/videos/dfeaca96-5c3f-4197-ace6-f47aec4db807.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (360, 'Semantic.mov', 152, '/uploads/courses/videos/1d226741-3582-4049-aa53-ca888f576a62.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (361, 'What-is-Html5.mov', 152, '/uploads/courses/videos/e4502e48-e008-4cbc-83f0-bc313d5aa01e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (372, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 157, '/uploads/courses/videos/da623e8a-5c6e-45db-8c26-a517c90b8b73.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (373, 'shahadah.mp4', 157, '/uploads/courses/videos/b629a37f-333a-4402-9293-44861f454f16.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (374, 'shahadah.mp4', 157, '/uploads/courses/videos/72fa6458-3cff-4034-b611-babe70a2152f.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (375, 'Intro.mov', 157, '/uploads/courses/videos/7c971df0-2234-48df-91dc-645deef071b3.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (376, 'What-is-Html5.mov', 157, '/uploads/courses/videos/3c67148d-9e5c-4518-894d-0231f71cc021.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (377, 'Text-Editor.mov', 157, '/uploads/courses/videos/adfff11a-dcdc-4a6b-8360-3c1e25446faa.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (378, 'Semantic.mov', 157, '/uploads/courses/videos/00726556-d9e6-472e-a19f-d1224c80ff77.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (379, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 158, '/uploads/courses/videos/15cfe383-12b9-4e6c-9f06-d38658eeb76d.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (380, 'shahadah.mp4', 158, '/uploads/courses/videos/0510e791-e64b-4d76-9517-19e228f5e97d.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (381, 'shahadah.mp4', 158, '/uploads/courses/videos/8f743f4e-4311-4d1c-844d-f27b3cbdf90e.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (382, 'Intro.mov', 158, '/uploads/courses/videos/ed60de46-a60c-4b27-980e-0a7ab0347048.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (383, 'What-is-Html5.mov', 158, '/uploads/courses/videos/754e9539-d0ab-48f5-a80d-ae20717207b7.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (384, 'Text-Editor.mov', 158, '/uploads/courses/videos/d5f966da-a7c8-4220-ae01-4807d0d4d55d.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (385, 'Semantic.mov', 158, '/uploads/courses/videos/0d393128-7c74-4b34-9a25-f4973a943a90.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (386, 'Semantic.mov', 159, '/uploads/courses/videos/38d783df-9709-4a05-a427-ae4d9be71711.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (387, 'What-is-Html5.mov', 159, '/uploads/courses/videos/0fd41b46-9809-4a6e-94eb-9c46ccab87f9.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (390, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 162, '/uploads/courses/videos/4a560466-7180-44e0-ae49-087e22e85731.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (391, 'shahadah.mp4', 162, '/uploads/courses/videos/d78bbd25-977b-49d0-aa82-92f0aea9acd2.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (392, 'shahadah.mp4', 162, '/uploads/courses/videos/f74b0b02-0cc0-4841-bc65-fe2df167779f.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (393, 'Intro.mov', 162, '/uploads/courses/videos/a3f6d504-918f-415d-8aa9-49156a2a7801.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (394, 'What-is-Html5.mov', 162, '/uploads/courses/videos/5769ce0d-0cc1-422e-8242-71fc3cbe9454.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (395, 'Text-Editor.mov', 162, '/uploads/courses/videos/da0db38c-3e07-4007-9672-032561330853.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (396, 'Semantic.mov', 162, '/uploads/courses/videos/82e8f9e7-149c-4a15-b674-6e36bcb36356.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (397, 'Semantic.mov', 163, '/uploads/courses/videos/187e06e5-24b4-4dc8-abc1-77562928799a.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (398, 'What-is-Html5.mov', 163, '/uploads/courses/videos/34ea8f04-70e0-450e-8535-342ae2d0fb7b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (409, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 168, '/uploads/courses/videos/3263a23d-94d3-4f76-9a32-7468999ac33d.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (410, 'shahadah.mp4', 168, '/uploads/courses/videos/c9028042-5ca0-4cf7-8ece-38dbab1c1ff4.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (411, 'shahadah.mp4', 168, '/uploads/courses/videos/b4fd9f5c-5907-4865-a0cb-da5c342201ce.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (412, 'Intro.mov', 168, '/uploads/courses/videos/e3d85902-e93a-4f6c-953d-c60404fd3ece.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (413, 'What-is-Html5.mov', 168, '/uploads/courses/videos/e656b3d9-f284-49e7-a305-08780fd11b10.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (414, 'Text-Editor.mov', 168, '/uploads/courses/videos/06963bfd-ffa3-4c70-8938-70da36445ba8.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (415, 'Semantic.mov', 168, '/uploads/courses/videos/b5489f53-f720-4ac4-a553-138f4a2af324.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (416, 'Semantic.mov', 169, '/uploads/courses/videos/1c5c691d-eeee-4004-bf03-fed5b98d14f4.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (417, 'What-is-Html5.mov', 169, '/uploads/courses/videos/4ca9ea25-c364-4fdc-bf90-663e675a31c1.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (428, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 174, '/uploads/courses/videos/3dd5f518-fdf0-45e4-b38c-660f1af3f60a.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (429, 'shahadah.mp4', 174, '/uploads/courses/videos/d6214d0f-6792-4e14-8699-0ccfc170b267.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (430, 'shahadah.mp4', 174, '/uploads/courses/videos/d02e8e61-eedb-4df0-be32-ed2fdc283808.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (431, 'Intro.mov', 174, '/uploads/courses/videos/c4fd4921-b06b-4264-afa1-c8895d4057ce.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (432, 'What-is-Html5.mov', 174, '/uploads/courses/videos/cfa67718-8edc-4ac7-81a8-e56f87823d21.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (433, 'Text-Editor.mov', 174, '/uploads/courses/videos/5005cc05-7c8d-46ca-b8e3-512e027e4d25.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (434, 'Semantic.mov', 174, '/uploads/courses/videos/f4275361-3d18-45ae-b77a-a6a73456cb48.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (435, 'Semantic.mov', 175, '/uploads/courses/videos/2381218d-1d68-43b5-9349-f262647734cc.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (436, 'What-is-Html5.mov', 175, '/uploads/courses/videos/4309de46-dc28-4672-bd2d-81e282d0ee3b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (447, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 180, '/uploads/courses/videos/c2fae65b-a4c5-44a8-9863-34dc1073aca4.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (448, 'shahadah.mp4', 180, '/uploads/courses/videos/15f679a1-0692-4d84-81a0-c2eb978116ee.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (449, 'shahadah.mp4', 180, '/uploads/courses/videos/e3749184-76aa-4640-b543-ac6901d96f93.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (450, 'Intro.mov', 180, '/uploads/courses/videos/0862ab5f-a8fe-4ed9-b210-8bca08a22080.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (451, 'What-is-Html5.mov', 180, '/uploads/courses/videos/31c17aca-e00f-423a-9ad8-ae5d623cd313.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (452, 'Text-Editor.mov', 180, '/uploads/courses/videos/809560b6-76b3-4453-b1b4-a61b0632f065.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (453, 'Semantic.mov', 180, '/uploads/courses/videos/7041a8dc-58dc-4226-9c94-be22d7224c30.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (454, 'Semantic.mov', 181, '/uploads/courses/videos/27b32408-311d-404c-8c84-9ebff6821897.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (455, 'What-is-Html5.mov', 181, '/uploads/courses/videos/961d3061-c6fd-404d-83f7-3ca590492add.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (466, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 186, '/uploads/courses/videos/fecb5b43-6bd2-42d6-99f3-2009806afb5f.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (467, 'shahadah.mp4', 186, '/uploads/courses/videos/3141be47-18b8-4bcd-84b6-6fe956f5c71f.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (468, 'shahadah.mp4', 186, '/uploads/courses/videos/f6912f00-4fa7-4cb1-9b0b-ce25ff96a614.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (469, 'Intro.mov', 186, '/uploads/courses/videos/4ea9fba7-151d-41c9-ad20-594ddbdd26e8.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (470, 'What-is-Html5.mov', 186, '/uploads/courses/videos/a18c0377-8609-41ec-b276-11efe4637114.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (471, 'Text-Editor.mov', 186, '/uploads/courses/videos/d6a73e5b-7e78-48bb-adc2-8ab2ef5041cd.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (472, 'Semantic.mov', 186, '/uploads/courses/videos/15dd8bf6-c656-4516-a230-f4698edb85e6.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (473, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 187, '/uploads/courses/videos/87e2da71-4bda-440b-a727-ec853d3235db.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (474, 'shahadah.mp4', 187, '/uploads/courses/videos/7dde9afc-bc7a-4fae-8af5-4fc52d7c9423.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (475, 'shahadah.mp4', 187, '/uploads/courses/videos/a909984f-64b4-4657-8f51-e823e35b46d5.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (476, 'Intro.mov', 187, '/uploads/courses/videos/ebd99c0d-997e-4163-adf2-9cbb30772cfd.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (477, 'What-is-Html5.mov', 187, '/uploads/courses/videos/058f87e5-ecb9-4d6b-87e9-6d3e88adbeca.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (478, 'Text-Editor.mov', 187, '/uploads/courses/videos/1f479cf2-0b4a-47dd-9805-2678d2553c9f.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (479, 'Semantic.mov', 187, '/uploads/courses/videos/ea94ec5c-3d47-4ea0-b8f2-edade7acf8e9.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (480, 'Semantic.mov', 188, '/uploads/courses/videos/b140c935-6daf-4f35-960f-d83c797ccc11.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (481, 'What-is-Html5.mov', 188, '/uploads/courses/videos/ab98403e-450a-438e-997a-319b63b04393.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (482, 'Intro.mov', 189, '/uploads/courses/videos/62cd02b0-0138-4688-8fda-0cbf78cd5b0a.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (484, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 191, '/uploads/courses/videos/bc91062a-20dc-4d06-a6c2-b36577f82f8e.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (485, 'shahadah.mp4', 191, '/uploads/courses/videos/8b3db36d-c9e2-4ebd-8ab1-2db0f1ab1998.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (486, 'shahadah.mp4', 191, '/uploads/courses/videos/a2742ef3-614f-4250-89ae-f8fb33e81821.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (487, 'Intro.mov', 191, '/uploads/courses/videos/f7f07119-3005-494a-961a-19a121fbe3ce.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (488, 'What-is-Html5.mov', 191, '/uploads/courses/videos/8e74394b-7f01-4a59-bf2e-e62c094d5663.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (489, 'Text-Editor.mov', 191, '/uploads/courses/videos/8db062f6-056d-418b-b78e-458177956a32.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (490, 'Semantic.mov', 191, '/uploads/courses/videos/12f03bdc-0e3f-454e-90dc-3c5906064db2.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (491, 'Semantic.mov', 192, '/uploads/courses/videos/afa70c8a-cb19-4eb0-bd9c-9e070bdeadc0.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (492, 'What-is-Html5.mov', 192, '/uploads/courses/videos/75210d50-96d6-4558-92bf-621f1dff6adb.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (493, 'Intro.mov', 193, '/uploads/courses/videos/c2216671-bf0d-421e-8436-24bb946e9509.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (503, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 197, '/uploads/courses/videos/a8249f32-37a9-4ea9-b8fb-8dc0c6acd1dd.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (504, 'shahadah.mp4', 197, '/uploads/courses/videos/8e3a36d8-96e8-43c9-9054-5279d583f5e8.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (505, 'shahadah.mp4', 197, '/uploads/courses/videos/3df09840-aeda-4659-83b2-1733bcbc8b33.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (506, 'Intro.mov', 197, '/uploads/courses/videos/4e2153f3-9c6e-4e76-aaf9-97e6647e3776.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (507, 'What-is-Html5.mov', 197, '/uploads/courses/videos/76aef615-748c-4da7-bfa2-7168c0738d27.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (508, 'Text-Editor.mov', 197, '/uploads/courses/videos/0c377c2b-9741-40fc-850a-124caae870ec.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (509, 'Semantic.mov', 197, '/uploads/courses/videos/9d6f0090-311b-48f2-a55b-5f37abdce61a.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (510, 'Semantic.mov', 198, '/uploads/courses/videos/dbb0d7a7-79c5-438e-ab3d-f707a23fa6ef.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (511, 'What-is-Html5.mov', 198, '/uploads/courses/videos/bde7fdfd-e417-4f2d-aa3c-92d41fa931d3.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (512, 'Intro.mov', 199, '/uploads/courses/videos/75a52965-0151-43a3-bd27-9b11284bffd1.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (522, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 203, '/uploads/courses/videos/33351251-ca07-43d2-b2f1-fb18318a587d.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (523, 'shahadah.mp4', 203, '/uploads/courses/videos/7438bfa0-86de-4ae3-a12f-b6637041ced2.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (524, 'shahadah.mp4', 203, '/uploads/courses/videos/737d23a6-c9ee-4f47-945b-870d41a39db8.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (525, 'Intro.mov', 203, '/uploads/courses/videos/c84ec3c8-6cc4-4580-a326-9762434caf8a.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (526, 'What-is-Html5.mov', 203, '/uploads/courses/videos/9b61f7cd-f407-4bfc-b1bd-1eeee192da69.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (527, 'Text-Editor.mov', 203, '/uploads/courses/videos/7c234d4b-5f3b-4672-aa8a-d934f641e7ca.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (528, 'Semantic.mov', 203, '/uploads/courses/videos/90f44f33-e381-4ec2-a3cc-03f881b8e9eb.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (529, 'Semantic.mov', 204, '/uploads/courses/videos/e9086ab6-24ff-49a9-9c31-9784d04d750e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (530, 'What-is-Html5.mov', 204, '/uploads/courses/videos/4156b946-f1da-4bd8-b5ac-ebc3afc1644d.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (531, 'Intro.mov', 205, '/uploads/courses/videos/566d1d4d-1cd0-4b83-835a-d58791867907.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (541, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 209, '/uploads/courses/videos/2c9411bc-f757-43a7-b775-207f9ebd1e9f.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (542, 'shahadah.mp4', 209, '/uploads/courses/videos/4d803543-c7c6-4a60-815e-8cfa8a28b51b.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (543, 'shahadah.mp4', 209, '/uploads/courses/videos/c82d2ccb-fa78-4c4f-96f4-d0b40b063d3e.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (544, 'Intro.mov', 209, '/uploads/courses/videos/8badee9c-21ba-4045-87f3-e445fe59a697.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (545, 'What-is-Html5.mov', 209, '/uploads/courses/videos/98b5b77a-1625-47ed-b900-d14a3fb34096.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (546, 'Text-Editor.mov', 209, '/uploads/courses/videos/778166ba-74d6-4ba7-afb8-78e6fd906772.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (547, 'Semantic.mov', 209, '/uploads/courses/videos/baa16cc1-6539-48e3-ad44-19b6316ce71f.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (548, 'Semantic.mov', 210, '/uploads/courses/videos/4a4fc946-8d46-4f83-b4e4-45947f6373b1.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (549, 'What-is-Html5.mov', 210, '/uploads/courses/videos/5bfba587-c65f-40e8-aee5-39898230a7c2.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (550, 'Intro.mov', 211, '/uploads/courses/videos/cd4681f8-64fc-4f03-acbf-c20af996ec20.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (560, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 215, '/uploads/courses/videos/fce2b619-ac1a-4417-b5d3-3f2c14b2f968.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (561, 'shahadah.mp4', 215, '/uploads/courses/videos/26cd860d-5bde-458c-95d0-6665b7d52786.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (562, 'shahadah.mp4', 215, '/uploads/courses/videos/40352c8e-12d1-4c4d-ac80-b08d14f17efc.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (563, 'Intro.mov', 215, '/uploads/courses/videos/1b90a370-745b-4e5b-8333-1764c3166ae2.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (564, 'What-is-Html5.mov', 215, '/uploads/courses/videos/71144bf3-43bb-4ff6-90c6-a162d808e27e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (565, 'Text-Editor.mov', 215, '/uploads/courses/videos/48c35cb7-5d62-46d3-938e-7f3d3fcac6cc.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (566, 'Semantic.mov', 215, '/uploads/courses/videos/a5564c62-c402-4e78-a93b-be33cbf923ed.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (567, 'Semantic.mov', 216, '/uploads/courses/videos/ddac1e0c-eb57-4227-8984-2a7e2ac4e732.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (568, 'What-is-Html5.mov', 216, '/uploads/courses/videos/b756c10d-061f-48a9-95d7-849aa5e4c673.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (569, 'Intro.mov', 217, '/uploads/courses/videos/80593a07-294e-4a70-b420-b015b58f667c.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (579, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 221, '/uploads/courses/videos/2495df70-42a7-4194-88d6-6476d4191fb1.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (580, 'shahadah.mp4', 221, '/uploads/courses/videos/b06f2889-3e3f-4884-941b-d855d7516a97.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (581, 'shahadah.mp4', 221, '/uploads/courses/videos/07409e30-f397-492a-be52-6b82c08e5cda.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (582, 'Intro.mov', 221, '/uploads/courses/videos/94edbb45-c6cd-4a70-95e7-209e5a941c9f.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (583, 'What-is-Html5.mov', 221, '/uploads/courses/videos/f7905831-12e3-4e2a-a177-b45ed4cdec94.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (584, 'Text-Editor.mov', 221, '/uploads/courses/videos/b72d72a6-678e-4a33-8ee1-508e0448257b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (585, 'Semantic.mov', 221, '/uploads/courses/videos/84df47f2-eff6-4eea-9b71-761b8e1d46f4.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (586, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 222, '/uploads/courses/videos/968d638c-bae8-4d49-a7c7-0ceb089c5aad.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (587, 'shahadah.mp4', 222, '/uploads/courses/videos/3100eb12-18e0-4bd8-819a-1249255d5afc.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (588, 'shahadah.mp4', 222, '/uploads/courses/videos/19ce0d33-d64f-4990-a380-8949fa34d796.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (589, 'Intro.mov', 222, '/uploads/courses/videos/dceec1fd-d1ce-41c2-a0c4-d5bc1fcfb61d.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (590, 'What-is-Html5.mov', 222, '/uploads/courses/videos/a0df454f-486e-4a9b-82aa-dbb3e3fda87e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (591, 'Text-Editor.mov', 222, '/uploads/courses/videos/356e96b8-1f25-469a-9d9b-d21e247e2cad.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (592, 'Semantic.mov', 222, '/uploads/courses/videos/6037c2b8-8da5-49fc-a86c-f7176446ee5a.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (593, 'Semantic.mov', 223, '/uploads/courses/videos/ce5c06f7-d3da-4319-a565-c76d453f0bbb.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (594, 'What-is-Html5.mov', 223, '/uploads/courses/videos/d6b665ed-3c85-4593-bbb4-d3a633b17e4d.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (595, 'Intro.mov', 224, '/uploads/courses/videos/9b3df34c-6bd9-4316-a3bc-e77230d292af.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (596, 'Text-Editor.mov', 225, '/uploads/courses/videos/e990a645-fa46-4343-8066-9ff6e3b35875.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (597, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 226, '/uploads/courses/videos/7da66321-0b32-4d68-81fa-da7d424d0746.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (598, 'shahadah.mp4', 226, '/uploads/courses/videos/f49f785f-4557-4e6d-9a5d-7d5a46e88336.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (599, 'shahadah.mp4', 226, '/uploads/courses/videos/38d331d4-3468-42b9-a8b1-d518719425bf.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (600, 'Intro.mov', 226, '/uploads/courses/videos/fa61707a-69c6-4363-bc25-5317cd2f870e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (601, 'What-is-Html5.mov', 226, '/uploads/courses/videos/a3a78f4b-0168-421a-81d8-35cdbad09ad0.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (602, 'Text-Editor.mov', 226, '/uploads/courses/videos/8a8fd326-2857-45b4-ae35-ef626367775a.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (603, 'Semantic.mov', 226, '/uploads/courses/videos/b5d806d7-5446-4af7-ada1-4d27174955fc.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (604, 'Semantic.mov', 227, '/uploads/courses/videos/23ed920b-8e11-4d63-a0c4-1e86b0afd131.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (605, 'What-is-Html5.mov', 227, '/uploads/courses/videos/486179d6-35c8-4f03-9267-9eb901f92f70.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (606, 'Intro.mov', 228, '/uploads/courses/videos/bedd0ef1-d9ed-4e70-9c98-a1dae0f5eb9f.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (607, 'Text-Editor.mov', 229, '/uploads/courses/videos/a54f9593-8912-472a-be96-eb91e12e68f2.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (616, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 232, '/uploads/courses/videos/36e6272d-8cf9-4750-9176-9d4fea7d5397.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (617, 'shahadah.mp4', 232, '/uploads/courses/videos/e001f8b8-bcc9-4545-b229-467326f966af.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (618, 'shahadah.mp4', 232, '/uploads/courses/videos/fb856408-41d3-4afb-abfe-792fa05578a6.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (619, 'Intro.mov', 232, '/uploads/courses/videos/fd2bb122-0153-4388-8877-f30e983836d2.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (620, 'What-is-Html5.mov', 232, '/uploads/courses/videos/148c77d7-f235-4dd7-86f0-b6cac3cc2555.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (621, 'Text-Editor.mov', 232, '/uploads/courses/videos/f272c96f-8603-47fc-8c18-b9d1cc9bfe55.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (622, 'Semantic.mov', 232, '/uploads/courses/videos/88928e2e-3246-4cd4-97f6-9e152619313c.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (623, 'Semantic.mov', 233, '/uploads/courses/videos/2f6d0227-27a2-42c6-95c7-7178b4921d8e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (624, 'What-is-Html5.mov', 233, '/uploads/courses/videos/d05ed48f-af63-4401-ac9e-3d8cfe0fc53b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (625, 'Intro.mov', 234, '/uploads/courses/videos/825de007-0bff-411e-b694-90fb303c0f9b.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (626, 'Text-Editor.mov', 235, '/uploads/courses/videos/f4c36364-5e8e-48e3-9bce-30fa474b5b09.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (635, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 238, '/uploads/courses/videos/5b962b91-79c7-4ee6-bf1e-fbdb62dd7623.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (636, 'shahadah.mp4', 238, '/uploads/courses/videos/f8630d28-04e6-410b-a1cf-97468288caa2.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (637, 'shahadah.mp4', 238, '/uploads/courses/videos/e3af3df0-ad83-412b-8c3d-5bf292ac933c.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (638, 'Intro.mov', 238, '/uploads/courses/videos/a5267d14-1a73-4b9a-a223-59b91c0a2278.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (639, 'What-is-Html5.mov', 238, '/uploads/courses/videos/966e9a7e-237f-47e1-9cf0-55bdf73a5d00.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (640, 'Text-Editor.mov', 238, '/uploads/courses/videos/cb2bb0f1-0b53-4a60-8406-fbb714dcb2ee.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (641, 'Semantic.mov', 238, '/uploads/courses/videos/24d82286-9cad-43f4-bbf7-305dd49649aa.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (642, 'Semantic.mov', 239, '/uploads/courses/videos/9293956a-dc29-42c8-9586-36439e96be12.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (643, 'What-is-Html5.mov', 239, '/uploads/courses/videos/bcefe471-0613-40ef-a482-61ddace7f371.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (644, 'Intro.mov', 240, '/uploads/courses/videos/b201c5f7-2c9e-4c6f-bf86-49e41e672bb0.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (645, 'Text-Editor.mov', 241, '/uploads/courses/videos/c2e43d6f-668d-4ed0-a5e1-fd6fd41da639.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (654, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 244, '/uploads/courses/videos/3f32a46a-2826-4f55-bc5f-3e7b0a9f813f.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (655, 'shahadah.mp4', 244, '/uploads/courses/videos/6adb996b-5006-4186-a4b7-e9ce76191e1a.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (656, 'shahadah.mp4', 244, '/uploads/courses/videos/8242f1ac-e7df-41c1-950c-c6b4a42f7832.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (657, 'Intro.mov', 244, '/uploads/courses/videos/bf436ccd-63bc-4af4-8f79-9162661ce271.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (658, 'What-is-Html5.mov', 244, '/uploads/courses/videos/fa5874c8-e32b-4cdc-abfb-65b42b17f36f.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (659, 'Text-Editor.mov', 244, '/uploads/courses/videos/081be7bb-ac3a-4ca1-8c57-eec3808c21b1.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (660, 'Semantic.mov', 244, '/uploads/courses/videos/2299e8e0-f926-4ca0-a9bb-6a88b91d7b25.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (661, 'Semantic.mov', 245, '/uploads/courses/videos/788186eb-326d-458b-ae9c-5ab38240942e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (662, 'What-is-Html5.mov', 245, '/uploads/courses/videos/1601ecb7-49c9-4949-b35e-31d5c39794e8.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (663, 'Intro.mov', 246, '/uploads/courses/videos/fed97063-742c-4383-901e-b6dc3c5cd9b6.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (664, 'Text-Editor.mov', 247, '/uploads/courses/videos/998b5e57-6d8a-4d80-9130-fe1603b3b1d6.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (673, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 250, '/uploads/courses/videos/fa1c0860-2db0-49d6-988f-20b074e23bc7.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (674, 'shahadah.mp4', 250, '/uploads/courses/videos/7ee0fc08-ed7b-499f-b70c-369d2f365566.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (675, 'shahadah.mp4', 250, '/uploads/courses/videos/e633af61-ed0c-4076-b89b-3b6904065843.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (676, 'Intro.mov', 250, '/uploads/courses/videos/c610ec29-c90b-46ce-af18-9427e4bbfe3a.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (677, 'What-is-Html5.mov', 250, '/uploads/courses/videos/adc889a1-e9e8-4286-b097-733e62319974.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (678, 'Text-Editor.mov', 250, '/uploads/courses/videos/abe7a997-6dc8-49bc-9ec0-c0bde6ab9b8d.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (679, 'Semantic.mov', 250, '/uploads/courses/videos/d44e4824-1886-46fb-b07c-e084b87fb49e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (680, 'Semantic.mov', 251, '/uploads/courses/videos/f5babdde-d184-4818-a039-5d01eb3d28b4.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (681, 'What-is-Html5.mov', 251, '/uploads/courses/videos/5508369e-a135-47a7-8904-00dcb8d972a4.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (682, 'Intro.mov', 252, '/uploads/courses/videos/624825b5-2f41-4eb6-8bc2-12d69feefa5c.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (683, 'Text-Editor.mov', 253, '/uploads/courses/videos/a6e9f619-af46-4f04-a2ff-cf8a239a4e40.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (692, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 256, '/uploads/courses/videos/17d4bb6f-ebf0-4bb2-a403-ea942d24fc56.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (693, 'shahadah.mp4', 256, '/uploads/courses/videos/490894f0-68ac-4c42-84c7-55f873cca2de.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (694, 'shahadah.mp4', 256, '/uploads/courses/videos/ba001e44-edc5-44c1-8236-3edf595ac4fc.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (695, 'Intro.mov', 256, '/uploads/courses/videos/a647e0e1-1250-4cd2-a381-b933463113a3.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (696, 'What-is-Html5.mov', 256, '/uploads/courses/videos/d9220f26-17cf-4633-9afc-dea1eebe78f5.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (697, 'Text-Editor.mov', 256, '/uploads/courses/videos/94713e0f-286f-4a71-b172-891e70898584.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (698, 'Semantic.mov', 256, '/uploads/courses/videos/83ba3cd7-132d-45bb-b4e4-d89ee59bfef2.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (699, 'Semantic.mov', 257, '/uploads/courses/videos/ae687900-961b-4d2c-8547-c2c57f28cc25.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (700, 'What-is-Html5.mov', 257, '/uploads/courses/videos/6a0312d4-4dbe-49ae-b022-fe806dfe742f.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (701, 'Intro.mov', 258, '/uploads/courses/videos/b3687b9d-8c94-4779-b8d5-5e171b6ae3b0.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (702, 'Text-Editor.mov', 259, '/uploads/courses/videos/c01d8768-d027-4d3c-b8cb-9be9c706e0cb.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (711, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 262, '/uploads/courses/videos/ec6f5cc9-d08f-4628-a09d-ae4686e3f500.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (712, 'shahadah.mp4', 262, '/uploads/courses/videos/76ae98db-c285-46cb-af56-c9c945e2bbf6.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (713, 'shahadah.mp4', 262, '/uploads/courses/videos/76689650-b264-4fb7-bd49-f9e8f8472041.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (714, 'Intro.mov', 262, '/uploads/courses/videos/bade2c00-5a3b-4cc2-83a0-4ffe08dc3d0e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (715, 'What-is-Html5.mov', 262, '/uploads/courses/videos/ed13d474-8c85-4cc6-936f-279044106a4c.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (716, 'Text-Editor.mov', 262, '/uploads/courses/videos/310f6c1f-00bd-4e72-b835-1dcc31b211bd.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (717, 'Semantic.mov', 262, '/uploads/courses/videos/b0b726eb-69f4-4fda-abd9-248bc5a021a8.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (718, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 263, '/uploads/courses/videos/a45ad408-553c-4c03-b27f-02f96c6a10c6.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (719, 'shahadah.mp4', 263, '/uploads/courses/videos/e34e9c12-9a58-49af-b5dc-c4d5620a9def.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (720, 'shahadah.mp4', 263, '/uploads/courses/videos/067ba994-4196-4c1b-9249-cd1fe6ecef51.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (721, 'Intro.mov', 263, '/uploads/courses/videos/653e2074-2afa-47fd-aafd-1f57df0bcd5e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (722, 'What-is-Html5.mov', 263, '/uploads/courses/videos/9a6c328a-4b2f-45c2-bd80-94c98ad79d87.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (723, 'Text-Editor.mov', 263, '/uploads/courses/videos/237fbda6-8da9-4c7a-b76f-343a5881c032.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (724, 'Semantic.mov', 263, '/uploads/courses/videos/805cce39-7dfa-424f-bb09-d063c9266f10.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (725, 'Semantic.mov', 264, '/uploads/courses/videos/62585544-10aa-4ec9-a53b-db987c693d4a.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (726, 'What-is-Html5.mov', 264, '/uploads/courses/videos/59e742a7-f160-4b59-844f-11ec99dba3cf.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (727, 'Intro.mov', 265, '/uploads/courses/videos/3836499d-3aeb-4baa-9312-5b7a1d237bfd.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (728, 'Text-Editor.mov', 266, '/uploads/courses/videos/d955539e-0740-4bdb-9c13-039d55c25de2.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (729, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 267, '/uploads/courses/videos/5d7a055a-ad26-43f0-94bc-50e7b0c56a4a.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (730, 'shahadah.mp4', 267, '/uploads/courses/videos/35893e94-dab8-4749-92c8-d853859fc256.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (731, 'shahadah.mp4', 267, '/uploads/courses/videos/6789ec37-35be-4bb3-bf19-69c0579010d5.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (732, 'Intro.mov', 267, '/uploads/courses/videos/d8512655-a9e6-4377-bf02-4ca91cbe3105.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (733, 'What-is-Html5.mov', 267, '/uploads/courses/videos/e376c6b0-ec5f-4263-bdc1-226a7b66429c.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (734, 'Text-Editor.mov', 267, '/uploads/courses/videos/d478578e-6bc3-422a-8533-b88da44d5326.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (735, 'Semantic.mov', 267, '/uploads/courses/videos/6e52e694-2010-400e-9a2a-99fb4eebe829.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (736, 'Semantic.mov', 268, '/uploads/courses/videos/46eae74a-de5f-4e8e-9b96-91fbbeea8c3f.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (737, 'What-is-Html5.mov', 268, '/uploads/courses/videos/e0fa51d7-3573-4919-8e0d-25d743b02df9.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (738, 'Intro.mov', 269, '/uploads/courses/videos/9e7337e2-0a99-4080-8668-6445469c3244.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (739, 'Text-Editor.mov', 270, '/uploads/courses/videos/beb2254b-af31-482b-a854-dfd9a81fdcf0.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (748, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 273, '/uploads/courses/videos/5aa0ba05-ab1e-4bf6-9334-255b2c66ef69.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (749, 'shahadah.mp4', 273, '/uploads/courses/videos/5b37e4e7-0ae4-4175-8b1f-78fb6dc22d72.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (750, 'shahadah.mp4', 273, '/uploads/courses/videos/d8280663-5142-4c83-9eb9-8234597776fe.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (751, 'Intro.mov', 273, '/uploads/courses/videos/07f2ab94-e9e6-4cf0-a059-ed3bba6798fb.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (752, 'What-is-Html5.mov', 273, '/uploads/courses/videos/aeee416d-7c46-4530-847a-12271f1ab060.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (753, 'Text-Editor.mov', 273, '/uploads/courses/videos/a517333a-07a2-4625-afb6-80fc8a79d887.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (754, 'Semantic.mov', 273, '/uploads/courses/videos/a556df26-7829-4bf4-ae2c-9522cdd87d8e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (755, 'Semantic.mov', 274, '/uploads/courses/videos/a62b4f7b-0ee1-40b0-8ed8-311063bc624f.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (756, 'What-is-Html5.mov', 274, '/uploads/courses/videos/a8ae097f-80d7-4085-89d3-0e5234f13a63.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (757, 'Intro.mov', 275, '/uploads/courses/videos/c7e13b8e-5b39-48e1-9738-39d2681bc1cd.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (758, 'Text-Editor.mov', 276, '/uploads/courses/videos/b3ff3209-b9fc-4bfc-aa30-b16a23751d26.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (767, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 279, '/uploads/courses/videos/e373a5e9-ed32-4bf5-b14d-8f0a4b26285d.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (768, 'shahadah.mp4', 279, '/uploads/courses/videos/f339067e-66e5-4659-82f6-7926130843eb.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (769, 'shahadah.mp4', 279, '/uploads/courses/videos/a31f23cd-e680-4e18-a00b-0ef22cc798cf.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (770, 'Intro.mov', 279, '/uploads/courses/videos/b7a7b2ed-bd4e-4431-99f8-22d98264f303.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (771, 'What-is-Html5.mov', 279, '/uploads/courses/videos/bbf6d1f3-a9ce-47e0-b9a8-15dc8e7a9e5c.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (772, 'Text-Editor.mov', 279, '/uploads/courses/videos/bdc936f8-4d14-4758-97bb-65a09dbfa264.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (773, 'Semantic.mov', 279, '/uploads/courses/videos/e2500d82-1e38-4791-8e79-858844913753.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (774, 'Semantic.mov', 280, '/uploads/courses/videos/1695fea0-5096-4306-8e4c-50cb907cca59.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (775, 'What-is-Html5.mov', 280, '/uploads/courses/videos/1b750d9b-2a6a-4eeb-8384-432252371672.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (776, 'Intro.mov', 281, '/uploads/courses/videos/7e298062-a93e-4cf0-9953-646104d4970b.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (777, 'Text-Editor.mov', 282, '/uploads/courses/videos/ffe54fb3-e3ff-4041-b093-41f6af51e0e2.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (786, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 285, '/uploads/courses/videos/4b08d5f4-f97a-4079-8bf7-e19ed5a9c768.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (787, 'shahadah.mp4', 285, '/uploads/courses/videos/95625bc4-d368-4654-8b29-445c7cde34b7.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (788, 'shahadah.mp4', 285, '/uploads/courses/videos/9c95febb-0299-4276-a8d6-60344d66678d.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (789, 'Intro.mov', 285, '/uploads/courses/videos/217ddece-ece9-42d8-892b-c2fc3c335b54.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (790, 'What-is-Html5.mov', 285, '/uploads/courses/videos/03984784-2456-49e7-ad67-13495ad252b8.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (791, 'Text-Editor.mov', 285, '/uploads/courses/videos/412bf6d1-abbf-4e5c-b078-d3a428c26440.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (792, 'Semantic.mov', 285, '/uploads/courses/videos/61c7da63-8490-4c41-8710-6361250b877f.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (793, 'Semantic.mov', 286, '/uploads/courses/videos/0376a757-81ed-4d63-a708-501b80630299.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (794, 'What-is-Html5.mov', 286, '/uploads/courses/videos/506c2e85-b707-49ca-9a86-6aeea7c8c7b9.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (795, 'Intro.mov', 287, '/uploads/courses/videos/86595397-6f95-43cc-ac25-154ef0bf2c57.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (796, 'Text-Editor.mov', 288, '/uploads/courses/videos/3f214691-8597-464f-8621-26cea5c82a2b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (805, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 291, '/uploads/courses/videos/ae780089-8707-49c2-90b0-7d53e87291bb.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (806, 'shahadah.mp4', 291, '/uploads/courses/videos/661cfa7e-ed5e-4bac-b5bb-23f3d6f4f95c.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (807, 'shahadah.mp4', 291, '/uploads/courses/videos/230901b4-7a32-4a2e-8295-a449f95c8e0e.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (808, 'Intro.mov', 291, '/uploads/courses/videos/db5724b2-ebd0-403f-aba7-d62cdec5aa0e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (809, 'What-is-Html5.mov', 291, '/uploads/courses/videos/19cba9a4-dff1-40fd-9386-c19568282bcf.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (810, 'Text-Editor.mov', 291, '/uploads/courses/videos/1db62975-dd58-4996-8423-fc14a27a6981.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (811, 'Semantic.mov', 291, '/uploads/courses/videos/dcccf23c-649f-4b30-be98-ee859c3bc1e4.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (812, 'Semantic.mov', 292, '/uploads/courses/videos/69a1de38-ad8b-4a6b-8374-c8f8675d4a0b.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (813, 'What-is-Html5.mov', 292, '/uploads/courses/videos/f773252e-f78e-480c-b648-066c9a933511.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (814, 'Intro.mov', 293, '/uploads/courses/videos/911bfc76-a8e1-430a-aa09-9b3249ba676c.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (815, 'Text-Editor.mov', 294, '/uploads/courses/videos/ae7a256f-4007-460a-b8e3-8560a9107eb2.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (824, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 297, '/uploads/courses/videos/b8bf6e71-5a37-43f5-954f-d6289604cebb.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (825, 'shahadah.mp4', 297, '/uploads/courses/videos/58ee7e13-e980-4700-861f-ae54c7cfaf35.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (826, 'shahadah.mp4', 297, '/uploads/courses/videos/888be8f9-0f26-4f7d-a2e0-6ceaa36e9dc7.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (827, 'Intro.mov', 297, '/uploads/courses/videos/d7c034ef-dbd3-4a81-a63f-a4d9b308af01.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (828, 'What-is-Html5.mov', 297, '/uploads/courses/videos/fd2c884e-d512-4c04-bbf9-510eaf4d593f.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (829, 'Text-Editor.mov', 297, '/uploads/courses/videos/07b38599-fc83-461c-b1a4-8bdcfd0b93c1.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (830, 'Semantic.mov', 297, '/uploads/courses/videos/17eb5a7e-e4d7-41fb-aa09-5c04d56aa742.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (831, 'Semantic.mov', 298, '/uploads/courses/videos/af8c9dde-13e6-4925-acb1-1ec3392aac8a.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (832, 'What-is-Html5.mov', 298, '/uploads/courses/videos/5485f16c-c006-4067-a4f2-9d9e0709a65a.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (833, 'Intro.mov', 299, '/uploads/courses/videos/0f9dc1b1-cffd-4ac3-8b4a-7733081c71ca.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (834, 'Text-Editor.mov', 300, '/uploads/courses/videos/f1dc2c83-708d-4017-9d7d-1ac76e79420e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (843, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 303, '/uploads/courses/videos/97b2f693-5074-4f33-87d1-847cb83c97a7.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (844, 'shahadah.mp4', 303, '/uploads/courses/videos/9e150157-8d48-4cd4-b911-5795cf050235.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (845, 'shahadah.mp4', 303, '/uploads/courses/videos/836da5e6-a990-4097-808c-b6c21db51787.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (846, 'Intro.mov', 303, '/uploads/courses/videos/b54784e8-f08a-47d8-b314-6880d914806a.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (847, 'What-is-Html5.mov', 303, '/uploads/courses/videos/bcb88455-ff1d-476a-976f-8481e2892556.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (848, 'Text-Editor.mov', 303, '/uploads/courses/videos/96e1fa44-5627-4c9a-9040-7b6238279086.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (849, 'Semantic.mov', 303, '/uploads/courses/videos/bbeb29b0-7acf-4de3-b4de-cb93bb8d1d91.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (850, 'Semantic.mov', 304, '/uploads/courses/videos/c536426e-1565-47b1-bf42-5dc3a29a2743.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (851, 'What-is-Html5.mov', 304, '/uploads/courses/videos/d87197fa-3941-4a05-b031-2c34d123306b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (852, 'Intro.mov', 305, '/uploads/courses/videos/813f9433-3ba1-4f6c-bd68-4c5f9cdf8ad3.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (853, 'Text-Editor.mov', 306, '/uploads/courses/videos/53439983-2126-4eef-84eb-930e45607e67.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (862, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 309, '/uploads/courses/videos/21a2f4b4-1f12-42d3-912d-4fd4e59710cb.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (863, 'shahadah.mp4', 309, '/uploads/courses/videos/76b4c17a-98db-4d7b-914b-d7e9a1a35f7e.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (864, 'shahadah.mp4', 309, '/uploads/courses/videos/2db89fd9-3cdf-44a3-a775-ae2f9d54196b.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (865, 'Intro.mov', 309, '/uploads/courses/videos/f2759c2c-2303-4615-bb93-762e8d93e3e0.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (866, 'What-is-Html5.mov', 309, '/uploads/courses/videos/d6c0cfe6-82fe-4ea1-b5ab-3db7a99c7bb5.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (867, 'Text-Editor.mov', 309, '/uploads/courses/videos/ca7e8d17-6479-4249-a574-3ace6ecd0e4b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (868, 'Semantic.mov', 309, '/uploads/courses/videos/49000635-d829-4fa1-9a5a-8aaad8f51c1d.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (869, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 310, '/uploads/courses/videos/0387db9c-5b12-4bbb-9b96-a7a0d39c2b81.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (870, 'shahadah.mp4', 310, '/uploads/courses/videos/073b0b14-7ded-4000-87c8-449d4db4d110.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (871, 'shahadah.mp4', 310, '/uploads/courses/videos/96e44f99-4a37-4477-b867-6aea8e00a1c4.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (872, 'Intro.mov', 310, '/uploads/courses/videos/b8c5cf28-8ae9-46b0-a222-410109f83ad6.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (873, 'What-is-Html5.mov', 310, '/uploads/courses/videos/4a364ab3-7473-4c6e-86dd-861cb99d3c42.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (874, 'Text-Editor.mov', 310, '/uploads/courses/videos/d2a70e6c-042c-41a7-897a-9b35c794dc76.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (875, 'Semantic.mov', 310, '/uploads/courses/videos/ea4b81c3-509d-4eec-88e5-377421a47e17.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (876, 'Semantic.mov', 311, '/uploads/courses/videos/c0ae2f31-0c2e-4184-8cc3-e45325f8a117.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (877, 'What-is-Html5.mov', 311, '/uploads/courses/videos/5ba79b26-b54b-4c5b-9c82-c31e6391a452.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (878, 'Intro.mov', 312, '/uploads/courses/videos/5238637c-5b44-49ba-9228-dc4bc6f6b970.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (879, 'Text-Editor.mov', 313, '/uploads/courses/videos/de807168-ef21-4d15-9aad-389fda922a4d.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (880, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 314, '/uploads/courses/videos/61e132c2-a742-4877-8c62-af4752bf33a9.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (881, 'shahadah.mp4', 314, '/uploads/courses/videos/fd3e0f28-f249-431a-b68d-7e355b44feac.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (882, 'shahadah.mp4', 314, '/uploads/courses/videos/e6071a0e-4bf5-44a9-89da-6b07b851cc91.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (883, 'Intro.mov', 314, '/uploads/courses/videos/b4fb0d70-2da6-407a-ad35-4018054ef8d2.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (884, 'What-is-Html5.mov', 314, '/uploads/courses/videos/d8f2fff3-e9ee-4026-a3ec-798757e53c06.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (885, 'Text-Editor.mov', 314, '/uploads/courses/videos/b081d361-9528-4a6f-8607-233d5fbfb518.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (886, 'Semantic.mov', 314, '/uploads/courses/videos/fee05412-f715-4245-a99c-bc1e4c589c21.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (887, 'Semantic.mov', 315, '/uploads/courses/videos/090a6e27-0fe8-4e0c-9ab4-53ec70513fc2.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (888, 'What-is-Html5.mov', 315, '/uploads/courses/videos/48631468-439f-4356-a9ce-e6e17378ae5d.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (889, 'Intro.mov', 316, '/uploads/courses/videos/46dc7e0f-5403-4ae6-b0ec-29962148a9bf.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (890, 'Text-Editor.mov', 317, '/uploads/courses/videos/56f331da-fc62-4aea-bead-c7031ed50b14.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (891, 'Who_created_allah?.mp4', 318, '/uploads/courses/videos/f0b1fdc5-cd70-4aee-9c35-3bb5d6c89e3b.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (892, 'Presentation3.mp4', 318, '/uploads/courses/videos/ba910a3c-42c5-445d-899c-278ab2a2aaf8.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (893, 'Presentation1.mp4', 318, '/uploads/courses/videos/ae6cff60-a429-4933-be17-da0d57a758c1.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (894, 'Website_record.mp4', 318, '/uploads/courses/videos/6b075246-d39a-4ea9-9a2a-f0ef1cc7cc3d.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (895, 'Website_record.mp4', 318, '/uploads/courses/videos/1becff78-0a32-4fa6-83b7-ced41f85f3b4.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (899, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 320, '/uploads/courses/videos/51219edb-d864-4e09-88f9-6e312ef51af7.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (900, 'shahadah.mp4', 320, '/uploads/courses/videos/b1a2ec85-4ebc-4c60-be9f-ceb362c29b76.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (901, 'shahadah.mp4', 320, '/uploads/courses/videos/b19a94d7-3bdb-4709-ab8d-d1543c9aacbb.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (902, 'Intro.mov', 320, '/uploads/courses/videos/bc3d29b5-a4ce-497e-99ab-f0b5583a0e3b.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (903, 'What-is-Html5.mov', 320, '/uploads/courses/videos/10ff97a5-30dc-4ac0-baca-55b7022e2453.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (904, 'Text-Editor.mov', 320, '/uploads/courses/videos/c55594bd-bcbd-4783-aad0-bf6bf67de6a3.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (905, 'Semantic.mov', 320, '/uploads/courses/videos/1b3e9c70-01cb-40af-b6f8-11245d05b5ef.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (906, 'Semantic.mov', 321, '/uploads/courses/videos/521a9b2d-64c3-4a4b-b190-2c5227725332.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (907, 'What-is-Html5.mov', 321, '/uploads/courses/videos/2daedd05-6305-43a4-bd65-9f2563ecf38c.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (908, 'Intro.mov', 322, '/uploads/courses/videos/5e59f1e5-647f-4445-9c0c-abc3c6b35efc.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (909, 'Text-Editor.mov', 323, '/uploads/courses/videos/cd456eb5-d374-4f4d-a10e-cbe1eb1efb03.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (910, 'Who_created_allah?.mp4', 324, '/uploads/courses/videos/ba56a250-0225-4932-a6d8-99223da2017b.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (911, 'Presentation3.mp4', 324, '/uploads/courses/videos/197de8fb-13b0-46e9-9fa9-9db7521e0541.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (912, 'Presentation1.mp4', 324, '/uploads/courses/videos/bdc4d378-0088-46aa-9a24-dbb48e9cece1.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (913, 'Website_record.mp4', 324, '/uploads/courses/videos/7e854483-8cf2-4ada-ab24-92e0d9664127.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (914, 'Website_record.mp4', 324, '/uploads/courses/videos/032d7734-4b3c-40a9-a6f5-ad6c5bd3191e.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (918, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 326, '/uploads/courses/videos/fdea334e-a10f-4e4f-96bf-335d9108f5a3.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (919, 'shahadah.mp4', 326, '/uploads/courses/videos/12d58c64-1e11-4120-9750-936fd0bd0de5.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (920, 'shahadah.mp4', 326, '/uploads/courses/videos/7afc0ff4-2a43-4689-8d76-65e14339764e.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (921, 'Intro.mov', 326, '/uploads/courses/videos/904564b6-b9de-4bfd-a631-5c9917239743.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (922, 'What-is-Html5.mov', 326, '/uploads/courses/videos/1fcda1a7-73ad-49c9-bf6e-552a811ff38d.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (923, 'Text-Editor.mov', 326, '/uploads/courses/videos/166b1610-c5de-448d-a3b5-9078687e75de.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (924, 'Semantic.mov', 326, '/uploads/courses/videos/682e44a0-f94e-4321-a478-5e5ce9ef9cae.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (925, 'Semantic.mov', 327, '/uploads/courses/videos/1d7d61e8-7d9e-4502-b4dc-84cbbb5af21d.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (926, 'What-is-Html5.mov', 327, '/uploads/courses/videos/605bef90-8f39-48d5-88c7-c577d0ed8a8e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (927, 'Intro.mov', 328, '/uploads/courses/videos/41e25548-847d-42dc-9af1-9eabf9b628fe.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (928, 'Text-Editor.mov', 329, '/uploads/courses/videos/c94448c6-9398-48cd-9c6b-3da7dc2be941.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (929, 'Who_created_allah?.mp4', 330, '/uploads/courses/videos/54b59c09-983f-4030-a542-a8918fc86f74.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (930, 'Presentation3.mp4', 330, '/uploads/courses/videos/c237bf21-ab9a-482d-8bb7-e96acca5bee6.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (931, 'Presentation1.mp4', 330, '/uploads/courses/videos/6f85e0f9-1b49-4dd9-b4dd-5731d662287a.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (932, 'Website_record.mp4', 330, '/uploads/courses/videos/7caf1349-e0d0-4a2c-9d6f-e5ffd4843b8c.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (933, 'Website_record.mp4', 330, '/uploads/courses/videos/593eacf2-bfda-4589-92d9-575e6d511471.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (937, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 332, '/uploads/courses/videos/03f62aa6-0632-4f76-969c-c5935252f7ba.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (938, 'shahadah.mp4', 332, '/uploads/courses/videos/eb62a788-8507-4898-b9b8-bb90edac5bb3.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (939, 'shahadah.mp4', 332, '/uploads/courses/videos/a22683a3-5a0f-4cf0-a711-9aa9629465c2.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (940, 'Intro.mov', 332, '/uploads/courses/videos/5687c3b5-02a0-42c1-b3aa-d46e30ff9997.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (941, 'What-is-Html5.mov', 332, '/uploads/courses/videos/8f15ea91-f1e4-4552-b0df-fa9f84daacab.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (942, 'Text-Editor.mov', 332, '/uploads/courses/videos/f1a87911-bf21-45e7-962b-5b719ea7252f.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (943, 'Semantic.mov', 332, '/uploads/courses/videos/dd2b97a5-2f3c-48a1-95a7-2744bd5e478e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (944, 'Semantic.mov', 333, '/uploads/courses/videos/b582c4c6-7209-45fe-80e5-da9c7eecdc79.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (945, 'What-is-Html5.mov', 333, '/uploads/courses/videos/ffc7983b-2a35-48db-82a0-5e64cf8d3528.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (946, 'Intro.mov', 334, '/uploads/courses/videos/74db1e36-126e-4edb-8736-aaff0f67890b.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (947, 'Text-Editor.mov', 335, '/uploads/courses/videos/7978f38f-5e07-4b7e-886c-2198184f1305.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (948, 'Who_created_allah?.mp4', 336, '/uploads/courses/videos/71c147e5-05a4-4542-9db1-1dffb0b83b20.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (949, 'Presentation3.mp4', 336, '/uploads/courses/videos/cd3dd9aa-75b4-456b-99f3-692dc22f4404.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (950, 'Presentation1.mp4', 336, '/uploads/courses/videos/3aeeb7ea-a9f0-4f84-8353-c49c6a800a93.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (951, 'Website_record.mp4', 336, '/uploads/courses/videos/1c1ff851-fed8-420a-a14e-6229b95f6104.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (952, 'Website_record.mp4', 336, '/uploads/courses/videos/739a20fb-ea20-47f1-b8f8-5af9ab9002f5.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (956, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 338, '/uploads/courses/videos/e4b0af1d-a924-468a-8b0d-8cbfab53bff7.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (957, 'shahadah.mp4', 338, '/uploads/courses/videos/f4fb1f9a-daea-400c-b73e-e99533187205.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (958, 'shahadah.mp4', 338, '/uploads/courses/videos/f3378620-38fe-4fd5-af17-20d7fa915b4c.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (959, 'Intro.mov', 338, '/uploads/courses/videos/ffade847-b564-4d07-8685-1dcb8fa2378d.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (960, 'What-is-Html5.mov', 338, '/uploads/courses/videos/b743f0f1-b4eb-4ca1-8cd7-1cb7cc10a725.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (961, 'Text-Editor.mov', 338, '/uploads/courses/videos/34adc10e-3640-4881-a44c-ca0f7eff6124.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (962, 'Semantic.mov', 338, '/uploads/courses/videos/0b2304ed-88e1-402e-91ee-f5de570da4fa.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (963, 'Semantic.mov', 339, '/uploads/courses/videos/7ece169e-5ad5-43a3-a0c7-4f8cfb3e2cdd.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (964, 'What-is-Html5.mov', 339, '/uploads/courses/videos/83d1d34d-a753-44d0-8cc3-76e0e6055ad6.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (965, 'Intro.mov', 340, '/uploads/courses/videos/1138ef75-c72a-405a-a58d-df02578497a0.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (966, 'Text-Editor.mov', 341, '/uploads/courses/videos/68e8023e-61fa-404c-96ef-55727cfc1194.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (967, 'Who_created_allah?.mp4', 342, '/uploads/courses/videos/170e8964-50e5-4bef-aaae-240b5e26cf47.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (968, 'Presentation3.mp4', 342, '/uploads/courses/videos/d0681ae6-8a07-4769-8513-8a10bbf8e889.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (969, 'Presentation1.mp4', 342, '/uploads/courses/videos/334b21b8-7ee3-4f27-8720-cacd5d1da6b5.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (970, 'Website_record.mp4', 342, '/uploads/courses/videos/a20bb523-ed52-40a9-9358-4224fb25d888.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (971, 'Website_record.mp4', 342, '/uploads/courses/videos/c8c00d33-ef16-4426-9178-cdc5d512d8f0.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (975, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 344, '/uploads/courses/videos/8bd908b3-0803-4137-b48e-a4af837615f3.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (976, 'shahadah.mp4', 344, '/uploads/courses/videos/ed8696ba-a6f4-4d23-871f-041e8055b37b.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (977, 'shahadah.mp4', 344, '/uploads/courses/videos/74dd7d26-dd03-4edc-81af-d42b37cc5e7d.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (978, 'Intro.mov', 344, '/uploads/courses/videos/e17483fe-be51-4a6a-93b6-ab992ac711e4.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (979, 'What-is-Html5.mov', 344, '/uploads/courses/videos/211eb1e0-c175-4069-b84c-81114b16bc8c.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (980, 'Text-Editor.mov', 344, '/uploads/courses/videos/44f21901-90e0-44b8-a557-f1591aad1a91.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (981, 'Semantic.mov', 344, '/uploads/courses/videos/2f02e334-679d-43d3-9376-879901cf8fed.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (982, 'Semantic.mov', 345, '/uploads/courses/videos/d1ba72c1-e395-447d-af6c-66edf1243add.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (983, 'What-is-Html5.mov', 345, '/uploads/courses/videos/0f8d2087-49d6-4394-a57a-76b39c7b9f4a.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (984, 'Intro.mov', 346, '/uploads/courses/videos/5dcd4919-a382-45a9-a916-b49750605dd7.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (985, 'Text-Editor.mov', 347, '/uploads/courses/videos/aeed5ab7-bef2-425e-a8ea-cf93da5d2e1f.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (986, 'Who_created_allah?.mp4', 348, '/uploads/courses/videos/aeaad88e-72c5-48f6-be07-61d58ede8974.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (987, 'Presentation3.mp4', 348, '/uploads/courses/videos/08707686-74ca-46ab-90af-307ef5267c05.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (988, 'Presentation1.mp4', 348, '/uploads/courses/videos/ee498c7d-7a18-460f-a9bf-9d5666ddfeea.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (989, 'Website_record.mp4', 348, '/uploads/courses/videos/ce63bcb4-08e4-48a3-b301-ee564e542e07.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (990, 'Website_record.mp4', 348, '/uploads/courses/videos/cf65376d-1626-424a-b3c9-0746f09233ef.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (994, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 350, '/uploads/courses/videos/7b92e448-2da0-43c9-b23a-3accd4e73ba2.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (995, 'shahadah.mp4', 350, '/uploads/courses/videos/5a7ca1d1-33f6-4e9e-82c7-a19893d0999a.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (996, 'shahadah.mp4', 350, '/uploads/courses/videos/b4071137-b519-4de1-8d2b-90565d2616a0.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (997, 'Intro.mov', 350, '/uploads/courses/videos/4bd12762-190c-461f-931e-69b172b870cc.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (998, 'What-is-Html5.mov', 350, '/uploads/courses/videos/1d31cacc-d265-48dd-9ab0-70fabad9a745.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (999, 'Text-Editor.mov', 350, '/uploads/courses/videos/2937c4b3-a35d-47ee-bcec-fa31fa0c2a15.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1000, 'Semantic.mov', 350, '/uploads/courses/videos/c3e7ae71-b7b1-4a49-a2a2-9139e940a7cb.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1001, 'Semantic.mov', 351, '/uploads/courses/videos/de7e0740-ea2e-455b-b069-ce83ce1e854b.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1002, 'What-is-Html5.mov', 351, '/uploads/courses/videos/e68f4376-5a31-4ee4-bc73-f28716781772.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1003, 'Intro.mov', 352, '/uploads/courses/videos/55fadaf1-0e52-4d6b-aa76-b33a355e5da4.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1004, 'Text-Editor.mov', 353, '/uploads/courses/videos/f413ca21-93a9-4962-b146-3c8ef94a17b4.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1005, 'Who_created_allah?.mp4', 354, '/uploads/courses/videos/7d1698a8-1567-4169-b935-1ee303f02226.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1006, 'Presentation3.mp4', 354, '/uploads/courses/videos/07eda669-cf9b-487f-adfe-990d1c7afd5d.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1007, 'Presentation1.mp4', 354, '/uploads/courses/videos/319ced5f-19e4-45f4-814f-0a3a70aa5153.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1008, 'Website_record.mp4', 354, '/uploads/courses/videos/51541d9c-f852-4dae-8e01-32015e023813.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1009, 'Website_record.mp4', 354, '/uploads/courses/videos/6d03fa67-3112-48ff-b0ff-95d52aa60673.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1013, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 356, '/uploads/courses/videos/fcc26a56-0028-4a1f-98d7-a3489d9c956c.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1014, 'shahadah.mp4', 356, '/uploads/courses/videos/72cd01b1-c371-49de-9e41-c0b722e9bf5f.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1015, 'shahadah.mp4', 356, '/uploads/courses/videos/d8bb0eca-bfaa-4690-815a-18996aa746ee.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1016, 'Intro.mov', 356, '/uploads/courses/videos/3228f073-c5eb-4e13-89d8-a7da3e500959.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1017, 'What-is-Html5.mov', 356, '/uploads/courses/videos/0348da17-1096-49e2-a328-ef066c5401ff.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1018, 'Text-Editor.mov', 356, '/uploads/courses/videos/2bd1aac0-9d72-4f66-8c26-2bd45eecc444.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1019, 'Semantic.mov', 356, '/uploads/courses/videos/b3b12a00-3e1d-49e3-a82f-23f69f81c992.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1020, 'Semantic.mov', 357, '/uploads/courses/videos/915b78fe-c33b-48d1-9083-f115953af8b4.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1021, 'What-is-Html5.mov', 357, '/uploads/courses/videos/56727928-2b77-480e-b55f-8743fc179270.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1022, 'Intro.mov', 358, '/uploads/courses/videos/211036c8-a34c-414c-9c88-6c099acaa204.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1023, 'Text-Editor.mov', 359, '/uploads/courses/videos/96d861df-f2b7-4cd7-98a6-80689c4b02d5.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1024, 'Who_created_allah?.mp4', 360, '/uploads/courses/videos/21c6de53-541d-4781-81b3-67fbbd64ad92.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1025, 'Presentation3.mp4', 360, '/uploads/courses/videos/f3ead8e2-32b2-405d-962c-c949e3b9f8fa.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1026, 'Presentation1.mp4', 360, '/uploads/courses/videos/ddc2f6e0-8735-4c4e-ad86-e458e978fc2d.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1027, 'Website_record.mp4', 360, '/uploads/courses/videos/efe5571b-eb5a-42f8-b54f-86866d07b64c.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1028, 'Website_record.mp4', 360, '/uploads/courses/videos/9c08c777-d59b-45b9-bc7a-3ff01bb42c9e.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1032, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 362, '/uploads/courses/videos/6cd0d6f2-f610-444e-83ec-155134ceba74.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1033, 'shahadah.mp4', 362, '/uploads/courses/videos/a84c241f-b33c-4abb-ad41-afd2c75cbcde.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1034, 'shahadah.mp4', 362, '/uploads/courses/videos/35d600ba-16a0-4c07-9bfa-6cbfd741be9d.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1035, 'Intro.mov', 362, '/uploads/courses/videos/f48a7463-0e14-4875-8fb7-c00f86386ec8.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1036, 'What-is-Html5.mov', 362, '/uploads/courses/videos/72d0dbbf-30e0-41b7-833c-5a63ac27dc84.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1037, 'Text-Editor.mov', 362, '/uploads/courses/videos/47b253fb-7d4b-494a-ac4a-9551dae39ac8.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1038, 'Semantic.mov', 362, '/uploads/courses/videos/6c5a7b89-f235-4eab-8d7c-7de4dd523896.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1039, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 363, '/uploads/courses/videos/0a83ad24-a37f-41dd-916a-8c1f1e7f7bcc.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1040, 'shahadah.mp4', 363, '/uploads/courses/videos/74b90762-c003-4361-9daa-213636133469.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1041, 'shahadah.mp4', 363, '/uploads/courses/videos/500ddbf0-ce65-46ee-ad48-122af229dae5.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1042, 'Intro.mov', 363, '/uploads/courses/videos/f4ed0690-ecd5-42f0-9cb0-0b116e723952.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1043, 'What-is-Html5.mov', 363, '/uploads/courses/videos/3df44021-5943-4173-8692-6d7ae5e1092c.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1044, 'Text-Editor.mov', 363, '/uploads/courses/videos/78fa1329-cb40-4ba5-b303-94144c48511d.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1045, 'Semantic.mov', 363, '/uploads/courses/videos/5dff8040-9f64-4526-abac-3f2de4bee994.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1046, 'Semantic.mov', 364, '/uploads/courses/videos/25c22940-9fee-4374-b8a2-fe8306d913ab.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1047, 'What-is-Html5.mov', 364, '/uploads/courses/videos/31c0d677-b7c4-4ed4-b11b-a38f7668119e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1048, 'Intro.mov', 365, '/uploads/courses/videos/43d95fd1-8002-493b-96cd-ccf3a556f7f2.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1049, 'Text-Editor.mov', 366, '/uploads/courses/videos/61cd6107-b450-472d-b0be-aa5bdb9ac2de.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1050, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 367, '/uploads/courses/videos/561f7418-7bdc-4d50-9362-bf039fb30e64.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1051, 'shahadah.mp4', 367, '/uploads/courses/videos/5822a5c9-79c4-4b99-9416-ec2b247c5df4.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1052, 'shahadah.mp4', 367, '/uploads/courses/videos/e280d230-9d49-4507-815a-b0667241ea3e.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1053, 'Intro.mov', 367, '/uploads/courses/videos/0ee0e515-6429-49ef-a2ab-89453ef63b14.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1054, 'What-is-Html5.mov', 367, '/uploads/courses/videos/d4086c57-94a9-469c-bb2a-5dd70a8d1040.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1055, 'Text-Editor.mov', 367, '/uploads/courses/videos/f04dd76e-33d9-44f0-964c-780c446a674f.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1056, 'Semantic.mov', 367, '/uploads/courses/videos/f62e0cc6-f4e6-45d0-a8c8-9aae0e50ee34.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1057, 'Semantic.mov', 368, '/uploads/courses/videos/f607d2e2-a8dd-4bee-a253-1fe55924c80b.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1058, 'What-is-Html5.mov', 368, '/uploads/courses/videos/46d67e90-79e8-4f00-8b88-d3201768221e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1059, 'Intro.mov', 369, '/uploads/courses/videos/52681ec8-e59a-412c-81cc-6f031ca2b682.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1060, 'Text-Editor.mov', 370, '/uploads/courses/videos/9700fa9a-0698-455e-9439-acdf965ec55f.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1061, 'Who_created_allah?.mp4', 371, '/uploads/courses/videos/994442cb-9391-434b-acc6-80c73ffa6ac8.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1062, 'Presentation3.mp4', 371, '/uploads/courses/videos/3b6d273c-29bc-4841-ac90-866c56201db8.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1063, 'Presentation1.mp4', 371, '/uploads/courses/videos/4cff091b-f770-4c9f-8b09-5175313e92ee.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1064, 'Website_record.mp4', 371, '/uploads/courses/videos/686d65cc-53d2-4ca3-b738-352c607f3caa.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1065, 'Website_record.mp4', 371, '/uploads/courses/videos/a5490d45-12a3-4549-beca-27223fab914e.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1069, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 373, '/uploads/courses/videos/abcc767e-5560-4656-80bd-e0dfba8c8b13.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1070, 'shahadah.mp4', 373, '/uploads/courses/videos/d57857e1-f7f0-42d7-a441-5abc2337bddf.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1071, 'shahadah.mp4', 373, '/uploads/courses/videos/00a2f911-1817-46a9-87ea-112a65736da7.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1072, 'Intro.mov', 373, '/uploads/courses/videos/98583961-686e-4cde-8bb1-8f60707ac8d9.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1073, 'What-is-Html5.mov', 373, '/uploads/courses/videos/42dd3def-7592-43ca-a0f2-4c4ae89082dc.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1074, 'Text-Editor.mov', 373, '/uploads/courses/videos/8245b173-f15c-472a-a4d5-b528bcf468d0.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1075, 'Semantic.mov', 373, '/uploads/courses/videos/fe57392e-b368-4f2d-8aba-a013a6c961dd.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1076, 'Semantic.mov', 374, '/uploads/courses/videos/db2906e3-e1cc-4700-82e7-412d8df1733c.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1077, 'What-is-Html5.mov', 374, '/uploads/courses/videos/d8f105fd-fd80-4503-8205-4485aacbc875.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1078, 'Intro.mov', 375, '/uploads/courses/videos/f4bda802-d922-4a4b-941d-95fc47d6f02b.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1079, 'Text-Editor.mov', 376, '/uploads/courses/videos/f6594034-38ad-4e50-b71d-dd602aad22e1.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1080, 'Who_created_allah?.mp4', 377, '/uploads/courses/videos/1d234013-8e4a-4f5f-9fb6-6b1a5009721b.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1081, 'Presentation3.mp4', 377, '/uploads/courses/videos/b934c62f-4c2b-408e-bc05-49b2b8f76a6a.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1082, 'Presentation1.mp4', 377, '/uploads/courses/videos/83724803-5b88-4156-850e-7989dd2a24b1.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1083, 'Website_record.mp4', 377, '/uploads/courses/videos/4371cb07-914b-4ef6-a95c-707cb994b033.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1084, 'Website_record.mp4', 377, '/uploads/courses/videos/bef081c4-3a18-4e14-a25a-e28010915ea5.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1088, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 379, '/uploads/courses/videos/bc14e259-3546-45a9-8b7f-61230c50fae3.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1089, 'shahadah.mp4', 379, '/uploads/courses/videos/46788a14-fb64-4ee0-9567-0cfe1ffec1aa.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1090, 'shahadah.mp4', 379, '/uploads/courses/videos/34eea747-9531-450c-8f3b-0b084cb7e486.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1091, 'Intro.mov', 379, '/uploads/courses/videos/d2cc8bb5-3991-4504-b7a0-f28c5757db17.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1092, 'What-is-Html5.mov', 379, '/uploads/courses/videos/e699a4f8-8f3d-46c6-97ec-3acc395881da.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1093, 'Text-Editor.mov', 379, '/uploads/courses/videos/679467ca-644f-413e-8a26-bdfef6556f74.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1094, 'Semantic.mov', 379, '/uploads/courses/videos/1acf8692-7e3d-4519-b4ea-b638b051f121.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1095, 'Semantic.mov', 380, '/uploads/courses/videos/62247ab1-2d67-46b3-bfbd-d57cd2f27935.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1096, 'What-is-Html5.mov', 380, '/uploads/courses/videos/9e756bff-10ca-4d50-a899-0461198eb6a0.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1097, 'Intro.mov', 381, '/uploads/courses/videos/c8ba3808-f83d-4c6f-8e56-3e0b1351d646.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1098, 'Text-Editor.mov', 382, '/uploads/courses/videos/649adcb8-fded-4839-8a7e-df0f0ee90906.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1099, 'Who_created_allah?.mp4', 383, '/uploads/courses/videos/a73edb24-a19e-4a43-9753-f28793801231.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1100, 'Presentation3.mp4', 383, '/uploads/courses/videos/289c8a83-26c1-4e3d-83e9-0e33d71f6a69.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1101, 'Presentation1.mp4', 383, '/uploads/courses/videos/e57f35a9-7a84-4529-b3bb-babae30bc309.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1102, 'Website_record.mp4', 383, '/uploads/courses/videos/e5c10864-13ae-4b3b-851a-34bab2ec804a.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1103, 'Website_record.mp4', 383, '/uploads/courses/videos/df02f4d6-8437-4b15-af9e-910d7c1bf09c.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1107, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 385, '/uploads/courses/videos/8cad1482-9b73-4c9b-9fc0-ea8f34941813.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1108, 'shahadah.mp4', 385, '/uploads/courses/videos/8e33d109-3930-4126-9dfc-0595f63817ff.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1109, 'shahadah.mp4', 385, '/uploads/courses/videos/ea1b9afa-7ef3-4157-9bce-f6f933ba433c.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1110, 'Intro.mov', 385, '/uploads/courses/videos/5feaf25b-df90-4607-91d8-de964b168a6b.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1111, 'What-is-Html5.mov', 385, '/uploads/courses/videos/2f7c4617-b2b2-467e-bbd6-3174dcb180a2.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1112, 'Text-Editor.mov', 385, '/uploads/courses/videos/8058563d-486a-497a-82b9-eaca98fc6900.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1113, 'Semantic.mov', 385, '/uploads/courses/videos/1640a80f-acf8-4637-8274-5f9b299d6993.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1114, 'Semantic.mov', 386, '/uploads/courses/videos/5b6194bd-bc1d-40ce-86cd-8592263f6c2a.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1115, 'What-is-Html5.mov', 386, '/uploads/courses/videos/bd798e99-70a6-4603-a6f3-344aa7efecfc.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1116, 'Intro.mov', 387, '/uploads/courses/videos/63bc516e-caf4-441a-bb8f-328bd16f5318.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1117, 'Text-Editor.mov', 388, '/uploads/courses/videos/4d0a3394-6df6-4053-a97b-b009bca692ca.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1118, 'Who_created_allah?.mp4', 389, '/uploads/courses/videos/53055880-c2c6-42a4-ba08-d97277c70099.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1119, 'Presentation3.mp4', 389, '/uploads/courses/videos/ee9cd798-b802-40e2-bbd6-a6ac822f5515.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1120, 'Presentation1.mp4', 389, '/uploads/courses/videos/be4b3f79-4714-4352-b513-934478883fd2.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1121, 'Website_record.mp4', 389, '/uploads/courses/videos/5640066f-168d-4c26-9079-d53f8f6c3552.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1122, 'Website_record.mp4', 389, '/uploads/courses/videos/3bd5f106-0cc9-4651-b54c-f746e569812e.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1126, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 391, '/uploads/courses/videos/71bc7b04-e3f7-4908-a1de-63d3a6ca8ae5.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1127, 'shahadah.mp4', 391, '/uploads/courses/videos/32074834-21c4-4f6f-bbef-cf656b936b38.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1128, 'shahadah.mp4', 391, '/uploads/courses/videos/d57a69ac-9494-4021-b7cd-f0b70ae15e1e.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1129, 'Intro.mov', 391, '/uploads/courses/videos/e22d6332-7d8e-43a4-8f88-0ef1c9c96e9f.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1130, 'What-is-Html5.mov', 391, '/uploads/courses/videos/9be56090-744e-4c00-999a-61f2ca2b1185.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1131, 'Text-Editor.mov', 391, '/uploads/courses/videos/c9d74c23-05dd-40ae-a949-171144ef7452.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1132, 'Semantic.mov', 391, '/uploads/courses/videos/456c52ff-858e-45cf-a062-685eed1bdf11.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1133, 'Semantic.mov', 392, '/uploads/courses/videos/49f77aac-0b61-4125-8c69-e8a66cc4dc23.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1134, 'What-is-Html5.mov', 392, '/uploads/courses/videos/c36686d2-b552-4a74-be2b-3f6b6c84c6e7.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1135, 'Intro.mov', 393, '/uploads/courses/videos/b3ee953c-9650-49b3-91d7-48fd9dc80d40.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1136, 'Text-Editor.mov', 394, '/uploads/courses/videos/1d731240-01f0-406b-9248-1037c006ef0b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1137, 'Who_created_allah?.mp4', 395, '/uploads/courses/videos/7904cb41-7869-4dfe-9d9c-c68e8192c9ae.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1138, 'Presentation3.mp4', 395, '/uploads/courses/videos/63071f39-a54a-47c3-9541-03f17180d1cc.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1139, 'Presentation1.mp4', 395, '/uploads/courses/videos/97b1ce2b-7e3f-42a2-b4ab-ac70176e5925.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1140, 'Website_record.mp4', 395, '/uploads/courses/videos/31761249-cd96-469f-b665-620df593677e.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1141, 'Website_record.mp4', 395, '/uploads/courses/videos/7bb2c7bc-ff3d-45fc-b721-d5b4821477d9.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1145, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 397, '/uploads/courses/videos/408a274f-06ce-4b43-9927-56f7c4573310.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1146, 'shahadah.mp4', 397, '/uploads/courses/videos/beafd8c5-032b-457d-9fef-03dabf443db7.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1147, 'shahadah.mp4', 397, '/uploads/courses/videos/44f127a9-bbe4-4f4e-b3a4-6573263f225c.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1148, 'Intro.mov', 397, '/uploads/courses/videos/7e8a791e-7d81-497c-88f8-00ded1c15aea.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1149, 'What-is-Html5.mov', 397, '/uploads/courses/videos/118b0f9b-086a-4b06-98a3-7c9cf134c6a4.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1150, 'Text-Editor.mov', 397, '/uploads/courses/videos/cd24b195-5c37-452c-9c02-ed17701e6d5b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1151, 'Semantic.mov', 397, '/uploads/courses/videos/e33de7d9-f28c-4274-9530-660bd3ff1e69.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1152, 'Semantic.mov', 398, '/uploads/courses/videos/f315adc7-8112-4910-a687-8c72a2a2247e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1153, 'What-is-Html5.mov', 398, '/uploads/courses/videos/ea15835e-da18-4c68-9702-7b27303dba0f.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1154, 'Intro.mov', 399, '/uploads/courses/videos/dc1b45b1-8c72-4046-837a-482da43b3f0d.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1155, 'Text-Editor.mov', 400, '/uploads/courses/videos/b06985bb-cffb-46aa-b13f-03f3b723dacc.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1156, 'Who_created_allah?.mp4', 401, '/uploads/courses/videos/afba2c37-9ea3-4c9a-8e0e-13b2ad0b015d.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1157, 'Presentation3.mp4', 401, '/uploads/courses/videos/a007f977-8bdf-4ee7-9153-0d97e157b643.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1158, 'Presentation1.mp4', 401, '/uploads/courses/videos/606e544d-2198-4c40-abb2-54226e0ed9bd.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1159, 'Website_record.mp4', 401, '/uploads/courses/videos/a775b1d0-21e6-4244-ae3b-c165053c118c.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1160, 'Website_record.mp4', 401, '/uploads/courses/videos/06047023-f35d-48f3-bfdb-b0ba9af3fed3.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1164, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 403, '/uploads/courses/videos/0241facd-8cae-4c72-be1f-90c6279f7dc5.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1165, 'shahadah.mp4', 403, '/uploads/courses/videos/d4e9ecfe-ad79-4af3-84c4-5a146afd0e72.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1166, 'shahadah.mp4', 403, '/uploads/courses/videos/623a96c6-a333-469f-963f-623958a81c01.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1167, 'Intro.mov', 403, '/uploads/courses/videos/716296e1-2aaf-43d0-862d-5573a733cdea.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1168, 'What-is-Html5.mov', 403, '/uploads/courses/videos/b3c75770-2d5b-4bb0-b154-a460e1b2beb3.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1169, 'Text-Editor.mov', 403, '/uploads/courses/videos/620e6a59-42d1-43a8-9430-cf9671764d34.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1170, 'Semantic.mov', 403, '/uploads/courses/videos/ff8872e3-a8d2-4f05-94b9-868241b7a1a5.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1171, 'Semantic.mov', 404, '/uploads/courses/videos/242adf21-9b2a-4d00-8790-3b69f2738378.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1172, 'What-is-Html5.mov', 404, '/uploads/courses/videos/c3b821fb-511c-46f9-924d-4bcf29f3e5b9.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1173, 'Intro.mov', 405, '/uploads/courses/videos/eb4a16d0-d581-49ca-8135-03a5e2c934dd.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1174, 'Text-Editor.mov', 406, '/uploads/courses/videos/6cda6172-4fa9-4ee9-a511-2e0d297bfa1d.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1175, 'Who_created_allah?.mp4', 407, '/uploads/courses/videos/3db2e421-d69f-49d3-a287-be8cc07762a9.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1176, 'Presentation3.mp4', 407, '/uploads/courses/videos/a4758255-9f95-4c94-a955-66fe1d13030d.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1177, 'Presentation1.mp4', 407, '/uploads/courses/videos/9d095c73-12f9-40c2-ad62-178fa780907b.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1178, 'Website_record.mp4', 407, '/uploads/courses/videos/bf66c83e-077a-4aaf-860e-3e86de2f9fdb.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1179, 'Website_record.mp4', 407, '/uploads/courses/videos/c814774a-28b1-49d0-8efc-3dfd8798dd32.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1183, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 409, '/uploads/courses/videos/494f45eb-2817-4c63-b99d-9fdfe98b3b62.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1184, 'shahadah.mp4', 409, '/uploads/courses/videos/f501e33e-cf18-4237-bdb0-cfe6b7558a4c.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1185, 'shahadah.mp4', 409, '/uploads/courses/videos/9a5522f5-e3b9-40f0-8e6e-917a254a0c26.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1186, 'Intro.mov', 409, '/uploads/courses/videos/1e4d4e1f-86cb-42bd-873a-a28cf63aa159.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1187, 'What-is-Html5.mov', 409, '/uploads/courses/videos/1acd84d7-337a-4130-a4c8-9c45d02678ee.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1188, 'Text-Editor.mov', 409, '/uploads/courses/videos/d622cb23-0e7a-4add-aafa-e8eea5b9052b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1189, 'Semantic.mov', 409, '/uploads/courses/videos/540ff41f-f550-4e1c-be4f-28d6f65cfe35.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1190, 'Semantic.mov', 410, '/uploads/courses/videos/9d518c30-e89b-49d4-8c25-2cef95e79d81.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1191, 'What-is-Html5.mov', 410, '/uploads/courses/videos/a84ba624-46bb-42b3-8015-3fdc73645b48.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1192, 'Intro.mov', 411, '/uploads/courses/videos/2586f2b3-8d78-42ad-b615-3ab6cf6b6812.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1193, 'Text-Editor.mov', 412, '/uploads/courses/videos/deee9d30-e0e4-4eab-b647-2521db2077bb.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1194, 'Who_created_allah?.mp4', 413, '/uploads/courses/videos/26c6bad2-4a40-4010-8753-add6f9eee504.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1195, 'Presentation3.mp4', 413, '/uploads/courses/videos/0a66d757-3f74-4b2a-8203-3af61163108a.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1196, 'Presentation1.mp4', 413, '/uploads/courses/videos/1a55af10-7c59-47f8-8944-56006ac494fd.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1197, 'Website_record.mp4', 413, '/uploads/courses/videos/ea3b069e-b824-48a4-a2c6-fd2d0bd7ce16.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1198, 'Website_record.mp4', 413, '/uploads/courses/videos/2f6de831-c414-4c0a-8de8-f007a8314770.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1202, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 415, '/uploads/courses/videos/e91c887c-3f8f-4b74-95c7-0fd97bc1d359.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1203, 'shahadah.mp4', 415, '/uploads/courses/videos/be5e754b-b78c-409d-a9dc-b623bab71185.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1204, 'shahadah.mp4', 415, '/uploads/courses/videos/f3618961-bb09-47d2-a566-2827703a3690.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1205, 'Intro.mov', 415, '/uploads/courses/videos/ebd94190-61eb-4118-9af6-6af923e251cb.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1206, 'What-is-Html5.mov', 415, '/uploads/courses/videos/1b6e07ed-beca-416c-9a78-cc241da5247e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1207, 'Text-Editor.mov', 415, '/uploads/courses/videos/b75312de-443e-43f0-804d-403817b20199.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1208, 'Semantic.mov', 415, '/uploads/courses/videos/7d356c87-92ff-47dd-9871-42068f166c34.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1209, 'Semantic.mov', 416, '/uploads/courses/videos/4c182b73-a4ca-4228-9e01-4a6289e55470.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1210, 'What-is-Html5.mov', 416, '/uploads/courses/videos/47568fa4-0de0-4850-9406-b7e869f83a97.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1211, 'Intro.mov', 417, '/uploads/courses/videos/bd8c3ae0-8686-4691-8c99-a7170dcab5a4.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1212, 'Text-Editor.mov', 418, '/uploads/courses/videos/ad41d11a-b6b8-44b4-8304-5a43a5905a31.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1213, 'Who_created_allah?.mp4', 419, '/uploads/courses/videos/5783e483-4a6d-4349-9dba-f1c7832fa2c2.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1214, 'Presentation3.mp4', 419, '/uploads/courses/videos/c03ae7d4-2f3b-4d78-b379-720d0c6f195e.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1215, 'Presentation1.mp4', 419, '/uploads/courses/videos/af7ce1a5-2ddb-4947-b27b-77f356e20424.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1216, 'Website_record.mp4', 419, '/uploads/courses/videos/1682a58b-504d-47b1-89ab-ad6633423d24.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1217, 'Website_record.mp4', 419, '/uploads/courses/videos/79a697b0-3faa-4ebd-85b5-813ff6ce07c4.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1218, 'Website_record.mp4', 420, '/uploads/courses/videos/f1c0fc73-9147-4f3d-b374-9f7403bd7824.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1219, 'Website_record.mp4', 420, '/uploads/courses/videos/e72784ca-e1c0-48a9-8ce5-a3d90f71b0c4.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1220, 'Website_record.mp4', 420, '/uploads/courses/videos/9a7df81e-b8ea-46bb-ba19-3034645390a2.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1221, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 421, '/uploads/courses/videos/00a4a45e-1eeb-4e8e-a89f-fe172cc10a62.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1222, 'shahadah.mp4', 421, '/uploads/courses/videos/7b606153-cfe4-4cbc-b90b-9e2f9b0fe81b.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1223, 'shahadah.mp4', 421, '/uploads/courses/videos/6d2584fd-2797-429a-b3e5-0ae4de1d5f3c.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1224, 'Intro.mov', 421, '/uploads/courses/videos/8e697477-62ac-4b9f-a36f-4b0f480cab03.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1225, 'What-is-Html5.mov', 421, '/uploads/courses/videos/fdb3f760-2ca6-47ab-adde-6b836713c730.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1226, 'Text-Editor.mov', 421, '/uploads/courses/videos/eb160079-0495-4d08-8f16-837bb2c399c1.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1227, 'Semantic.mov', 421, '/uploads/courses/videos/220bf2ea-230e-4e3a-ba97-0c62de700904.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1228, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 422, '/uploads/courses/videos/0f8657f0-660a-4bed-989f-c7fbfd265bf1.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1229, 'shahadah.mp4', 422, '/uploads/courses/videos/6067e5c1-7475-448f-a6f6-dbca56df3f79.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1230, 'shahadah.mp4', 422, '/uploads/courses/videos/ddcf238c-b961-441b-8985-ad1446879e31.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1231, 'Intro.mov', 422, '/uploads/courses/videos/5c67b0b5-1f31-48f3-9b12-57d9bf895a46.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1232, 'What-is-Html5.mov', 422, '/uploads/courses/videos/88a62094-e80a-458a-9e58-81a7063a3cd5.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1233, 'Text-Editor.mov', 422, '/uploads/courses/videos/5add4a8a-9248-427c-8ffa-6cf681af539d.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1234, 'Semantic.mov', 422, '/uploads/courses/videos/7e0b80e3-58d7-4b79-a8a7-4d099022c6cf.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1235, 'Semantic.mov', 423, '/uploads/courses/videos/ac0666f5-0a5a-4b59-a115-d865bf366b44.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1236, 'What-is-Html5.mov', 423, '/uploads/courses/videos/14ed15ad-e53a-4136-925e-3a70750d02de.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1237, 'Intro.mov', 424, '/uploads/courses/videos/b8b65ff3-cf24-461a-aaa0-9c4174761d8d.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1238, 'Text-Editor.mov', 425, '/uploads/courses/videos/c632a6d0-9264-42b8-a644-37888feecbe4.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1239, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 426, '/uploads/courses/videos/2cb9323b-c7c6-4252-a8ca-c2d1138d1bf2.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1240, 'shahadah.mp4', 426, '/uploads/courses/videos/5274dd3f-15e3-423c-a34f-a5ae106ef327.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1241, 'shahadah.mp4', 426, '/uploads/courses/videos/ccea09b0-19bb-4c32-9822-65a868f1dcab.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1242, 'Intro.mov', 426, '/uploads/courses/videos/4ee14d15-67a1-4f7b-8abb-1cdacf278261.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1243, 'What-is-Html5.mov', 426, '/uploads/courses/videos/87b23b92-c764-4727-a57e-bd549033ec8e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1244, 'Text-Editor.mov', 426, '/uploads/courses/videos/c756b263-a976-4562-9392-79a594830a3a.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1245, 'Semantic.mov', 426, '/uploads/courses/videos/39d545f9-eef7-40e2-a3a5-83ddf2be6592.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1246, 'Semantic.mov', 427, '/uploads/courses/videos/6dc4c0cf-c492-4d92-88dd-771c0b5fcbf9.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1247, 'What-is-Html5.mov', 427, '/uploads/courses/videos/49d43c69-c54d-46e7-a35e-7567bb1c0e7c.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1248, 'Intro.mov', 428, '/uploads/courses/videos/1ffbcf34-0998-446f-ad19-c993713769b6.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1249, 'Text-Editor.mov', 429, '/uploads/courses/videos/61462923-52ea-48dd-b175-27d0e3de67f1.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1250, 'Who_created_allah?.mp4', 430, '/uploads/courses/videos/5bf2f755-6b01-4201-a12f-288d21ab4029.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1251, 'Presentation3.mp4', 430, '/uploads/courses/videos/e58eee94-7b7d-42d9-89c0-7b720737977c.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1252, 'Presentation1.mp4', 430, '/uploads/courses/videos/f8d35ddb-633e-41f7-b416-d9ccf952940e.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1253, 'Website_record.mp4', 430, '/uploads/courses/videos/a4d28bb3-922f-4b58-adff-b4dda180e36e.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1254, 'Website_record.mp4', 430, '/uploads/courses/videos/0021d6ef-0445-412f-a6b9-b85dacd72201.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1255, 'Website_record.mp4', 431, '/uploads/courses/videos/54edd6dc-9e37-4969-9d4e-72fb03d12194.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1256, 'Website_record.mp4', 431, '/uploads/courses/videos/85769933-4c29-4391-838b-4b6cec0608ce.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1257, 'Website_record.mp4', 431, '/uploads/courses/videos/12a5406c-bbc7-498b-93f2-a2f61ef20769.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1258, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 432, '/uploads/courses/videos/63085962-563f-4a64-8bb4-5307c4541458.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1259, 'shahadah.mp4', 432, '/uploads/courses/videos/2f917243-82be-4954-a3c4-daf6a58c5eb5.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1260, 'shahadah.mp4', 432, '/uploads/courses/videos/665870c5-7fde-4c4e-821f-8b6630a9a638.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1261, 'Intro.mov', 432, '/uploads/courses/videos/1fde39b5-247a-4c20-83ad-843b65693acd.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1262, 'What-is-Html5.mov', 432, '/uploads/courses/videos/51c6baed-e49d-4657-a507-943cbcb7d279.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1263, 'Text-Editor.mov', 432, '/uploads/courses/videos/81069b47-396b-4bd9-80b6-194e26d2e303.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1264, 'Semantic.mov', 432, '/uploads/courses/videos/ab81c095-d2a4-4036-92a7-c9161821094a.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1265, 'Semantic.mov', 433, '/uploads/courses/videos/acf4bd2d-38c6-46e7-8e94-49f93d52ab05.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1266, 'What-is-Html5.mov', 433, '/uploads/courses/videos/318a9c64-bf93-4e88-8bd9-6d30c58440ec.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1267, 'Intro.mov', 434, '/uploads/courses/videos/cceecdfb-cbb9-4650-8b4f-c0ed230e1711.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1268, 'Text-Editor.mov', 435, '/uploads/courses/videos/7be80628-af67-4c0f-9f78-83a9c7f9a0bb.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1269, 'Who_created_allah?.mp4', 436, '/uploads/courses/videos/b1523089-2342-4c52-95ed-c32eb751f522.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1270, 'Presentation3.mp4', 436, '/uploads/courses/videos/2fe8a281-0ae3-4b16-aaa0-dc99cf1d9864.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1271, 'Presentation1.mp4', 436, '/uploads/courses/videos/72c7c3de-ddaa-4c1b-bc66-b1c4a202333c.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1272, 'Website_record.mp4', 436, '/uploads/courses/videos/7b86c457-46a4-4d82-966b-f66d5f159b56.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1273, 'Website_record.mp4', 436, '/uploads/courses/videos/189ee0fc-9ce6-4aa1-a50f-9546fdf374ec.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1274, 'Website_record.mp4', 437, '/uploads/courses/videos/1ddac91d-4915-468a-a503-43c41f6c07ef.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1275, 'Website_record.mp4', 437, '/uploads/courses/videos/1e0a38fb-ef03-4059-a111-da0606defdc3.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1276, 'Website_record.mp4', 437, '/uploads/courses/videos/82ae96d5-fee4-4514-9294-45304eb3594e.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1277, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 438, '/uploads/courses/videos/2568d2c9-7d37-4fda-bdff-84c0c7987874.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1278, 'shahadah.mp4', 438, '/uploads/courses/videos/e66f1e83-3667-4d60-80e4-7299ccbe7157.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1279, 'shahadah.mp4', 438, '/uploads/courses/videos/67242f13-33f1-472f-9527-497bde1da78b.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1280, 'Intro.mov', 438, '/uploads/courses/videos/20ad2876-cbc2-4ffd-b999-dcd245627847.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1281, 'What-is-Html5.mov', 438, '/uploads/courses/videos/3e6a600c-22da-4ec0-9fd9-32b86871704f.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1282, 'Text-Editor.mov', 438, '/uploads/courses/videos/325945f2-726c-449c-aca9-131a75932331.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1283, 'Semantic.mov', 438, '/uploads/courses/videos/cec45f79-8ac4-4288-9acc-98bb7ca26e52.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1284, 'Semantic.mov', 439, '/uploads/courses/videos/992d2376-0bbb-44f0-a958-286b8366b47a.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1285, 'What-is-Html5.mov', 439, '/uploads/courses/videos/5c0348ac-33de-4dae-a8e9-f0b6156774db.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1286, 'Intro.mov', 440, '/uploads/courses/videos/d9fdc075-eea3-4dea-8300-6e1c4c7d4067.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1287, 'Text-Editor.mov', 441, '/uploads/courses/videos/ae337afc-2cd3-4dbe-947f-e6acd85fc2eb.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1288, 'Who_created_allah?.mp4', 442, '/uploads/courses/videos/607c2c5a-8f70-482c-9b21-40c67d737b1d.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1289, 'Presentation3.mp4', 442, '/uploads/courses/videos/edfccfc4-8436-419f-8170-41c7d1b0c224.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1290, 'Presentation1.mp4', 442, '/uploads/courses/videos/f7813067-d57d-431a-b547-6a7d49657eb3.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1291, 'Website_record.mp4', 442, '/uploads/courses/videos/db061937-5774-4bf7-b14a-ba2e0b8efbdd.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1292, 'Website_record.mp4', 442, '/uploads/courses/videos/1e3ee093-c445-4b18-9dea-52be0e6db7a4.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1293, 'Website_record.mp4', 443, '/uploads/courses/videos/e30d9d1a-9b5c-417c-ad8a-db0334992b14.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1294, 'Website_record.mp4', 443, '/uploads/courses/videos/fddf4924-80e9-423d-8ff1-43dba808b24a.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1295, 'Website_record.mp4', 443, '/uploads/courses/videos/d319d996-452c-48e9-ad02-634e202e1182.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1296, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 444, '/uploads/courses/videos/d7ec4ad9-43c6-4b1d-8f74-4b61f4fc4287.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1297, 'shahadah.mp4', 444, '/uploads/courses/videos/09de9dc0-586a-49da-a1ba-fb084108c63c.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1298, 'shahadah.mp4', 444, '/uploads/courses/videos/6b95248b-4892-4dfd-9c97-74458d7f0236.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1299, 'Intro.mov', 444, '/uploads/courses/videos/3a089b9a-6c02-42e1-a659-82d4dd2d1371.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1300, 'What-is-Html5.mov', 444, '/uploads/courses/videos/f5de9f4e-7357-4ec8-b08f-973eba234d7e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1301, 'Text-Editor.mov', 444, '/uploads/courses/videos/392b47e1-9948-427e-a28c-77fe780ca709.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1302, 'Semantic.mov', 444, '/uploads/courses/videos/e84985ce-0e15-41f5-b2f7-44105597b45d.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1303, 'Semantic.mov', 445, '/uploads/courses/videos/9904f555-6dfc-4acd-a6bb-5f95bd0dd072.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1304, 'What-is-Html5.mov', 445, '/uploads/courses/videos/bf4ff304-a5b7-4082-b16b-30927cd1f1d4.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1305, 'Intro.mov', 446, '/uploads/courses/videos/214bae99-bf6e-4a4e-a456-632e7d4324ca.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1306, 'Text-Editor.mov', 447, '/uploads/courses/videos/8542cf71-73bb-4acb-8186-45d7fe214477.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1307, 'Who_created_allah?.mp4', 448, '/uploads/courses/videos/9b90fb8f-08e5-4265-bf83-e59cd3ca174e.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1308, 'Presentation3.mp4', 448, '/uploads/courses/videos/3e007739-5c6a-4a80-a6d0-a5a113907959.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1309, 'Presentation1.mp4', 448, '/uploads/courses/videos/02a3e57e-3042-417a-b96c-389686877575.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1310, 'Website_record.mp4', 448, '/uploads/courses/videos/89746eae-eeee-4477-a888-e2ad78edea2c.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1311, 'Website_record.mp4', 448, '/uploads/courses/videos/0ab989fa-25e3-48c6-a1ae-7775f02eef5d.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1312, 'Website_record.mp4', 449, '/uploads/courses/videos/16f958e1-1736-421b-903d-2e15de63804b.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1313, 'Website_record.mp4', 449, '/uploads/courses/videos/90396f8d-3ef9-4fea-84dd-ebefd1fa2335.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1314, 'Website_record.mp4', 449, '/uploads/courses/videos/9af552cd-3215-4fe5-a856-d0115f2d0ef6.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1315, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 450, '/uploads/courses/videos/8b0ca5cb-a9bc-4514-ad40-59ce326b8de0.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1316, 'shahadah.mp4', 450, '/uploads/courses/videos/5c184b16-c7d9-4cdf-bc24-0c8e0ca2b3b8.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1317, 'shahadah.mp4', 450, '/uploads/courses/videos/933a88f8-0972-4bcc-bafc-f4cc96575bb1.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1318, 'Intro.mov', 450, '/uploads/courses/videos/36824cf3-a688-4a8e-bcf8-9534dc8b9990.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1319, 'What-is-Html5.mov', 450, '/uploads/courses/videos/0c531264-e414-4071-a03d-df9a7a202762.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1320, 'Text-Editor.mov', 450, '/uploads/courses/videos/fe5e538e-9b98-41cf-96d9-e2e528d2e8e1.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1321, 'Semantic.mov', 450, '/uploads/courses/videos/0d0987c5-17e5-43ce-a2b8-48a92d1a9a85.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1322, 'Semantic.mov', 451, '/uploads/courses/videos/728b7f9b-a976-4b70-9bdd-288f6876573b.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1323, 'What-is-Html5.mov', 451, '/uploads/courses/videos/651d78b2-dd43-4112-a896-50b98a59e2ab.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1324, 'Intro.mov', 452, '/uploads/courses/videos/e6359ec0-be0f-4c8e-82ea-efcb81271916.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1325, 'Text-Editor.mov', 453, '/uploads/courses/videos/25d20095-cd6f-4d3f-bf2f-7ad6027a8e7b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1326, 'Who_created_allah?.mp4', 454, '/uploads/courses/videos/93892888-cc24-40d2-b28c-8a071c773fb9.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1327, 'Presentation3.mp4', 454, '/uploads/courses/videos/e038ce0a-4970-4d52-bc70-56d08bbb5bf9.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1328, 'Presentation1.mp4', 454, '/uploads/courses/videos/4f63921f-bd19-42c5-85ac-f67264753009.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1329, 'Website_record.mp4', 454, '/uploads/courses/videos/af10c416-7b85-4b30-9abd-3f2bc658350f.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1330, 'Website_record.mp4', 454, '/uploads/courses/videos/c55eb884-f9f9-4c03-a1bb-e2f29b792932.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1331, 'Website_record.mp4', 455, '/uploads/courses/videos/9f327d5a-e824-4ba9-99a7-7415e1dbedb2.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1332, 'Website_record.mp4', 455, '/uploads/courses/videos/bd14b74e-ed87-4825-917a-603caf5e02cd.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1333, 'Website_record.mp4', 455, '/uploads/courses/videos/e48e7acc-2388-4ac8-865a-da60140ccff3.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1334, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 456, '/uploads/courses/videos/84bbc51b-6c90-4115-ba10-86e839447f32.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1335, 'shahadah.mp4', 456, '/uploads/courses/videos/55f3fd4f-b130-414d-8ef7-2d26ad56c5c1.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1336, 'shahadah.mp4', 456, '/uploads/courses/videos/bc201128-18aa-4d9b-91a6-a49255cbcf35.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1337, 'Intro.mov', 456, '/uploads/courses/videos/89779709-6101-4906-a113-f19bde46f480.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1338, 'What-is-Html5.mov', 456, '/uploads/courses/videos/7fd3043a-6289-4835-aa5f-27c8af63ec06.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1339, 'Text-Editor.mov', 456, '/uploads/courses/videos/edf49700-8a91-483d-87f6-9f473fbdaf84.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1340, 'Semantic.mov', 456, '/uploads/courses/videos/bda5fcad-0881-4d64-9aa6-0071f0fe2fac.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1341, 'Semantic.mov', 457, '/uploads/courses/videos/2ed90c31-9f3e-48a4-88be-91642d1757a9.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1342, 'What-is-Html5.mov', 457, '/uploads/courses/videos/dc44c19e-6232-4db9-b998-8c02db8ce3a7.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1343, 'Intro.mov', 458, '/uploads/courses/videos/01f4afb8-1052-476b-add2-911409575769.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1344, 'Text-Editor.mov', 459, '/uploads/courses/videos/e807379a-c8ed-4022-a772-39d788d111c8.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1345, 'Who_created_allah?.mp4', 460, '/uploads/courses/videos/69eb4c03-fd84-4e73-b23b-89c8c48b7669.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1346, 'Presentation3.mp4', 460, '/uploads/courses/videos/75777cb9-4439-49e4-876a-18368236e0ea.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1347, 'Presentation1.mp4', 460, '/uploads/courses/videos/ed608429-448e-4133-854f-62a882eec610.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1348, 'Website_record.mp4', 460, '/uploads/courses/videos/2fbf0bfb-7686-4e75-ad7b-ef7f35a85278.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1349, 'Website_record.mp4', 460, '/uploads/courses/videos/eb0f7cf4-9380-4a52-9618-66dd38ce97fb.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1350, 'Website_record.mp4', 461, '/uploads/courses/videos/bde79e22-b409-45bc-9b21-15134fd2a053.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1351, 'Website_record.mp4', 461, '/uploads/courses/videos/6e606af0-07fc-472d-adb6-0389cc170dda.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1352, 'Website_record.mp4', 461, '/uploads/courses/videos/facef74e-bf0d-493a-96ff-99cb5fd1be23.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1353, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 462, '/uploads/courses/videos/3623375f-60f9-43eb-b408-e4750bd5de06.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1354, 'shahadah.mp4', 462, '/uploads/courses/videos/89f74b5e-7623-4ae7-8791-ddc4f36eb743.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1355, 'shahadah.mp4', 462, '/uploads/courses/videos/891571ee-c4df-4a2d-b23d-0ec1c833ffdc.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1356, 'Intro.mov', 462, '/uploads/courses/videos/c993477f-38ce-4d8d-bc97-ce6bcd27555e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1357, 'What-is-Html5.mov', 462, '/uploads/courses/videos/66f35608-e5dd-4798-9b38-9faac6e20d8b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1358, 'Text-Editor.mov', 462, '/uploads/courses/videos/fde25ed3-a225-4f7e-930c-cf594611ff89.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1359, 'Semantic.mov', 462, '/uploads/courses/videos/3869253a-76d6-4248-8027-7ef171161ed5.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1360, 'Semantic.mov', 463, '/uploads/courses/videos/9946aad5-6cfe-470b-a349-c0941d25ab94.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1361, 'What-is-Html5.mov', 463, '/uploads/courses/videos/26cd8541-4d8b-4110-9e78-08ed4678b7e0.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1362, 'Intro.mov', 464, '/uploads/courses/videos/f5387b45-fa48-43f7-911f-661503e919c6.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1363, 'Text-Editor.mov', 465, '/uploads/courses/videos/06abea35-a3ba-4ba6-ad3a-4c3b2adf9a84.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1364, 'Who_created_allah?.mp4', 466, '/uploads/courses/videos/78950001-24f5-43f8-bbb4-8fac0b1453e9.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1365, 'Presentation3.mp4', 466, '/uploads/courses/videos/856a9dea-c439-4993-9783-9dfc7cdfe9a0.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1366, 'Presentation1.mp4', 466, '/uploads/courses/videos/18610e37-b73e-47de-aeb8-d9446e38637b.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1367, 'Website_record.mp4', 466, '/uploads/courses/videos/379c355b-491a-4b64-a6e2-3fd7d7af69b7.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1368, 'Website_record.mp4', 466, '/uploads/courses/videos/6a606d7a-3bd0-4b75-9e1a-4a28929ab21f.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1369, 'Website_record.mp4', 467, '/uploads/courses/videos/4decd366-e7af-4cd1-ac86-6470ddaf3233.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1370, 'Website_record.mp4', 467, '/uploads/courses/videos/0598de13-fc0c-40b4-9015-fcb57b35e4ab.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1371, 'Website_record.mp4', 467, '/uploads/courses/videos/df49ae53-eaa2-4ac0-926a-03f1c9c91000.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1372, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 468, '/uploads/courses/videos/ed30edc9-4ac8-4e12-85ce-05cdfd844fd4.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1373, 'shahadah.mp4', 468, '/uploads/courses/videos/546d9be1-0f74-42c6-b2aa-94c24f145645.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1374, 'shahadah.mp4', 468, '/uploads/courses/videos/9ae0eeb0-f73b-4ebc-921d-1cc0355b8948.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1375, 'Intro.mov', 468, '/uploads/courses/videos/87ea68c3-f59d-4b39-9e66-5580b5ec20df.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1376, 'What-is-Html5.mov', 468, '/uploads/courses/videos/0d45b54d-4a9a-48f2-a8d9-16f87aebec18.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1377, 'Text-Editor.mov', 468, '/uploads/courses/videos/9148501a-f7eb-4eaa-ae3b-7567d62feadc.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1378, 'Semantic.mov', 468, '/uploads/courses/videos/270c64ab-c060-47a1-ac9c-f7a6684f9640.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1379, 'Semantic.mov', 469, '/uploads/courses/videos/1b96ea97-35e1-4203-bafe-85cd05f0e0ee.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1380, 'What-is-Html5.mov', 469, '/uploads/courses/videos/4d9196de-ed82-447f-891d-c11c3432c2c2.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1381, 'Intro.mov', 470, '/uploads/courses/videos/af7e4426-ac16-425e-b9bb-472d0d31e51e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1382, 'Text-Editor.mov', 471, '/uploads/courses/videos/793fed70-0912-4269-b5ab-acd762a16fe2.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1383, 'Who_created_allah?.mp4', 472, '/uploads/courses/videos/9e15b3e3-812c-4ab6-95ae-cc6a4079026b.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1384, 'Presentation3.mp4', 472, '/uploads/courses/videos/7b55f1da-140f-4108-ab7f-ba6445356160.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1385, 'Presentation1.mp4', 472, '/uploads/courses/videos/e3e7cc1a-724b-409e-8b0d-c563ef22c0b8.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1386, 'Website_record.mp4', 472, '/uploads/courses/videos/27047e4e-52af-46da-b4e0-910bab301beb.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1387, 'Website_record.mp4', 472, '/uploads/courses/videos/024dbb4f-2360-4ce4-ae07-3e41a0fe42ec.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1388, 'Website_record.mp4', 473, '/uploads/courses/videos/c4d889b4-c2df-49eb-b658-71c06bb055d0.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1389, 'Website_record.mp4', 473, '/uploads/courses/videos/5965f273-e9b5-4990-81bc-24c1bfc70124.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1390, 'Website_record.mp4', 473, '/uploads/courses/videos/0e4907de-446e-45ff-95c2-8cf739bc315e.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1391, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 474, '/uploads/courses/videos/27e922ec-c259-4597-abc8-fb2d543de613.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1392, 'shahadah.mp4', 474, '/uploads/courses/videos/660d47f9-fd52-40a9-8f01-bb1fa30668e2.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1393, 'shahadah.mp4', 474, '/uploads/courses/videos/cd35c72e-24fb-4c5a-9eb5-3b1738788270.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1394, 'Intro.mov', 474, '/uploads/courses/videos/fe6cd953-b82d-4877-9abd-60f5e28f00e7.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1395, 'What-is-Html5.mov', 474, '/uploads/courses/videos/69b9d05f-cf90-42e9-b379-6606b72eb48b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1396, 'Text-Editor.mov', 474, '/uploads/courses/videos/872ba73c-b429-4462-9c9e-c3b244361939.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1397, 'Semantic.mov', 474, '/uploads/courses/videos/f349390a-da65-48a0-a3fc-daf86deaa16b.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1398, 'Semantic.mov', 475, '/uploads/courses/videos/6a044b89-05e2-4217-bf70-e7b2e40fb008.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1399, 'What-is-Html5.mov', 475, '/uploads/courses/videos/f3c1cb44-bcaa-43c2-86d5-02ba1ad64fac.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1400, 'Intro.mov', 476, '/uploads/courses/videos/6429e58c-0150-41a4-bba6-e5d4fe913501.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1401, 'Text-Editor.mov', 477, '/uploads/courses/videos/6b20e390-74f5-43d2-af82-890bd28e2a2b.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1402, 'Who_created_allah?.mp4', 478, '/uploads/courses/videos/b27bd004-5187-41d6-8b92-d188cac00eaf.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1403, 'Presentation3.mp4', 478, '/uploads/courses/videos/f7952d31-649c-4ca6-94db-74bb6e7e31af.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1404, 'Presentation1.mp4', 478, '/uploads/courses/videos/8b298244-180c-4651-8d38-056f34dc0d47.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1405, 'Website_record.mp4', 478, '/uploads/courses/videos/865f4550-5714-422b-b544-49f99be3fc08.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1406, 'Website_record.mp4', 478, '/uploads/courses/videos/d9729727-9791-4f7d-93c3-4afcfb7852b3.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1407, 'Website_record.mp4', 479, '/uploads/courses/videos/276007cd-90f8-463d-9675-b57c416eddbe.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1408, 'Website_record.mp4', 479, '/uploads/courses/videos/aab752b1-b36e-47e3-a97f-32ab57a9dce6.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1409, 'Website_record.mp4', 479, '/uploads/courses/videos/b0d7e82b-b7e6-4a90-bcde-d98c5b917415.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1410, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 480, '/uploads/courses/videos/4df92555-2291-46b7-ae51-eaf8618a2f1d.mov', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1411, 'shahadah.mp4', 480, '/uploads/courses/videos/faf94ba0-0066-47a9-b7ec-06d9c378c673.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1412, 'shahadah.mp4', 480, '/uploads/courses/videos/4673019f-5ecb-4f8b-b9ac-351ed36e2cc6.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1413, 'Intro.mov', 480, '/uploads/courses/videos/1a34d322-4f90-4f1d-84c0-2dddb129d2bb.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1414, 'What-is-Html5.mov', 480, '/uploads/courses/videos/746db560-0519-477c-8f69-787682e9b8a3.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1415, 'Text-Editor.mov', 480, '/uploads/courses/videos/08eb8fc3-b437-4581-9284-2796316011b0.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1416, 'Semantic.mov', 480, '/uploads/courses/videos/0efcff8e-934d-4bd0-a870-60c96f80a431.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1417, 'Semantic.mov', 481, '/uploads/courses/videos/d2dc42c7-2d0a-41e2-b233-424438d3f22e.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1418, 'What-is-Html5.mov', 481, '/uploads/courses/videos/62ff5a0d-60ca-44e6-9827-5b309fc4647e.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1419, 'Intro.mov', 482, '/uploads/courses/videos/ca6d40e0-49f4-4a27-ae98-ccad6b58b89d.mov', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1420, 'Text-Editor.mov', 483, '/uploads/courses/videos/97d6cc74-65ea-47db-80d2-57fbafe77260.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1421, 'Who_created_allah?.mp4', 484, '/uploads/courses/videos/f7980fbf-c9c0-449d-8eb9-11189b4d1674.mp4', 0, 2, 1);
INSERT INTO `teacher_videouploads` VALUES (1422, 'Presentation3.mp4', 484, '/uploads/courses/videos/b748d08a-dce6-4ba7-acd5-e3e22fb2c745.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1423, 'Presentation1.mp4', 484, '/uploads/courses/videos/236cb62d-4d14-405a-8317-3035ea2a40e6.mp4', 0, 1, 1);
INSERT INTO `teacher_videouploads` VALUES (1424, 'Website_record.mp4', 484, '/uploads/courses/videos/ae79b708-a5f6-46d5-9f81-6cff83c610ad.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1425, 'Website_record.mp4', 484, '/uploads/courses/videos/2ea44468-623d-4552-a04c-d125b62369e4.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1426, 'Website_record.mp4', 485, '/uploads/courses/videos/92ad13a1-cc61-4173-9816-c8693acea7d5.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1427, 'Website_record.mp4', 485, '/uploads/courses/videos/961807f8-57ec-439f-b180-3c1f99cfcc34.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1428, 'Website_record.mp4', 485, '/uploads/courses/videos/b8874d55-9fef-45e8-8eed-ef96d2535b5c.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1484, 'deploy django on apache2.mp4', 545, '/uploads/courses/videos/5ccd4b36-b9cf-40b9-8b92-2d8a4e12e845.mp4', 0, 31, 1);
INSERT INTO `teacher_videouploads` VALUES (1485, 'لابورتا يغدر باسطورة برشلونة ليونيل ميسي !! وريال مدريد أكبر المستفيدين !!.mp4', 553, '/uploads/courses/videos/175f32c0-e06d-4f9f-badc-d51c06da1a0e.mp4', 0, 13, 1);
INSERT INTO `teacher_videouploads` VALUES (1486, 'لابورتا يغدر باسطورة برشلونة ليونيل ميسي !! وريال مدريد أكبر المستفيدين !!.mp4', 553, '/uploads/courses/videos/d0436a7f-36f2-4004-afd9-3a9b0ed627c8.mp4', 0, 13, 1);
INSERT INTO `teacher_videouploads` VALUES (1487, 'لابورتا يغدر باسطورة برشلونة ليونيل ميسي !! وريال مدريد أكبر المستفيدين !!.mp4', 553, '/uploads/courses/videos/d6ffe893-74ea-4d75-afef-56de22ae035e.mp4', 0, 13, 1);
INSERT INTO `teacher_videouploads` VALUES (1488, 'لابورتا يغدر باسطورة برشلونة ليونيل ميسي !! وريال مدريد أكبر المستفيدين !!.mp4', 554, '/uploads/courses/videos/5fd2c805-ca84-42be-bd7c-1a3ce08be6b8.mp4', 0, 13, 1);
INSERT INTO `teacher_videouploads` VALUES (1489, 'لابورتا يغدر باسطورة برشلونة ليونيل ميسي !! وريال مدريد أكبر المستفيدين !!.mp4', 554, '/uploads/courses/videos/2b74c2fc-69c6-4d62-b4de-085f376422e9.mp4', 0, 13, 1);
INSERT INTO `teacher_videouploads` VALUES (1492, 'لابورتا يغدر باسطورة برشلونة ليونيل ميسي !! وريال مدريد أكبر المستفيدين !!.mp4', 551, '/uploads/courses/videos/1f390cf2-57ab-455a-97c6-c0bdcf2f6127.mp4', 0, 13, 1);
INSERT INTO `teacher_videouploads` VALUES (1494, 'Ruby cucumber test in 7 minutes.mp4', 556, '/uploads/courses/videos/0d3532fd-91b4-4248-b2b8-0b19625733a6.mp4', 0, 6, 1);
INSERT INTO `teacher_videouploads` VALUES (1495, 'Angular Unit Testing - Introduction to Jasmine Spies.mp4', 556, '/uploads/courses/videos/e9fb2cfb-1e04-41d1-b770-6462ea521d3f.mp4', 0, 9, 1);
INSERT INTO `teacher_videouploads` VALUES (1496, 'RailsCasts - #155 Beginning with Cucumber.mp4', 556, '/uploads/courses/videos/47cd8a13-91fa-4a7f-9b23-e7ecf5d4662c.mp4', 0, 15, 1);
INSERT INTO `teacher_videouploads` VALUES (1497, 'E6- how to Integrate react router in a react project.mp4', 556, '/uploads/courses/videos/afbd5039-3be4-4217-9a7f-da59fff6d9d0.mp4', 0, 10, 1);
INSERT INTO `teacher_videouploads` VALUES (1498, 'Checking Code coverage in Rails with simplecov.mp4', 556, '/uploads/courses/videos/db37904e-2699-4fb0-8a3d-c281333d1a55.mp4', 0, 3, 1);
INSERT INTO `teacher_videouploads` VALUES (1499, 'What Is Serverless-.mp4', 556, '/uploads/courses/videos/71158125-d097-4ee9-ab66-2fed85c7b2be.mp4', 0, 8, 1);
INSERT INTO `teacher_videouploads` VALUES (1500, 'fixup_6.mp4', 559, '/uploads/courses/videos/c84a5780-3a10-417e-97c4-52fe21f19fa4.mp4', 1, 0, 0);
INSERT INTO `teacher_videouploads` VALUES (1501, '0. Websockets in Laravel- Part 0 - What are Websockets-.mp4', 560, '/uploads/courses/videos/71158125-d097-4ee9-ab66-2fed85c7b2b1.mp4', 0, 14, 0);
INSERT INTO `teacher_videouploads` VALUES (1502, '2.Configuring Settings For Our Laravel-Websockets Server.mp4', 560, '/uploads/courses/videos/71158125-d097-4ee9-ab66-2fed85c7b2b2.mp4', 0, 16, 0);
INSERT INTO `teacher_videouploads` VALUES (1503, 'fixup_7.mp4', 562, '/uploads/courses/videos/ad0861f0-4e79-4f07-a864-4329ef9cf42a.mp4', 1, 0, 0);
INSERT INTO `teacher_videouploads` VALUES (1504, 'fixup_9.mp4', 563, '/uploads/courses/videos/a0269ad1-eb5f-410b-a506-da0d84fbc463.mp4', 1, 0, 0);
INSERT INTO `teacher_videouploads` VALUES (1505, 'Advanced Laravel - Broadcast, Pusher, Laravel Echo #17.mp4', 564, '/uploads/courses/videos/71158125-d097-4ee9-ab66-2fed85c7b2b3.mp4', 0, 18, 1);
INSERT INTO `teacher_videouploads` VALUES (1506, '2.Configuring Settings For Our Laravel-Websockets Server.mp4', 564, '/uploads/courses/videos/71158125-d097-4ee9-ab66-2fed85c7b2b4.mp4', 0, 16, 1);
INSERT INTO `teacher_videouploads` VALUES (1507, 'fixup_9.mp4', 565, '/uploads/courses/videos/00ca8b16-0d2e-4cb1-a108-c03408d16f7b.mp4', 1, 0, 0);
INSERT INTO `teacher_videouploads` VALUES (1508, 'Advanced Laravel - Broadcast, Pusher, Laravel Echo #17.mp4', 566, '/uploads/courses/videos/71158125-d097-4ee9-ab66-2fed85c7b2b5.mp4', 0, 18, 1);
INSERT INTO `teacher_videouploads` VALUES (1509, '2.Configuring Settings For Our Laravel-Websockets Server.mp4', 566, '/uploads/courses/videos/71158125-d097-4ee9-ab66-2fed85c7b2b6.mp4', 0, 16, 1);
INSERT INTO `teacher_videouploads` VALUES (1510, '0. Websockets in Laravel- Part 0 - What are Websockets-.mp4', 567, '/uploads/courses/videos/71158125-d097-4ee9-ab66-2fed85c7b2b7.mp4', 0, 14, 1);
INSERT INTO `teacher_videouploads` VALUES (1511, 'fixup_6.mp4', 569, '/uploads/courses/videos/811ba91e-741b-4195-ab1c-b024ca66f631.mp4', 1, 0, 0);
INSERT INTO `teacher_videouploads` VALUES (1512, '0. Websockets in Laravel- Part 0 - What are Websockets-.mp4', 570, '/uploads/courses/videos/71158125-d097-4ee9-ab66-2fed85c7b2b8.mp4', 0, 14, 0);
INSERT INTO `teacher_videouploads` VALUES (1513, '2.Configuring Settings For Our Laravel-Websockets Server.mp4', 571, '/uploads/courses/videos/71158125-d097-4ee9-ab66-2fed85c7b2b9.mp4', 0, 16, 0);
INSERT INTO `teacher_videouploads` VALUES (1545, 'about.mp4', 594, '/uploads/courses/videos/6d8f0855-74dc-4f57-a1c4-472eb70285d5.mp4', 1, 0, 0);
INSERT INTO `teacher_videouploads` VALUES (1546, 'become.mp4', 594, '/uploads/courses/videos/e4c8bc08-ff65-4338-aa11-16d5b96bb9c9.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` VALUES (1547, 'test1.mp4', 596, '/uploads/courses/videos/58b6c477-917c-4c65-a4dd-e8b469cb8129.mp4', 1, 0, 0);
INSERT INTO `teacher_videouploads` VALUES (1548, 'about.mp4', 598, '/uploads/courses/videos/10d0f3b4-b8c9-4ecc-98be-c1ce3c4be2c9.mp4', 1, 0, 0);
INSERT INTO `teacher_videouploads` VALUES (1549, 'test.mp4', 598, '/uploads/courses/videos/95f9d22a-7849-4c31-b786-f8a4e382b6af.mp4', 0, 0, 1);

-- ----------------------------
-- Table structure for video_cache
-- ----------------------------
DROP TABLE IF EXISTS `video_cache`;
CREATE TABLE `video_cache`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cache_str` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_cache
-- ----------------------------
INSERT INTO `video_cache` VALUES (1, '2-29', '{\"checkList\":[1,1,1,1,1,1,1,1,1,1],\"cur_video\":6,\"question_no\":5}');
INSERT INTO `video_cache` VALUES (2, '2-30', '{\"checkList\":[0,0,0,0,0,0,0,0,0,0],\"cur_video\":6}');
INSERT INTO `video_cache` VALUES (3, '43-30', '{\"checkList\":[1,1,1,1,1,1,1,1,1,1],\"cur_video\":9,\"question_no\":5}');
INSERT INTO `video_cache` VALUES (4, '45-64', '{\"checkList\":[0,0],\"cur_video\":2}');

SET FOREIGN_KEY_CHECKS = 1;
