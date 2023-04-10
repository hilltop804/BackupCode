#!/bin/bash
#Install/update emulator packages

flatpak --if-not-exists --no-gpg-verify --user remote-add GBA ./gbaemu
flatpak --if-not-exists --no-gpg-verify --user remote-add GBC ./gbcemu
flatpak --if-not-exists --no-gpg-verify --user remote-add MD ./mdemu
flatpak --if-not-exists --no-gpg-verify --user remote-add NEO ./neoemu
flatpak --if-not-exists --no-gpg-verify --user remote-add NES ./nesemu
flatpak --if-not-exists --no-gpg-verify --user remote-add NGP ./ngpemu
flatpak --if-not-exists --no-gpg-verify --user remote-add Snes9x ./s9xp

flatpak install -y --or-update GBA org.ExPlusAlpha.gbaemu
flatpak install -y --or-update GBC org.ExPlusAlpha.gbcemu
flatpak install -y --or-update MD org.ExPlusAlpha.mdemu
flatpak install -y --or-update NEO org.ExPlusAlpha.neoemu
flatpak install -y --or-update NES org.ExPlusAlpha.nesemu
flatpak install -y --or-update NGP org.ExPlusAlpha.ngpemu
flatpak install -y --or-update Snes9x org.ExPlusAlpha.s9xp

if [ ! -d /home/deck/.local/share/icons/exemu ]; then mkdir /home/deck/.local/share/icons/exemu; fi
cp ./Icons/* /home/deck/.local/share/icons/exemu

if [ ! -d /home/deck/.local/share/applications ]; then mkdir /home/deck/.local/share/applications; fi
cp ./Entries/* /home/deck/.local/share/applications