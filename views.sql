DROP VIEW IF EXISTS `Transistors - BJT - Single`;
CREATE VIEW IF NOT EXISTS `Transistors - BJT - Single` AS
    SELECT
           `comment` as `Comment`,
           `description` as `Description`,
           `devicepackage` as `Device Package`,

           `footprintpath1` as `Footprint Path 1`,
           `footprintref1` as `Footprint Ref 1`,
           `footprintpath2` as `Footprint Path 2`,
           `footprintref2` as `Footprint Ref 2`,
           `footprintpath3` as `Footprint Path 3`,
           `footprintref3` as `Footprint Ref 3`,
           `symbolpath` as `Library Path`,
           `symbolref` as `Library Ref`,

           `lastupdated` as `Last Updated`,
           `manufacturer` as `Manufacturer`,
           `manufacturerpartno` as `Part Number`,
           `MountingType` as `Mounting Type`,
           `PackageCase` as `Package/Case`,
           `PartStatus` as `Part Status`,
           `packaging` as `Packagin`,

           `TransistorType` as `Transistor Type`,
           `TransistorCount` as `Transistors Count`,

           `CurrentCollectorIcMax` as `Current - Collector (Ic) (Max)`,
           `VoltageCollectorEmitterBreakdownMax` as `Voltage - Collector Emitter Breakdown (Max)`,
           `VceSaturationMaxIbIc` as `Vce Saturation (Max) @ Ib, Ic`,
           `CurrentCollectorCutoffMax` as `Current - Collector Cutoff (Max)`,
           `DCCurrentGainhFEMinIcVce` as `DC Current Gain (hFE) (Min) @ Ic, Vce`,
           `PowerMax` as `Power - Max`,
           `FrequencyTransition` as `Frequency - Transition`,
           `OperatingTemperature` as `Operating Temperature`,


           `componentlink1description` as `ComponentLink1Description`,
           `componentlink1url` as `ComponentLink1URL`,
           `componentlink2description` as `ComponentLink2Description`,
           `componentlink2url` as `ComponentLink2URL`,
           `componentlink3description` as `ComponentLink3Description`,
           `componentlink3url` as `ComponentLink3URL`,

           `supplier1` as `Supplier 1`,
           `supplier1partno` as `Supplier Part Number 1`,
           `supplier2` as `Supplier 2`,
           `supplier2partno` as `Supplier Part Number 2`,
           `supplier3` as `Supplier 3`,
           `supplier3partno` as `Supplier Part Number 3`,
           `supplier4` as `Supplier 4`,
           `supplier4partno` as `Supplier Part Number 4`

    FROM t_TransistorsBipolarBJT WHERE TransistorCount = 1;

DROP VIEW IF EXISTS `Transistors - BJT - Array`;
CREATE VIEW IF NOT EXISTS `Transistors - BJT - Array` AS
    SELECT
           `comment` as `Comment`,
           `description` as `Description`,
           `devicepackage` as `Device Package`,

           `footprintpath1` as `Footprint Path 1`,
           `footprintref1` as `Footprint Ref 1`,
           `footprintpath2` as `Footprint Path 2`,
           `footprintref2` as `Footprint Ref 2`,
           `footprintpath3` as `Footprint Path 3`,
           `footprintref3` as `Footprint Ref 3`,
           `symbolpath` as `Library Path`,
           `symbolref` as `Library Ref`,

           `lastupdated` as `Last Updated`,
           `manufacturer` as `Manufacturer`,
           `manufacturerpartno` as `Part Number`,
           `MountingType` as `Mounting Type`,
           `PackageCase` as `Package/Case`,
           `PartStatus` as `Part Status`,
           `packaging` as `Packagin`,

           `TransistorType` as `Transistor Type`,
           `TransistorCount` as `Transistors Count`,

           `CurrentCollectorIcMax` as `Current - Collector (Ic) (Max)`,
           `VoltageCollectorEmitterBreakdownMax` as `Voltage - Collector Emitter Breakdown (Max)`,
           `VceSaturationMaxIbIc` as `Vce Saturation (Max) @ Ib, Ic`,
           `CurrentCollectorCutoffMax` as `Current - Collector Cutoff (Max)`,
           `DCCurrentGainhFEMinIcVce` as `DC Current Gain (hFE) (Min) @ Ic, Vce`,
           `PowerMax` as `Power - Max`,
           `FrequencyTransition` as `Frequency - Transition`,
           `OperatingTemperature` as `Operating Temperature`,


           `componentlink1description` as `ComponentLink1Description`,
           `componentlink1url` as `ComponentLink1URL`,
           `componentlink2description` as `ComponentLink2Description`,
           `componentlink2url` as `ComponentLink2URL`,
           `componentlink3description` as `ComponentLink3Description`,
           `componentlink3url` as `ComponentLink3URL`,

           `supplier1` as `Supplier 1`,
           `supplier1partno` as `Supplier Part Number 1`,
           `supplier2` as `Supplier 2`,
           `supplier2partno` as `Supplier Part Number 2`,
           `supplier3` as `Supplier 3`,
           `supplier3partno` as `Supplier Part Number 3`,
           `supplier4` as `Supplier 4`,
           `supplier4partno` as `Supplier Part Number 4`

    FROM t_TransistorsBipolarBJT WHERE TransistorCount > 1;
