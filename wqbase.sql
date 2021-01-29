-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 19, 2021 at 01:09 PM
-- Server version: 5.5.62-0+deb8u1
-- PHP Version: 5.6.40-0+deb8u7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wqbase`
--
CREATE DATABASE IF NOT EXISTS `wqbase` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wqbase`;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
`id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) unsigned DEFAULT NULL,
  `state` tinyint(2) NOT NULL DEFAULT '0',
  `OrganizationIdentifier` varchar(12) DEFAULT NULL,
  `OrganizationFormalName` varchar(255) DEFAULT NULL,
  `ActivityIdentifier` varchar(255) DEFAULT NULL,
  `ActivityTypeCode` varchar(25) DEFAULT NULL,
  `ActivityMediaName` varchar(12) DEFAULT NULL,
  `ActivityMediaSubdivisionName` varchar(45) DEFAULT NULL,
  `ActivityStartDate` date DEFAULT NULL,
  `ActivityStartTime/Time` time DEFAULT NULL,
  `ActivityStartTime/TimeZoneCode` varchar(45) DEFAULT NULL,
  `ActivityEndDate` date DEFAULT NULL,
  `ActivityEndTime/Time` time DEFAULT NULL,
  `ActivityEndTime/TimeZoneCode` varchar(255) DEFAULT NULL,
  `ActivityDepthHeightMeasure/MeasureValue` double DEFAULT NULL,
  `ActivityDepthHeightMeasure/MeasureUnitCode` varchar(255) DEFAULT NULL,
  `ActivityDepthAltitudeReferencePointText` varchar(255) DEFAULT NULL,
  `ActivityTopDepthHeightMeasure/MeasureValue` double DEFAULT NULL,
  `ActivityTopDepthHeightMeasure/MeasureUnitCode` varchar(255) DEFAULT NULL,
  `ActivityBottomDepthHeightMeasure/MeasureValue` double DEFAULT NULL,
  `ActivityBottomDepthHeightMeasure/MeasureUnitCode` varchar(255) DEFAULT NULL,
  `ProjectIdentifier` varchar(12) DEFAULT NULL,
  `ActivityConductingOrganizationText` varchar(255) DEFAULT NULL,
  `MonitoringLocationIdentifier` varchar(45) DEFAULT NULL,
  `ActivityCommentText` varchar(255) DEFAULT NULL,
  `SampleAquifer` varchar(255) DEFAULT NULL,
  `HydrologicCondition` varchar(25) DEFAULT NULL,
  `HydrologicEvent` varchar(25) DEFAULT NULL,
  `SampleCollectionMethod/MethodIdentifier` varchar(12) DEFAULT NULL,
  `SampleCollectionMethod/MethodIdentifierContext` varchar(45) DEFAULT NULL,
  `SampleCollectionMethod/MethodName` varchar(255) DEFAULT NULL,
  `SampleCollectionEquipmentName` varchar(45) DEFAULT NULL,
  `ResultDetectionConditionText` varchar(45) DEFAULT NULL,
  `CharacteristicName` varchar(255) DEFAULT NULL,
  `ResultSampleFractionText` varchar(45) DEFAULT NULL,
  `ResultMeasureValue` double DEFAULT NULL,
  `ResultMeasure/MeasureUnitCode` varchar(12) DEFAULT NULL,
  `MeasureQualifierCode` varchar(255) DEFAULT NULL,
  `ResultStatusIdentifier` varchar(12) DEFAULT NULL,
  `StatisticalBaseCode` varchar(255) DEFAULT NULL,
  `ResultValueTypeName` varchar(25) DEFAULT NULL,
  `ResultWeightBasisText` varchar(255) DEFAULT NULL,
  `ResultTimeBasisText` varchar(255) DEFAULT NULL,
  `ResultTemperatureBasisText` varchar(12) DEFAULT NULL,
  `ResultParticleSizeBasisText` varchar(255) DEFAULT NULL,
  `PrecisionValue` int(11) NOT NULL,
  `ResultCommentText` varchar(255) DEFAULT NULL,
  `USGSPCode` varchar(5) DEFAULT NULL,
  `ResultDepthHeightMeasure/MeasureValue` double DEFAULT NULL,
  `ResultDepthHeightMeasure/MeasureUnitCode` varchar(255) DEFAULT NULL,
  `ResultDepthAltitudeReferencePointText` varchar(255) DEFAULT NULL,
  `SubjectTaxonomicName` varchar(255) DEFAULT NULL,
  `SampleTissueAnatomyName` varchar(255) DEFAULT NULL,
  `ResultAnalyticalMethod/MethodIdentifier` varchar(25) DEFAULT NULL,
  `ResultAnalyticalMethod/MethodIdentifierContext` varchar(12) DEFAULT NULL,
  `ResultAnalyticalMethod/MethodName` varchar(255) DEFAULT NULL,
  `MethodDescriptionText` varchar(255) DEFAULT NULL,
  `LaboratoryName` varchar(255) DEFAULT NULL,
  `AnalysisStartDate` date DEFAULT NULL,
  `ResultLaboratoryCommentText` varchar(255) DEFAULT NULL,
  `DetectionQuantitationLimitTypeName` varchar(45) DEFAULT NULL,
  `DetectionQuantitationLimitMeasure/MeasureValue` double DEFAULT NULL,
  `DetectionQuantitationLimitMeasure/MeasureUnitCode` varchar(12) DEFAULT NULL,
  `PreparationStartDate` date DEFAULT NULL,
  `ProviderName` varchar(12) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16688 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE IF NOT EXISTS `stations` (
`id` int(11) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) unsigned DEFAULT NULL,
  `state` tinyint(2) NOT NULL DEFAULT '0',
  `OrganizationIdentifier` varchar(12) NOT NULL,
  `OrganizationFormalName` varchar(255) NOT NULL,
  `MonitoringLocationIdentifier` varchar(45) NOT NULL,
  `MonitoringLocationName` varchar(255) NOT NULL,
  `MonitoringLocationTypeName` varchar(45) NOT NULL,
  `MonitoringLocationDescriptionText` varchar(255) NOT NULL,
  `HUCEightDigitCode` varchar(12) NOT NULL,
  `DrainageAreaMeasure/MeasureValue` double NOT NULL,
  `DrainageAreaMeasure/MeasureUnitCode` varchar(12) DEFAULT NULL,
  `ContributingDrainageAreaMeasure/MeasureValue` double DEFAULT NULL,
  `ContributingDrainageAreaMeasure/MeasureUnitCode` varchar(12) DEFAULT NULL,
  `LatitudeMeasure` double DEFAULT NULL,
  `LongitudeMeasure` double DEFAULT NULL,
  `SourceMapScaleNumeric` double DEFAULT NULL,
  `HorizontalAccuracyMeasure/MeasureValue` double DEFAULT NULL,
  `HorizontalAccuracyMeasure/MeasureUnitCode` varchar(12) DEFAULT NULL,
  `HorizontalCollectionMethodName` varchar(45) DEFAULT NULL,
  `HorizontalCoordinateReferenceSystemDatumName` varchar(12) DEFAULT NULL,
  `VerticalMeasure/MeasureValue` double DEFAULT NULL,
  `VerticalMeasure/MeasureUnitCode` varchar(12) DEFAULT NULL,
  `VerticalAccuracyMeasure/MeasureValue` double DEFAULT NULL,
  `VerticalAccuracyMeasure/MeasureUnitCode` varchar(12) DEFAULT NULL,
  `VerticalCollectionMethodName` varchar(255) DEFAULT NULL,
  `VerticalCoordinateReferenceSystemDatumName` varchar(12) DEFAULT NULL,
  `CountryCode` varchar(5) DEFAULT NULL,
  `StateCode` varchar(5) DEFAULT NULL,
  `CountyCode` varchar(5) DEFAULT NULL,
  `AquiferName` varchar(25) DEFAULT NULL,
  `FormationTypeText` varchar(25) DEFAULT NULL,
  `AquiferTypeName` varchar(255) DEFAULT NULL,
  `ConstructionDateText` varchar(12) DEFAULT NULL,
  `WellDepthMeasure/MeasureValue` double DEFAULT NULL,
  `WellDepthMeasure/MeasureUnitCode` varchar(12) DEFAULT NULL,
  `WellHoleDepthMeasure/MeasureValue` double DEFAULT NULL,
  `WellHoleDepthMeasure/MeasureUnitCode` varchar(12) DEFAULT NULL,
  `ProviderName` varchar(12) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `results`
--
ALTER TABLE `results`
 ADD PRIMARY KEY (`id`), ADD KEY `MonitoringLocationIdentifier` (`MonitoringLocationIdentifier`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `MonitoringLocationIdentifier` (`MonitoringLocationIdentifier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16688;
--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
