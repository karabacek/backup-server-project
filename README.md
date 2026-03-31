# Zálohovací server pomocí rsync

Tento projekt implementuje jednoduchý zálohovací server běžící na Linuxu (Debian) ve VirtualBoxu. Klientem je počítač s Windows, který využívá WSL a nástroj rsync k zálohování souborů přes zabezpečené SSH spojení.


## Použité technologie

- Debian GNU/Linux (server)
- VirtualBox
- rsync
- SSH
- WSL (Windows Subsystem for Linux)


## Architektura systému

Windows (WSL) → rsync → Debian server

Data jsou ukládána do adresáře:
/srv/backup/


##  Ukázkový zálohovací skript

#!/bin/bash

SOURCE="/mnt/c/Users/Uživatel/Dokumenty/"
DEST="backup@192.168.0.xxx:/srv/backup/"

rsync -avz --progress --delete $SOURCE $DEST


## Struktura repozitáře

backup-server-rsync/
│
├─ README.md
├─ skript.sh
├─ dokumentace.pdf
├─ Plakát.pdf
└─ Fotky/
   ├─ server před rsync.png
   ├─ spuštění příkazu.png
   └─ server po rsync.png


## Screenshoty

### 1. /srv/backup/ před zálohováním  
Adresář před použitím příkazu rsync.

### 2. Spuštění rsync z Windows (WSL)  
rsync přenáší soubory z Windows na Debian server.

### 3. /srv/backup/ po záloze  
Adresář obsahuje soubory úspěšně přenesené pomocí rsync.

Všechny obrázky najdete ve složce **/Fotky**. 


## Autor
David Karabáček
2026