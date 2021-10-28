/*
 Navicat Premium Data Transfer

 Source Server         : mysqllocal
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : sigi_cms

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 18/10/2021 19:17:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cms_pages
-- ----------------------------
DROP TABLE IF EXISTS `cms_pages`;
CREATE TABLE `cms_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `template_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_pages
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for components
-- ----------------------------
DROP TABLE IF EXISTS `components`;
CREATE TABLE `components` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_id` int NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of components
-- ----------------------------
BEGIN;
INSERT INTO `components` VALUES (1, 'contact', 'Menú de Contacto', 2, 'Components/MenuContact.vue', 0, '2021-07-27 00:24:44', '2021-10-15 20:22:19');
INSERT INTO `components` VALUES (2, 'site', 'Sitio General', 4, '/', 1, '2021-08-29 06:41:37', '2021-08-29 06:41:37');
INSERT INTO `components` VALUES (3, 'contact', 'Menú de Contacto', 4, 'Components/MenuContact.vue', 1, '2021-08-29 06:47:16', '2021-08-29 06:47:16');
INSERT INTO `components` VALUES (4, 'banner', 'Banner', 2, '/', 1, '2021-09-22 22:36:56', '2021-09-23 22:04:01');
INSERT INTO `components` VALUES (6, 'team', 'Equipo de Trabajo', 2, '/', 1, '2021-09-23 21:21:33', '2021-09-23 21:41:42');
INSERT INTO `components` VALUES (8, 'clients_banner', 'Clientes', 2, '/', 1, '2021-09-29 21:26:37', '2021-09-29 21:57:51');
INSERT INTO `components` VALUES (9, 'mission_values', 'Misión y Visión', 2, '/', 1, '2021-10-04 23:21:50', '2021-10-05 00:04:19');
INSERT INTO `components` VALUES (10, 'title', 'Titulo', 2, '/', 1, '2021-10-06 02:14:22', '2021-10-06 15:08:44');
INSERT INTO `components` VALUES (11, 'services', 'Servicios', 2, '/', 1, '2021-10-06 17:44:24', '2021-10-06 18:33:46');
INSERT INTO `components` VALUES (12, 'about', 'Acerca de Nosotros', 2, '/', 1, '2021-10-06 18:39:51', '2021-10-06 19:09:46');
INSERT INTO `components` VALUES (14, 'packages', 'Paquetes', 2, '/', 1, '2021-10-06 20:47:36', '2021-10-07 19:17:13');
INSERT INTO `components` VALUES (15, 'suscription', 'Banner de Suscripción', 2, '/', 1, '2021-10-07 21:45:53', '2021-10-12 18:49:35');
INSERT INTO `components` VALUES (16, 'portfolio', 'Portafolio de Imagenes', 2, '/', 1, '2021-10-12 18:51:45', '2021-10-12 21:02:00');
INSERT INTO `components` VALUES (17, 'contact_footer', 'Pie de Contacto', 2, '/', 1, '2021-10-15 19:35:21', '2021-10-18 04:59:55');
INSERT INTO `components` VALUES (18, 'map', 'Mapa', 2, '/', 1, '2021-10-18 05:11:45', '2021-10-18 05:11:45');
COMMIT;

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of courses
-- ----------------------------
BEGIN;
INSERT INTO `courses` VALUES (1, 'Zumba', '(Lunes a viernes 18:00 - 19:00 horas)', 1, '2021-08-31 06:53:16', '2021-08-31 06:53:16', NULL);
INSERT INTO `courses` VALUES (2, 'Zumba', '(Lunes a viernes 19:00 - 20:00 horas)', 1, '2021-08-31 06:53:30', '2021-08-31 06:53:30', NULL);
INSERT INTO `courses` VALUES (3, 'Canto', '(Lunes y Miércoles 15:00 - 17:00 horas)', 1, '2021-08-31 06:53:45', '2021-08-31 06:53:45', NULL);
INSERT INTO `courses` VALUES (4, 'Manualidades decorativas', '(Martes y Jueves 16:00 - 18:00 horas)', 1, '2021-08-31 06:53:58', '2021-08-31 06:53:58', NULL);
INSERT INTO `courses` VALUES (5, 'Inglés Básico', '(Lunes y Miércoles 16:00 - 18:00 horas)', 1, '2021-08-31 06:54:21', '2021-08-31 06:54:21', NULL);
INSERT INTO `courses` VALUES (6, 'Bordado Istmeño', '(Martes y Jueves 16:00 - 18:00 horas)', 1, '2021-08-31 06:54:36', '2021-08-31 06:54:36', NULL);
INSERT INTO `courses` VALUES (7, 'Guitarra Básica', '(Martes y Jueves 18:30 - 20:00 horas)', 1, '2021-08-31 06:55:14', '2021-08-31 06:55:14', NULL);
INSERT INTO `courses` VALUES (8, 'Tecnología Doméstica', '(Lunes, Miércoles y Viernes 16:00 - 18:00 horas)', 1, '2021-08-31 06:55:34', '2021-08-31 06:55:34', NULL);
INSERT INTO `courses` VALUES (9, 'Estilismo', '(Martes y Jueves 16:00 - 18:00 horas)', 1, '2021-08-31 06:55:50', '2021-08-31 06:55:50', NULL);
INSERT INTO `courses` VALUES (10, 'Piñatas Tradicionales', '(Miércoles y Viernes 18:00 - 20:00 horas)', 1, '2021-08-31 06:56:04', '2021-08-31 06:56:04', NULL);
COMMIT;

-- ----------------------------
-- Table structure for data_rows
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_rows
-- ----------------------------
BEGIN;
INSERT INTO `data_rows` VALUES (1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3);
INSERT INTO `data_rows` VALUES (4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4);
INSERT INTO `data_rows` VALUES (5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5);
INSERT INTO `data_rows` VALUES (6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6);
INSERT INTO `data_rows` VALUES (7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7);
INSERT INTO `data_rows` VALUES (8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8);
INSERT INTO `data_rows` VALUES (9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10);
INSERT INTO `data_rows` VALUES (10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11);
INSERT INTO `data_rows` VALUES (11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12);
INSERT INTO `data_rows` VALUES (12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3);
INSERT INTO `data_rows` VALUES (15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4);
INSERT INTO `data_rows` VALUES (16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3);
INSERT INTO `data_rows` VALUES (19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4);
INSERT INTO `data_rows` VALUES (20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5);
INSERT INTO `data_rows` VALUES (21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9);
INSERT INTO `data_rows` VALUES (22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (23, 4, 'name', 'text', 'Clave', 1, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (24, 4, 'display_name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (25, 4, 'is_active', 'checkbox', 'Activo', 1, 1, 1, 1, 1, 1, '{}', 4);
INSERT INTO `data_rows` VALUES (26, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5);
INSERT INTO `data_rows` VALUES (27, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);
INSERT INTO `data_rows` VALUES (28, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (29, 5, 'name', 'text', 'Clave', 1, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (30, 5, 'display_name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (31, 5, 'template_id', 'text', 'Plantilla', 1, 1, 1, 1, 1, 1, '{}', 4);
INSERT INTO `data_rows` VALUES (32, 5, 'path', 'text', 'Ruta', 1, 1, 1, 1, 1, 1, '{}', 6);
INSERT INTO `data_rows` VALUES (33, 5, 'is_active', 'checkbox', 'Activo', 1, 1, 1, 1, 1, 1, '{}', 7);
INSERT INTO `data_rows` VALUES (34, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8);
INSERT INTO `data_rows` VALUES (35, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9);
INSERT INTO `data_rows` VALUES (36, 5, 'component_belongsto_template_relationship', 'relationship', 'Plantilla', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Template\",\"table\":\"templates\",\"type\":\"belongsTo\",\"column\":\"template_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5);
INSERT INTO `data_rows` VALUES (37, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (38, 7, 'key', 'text', 'Clave', 1, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (39, 7, 'value', 'text', 'Valor', 1, 1, 1, 1, 1, 1, '{}', 4);
INSERT INTO `data_rows` VALUES (40, 7, 'type_item_id', 'text', 'Type Item Id', 1, 1, 1, 1, 1, 1, '{}', 6);
INSERT INTO `data_rows` VALUES (41, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7);
INSERT INTO `data_rows` VALUES (42, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);
INSERT INTO `data_rows` VALUES (43, 7, 'item_belongsto_component_relationship', 'relationship', 'Componente', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Component\",\"table\":\"components\",\"type\":\"belongsTo\",\"column\":\"component_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2);
INSERT INTO `data_rows` VALUES (44, 7, 'component_id', 'text', 'Component Id', 1, 1, 1, 1, 1, 1, '{}', 9);
INSERT INTO `data_rows` VALUES (45, 7, 'item_belongsto_type_item_relationship', 'relationship', 'Tipo', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\TypeItem\",\"table\":\"type_items\",\"type\":\"belongsTo\",\"column\":\"type_item_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5);
INSERT INTO `data_rows` VALUES (46, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (47, 8, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (48, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3);
INSERT INTO `data_rows` VALUES (49, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4);
INSERT INTO `data_rows` VALUES (114, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (115, 21, 'name', 'text', 'Nombre', 1, 1, 1, 0, 0, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (116, 21, 'email', 'text', 'Correo', 1, 1, 1, 0, 0, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (117, 21, 'subject', 'text', 'Asunto', 0, 1, 1, 0, 0, 1, '{}', 4);
INSERT INTO `data_rows` VALUES (118, 21, 'message', 'text', 'Mensaje', 1, 1, 1, 0, 0, 1, '{}', 5);
INSERT INTO `data_rows` VALUES (119, 21, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6);
INSERT INTO `data_rows` VALUES (120, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);
INSERT INTO `data_rows` VALUES (121, 21, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8);
INSERT INTO `data_rows` VALUES (122, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (123, 23, 'name', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (124, 23, 'schedule', 'text', 'Horario', 0, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (125, 23, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"Inactivo\",\"1\":\"Activo\"}}', 4);
INSERT INTO `data_rows` VALUES (126, 23, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5);
INSERT INTO `data_rows` VALUES (127, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);
INSERT INTO `data_rows` VALUES (128, 23, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7);
INSERT INTO `data_rows` VALUES (129, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (130, 25, 'email', 'text', 'Correo', 1, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (131, 25, 'full_name', 'text', 'Nombre Completo', 1, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (132, 25, 'age', 'text', 'Edad', 1, 1, 1, 1, 1, 1, '{}', 4);
INSERT INTO `data_rows` VALUES (133, 25, 'municipality', 'text', 'Municipio', 0, 1, 1, 1, 1, 1, '{}', 5);
INSERT INTO `data_rows` VALUES (134, 25, 'cell_phone', 'text', 'Teléfono', 1, 0, 1, 1, 1, 1, '{}', 6);
INSERT INTO `data_rows` VALUES (135, 25, 'course_id', 'text', 'Curso', 1, 1, 1, 1, 1, 1, '{}', 7);
INSERT INTO `data_rows` VALUES (136, 25, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9);
INSERT INTO `data_rows` VALUES (137, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10);
INSERT INTO `data_rows` VALUES (138, 25, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11);
INSERT INTO `data_rows` VALUES (139, 25, 'student_belongsto_course_relationship', 'relationship', 'Curso', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8);
COMMIT;

-- ----------------------------
-- Table structure for data_types
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_types
-- ----------------------------
BEGIN;
INSERT INTO `data_types` VALUES (1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `data_types` VALUES (2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `data_types` VALUES (3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `data_types` VALUES (4, 'templates', 'templates', 'Plantilla', 'Plantillas', 'voyager-documentation', 'App\\Models\\Template', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-07-27 00:18:06', '2021-09-20 21:42:13');
INSERT INTO `data_types` VALUES (5, 'components', 'components', 'Sección', 'Secciones', 'voyager-puzzle', 'App\\Models\\Component', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-07-27 00:20:57', '2021-08-05 03:19:00');
INSERT INTO `data_types` VALUES (7, 'items', 'items', 'Item', 'Items', 'voyager-params', 'App\\Models\\Item', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-07-27 00:28:41', '2021-07-27 01:29:04');
INSERT INTO `data_types` VALUES (8, 'type_items', 'type-items', 'tipo de item', 'tipos de items', 'voyager-tag', 'App\\Models\\TypeItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-07-27 01:20:08', '2021-07-27 01:25:59');
INSERT INTO `data_types` VALUES (21, 'requests', 'requests', 'Solicitud', 'Solicitudes', 'voyager-paper-plane', 'App\\Models\\Request', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-08-05 03:27:07', '2021-08-05 03:27:07');
INSERT INTO `data_types` VALUES (23, 'courses', 'courses', 'Curso', 'Cursos', 'voyager-window-list', 'App\\Models\\Course', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-31 06:42:32', '2021-08-31 06:52:52');
INSERT INTO `data_types` VALUES (25, 'students', 'students', 'Estudiante', 'Estudiantes', 'voyager-people', 'App\\Models\\Student', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-31 06:45:30', '2021-08-31 06:58:41');
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_item_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `component_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of items
-- ----------------------------
BEGIN;
INSERT INTO `items` VALUES (1, 'phone-number', '951 672 28 55', 1, '2021-07-27 01:30:22', '2021-07-27 01:30:22', 1);
INSERT INTO `items` VALUES (2, 'phone-number', '951 672 28 36', 1, '2021-07-27 01:30:45', '2021-07-27 01:30:45', 1);
INSERT INTO `items` VALUES (3, 'phone-number', '951 178 50 92', 1, '2021-07-27 01:31:00', '2021-07-27 01:31:00', 1);
INSERT INTO `items` VALUES (4, 'email', 'adm1nsindicato.dm@gmail.com', 1, '2021-07-27 01:31:21', '2021-07-27 01:31:21', 1);
INSERT INTO `items` VALUES (5, 'email', 'adm1nsindicato.fa@gmail.com', 1, '2021-07-27 01:31:42', '2021-07-27 01:31:42', 1);
INSERT INTO `items` VALUES (6, 'logo', 'cediem_logo.png', 2, '2021-08-29 06:46:21', '2021-08-29 06:46:21', 2);
INSERT INTO `items` VALUES (7, 'logo', 'circular.png', 2, '2021-09-22 22:37:35', '2021-09-22 22:44:51', 4);
INSERT INTO `items` VALUES (8, 'title', 'Sindicato Articulo 123', 1, '2021-09-22 22:38:55', '2021-09-22 22:45:06', 4);
INSERT INTO `items` VALUES (13, 'trabajador', '{\"name\": \"Fernando Aguilar Robles\", \"rol\": \"Secretario General\"}', 3, '2021-09-27 21:53:15', '2021-10-04 23:08:58', 6);
INSERT INTO `items` VALUES (15, 'cliente', 'client-1.png', 2, '2021-09-29 21:27:17', '2021-10-06 18:36:45', 8);
INSERT INTO `items` VALUES (16, 'trabajador', '{\"name\": \"Jorge Daniel Martínez Urbina\", \"rol\": \"Secretario de Actas y Conflictos\"}', 3, '2021-10-04 20:21:38', '2021-10-04 23:09:04', 6);
INSERT INTO `items` VALUES (17, 'trabajador', '{\"name\": \"Julio Miguel Rubinos Ricárdez\", \"rol\": \"Secretario de Organización\"}', 3, '2021-10-04 23:13:10', '2021-10-04 23:13:10', 6);
INSERT INTO `items` VALUES (18, 'trabajador', '{\"name\":\"Gustavo de Jesús Caballero Hernández\",\"rol\":\"Secretario de Trabajo\"}', 3, '2021-10-04 23:14:25', '2021-10-04 23:14:25', 6);
INSERT INTO `items` VALUES (19, 'trabajador', '{\"name\":\"Fernando José Martínez Urbina\",\"rol\":\"Secretario Tesorero\"}', 3, '2021-10-04 23:15:39', '2021-10-04 23:15:39', 6);
INSERT INTO `items` VALUES (21, 'mision', '{\"name\":\"Misión\", \"value\":\"Ser un sindicato de vanguardia cumpliendo con las exigencias de la modernidad social, así como ser reconocidos como una organización sindical consolidada en el ámbito nacional que luche por la mejora y defensa de los intereses laborales, económicos, profesionales y sociales de los agremiados.\"}', 3, '2021-10-04 23:28:35', '2021-10-04 23:40:46', 9);
INSERT INTO `items` VALUES (22, 'vision', '{\"name\":\"Visión\", \"value\":\"Ser un sindicato de vanguardia cumpliendo con las exigencias de la modernidad social, así como ser reconocidos como una organización sindical consolidada en el ámbito nacional que luche por la mejora y defensa de los intereses laborales, económicos, profesionales y sociales de los agremiados.\"}', 3, '2021-10-04 23:40:25', '2021-10-04 23:40:25', 9);
INSERT INTO `items` VALUES (23, 'statutes', '{\"name\":\"Estatutos\", \"value\":\"Ver Estatutos\", \"url\":\"#\"}', 3, '2021-10-04 23:42:37', '2021-10-06 02:27:47', 9);
INSERT INTO `items` VALUES (24, 'title', 'SINDICATO  ART. 123', 1, '2021-10-06 02:15:08', '2021-10-06 02:15:08', 10);
INSERT INTO `items` VALUES (25, 'service', '{\"name\":\"Lorem Ipsum\", \"data\":\"Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi\",\"icon\":\"bx bxl-dribbble\"}', 3, '2021-10-06 17:46:46', '2021-10-06 17:59:22', 11);
INSERT INTO `items` VALUES (26, 'cliente', 'client-2.png', 2, '2021-10-06 18:37:11', '2021-10-06 18:37:11', 8);
INSERT INTO `items` VALUES (28, 'info', '{\"title\":\"Organización Civil.\", \"subtitle\":\"Somos una organización:\",\"description\": \"Que está en permanente lucha para el cambio de una sociedad incluyente, con la firme determinación de eliminar la explotación y la inequidad.\" , \"image\":\"about.jpg\", \"points\":[\"Vanguardista.\", \"Nacionalista.\", \"Mayoritaria de trabajadores y clases proletarias.\"]}', 3, '2021-10-06 19:35:12', '2021-10-07 21:33:32', 12);
INSERT INTO `items` VALUES (29, 'package', '{\"title\":\"Free\",\"price\":\"0\",\"time\":\"month\",\"url\":\"#\" ,\"features\":[\"Aida dere\",\"Nec feugiat nisl\",\"Nulla at volutpat dola\"]}', 3, '2021-10-06 20:56:10', '2021-10-07 20:49:53', 14);
INSERT INTO `items` VALUES (30, 'Title', 'Call To Action', 1, '2021-10-07 21:51:04', '2021-10-07 21:51:04', 15);
INSERT INTO `items` VALUES (31, 'image', 'cta-bg.jpg', 2, '2021-10-07 21:52:00', '2021-10-07 21:52:00', 15);
INSERT INTO `items` VALUES (32, 'description', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '2021-10-07 21:52:29', '2021-10-07 21:52:29', 15);
INSERT INTO `items` VALUES (33, 'button', '{\"title\":\"CALL TO ACTION\", \"url\":\"#\"}', 3, '2021-10-07 21:53:01', '2021-10-08 19:51:30', 15);
INSERT INTO `items` VALUES (36, 'app', '{\"name\":\"App\", \"filter\":\"filter-app\", \"images\":[{\"image\": \"portfolio-1.jpg\", \"url\": \"portfolio-1.jpg\", \"title\":\"App 1\", \"description\": \"App\"},{\"image\": \"portfolio-3.jpg\", \"url\": \"portfolio-3.jpg\", \"title\":\"App 2\", \"description\": \"App\"}]}', 3, '2021-10-12 19:25:15', '2021-10-12 19:57:26', 16);
INSERT INTO `items` VALUES (37, 'app', '{\"name\":\"Web\", \"filter\":\"filter-web\", \"images\":[{\"image\": \"portfolio-2.jpg\", \"url\": \"portfolio-2.jpg\", \"title\":\"Web 1\", \"description\": \"Web\"},{\"image\": \"portfolio-5.jpg\", \"url\": \"portfolio-5.jpg\", \"title\":\"Web 2\", \"description\": \"Web\"}]}', 3, '2021-10-13 18:48:56', '2021-10-14 04:47:16', 16);
INSERT INTO `items` VALUES (38, 'data', '{\"address\":\"CALLE PRIVADA DE MONTE ALBÁN, NÚMERO EXTERIOR 3, INTERIOR 2. COLONIA REFORMA, OAXACA DE JUÁREZ, OAXACA. CP 68050.\", \"phones\":[\"951 672 28 55\",\"951 672 28 36\", \"951 178 50 92\"], \"mails\":[\"adm1nsindicato.dm@gmail.com\",\"adm1nsindicato.fa@gmail.com\"]}', 3, '2021-10-15 22:13:35', '2021-10-18 04:49:57', 17);
INSERT INTO `items` VALUES (39, 'map', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1906.9195322500964!2d-96.718605!3d17.080523!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85c72226472648a7%3A0xb7c77e75fb58627b!2sPriv.%20de%20Monte%20de%20Alb%C3%A1n%2C%20Reforma%2C%2068050%20Oaxaca%20de%20Ju%C3%A1rez%2C%20Oax.!5e0!3m2!1ses-419!2smx!4v1634533822015!5m2!1ses-419!2smx', 1, '2021-10-18 05:12:56', '2021-10-18 05:12:56', 18);
COMMIT;

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
BEGIN;
INSERT INTO `menu_items` VALUES (1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-07-24 06:01:56', '2021-07-24 06:01:56', 'voyager.dashboard', NULL);
INSERT INTO `menu_items` VALUES (2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-07-24 06:01:56', '2021-07-24 06:01:56', 'voyager.media.index', NULL);
INSERT INTO `menu_items` VALUES (3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-07-24 06:01:56', '2021-07-24 06:01:56', 'voyager.users.index', NULL);
INSERT INTO `menu_items` VALUES (4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-07-24 06:01:56', '2021-07-24 06:01:56', 'voyager.roles.index', NULL);
INSERT INTO `menu_items` VALUES (5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-07-24 06:01:56', '2021-07-24 06:01:56', NULL, NULL);
INSERT INTO `menu_items` VALUES (6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-07-24 06:01:56', '2021-07-24 06:01:56', 'voyager.menus.index', NULL);
INSERT INTO `menu_items` VALUES (7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-07-24 06:01:56', '2021-07-24 06:01:56', 'voyager.database.index', NULL);
INSERT INTO `menu_items` VALUES (8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-07-24 06:01:56', '2021-07-24 06:01:56', 'voyager.compass.index', NULL);
INSERT INTO `menu_items` VALUES (9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-07-24 06:01:56', '2021-07-24 06:01:56', 'voyager.bread.index', NULL);
INSERT INTO `menu_items` VALUES (10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-07-24 06:01:56', '2021-07-24 06:01:56', 'voyager.settings.index', NULL);
INSERT INTO `menu_items` VALUES (11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2021-07-24 06:02:41', '2021-07-24 06:02:41', 'voyager.hooks', NULL);
INSERT INTO `menu_items` VALUES (12, 1, 'Plantillas', '', '_self', 'voyager-documentation', NULL, NULL, 15, '2021-07-27 00:18:06', '2021-07-27 00:18:06', 'voyager.templates.index', NULL);
INSERT INTO `menu_items` VALUES (13, 1, 'Secciones', '', '_self', 'voyager-puzzle', NULL, NULL, 16, '2021-07-27 00:20:57', '2021-07-27 00:20:57', 'voyager.components.index', NULL);
INSERT INTO `menu_items` VALUES (14, 1, 'Items', '', '_self', 'voyager-params', NULL, NULL, 17, '2021-07-27 00:28:41', '2021-07-27 00:28:41', 'voyager.items.index', NULL);
INSERT INTO `menu_items` VALUES (15, 1, 'tipos de items', '', '_self', 'voyager-tag', NULL, NULL, 18, '2021-07-27 01:20:08', '2021-07-27 01:20:08', 'voyager.type-items.index', NULL);
INSERT INTO `menu_items` VALUES (19, 1, 'Solicitudes', '', '_self', 'voyager-paper-plane', NULL, NULL, 19, '2021-08-05 03:27:07', '2021-08-05 03:27:07', 'voyager.requests.index', NULL);
INSERT INTO `menu_items` VALUES (20, 1, 'Cursos', '', '_self', 'voyager-window-list', '#000000', NULL, 20, '2021-08-31 06:42:32', '2021-08-31 06:57:27', 'voyager.courses.index', 'null');
INSERT INTO `menu_items` VALUES (21, 1, 'Estudiantes', '', '_self', 'voyager-people', '#000000', NULL, 21, '2021-08-31 06:45:30', '2021-08-31 06:57:12', 'voyager.students.index', 'null');
COMMIT;

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
BEGIN;
INSERT INTO `menus` VALUES (1, 'admin', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_01_000000_add_voyager_user_fields', 1);
INSERT INTO `migrations` VALUES (4, '2016_01_01_000000_create_data_types_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_01_01_000000_create_pages_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_01_01_000000_create_posts_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_02_15_204651_create_categories_table', 1);
INSERT INTO `migrations` VALUES (8, '2016_05_19_173453_create_menu_table', 1);
INSERT INTO `migrations` VALUES (9, '2016_10_21_190000_create_roles_table', 1);
INSERT INTO `migrations` VALUES (10, '2016_10_21_190000_create_settings_table', 1);
INSERT INTO `migrations` VALUES (11, '2016_11_30_135954_create_permission_table', 1);
INSERT INTO `migrations` VALUES (12, '2016_11_30_141208_create_permission_role_table', 1);
INSERT INTO `migrations` VALUES (13, '2016_12_26_201236_data_types__add__server_side', 1);
INSERT INTO `migrations` VALUES (14, '2017_01_13_000000_add_route_to_menu_items_table', 1);
INSERT INTO `migrations` VALUES (15, '2017_01_14_005015_create_translations_table', 1);
INSERT INTO `migrations` VALUES (16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1);
INSERT INTO `migrations` VALUES (17, '2017_03_06_000000_add_controller_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (18, '2017_04_11_000000_alter_post_nullable_fields_table', 1);
INSERT INTO `migrations` VALUES (19, '2017_04_21_000000_add_order_to_data_rows_table', 1);
INSERT INTO `migrations` VALUES (20, '2017_07_05_210000_add_policyname_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (21, '2017_08_05_000000_add_group_to_settings_table', 1);
INSERT INTO `migrations` VALUES (22, '2017_11_26_013050_add_user_role_relationship', 1);
INSERT INTO `migrations` VALUES (23, '2017_11_26_015000_create_user_roles_table', 1);
INSERT INTO `migrations` VALUES (24, '2018_03_11_000000_add_user_settings', 1);
INSERT INTO `migrations` VALUES (25, '2018_03_14_000000_add_details_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (26, '2018_03_16_000000_make_settings_value_nullable', 1);
INSERT INTO `migrations` VALUES (27, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (28, '2021_07_16_204826_create_table_templates', 1);
INSERT INTO `migrations` VALUES (29, '2021_07_16_205326_create_table_components', 1);
INSERT INTO `migrations` VALUES (30, '2021_07_16_210814_create_table_type_items', 1);
INSERT INTO `migrations` VALUES (31, '2021_07_16_210846_create_table_items', 1);
INSERT INTO `migrations` VALUES (32, '2021_07_16_210932_create_table_pages', 1);
INSERT INTO `migrations` VALUES (33, '2021_07_24_104153_add_column_token_to_users', 1);
COMMIT;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
BEGIN;
INSERT INTO `permission_role` VALUES (1, 1);
INSERT INTO `permission_role` VALUES (2, 1);
INSERT INTO `permission_role` VALUES (3, 1);
INSERT INTO `permission_role` VALUES (4, 1);
INSERT INTO `permission_role` VALUES (5, 1);
INSERT INTO `permission_role` VALUES (6, 1);
INSERT INTO `permission_role` VALUES (7, 1);
INSERT INTO `permission_role` VALUES (8, 1);
INSERT INTO `permission_role` VALUES (9, 1);
INSERT INTO `permission_role` VALUES (10, 1);
INSERT INTO `permission_role` VALUES (11, 1);
INSERT INTO `permission_role` VALUES (12, 1);
INSERT INTO `permission_role` VALUES (13, 1);
INSERT INTO `permission_role` VALUES (14, 1);
INSERT INTO `permission_role` VALUES (15, 1);
INSERT INTO `permission_role` VALUES (16, 1);
INSERT INTO `permission_role` VALUES (17, 1);
INSERT INTO `permission_role` VALUES (18, 1);
INSERT INTO `permission_role` VALUES (19, 1);
INSERT INTO `permission_role` VALUES (20, 1);
INSERT INTO `permission_role` VALUES (21, 1);
INSERT INTO `permission_role` VALUES (22, 1);
INSERT INTO `permission_role` VALUES (23, 1);
INSERT INTO `permission_role` VALUES (24, 1);
INSERT INTO `permission_role` VALUES (25, 1);
INSERT INTO `permission_role` VALUES (26, 1);
INSERT INTO `permission_role` VALUES (27, 1);
INSERT INTO `permission_role` VALUES (28, 1);
INSERT INTO `permission_role` VALUES (29, 1);
INSERT INTO `permission_role` VALUES (30, 1);
INSERT INTO `permission_role` VALUES (31, 1);
INSERT INTO `permission_role` VALUES (32, 1);
INSERT INTO `permission_role` VALUES (33, 1);
INSERT INTO `permission_role` VALUES (34, 1);
INSERT INTO `permission_role` VALUES (35, 1);
INSERT INTO `permission_role` VALUES (36, 1);
INSERT INTO `permission_role` VALUES (37, 1);
INSERT INTO `permission_role` VALUES (38, 1);
INSERT INTO `permission_role` VALUES (39, 1);
INSERT INTO `permission_role` VALUES (40, 1);
INSERT INTO `permission_role` VALUES (41, 1);
INSERT INTO `permission_role` VALUES (42, 1);
INSERT INTO `permission_role` VALUES (43, 1);
INSERT INTO `permission_role` VALUES (44, 1);
INSERT INTO `permission_role` VALUES (45, 1);
INSERT INTO `permission_role` VALUES (46, 1);
INSERT INTO `permission_role` VALUES (56, 1);
INSERT INTO `permission_role` VALUES (57, 1);
INSERT INTO `permission_role` VALUES (58, 1);
INSERT INTO `permission_role` VALUES (59, 1);
INSERT INTO `permission_role` VALUES (60, 1);
INSERT INTO `permission_role` VALUES (61, 1);
INSERT INTO `permission_role` VALUES (62, 1);
INSERT INTO `permission_role` VALUES (63, 1);
INSERT INTO `permission_role` VALUES (64, 1);
INSERT INTO `permission_role` VALUES (65, 1);
INSERT INTO `permission_role` VALUES (66, 1);
INSERT INTO `permission_role` VALUES (67, 1);
INSERT INTO `permission_role` VALUES (68, 1);
INSERT INTO `permission_role` VALUES (69, 1);
INSERT INTO `permission_role` VALUES (70, 1);
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
INSERT INTO `permissions` VALUES (1, 'browse_admin', NULL, '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (2, 'browse_bread', NULL, '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (3, 'browse_database', NULL, '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (4, 'browse_media', NULL, '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (5, 'browse_compass', NULL, '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (6, 'browse_menus', 'menus', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (7, 'read_menus', 'menus', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (8, 'edit_menus', 'menus', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (9, 'add_menus', 'menus', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (10, 'delete_menus', 'menus', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (11, 'browse_roles', 'roles', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (12, 'read_roles', 'roles', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (13, 'edit_roles', 'roles', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (14, 'add_roles', 'roles', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (15, 'delete_roles', 'roles', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (16, 'browse_users', 'users', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (17, 'read_users', 'users', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (18, 'edit_users', 'users', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (19, 'add_users', 'users', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (20, 'delete_users', 'users', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (21, 'browse_settings', 'settings', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (22, 'read_settings', 'settings', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (23, 'edit_settings', 'settings', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (24, 'add_settings', 'settings', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (25, 'delete_settings', 'settings', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `permissions` VALUES (26, 'browse_hooks', NULL, '2021-07-24 06:02:41', '2021-07-24 06:02:41');
INSERT INTO `permissions` VALUES (27, 'browse_templates', 'templates', '2021-07-27 00:18:06', '2021-07-27 00:18:06');
INSERT INTO `permissions` VALUES (28, 'read_templates', 'templates', '2021-07-27 00:18:06', '2021-07-27 00:18:06');
INSERT INTO `permissions` VALUES (29, 'edit_templates', 'templates', '2021-07-27 00:18:06', '2021-07-27 00:18:06');
INSERT INTO `permissions` VALUES (30, 'add_templates', 'templates', '2021-07-27 00:18:06', '2021-07-27 00:18:06');
INSERT INTO `permissions` VALUES (31, 'delete_templates', 'templates', '2021-07-27 00:18:06', '2021-07-27 00:18:06');
INSERT INTO `permissions` VALUES (32, 'browse_components', 'components', '2021-07-27 00:20:57', '2021-07-27 00:20:57');
INSERT INTO `permissions` VALUES (33, 'read_components', 'components', '2021-07-27 00:20:57', '2021-07-27 00:20:57');
INSERT INTO `permissions` VALUES (34, 'edit_components', 'components', '2021-07-27 00:20:57', '2021-07-27 00:20:57');
INSERT INTO `permissions` VALUES (35, 'add_components', 'components', '2021-07-27 00:20:57', '2021-07-27 00:20:57');
INSERT INTO `permissions` VALUES (36, 'delete_components', 'components', '2021-07-27 00:20:57', '2021-07-27 00:20:57');
INSERT INTO `permissions` VALUES (37, 'browse_items', 'items', '2021-07-27 00:28:41', '2021-07-27 00:28:41');
INSERT INTO `permissions` VALUES (38, 'read_items', 'items', '2021-07-27 00:28:41', '2021-07-27 00:28:41');
INSERT INTO `permissions` VALUES (39, 'edit_items', 'items', '2021-07-27 00:28:41', '2021-07-27 00:28:41');
INSERT INTO `permissions` VALUES (40, 'add_items', 'items', '2021-07-27 00:28:41', '2021-07-27 00:28:41');
INSERT INTO `permissions` VALUES (41, 'delete_items', 'items', '2021-07-27 00:28:41', '2021-07-27 00:28:41');
INSERT INTO `permissions` VALUES (42, 'browse_type_items', 'type_items', '2021-07-27 01:20:08', '2021-07-27 01:20:08');
INSERT INTO `permissions` VALUES (43, 'read_type_items', 'type_items', '2021-07-27 01:20:08', '2021-07-27 01:20:08');
INSERT INTO `permissions` VALUES (44, 'edit_type_items', 'type_items', '2021-07-27 01:20:08', '2021-07-27 01:20:08');
INSERT INTO `permissions` VALUES (45, 'add_type_items', 'type_items', '2021-07-27 01:20:08', '2021-07-27 01:20:08');
INSERT INTO `permissions` VALUES (46, 'delete_type_items', 'type_items', '2021-07-27 01:20:08', '2021-07-27 01:20:08');
INSERT INTO `permissions` VALUES (56, 'browse_requests', 'requests', '2021-08-05 03:27:07', '2021-08-05 03:27:07');
INSERT INTO `permissions` VALUES (57, 'read_requests', 'requests', '2021-08-05 03:27:07', '2021-08-05 03:27:07');
INSERT INTO `permissions` VALUES (58, 'edit_requests', 'requests', '2021-08-05 03:27:07', '2021-08-05 03:27:07');
INSERT INTO `permissions` VALUES (59, 'add_requests', 'requests', '2021-08-05 03:27:07', '2021-08-05 03:27:07');
INSERT INTO `permissions` VALUES (60, 'delete_requests', 'requests', '2021-08-05 03:27:07', '2021-08-05 03:27:07');
INSERT INTO `permissions` VALUES (61, 'browse_courses', 'courses', '2021-08-31 06:42:32', '2021-08-31 06:42:32');
INSERT INTO `permissions` VALUES (62, 'read_courses', 'courses', '2021-08-31 06:42:32', '2021-08-31 06:42:32');
INSERT INTO `permissions` VALUES (63, 'edit_courses', 'courses', '2021-08-31 06:42:32', '2021-08-31 06:42:32');
INSERT INTO `permissions` VALUES (64, 'add_courses', 'courses', '2021-08-31 06:42:32', '2021-08-31 06:42:32');
INSERT INTO `permissions` VALUES (65, 'delete_courses', 'courses', '2021-08-31 06:42:32', '2021-08-31 06:42:32');
INSERT INTO `permissions` VALUES (66, 'browse_students', 'students', '2021-08-31 06:45:30', '2021-08-31 06:45:30');
INSERT INTO `permissions` VALUES (67, 'read_students', 'students', '2021-08-31 06:45:30', '2021-08-31 06:45:30');
INSERT INTO `permissions` VALUES (68, 'edit_students', 'students', '2021-08-31 06:45:30', '2021-08-31 06:45:30');
INSERT INTO `permissions` VALUES (69, 'add_students', 'students', '2021-08-31 06:45:30', '2021-08-31 06:45:30');
INSERT INTO `permissions` VALUES (70, 'delete_students', 'students', '2021-08-31 06:45:30', '2021-08-31 06:45:30');
COMMIT;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for requests
-- ----------------------------
DROP TABLE IF EXISTS `requests`;
CREATE TABLE `requests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(140) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of requests
-- ----------------------------
BEGIN;
INSERT INTO `requests` VALUES (1, 'Kevin Villegas', 'kevin.hernandez@gmail.com', 'Prueba Postman', 'Culo', '2021-08-05 01:38:52', '2021-08-05 01:38:52', NULL);
INSERT INTO `requests` VALUES (2, 'Kevin Villegas', 'kevin.hernandez@gmail.com', 'Prueba Postman', 'Culo', '2021-08-05 01:44:00', '2021-08-05 01:44:00', NULL);
INSERT INTO `requests` VALUES (3, 'Kevin Villegas', 'kevin.hernandez@gmail.com', 'Prueba Postman', 'Culo', '2021-08-05 01:44:24', '2021-08-05 01:44:24', NULL);
INSERT INTO `requests` VALUES (4, 'aaa', '@', 'aasas', 'asasda', '2021-08-05 02:57:36', '2021-08-05 02:57:36', NULL);
INSERT INTO `requests` VALUES (5, 'Hello', '@', 'asdads', 'adsadsad', '2021-08-05 02:59:27', '2021-08-05 02:59:27', NULL);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, 'admin', 'Administrator', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
INSERT INTO `roles` VALUES (2, 'user', 'Normal User', '2021-07-24 06:01:56', '2021-07-24 06:01:56');
COMMIT;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
BEGIN;
INSERT INTO `settings` VALUES (1, 'site.title', 'Site Title', '::CEDIEM::', '', 'text', 1, 'Site');
INSERT INTO `settings` VALUES (2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site');
INSERT INTO `settings` VALUES (3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site');
INSERT INTO `settings` VALUES (4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site');
INSERT INTO `settings` VALUES (5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin');
INSERT INTO `settings` VALUES (6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin');
INSERT INTO `settings` VALUES (7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin');
INSERT INTO `settings` VALUES (8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin');
INSERT INTO `settings` VALUES (9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin');
INSERT INTO `settings` VALUES (10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');
INSERT INTO `settings` VALUES (12, 'admin.template', 'Plantilla Web', 'legal', NULL, 'text', 6, 'Admin');
COMMIT;

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `municipality` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of students
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for templates
-- ----------------------------
DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of templates
-- ----------------------------
BEGIN;
INSERT INTO `templates` VALUES (2, 'legal', 'Presentación Formal', 1, '2021-07-24 06:04:25', '2021-09-20 19:48:03');
INSERT INTO `templates` VALUES (4, 'coorporation', 'Página Coorporativa', 1, '2021-08-29 05:42:00', '2021-08-29 06:18:44');
COMMIT;

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of translations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for type_items
-- ----------------------------
DROP TABLE IF EXISTS `type_items`;
CREATE TABLE `type_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of type_items
-- ----------------------------
BEGIN;
INSERT INTO `type_items` VALUES (1, 'text', '2021-07-27 01:29:26', '2021-07-27 01:29:34');
INSERT INTO `type_items` VALUES (2, 'image', '2021-07-27 01:29:45', '2021-07-27 01:29:45');
INSERT INTO `type_items` VALUES (3, 'json', '2021-09-27 21:47:57', '2021-09-27 21:47:57');
COMMIT;

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 1, 'Admin', 'admin@impulzo.com.mx', '4ENvEK1OVzUaScqFGTdOy7eqWpZqUtX6TQyBsSbC50pq9FP3HzJDFAKLuiszAspUCSiVlK', 'users/default.png', NULL, '$2y$10$rQMNaCnWZ7/2mqULiSzKee0y8vdfbvC.J7exV3iqA7GIxVcCuHdkm', 'bHYIcpWXSOoYvwPuHfbsy3iT474y9Qt7BBL5gJDNKFr2jzZEOysmwf2GYAKp', NULL, '2021-07-24 06:04:25', '2021-07-24 06:04:25');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
