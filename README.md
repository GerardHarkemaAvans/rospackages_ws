# rospackages_ws
Installatie stappen:
1. Plaats deze bestanden in de root van de map "rospackages_ws"
1a. Gebruik git
    "cd $HOME"
    "git clone https://github.com/GerardHarkemaAvans/rospackages_ws.git"
    "cd rospackages_ws"
3. Run de het script install_base_packages.sh: "sudo bash install_base_packages.sh"
4. Alle ROS packages worden gedownload, gebuild en gesourced. Bij falen(wegens dependencies) nogmaals een "catkin b" en een "source devel/setup.bash" uitvoeren

Na succesvol installeren is het bash bestand "$HOME/rospackages_ws/devel/setup.bash" aan de .bashrc van de $HOME map toegevoegd. Daarna wordt het bij het opnenen van een terminal steeds opnieuw gesourced.
