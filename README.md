# Geni - Funktionsgenerator
Ein 2-Kanal-Funktionsgenerator mittels Direct Digital Synthesis (DDS). Erstellt als Projekt für das Modul BTE5024 – Anwendungen elektronischer Systeme. Ziel des Projektes ist auf einem [GECKO4-Education](https://gecko-wiki.ti.bfh.ch/gecko4education:start) einen zweikanaligen Funktionsgeneretor mittels [Direct Digital Synthesis](https://de.wikipedia.org/wiki/Direct_Digital_Synthesis) Verfahren zu implementieren.
Weiteres kann aus der [Aufgabenstellung](dds_project_description_de.pdf) entnommen werden.

## Projektablauf
ToDo

## Projektstruktur
```bash
.
├───.vscode     # Optionale Supportdateien um VScode als IDE einzurichten.
├───modelsim    # ModelSim Arbeitsordner, Projektdateien werden mit modelsim_* - Skripts aus dem scripts-Ordner generiert.
├───quartus     # Quartus Arbeitsordner, Projektdateien werden mit quartus_* - Skripts aus dem scripts-Ordner generiert.
├───scripts     # Tcl Skripts um Projektdateien zu generieren.
└───vhdl        # VHDL Quelldateien, beschreiben die benötigten Geni entities.
```
Erweiterte Erläuterungen sind in den jeweiligen `README.md` Dateien der Unterordner gegeben.

## Simulation
Die Simulation der verschiedenen Entitäten / Modulen und ihren Testbenches lässt sich mit folgenden Befehlen / Skripten ausführen. Die Befehle sind im `./modelsim` Unterordner auszuführen.

1. Kompilieren mit ModelSim:
```bash
vsim -c -do ../scripts/modelsim_compile.tcl
```

2. Ausführen der Testbenches:
```bash
vsim -c -do ../scripts/modelsim_test.tcl
```

- (optional) Ansicht der Signalverläufe (öffnet ModelSim GUI):
```bash
vsim -c -do ../scripts/modelsim_open.tcl <testbench_name>
```

## Synthese
Um das Projekt mit Quartus zu synthetisieren sind folgende Befehle einzugeben. Die Befehle sind im `./quartus` Unterordner auszuführen.

1. Generierung der Projektdateien:
```bash
quartus_sh -t ../scripts/quartus_project.tcl
```

2. Synthese:
```bash
quartus_sh -t ../scripts/quartus_compile.tcl
```

3. Volatiles Laden auf das GECKO-Board:
```bash
quartus_pgm -c USB-Blaster --mode jtag --operation='p;geni.sof'
```

- (optional) Permanentes Laden auf das GECKO-Board:
```bash
quartus_cpf -c ../../scripts/quartus_flash.cof; quartus_pgm ../../scripts/quartus_flash.cdf
```

- (optional) Öffnen der Quartus GUI:
```bash
quartus geni.qpf
```

## Bedienung
ToDo

## Stand des Projekts
ToDo

## Lizenz
[MIT](LICENSE) © [N. Leuenberger](mailto:leuen4@bfh.ch), [A. Reusser](mailto:reusa1@bfh.ch).
