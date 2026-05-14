# RPSLib — Altium Component Library

Библиотека компонентов для Altium Designer. Содержит схемотехнические символы и посадочные места для проектирования печатных плат.

---

## Категории компонентов

| Категория | Компонентов | Описание |
| --------- | :---------: | -------- |
| [ADC / DAC](docs/ADC_DAC.md) | 6 | АЦП и ЦАП (Analog Devices, Microchip, TI) |
| [Антенны](docs/Antenna.md) | 6 | Чип-антенны 2.4 ГГц, NFC/RFID, патч |
| [Конденсаторы](docs/Capacitors.md) | 24 | Керамические, танталовые, плёночные, электролитические |
| [Разъёмы](docs/Connectors.md) | 85 | USB, JST, FPC/FFC, клеммники, JTAG/SWD, PMOD |
| [Диоды](docs/Diodes.md) | 19 | Сигнальные, Шоттки, стабилитроны, TVS, выпрямительные |
| [ЭлектроМех](docs/ElectroMechanical.md) | 21 | Кнопки, реле, переключатели, экраны ЭМИ |
| [Фильтры](docs/Filters.md) | 7 | Ферритовые дроссели Murata BLM |
| [FPGA](docs/FPGA.md) | 3 | Lattice iCE5, Xilinx Artix-7, Zynq-7 |
| [Предохранители](docs/Fuses.md) | 5 | Плавкие и самовосстанавливающиеся (PTC) |
| [IC Разное](docs/IC_Misc.md) | 7 | Крипточипы, RTC, USB-защита, супервизоры |
| [Катушки](docs/Inductors.md) | 19 | SMD, силовые, RF, трансформаторы |
| [Интерфейс](docs/Interface.md) | 11 | RS-485, USB-UART, Bluetooth, Ethernet, NFC, I/O exp. |
| [Светодиоды](docs/LEDs.md) | 15 | Одноцветные, двухцветные, RGB — THT и SMD |
| [Логика](docs/Logic.md) | 20 | Сдвиговые регистры, буферы, трансляторы уровней |
| [Память](docs/Memory.md) | 13 | EEPROM, FRAM, Flash NOR, eMMC, DDR3 SDRAM |
| [Микроконтроллеры](docs/Microcontrollers.md) | 10 | STM32 F1/F4/L0/L4/G0, GD32, nRF52832 |
| [Драйверы моторов](docs/MotorController.md) | 4 | Full/Half Bridge PWM (Allegro, TI) |
| [ОУ и компараторы](docs/OpAmp.md) | 3 | Операционные усилители, компараторы |
| [Оптопары](docs/Opto.md) | 6 | Оптроны, фотоприёмники, фотоэмиттеры |
| [Генераторы](docs/Oscillators.md) | 14 | SMD кварцы и осцилляторы (Abracon, Epson, ECS) |
| [PMIC](docs/PMIC.md) | 28 | LDO, DC-DC Buck/Boost, V-Ref, DC-DC Isolated |
| [Защита](docs/Protection.md) | 5 | TVS, газовые разрядники GDT, Surge Protector IC |
| [Резисторы](docs/Resistors.md) | 18 | SMD 0402–2512, массивы, подстроечные, аксиальные |
| [Датчики](docs/Sensor.md) | 6 | Ёмкостные, Холла, температуры, влажности |
| [Транзисторы](docs/Transistors.md) | 17 | BJT NPN/PNP, MOSFET N/P-канал, SSR |

> **Итого:** ~328 компонентов в 25 категориях

---

## Структура репозитория

```
RPSLib/
├── docs/               ← Описания компонентов по категориям
├── symbols/            ← Схемотехнические символы (.SchLib)
├── footprints/         ← Посадочные места (.PcbLib)
├── STEP/               ← 3D-модели компонентов
├── PDF/                ← Документация
└── Templates/          ← Шаблоны плат
```

## Библиотеки Altium

| Библиотека | Назначение |
| ---------- | ---------- |
| `RPSLib.SchLib` | Объединённая схемотехническая библиотека |
| `RPSLib.PcbLib` | Объединённая библиотека посадочных мест |
| `HomeLibrary.DbLib` | Database-библиотека |
| `RPSLib.LibPkg` | Пакет библиотеки |
