# minimal-vimrc-coc
Minimalistyczny .vimrc z Coc.nvim i obsługą PHP, Python, JS, bash

Konfiguracja Vim z Coc.nvim (autouzupełnianie jak VS Code)

Wymagania systemowe
```bash
sudo apt update
sudo apt install vim git curl nodejs npm
```
Jeśli nodejs jest zbyt stary
```bash
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs
```
Instalacja managera wtyczek vin-plug
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```	
Umieść kod z vimrc w .vimrc
************************
***************************
Instalacja wtyczek.

W vimie uruchom
```bash
:PlugInstall
```
Instalacja obsługi języków 


Instalacja krok po kroku (gdy już masz ten .vimrc)

1. Uruchom Vima i wpisz:
```bash
:PlugInstall
```
2. Poczekaj aż coc.nvim i yaegassy/coc-intelephense się zainstalują.

3. Jeśli masz błąd z yarn, doinstaluj yarn: 

```bash
sudo npm install -g yarn
```

4. Po instalacji uruchom ponownie Vima — Coc sam uruchomi serwery językowe (PHP, Python, JS, HTML ) itd.
