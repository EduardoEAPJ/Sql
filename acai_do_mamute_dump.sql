-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
-- Banco de dados: `acai_do_mamute`
-- Gerado em: 29/07/2025 às 06:36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `acai_do_mamute` DEFAULT CHARACTER SET utf8mb4 COLLATE=utf8mb4_unicode_ci;
USE `acai_do_mamute`;

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `produtos` (`id`, `nome`, `preco`, `imagem`) VALUES
(1, 'Açaí de 300ml', 20.00, 'imagem/acai_300ml.jpg'),
(2, 'Açaí 400ml', 24.00, 'imagem/acai_400ml.jpg'),
(3, 'Açaí 500ml', 28.00, 'imagem/acai_500ml.jpg');

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` enum('cliente','admin') NOT NULL DEFAULT 'cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `tipo`) VALUES
(1, 'Administrador', 'admin@mamute.com', '$2y$10$K/ZMy0cEX4nTLVXzvQx.NuOVsMKD4UQJZ9vIfQ9RJ1aUm7Cm3AKR2', 'admin'),
(2, 'Eduardo', 'eduardo@mamute.com', '$2y$10$Q80nvrXdJmSyn4izNaf44uvvHWx.L1XYujn1S2l3y1PbZmjCtlMFW', 'cliente');

ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

COMMIT;
