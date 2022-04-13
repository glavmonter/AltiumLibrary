# DROP TABLE IF EXISTS t_TransistorsBipolarBJTSingle;

CREATE TABLE IF NOT EXISTS `t_TransistorsBipolarBJT` (
    `partid` INTEGER AUTO_INCREMENT NOT NULL,
    `supplier1` VARCHAR(200) NULL,
    `supplier1partno` VARCHAR(200) NULL,
    `supplier2` VARCHAR(200) NULL,
    `supplier2partno` VARCHAR(200) NULL,
    `supplier3` VARCHAR(200) NULL,
    `supplier3partno` VARCHAR(200) NULL,
    `supplier4` VARCHAR(200) NULL,
    `supplier4partno` VARCHAR(200) NULL,
    `supplier5` VARCHAR(200) NULL,
    `supplier5partno` VARCHAR(200) NULL,
    `supplier6` VARCHAR(200) NULL,
    `supplier6partno` VARCHAR(200) NULL,

    `componentlink1description` MEDIUMTEXT NULL,
    `componentlink1url` MEDIUMTEXT NULL,
    `componentlink2description` MEDIUMTEXT NULL,
    `componentlink2url` MEDIUMTEXT NULL,
    `componentlink3description` MEDIUMTEXT NULL,
    `componentlink3url` MEDIUMTEXT NULL,
    `componentlink4description` MEDIUMTEXT NULL,
    `componentlink4url` MEDIUMTEXT NULL,
    `componentlink5description` MEDIUMTEXT NULL,
    `componentlink5url` MEDIUMTEXT NULL,
    `componentlink6description` MEDIUMTEXT NULL,
    `componentlink6url` MEDIUMTEXT NULL,

    `symbolpath` VARCHAR(1000) NULL,
    `symbolref` VARCHAR(200) NULL,

    `footprintpath1` VARCHAR(1000) NULL,
    `footprintref1` VARCHAR(200) NULL,
    `footprintpath2` VARCHAR(1000) NULL,
    `footprintref2` VARCHAR(200) NULL,
    `footprintpath3` VARCHAR(1000) NULL,
    `footprintref3` VARCHAR(200) NULL,

    `lastupdated` DATETIME NULL,

    `value` VARCHAR(1000) NULL,
    `comment` VARCHAR(1000) NULL,
    `manufacturer` VARCHAR(1000) NULL,
    `manufacturerpartno` VARCHAR(1000),
    `description` MEDIUMTEXT NULL,
    `price` FLOAT NULL,
    `lifecycle` VARCHAR(100) NULL,
    `series` VARCHAR(1000) NULL,
    `devicepackage` VARCHAR(200),
    `type` VARCHAR(200) NULL,
    `packaging` VARCHAR(200) NULL,
    `PartStatus` VARCHAR(200) NULL,
    `MountingType` VARCHAR(200) NULL,
    `OperatingTemperature` VARCHAR(200) NULL,
    `PackageCase` VARCHAR(200) NULL,
    `SupplierDevicePackage` VARCHAR(200) NULL,
    `PowerMax` VARCHAR(200) NULL,
    `TransistorType` VARCHAR(200) NULL,
    `TransistorCount` INTEGER NULL,
    `CurrentCollectorIcMax` VARCHAR(200) NULL,
    `VoltageCollectorEmitterBreakdownMax` VARCHAR(200) NULL,
    `VceSaturationMaxIbIc` VARCHAR(200) NULL,
    `CurrentCollectorCutoffMax` VARCHAR(200) NULL,
    `DCCurrentGainhFEMinIcVce` VARCHAR(200) NULL,
    `FrequencyTransition` VARCHAR(200) NULL,

    constraint t_TransistorsBipolarBJT_pk
       primary key (`partid`)
) COLLATE = 'utf8mb4_general_ci';


