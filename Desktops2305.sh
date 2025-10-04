

# Farbige echo-Ausgaben (nur bei echo -e)   https://gist.github.com/lomedil/41b739a74b481c4b0a47fca09f42bea3
KF='\e[0m'			    # Keine Farbe. (Farbe zurücksetzen)
iflil='\e[1;95m'	    # intensives fettes Lila (verschiedene Versionen)
ifgrn='\e[1;92m'	    # intensives fettes Grün (bereits installierte Pakete)
ifblu='\e[1;94m'	    # intensives fettes Blau (neu zu installierende Pakete)
iftks='\e[1;96m'	    # intensives fettes Türkis (Überprüfungsmeldung) 
itks='\e[0;96m'		    # intensives Türkis (Paketnamen)
ifrot='\e[1;91m'	    # intensives fettes Rot (Fehler)
ifyellow='\e[1;93m'     # intensives fettes Gelb

#------------------------------------------------------------------------------------------



: '
Ab den Themes werden hier alle weiteren Installationen festgehalten, damit Redundance bei weiteren Desktopinstallationen vermieden wird.
   Die Komplettinstallation und die Installation weiterer Anwendungen wird weiterhin im entsprechenden Desktop-Script vorgenommen.
'





# Themes und Styles installieren
# --- STABLE trixie
# Themes GTK
themes () {
    echo ""
    echo ${ifgrn} '>>>>> Weitere GTK-Themes werden installiert.'${KF}
    sleep 3
    sudo apt install -y arc-theme blackbird-gtk-theme bluebird-gtk-theme breeze-gtk-theme darkblood-gtk-theme darkcold-gtk-theme darkfire-gtk-theme darkmint-gtk-theme gnome-themes-extra greybird-gtk-theme grub-theme-breeze numix-gtk-theme orchis-gtk-theme xfwm4-theme-breeze yaru-theme-gtk
}

# Themes Qt
themesqt () {
    echo ""
    echo ${ifgrn} '>>>>> Weitere Qt-Themes werden installiert.'${KF}
    sleep 3
    sudo apt install -y adwaita-qt breeze grub-theme-breeze lxqt-themes lxqt-theme-debian materia-kde
}

# Icons
icons () {
    echo ""
    echo ${ifgrn} '>>>>> Weitere Icon-Themes werden installiert.'${KF}
    sleep 3
    sudo apt install -y adwaita-icon-theme breeze-icon-theme deepin-icon-theme elementary-icon-theme elementary-xfce-icon-theme faba-icon-theme faenza-icon-theme gnome-extra-icons gnome-brave-icon-theme gnome-dust-icon-theme gnome-human-icon-theme gnome-icon-theme gnome-icon-theme-nuovo gnome-icon-theme-suede gnome-noble-icon-theme gnome-theme-gilouche gnome-wine-icon-theme moka-icon-theme numix-icon-theme numix-icon-theme-circle obsidian-icon-theme paper-icon-theme papirus-icon-theme tango-icon-theme
}

# Schriftarten
fonts () {
    echo ""
    echo ${ifgrn} '>>>>> Weitere Schriftarten werden installiert.'${KF}
    sleep 3
    sudo apt install -y fonts-adf-verana fonts-anonymous-pro fonts-arundina fonts-cantarell fonts-clear-sans fonts-dejavu fonts-engadget fonts-firacode fonts-font-awesome fonts-fork-awesome fonts-hack fonts-hack-otf fonts-hack-ttf fonts-hack-web fonts-inconsolata fonts-jetbrains-mono fonts-lato fonts-liberation2 fonts-lmodern fonts-mononoki fonts-noto fonts-noto-mono fonts-radisnoir fonts-roboto fonts-roboto-slab fonts-roboto-unhinted fonts-telu fonts-terminus fonts-terminus-otb fonts-ubuntu fonts-ubuntu-console fonts-ubuntu-title ruby-prawn-icon ttf-ancient-fonts ttf-bitstream-vera ttf-mscorefonts-installer ttf-staypuft ttf-summersby ttf-xfree86-nonfree xfonts-base xfonts-encodings xfonts-mona xfonts-scalable xfonts-terminus xfonts-terminus-oblique
}

