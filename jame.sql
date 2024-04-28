/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : jame

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 27/04/2024 06:31:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `tex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
BEGIN;
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (1, 6, 'โคมไฟตั้งโต๊ะ', 680, 1, '326802381');
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (2, 7, 'แจกัน', 1390, 1, '326802381');
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (3, 4, 'ถาดอเนกประสงค์', 300, 1, '326964043');
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (4, 5, 'แจกันแก้ว', 400, 1, '326964043');
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (5, 7, 'แจกัน', 1390, 1, '327041770');
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (6, 10, 'ปิ่นโต', 3200, 2, '327074776');
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (7, 11, 'แก้ว', 550, 1, '327074776');
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (8, 4, 'ถาดอเนกประสงค์', 300, 1, '327118923');
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (9, 8, 'โต๊ะ', 4690, 1, '327118923');
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (10, 9, 'กระบอกน้ำ เก็บความเย็น', 1550, 1, '327118923');
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (11, 10, 'ปิ่นโต', 1600, 1, '327118923');
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (12, 10, 'ปิ่นโต', 0, 0, '482229453');
INSERT INTO `order_detail` (`id`, `product_id`, `product_name`, `product_price`, `quantity`, `tex`) VALUES (13, 11, 'แก้ว', 0, 0, '482229453');
COMMIT;

-- ----------------------------
-- Table structure for order_list
-- ----------------------------
DROP TABLE IF EXISTS `order_list`;
CREATE TABLE `order_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tex` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of order_list
-- ----------------------------
BEGIN;
INSERT INTO `order_list` (`id`, `tex`, `total_price`) VALUES (1, '326802381', 2070);
INSERT INTO `order_list` (`id`, `tex`, `total_price`) VALUES (2, '326964043', 700);
INSERT INTO `order_list` (`id`, `tex`, `total_price`) VALUES (3, '327041770', 1390);
INSERT INTO `order_list` (`id`, `tex`, `total_price`) VALUES (4, '327074776', 3750);
INSERT INTO `order_list` (`id`, `tex`, `total_price`) VALUES (5, '327118923', 8140);
INSERT INTO `order_list` (`id`, `tex`, `total_price`) VALUES (6, '482229453', 0);
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (4, '1713974535242_.jpg', 'ถาดอเนกประสงค์', 300, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (5, '1713974593663_.jpg', 'แจกันแก้ว', 400, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (6, '1713974632518_.jpg', 'โคมไฟตั้งโต๊ะ', 680, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (7, '1713974684951_.jpg', 'แจกัน', 1390, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (8, '1713974740357_.jpg', 'โต๊ะ', 4690, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (9, '1713974781579_.jpg', 'กระบอกน้ำ เก็บความเย็น', 1550, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (10, '1713975594805_.jpg', 'ปิ่นโต', 1600, 1);
INSERT INTO `product` (`id`, `image`, `name`, `price`, `quantity`) VALUES (11, '1713975831130_.jpg', 'แก้ว', 550, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
