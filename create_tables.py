import mariadb
import sys

t = [
    "ResistorsSurfaceMount",
    "CapacitorsCeramic",
    "CapacitorsTantalum",
    "CapacitorsAluminumElectrolytic",
    "CapacitorsTantalumPolymer",
    "CapacitorsAluminumPolymer",
    "ResistorsChipCurrentSense",
    "CapacitorsCeramicRF",
    "FiltersFerriteBeadsandChips",
    "OptoelectronicsLEDIndication",
    "OptoelectronicsLEDLightingWhite",
    "DiodesTVS",
    "DiodesRectifiersSingle",
    "DiodesZenerSingle",
    "ResistorsTrimmerPotentiometers",
    "OscillatorsCrystals",
    "OscillatorsOscillators",
    "OscillatorsProgrammableOscillators",
    "InductorsFixed",
    "InductorsRF",
    "SensorsNTCThermistors",
    "SwitchesDIP",
    "SwitchesSlide",
    "DataAcquisitionAnalogtoDigitalConvertersADC",
    "MotorDriversControllers",
    "LEDDrivers",
    "TransistorsBipolarBJTSingle",
    "ResistorsNetworksArrays",
    "EmbeddedMicrocontrollers",
    "AmplifiersAudio",
    "InterfaceCODECs",
    "BatteryHoldersClipsContacts",
    "LogicBuffersDriversReceiversTransceivers",
    "BatteryChargers",
    "RectangularConnectorsHeadersMalePins",
    "DataAcquisitionDigitaltoAnalogConvertersDAC",
    "IsolatorsDigital",
    "DataAcquisitionDigitalPotentiometers",
    "DisplayModulesLCDOLEDCharacterandNumeric",
    "LogicGatesandInverters",
    "InterfaceAnalogSwitchesMultiplexersDemultiplexers",
    "MOSFETGateDrivers",
    "Memory",
    "AmplifiersInstrumentationOPAmpsBufferAmps",
    "PowerSuppliesBoardMountDCDCConverters",
    "RFReceivers",
    "RFTransceiverModules",
    "RFTransceiverICs",
    "RFAntennas",
    "DiodesRectifiersArrays",
    "VoltageRegulatorsDCDCSwitchingRegulators",
    "SensorsOpticalPhotodiodes",
    "OptoelectronicsInfraredUVVisibleEmitters",
    "VoltageRegulatorsLinear",
    "ConnectorsUSBDVIHDMI",
    "SwitchesMagneticReed",
    "CapacitorsFilm",
    "SwitchesPushbutton",
    "VoltageRegulatorsDCDCSwitchingControllers",
    "VoltageReference",
    "Supervisors",
    "TransistorsBipolarBJTRF",
    "RFFrontEndLNAPA",
    "RFFilters",
    "MOSFETsSingle",
    "ConnectorsBarrelPower",
    "ConnectorsTerminalBlocksHeadersPlugsandSockets",
    "ConnectorEdgeMezzanineBoardtoBoard",
    "ConnectorsMemoryCardSockets",
    "CurrentRegulationManagement",
    "LogicLinearComparators",
    "Encoders",
    "CurrentSenseTransformers",
    "OptoisolatorsTransistorPhotovoltaic",
    "HardwareMountingBrackets",
    "ConnectorsModularJacks",
    "ConnectorsModularJacksWithMagnetics",
    "ConnectorsBarrierBlocks",
    "ConnectorsTerminalBlocksWiretoBoard",
    "SwitchesTactile",
    "InterfaceSensorandDetector",
    "RectangularConnectorsHeadersReceptaclesFemaleSockets",
    "ControllerORControllersIdealDiodes",
    "InterfaceDriversReceiversTransceivers",
    "PowerManagementSpecialized",
    "SignalBuffersRepeatersSplitters",
    "OpticsLightPipes",
    "MOSFETsArrays",
    "PowerDistributionSwitchesLoadDrivers",
    "MotionSensorsAccelerometers",
    "BatteryManagement",
    "LogicTranslatorsLevelShifters",
    "TransistorsBipolarBJTSinglePreBiased",
    "InterfaceControllers",
    "FusesFuseholders",
    "SwitchesSnapActionLimit",
    "InterfaceSignalBuffersRepeatersSplitters",
    "SensorsOpticalRemotePhotoReceiver",
    "SensorsTemperatureAnalogAndDigital",
    "SensorsPressure",
    "AudioAlarmsBuzzersandSirens",
    "AudioMicrophones",
    "LEDLightingColor",
    "ConnectorsRectangularDirectWiretoBoard",
    "SensorsTransducersHumidityMoistureSensors",
    "SensorsTemperatureRTD",
    "CircuitProtectionFuses",
    "ConnectorsFFCFPC",
    "RFRFIDRFAccessICs",
    "CapacitorsTrimmersVariable",
    "SensorsTemperaturePTCThermistors",
    "ConnectorsCardEdgeEdgeboard",
    "ConnectorsBarrelAudio",
    "AudioSpeakers",
    "SensorsOpticalPhotoresistors",
    "ResistorsSlidePotentiometers",
    "ResistorsRotaryPotentiometers",
    "Test"
]

try:
    conn = mariadb.connect(
         user='altium',
         password='d2b841e971488',
         host='wintercactus.online',
         port=3306,
         database='altium_library')
except mariadb.Error as e:
    print(f'Error connecting to MariaDB: {e}')
    sys.exit(1)

cur = conn.cursor()
for table in ['']:
    drop_query = """
    drop table if exists t{tname:}
    """
    drop_query = drop_query.format(tname=table)
    cur.execute(drop_query)

    sql_query = """
    create table if not exists t{tname:}
    (
        `partid` INTEGER 
        `Part Name`    VARCHAR(511) null,
        `Library Path` VARCHAR(1023) null,
        `Library Ref`  VARCHAR(1023) null,
        constraint t{tname:}_pk
            primary key (`Part Name`)
    )"""
    sql_query = sql_query.format(tname=table)
    cur.execute(sql_query)

conn.close()
