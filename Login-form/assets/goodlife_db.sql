-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2021 at 07:28 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Table structure for table `users`
--

CREATE TABLE users (
    id int(11) not null PRIMARY KEY AUTO_INCREMENT,
    username varchar(128) not null,
    password varchar(128) not null
);

--
-- Table structure for `pharmacy_info`
--

CREATE TABLE pharmacy_info (
  id INT PRIMARY KEY AUTO_INCREMENT,
  pharmacy_name VARCHAR(255) NOT NULL,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  contact VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL,
  opening_date DATE NOT NULL
);


--
-- Table structure for table `medicine_stock`
--

CREATE TABLE medicine_stock (
  id INT PRIMARY KEY AUTO_INCREMENT,
  medicine_name VARCHAR(255) NOT NULL,
  medicine_type VARCHAR(255) NOT NULL,
  capacity INT NOT NULL,
  expiry_date DATE NOT NULL,
  full_dose_price DECIMAL(10, 2) NOT NULL,
  half_dose_price DECIMAL(10, 2) NOT NULL
);


--
-- Table structure for table `stock`
--

CREATE TABLE stock (
  id INT PRIMARY KEY AUTO_INCREMENT,
  medicine_name VARCHAR(255) NOT NULL,
  medicine_type VARCHAR(255) NOT NULL,
  capacity INT NOT NULL,
  expiry_date DATE NOT NULL,
  full_dosage INT NOT NULL,
  half_dosage INT NOT NULL,
  full_dose_price DECIMAL(10, 2) NOT NULL,
  half_dose_price DECIMAL(10, 2) NOT NULL,
  date_received DATE NOT NULL,
  supplier VARCHAR(255) NOT NULL
);

--
-- Table structure for table `suppliers`
--

CREATE TABLE suppliers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  supplier_name VARCHAR(255) NOT NULL,
  supplier_email VARCHAR(255) NOT NULL,
  supplier_number VARCHAR(255) NOT NULL,
  supplier_address VARCHAR(255) NOT NULL
);

--
-- Table structure for table `patients`
--

CREATE TABLE patients (
  id INT PRIMARY KEY AUTO_INCREMENT,
  patient_name VARCHAR(255) NOT NULL,
  dob DATE NOT NULL,
  gender VARCHAR(255) NOT NULL,
  appoint_date DATE NOT NULL,
  lab_test VARCHAR(255) NOT NULL,
  patient_number VARCHAR(255) NOT NULL,
  patient_address VARCHAR(255) NOT NULL,
  doctor_name VARCHAR(255) NOT NULL
);
--
-- Table structure for table `lab`
--

CREATE TABLE lab (
  id INT PRIMARY KEY AUTO_INCREMENT,
  patient_name VARCHAR(255) NOT NULL,
  gender VARCHAR(255) NOT NULL,
  dob DATE NOT NULL,
  patient_number VARCHAR(255) NOT NULL,
  patient_address VARCHAR(255) NOT NULL,
  conductor VARCHAR(255) NOT NULL,
  app_date VARCHAR(255) NOT NULL,
  report TEXT NOT NULL
);

