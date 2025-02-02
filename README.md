# Huawei Y6 2019 Debloat Script

Dit script helpt je om je Huawei Y6 2019 te ontdoen van onnodige applicaties (debloat).

## Stappen

### Stap 1: Activeer Ontwikkelaarsopties
Ga naar `Instellingen -> Over de telefoon` en druk 5 keer op het buildnummer.

### Stap 2: Schakel USB-foutopsporing in
Ga naar `Instellingen -> Ontwikkelaarsopties` en schakel `USB-debugging` in.

### Stap 3: Installeer Git, Curl en ADB
Installeer de benodigde tools afhankelijk van je besturingssysteem:

- **Debian-gebaseerd:**
    ```sh
    sudo apt install git curl adb
    ```
- **Fedora-gebaseerd:**
    ```sh
    sudo dnf install git curl android-tools
    ```
- **Arch-gebaseerd:**
    ```sh
    sudo pacman -S git curl android-tools
    ```

### Stap 4: Clone de Repository en Maak het Script Uitvoerbaar
Clone de repository en maak het script uitvoerbaar met de volgende commando's:
```sh
git clone https://github.com/darknet444/Huawei-Y6-2019-MRD-LX1-Debloat.git
chmod +x ./Huawei-Y6-2019-MRD-LX1-Debloat/Huawei-Y6-2019-MRD-LX1-Debloat.sh
```
### Stap 5: Voer het Script uit
```sh
./Huawei-Y6-2019-MRD-LX1-Debloat/Huawei-Y6-2019-MRD-LX1-Debloat.sh
```

## Opmerkingen
Dit script is gratis te gebruiken en bedoeld om te helpen bij het beheren van je apparaat. Gebruik het op eigen risico.

## Licentie
Dit project is gelicentieerd onder de MIT-licentie - zie het LICENSE-bestand voor details.