# ====================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
# --- TESTING forky 2025.09
def themestesting():
        # Themes GTK
        os.system('sudo apt-get install -y arc-theme blackbird-gtk-theme bluebird-gtk-theme breeze-gtk-theme darkblood-gtk-theme darkcold-gtk-theme darkfire-gtk-theme darkmint-gtk-theme gnome-themes-extra greybird-gtk-theme grub-theme-breeze materia-gtk-theme numix-gtk-theme orchis-gtk-theme xfwm4-theme-breeze')
def themesqttesting():
        # Themes Qt
        os.system('sudo apt-get install -y adwaita-qt breeze grub-theme-breeze lxqt-themes lxqt-theme-debian materia-kde')
def iconstesting():
        # Icons
        os.system('sudo apt-get install -y adwaita-icon-theme breeze-icon-theme deepin-icon-theme elementary-icon-theme elementary-xfce-icon-theme faenza-icon-theme gnome-extra-icons gnome-icon-theme gnome-icon-theme-nuovo gnome-icon-theme-suede gnome-dust-icon-theme gnome-human-icon-theme gnome-noble-icon-theme gnome-theme-gilouche gnome-wine-icon-theme human-icon-theme moka-icon-theme numix-icon-theme numix-icon-theme-circle obsidian-icon-theme paper-icon-theme papirus-icon-theme tangerine-icon-theme tango-icon-theme')
def fontstesting():
        # Fonts
        os.system('sudo apt-get install -y fonts-adf-verana fonts-anonymous-pro fonts-arundina fonts-cantarell fonts-clear-sans fonts-dejavu fonts-engadget fonts-firacode fonts-font-awesome fonts-fork-awesome fonts-hack fonts-hack-otf fonts-hack-ttf fonts-hack-web fonts-inconsolata fonts-jetbrains-mono fonts-lato fonts-liberation2 fonts-lmodern fonts-mononoki fonts-noto fonts-noto-mono fonts-radisnoir fonts-roboto fonts-roboto-slab fonts-roboto-unhinted fonts-telu fonts-terminus fonts-terminus-otb fonts-ubuntu fonts-ubuntu-console fonts-ubuntu-title ruby-font-awesome-rails ruby-prawn-icon ttf-ancient-fonts ttf-anonymous-pro ttf-bitstream-vera ttf-mscorefonts-installer ttf-staypuft ttf-summersby ttf-xfree86-nonfree xfonts-base xfonts-encodings xfonts-mona xfonts-scalable xfonts-terminus xfonts-terminus-oblique')





# Displaymanager
def displaymanager(displaymanager):
    if displaymanager=='1':
        print()
        print(green + '>>>>> LightDM - Der Standarddisplaymanager von xfce, budgie, i3 u.a. wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y lightdm lightdm-settings lightdm-gtk-greeter lightdm-gtk-greeter-settings slick-greeter')
        print()
        print(fblue + 'Bitte wählen Sie den zu verwendenden Displaymanager aus der Liste aus.' + reset)
        os.system('sudo dpkg-reconfigure lightdm')
    elif displaymanager=='2':
        print()
        print(green + '>>>>> GDM - Der Standard-Displaymanager von Gnome wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y gdm3')
        print()
        print(fblue + 'Bitte wählen Sie den zu verwendenden Displaymanager aus der Liste aus.' + reset)
        os.system('sudo dpkg-reconfigure gdm3')
    elif displaymanager=='3':
        print()
        print(green + '>>>>> sddm - Der Simple-Desktop-Display-Manager von KDE-Plasma wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y sddm kde-config-sddm sddm-theme-breeze sddm-theme-debian-breeze sddm-theme-elarun sddm-theme-debian-elarun sddm-theme-maui sddm-theme-debian-maui sddm-theme-maya sddm-theme-maldives')
        print()
        print(fblue + 'Bitte wählen Sie den zu verwendenden Displaymanager aus der Liste aus.' + reset)
        os.system('sudo dpkg-reconfigure sddm')
    else:
        pass




# Dateibrowser installieren
def files(files):
    if files=='1':
        print()
        print(green + '>>>>> thunar - Der Dateibrowser des Xfce4-Desktops wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y thunar tumbler tumbler-plugins-extra')
    elif files=='2':
        print()
        print(green + '>>>>> nautlius - Der Dateibrowser des Gnome-Desktop wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y nautilus gnome-sushi')
    elif files=='3':
        print()
        print(green + '>>>>> dolphin - Der Dateibrowser des KDE-Plasma-Desktops wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y dolphin dolphin-plugins ffmpegthumbs')
    elif files=='4':
        print()
        print(green + '>>>>> Es werden zunächst alle Dateibrowser für eine spätere Selektion installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y thunar tumbler tumbler-plugins-extra nautilus gnome-sushi dolphin dolphin-plugins ffmpegthumbs')
    else:
        pass




