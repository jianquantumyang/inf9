CREATE DATABASE `article`;
use `article`;

CREATE TABLE `likes_article`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `article_id` BIGINT NOT NULL
);
CREATE TABLE `users`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(255) NOT NULL,
    `fullname` VARCHAR(255) NOT NULL,
    `create_data` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `avatar` VARCHAR(255) NOT NULL DEFAULT 'avatar/avatar.png',
    `password` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `users` ADD UNIQUE `users_username_unique`(`username`);
CREATE TABLE `edge_category`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `category_id` BIGINT NOT NULL,
    `article_id` BIGINT NOT NULL
);
CREATE TABLE `article`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(255) NOT NULL,
    `preview_img` VARCHAR(255) NOT NULL,
    `user` BIGINT NOT NULL,
    `text` TEXT NOT NULL,
    `create_data` DATETIME NOT NULL
);
CREATE TABLE `message`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `chat` TEXT NOT NULL,
    `article_id` BIGINT NOT NULL,
    `user_id` BIGINT NOT NULL,
    `create_data` DATETIME NOT NULL,
    `to_chat` BIGINT NOT NULL DEFAULT '-1'
);
CREATE TABLE `category`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL
);
CREATE TABLE `dislike_article`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `article_id` BIGINT NOT NULL
);