# Kalenderapplikation(en) installieren
def kalender(kalender):
    if kalender=='1':
        print()
        print(green + '>>>>> gnome-calendar des Gnome-Desktops wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y gnome-calendar')
    elif kalender=='2':
        print()
        print(green + '>>>>> korganizer von KDE-Plasma wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y korganizer')
    elif kalender=='3':
        print()
        print(green + '>>>>> deepin-calendar des Deepin-Systems wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y dde-calendar')
    elif kalender=='4':
        print()
        print(green + '>>>>> Es werden zunächst alle Kalenderapplikationen für eine spätere Selektion installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y gnome-calendar korganizer dde-calendar')
    else:
        pass




# Editoren(en) installieren
def editor(editor):
    if editor=='1':
        print()
        print(green + '>>>>> gedit des Gnome-Desktops wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y gedit gedit-plugins gedit-plugin-bracket-completion gedit-source-code-browser-plugin')
    elif editor=='2':
        print()
        print(green + '>>>>> kate von KDE-Plasma wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y kate')
    elif editor=='3':
        print()
        print(green + '>>>>> geany - Kann über Plugins erweitert werden.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y geany geany-plugins')
    elif editor=='4':
        print()
        print(green + '>>>>> Es werden zunächst alle Editorapplikationen für eine spätere Selektion installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install gedit gedit-plugins gedit-plugin-bracket-completion gedit-source-code-browser-plugin kate geany geany-plugins')
    else:
        pass




# Bildbetrachter installieren
def image(image):
    if image=='1':
        print()
        print(green + '>>>>> eog - Der Bildbetrachter des Gnome-Desktops wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y eog eog-plugins')
    elif image=='2':
        print()
        print(green + '>>>>> gwenview - Der Bildbetrachter des KDE-Plasma-Desktop wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y gwenview')
    elif image=='3':
        print()
        print(green + '>>>>> deepin-image-viewer - Der Bildbetrachter des Deepin-Desktops wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y deepin-image-viewer')
    elif image=='4':
        print()
        print(green + '>>>>> sxiv - Ein schlanker und schneller Bildbetrachter mit vielen Funktionen wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y sxiv')
    elif image=='5':
        print()
        print(green + '>>>>> Es werden zunächst alle Bildbetrachter für eine spätere Selektion installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y eog eog-plugins gwenview deepin-image-viewer sxiv')
    else:
        pass




# PDF-Reader installieren
def pdf(pdf):
    if pdf=='1':
        print()
        print(green + '>>>>> evince - Der PDF-Reader des Gnome-Desktops wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y evince')
    elif pdf=='2':
        print()
        print(green + '>>>>> okular - Der PDF-Reader des KDE-Plasma-Desktop wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y okular okular-backend-odp okular-backend-odt okular-extra-backends')
    elif pdf=='3':
        print()
        print(green + '>>>>> mupdf - Ein schlanker und schneller PDF-Reader Bildbetrachter mit vielen Funktionen wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y mupdf mupdf-tools')
    elif pdf=='4':
        print()
        print(green + '>>>>> Es werden zunächst alle PDF-Reader für eine spätere Selektion installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y evince okular okular-backend-odp okular-backend-odt okular-extra-backends mupdf mupdf-tools')
    else:
        pass




# Tool für Bildschirmfotos installieren
def screen(screen):
    if screen=='1':
        print()
        print(green + '>>>>> scrot für die Kommandozeile wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y scrot')
    elif screen=='2':
        print()
        print(green + '>>>>> flameshot wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y flameshot')
    elif screen=='3':
        print()
        print(green + '>>>>> ksnip wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y ksnip')
    elif screen=='4':
        print()
        print(green + '>>>>> deepin-screenshot vom deepin-System wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y deepin-screenshot')
    elif screen=='5':
        print()
        print(green + '>>>>> Für eine spätere Selektion werden zunächst alle Tools für Screenshots installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y scrot flameshot ksnip deepin-screenshot')
    else:
        pass