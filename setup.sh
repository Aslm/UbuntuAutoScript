#!/bin/bash  

echo "Start to configuration"

#update system
sudo apt-get update
sudo apt-get upgrade -y

# install git
sudo apt-get install git -y

#install gnome desktop
sudo apt-get install gnome-shell -y
sudo apt-get install gnome-tweak-tool -y


# install dash to dock
mkdir ~/ubuntuSetup
cd ~/ubuntuSetup/
git clone https://github.com/micheleg/dash-to-dock.git
cd ~/ubuntuSetup/dash-to-dock
make 
make install

# install gnome theme
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update -y
sudo apt-get install arc-theme -y

sudo add-apt-repository ppa:noobslab/icons -y
sudo apt-get update -y
sudo apt-get install flat-remix-icons -y


#install tool
apt-get install curl -y
apt-get install gdebi -y

# install nodejs and npm
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

#install markdown editor tepora
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE -y
sudo add-apt-repository 'deb http://typora.io linux/' -y
sudo apt-get update -y
sudo apt-get install typora -y


#######################################################################
# INSTALL SOFTWARE                                                    #
# VSCODE                                                              #
# OXS ARC THEME                                                       #
# GENYMOTION                                                          #
# SKYPE                                                               #
# ANDROID STUDIO                                                      #
# INTELLJI                                                            #
####################################################################### 


mkdir /SW

# install oracle jdk
echo "ready configure oracle java jdk"
cd ~/ubuntuSetup/
sudo wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz
tar -xvzf jdk-8u151-linux-x64.tar.gz
sudo mv jdk1.8.0_151/ /SW/jdk1.8.0_151

sudo echo "export JAVA_HOME=SW/jdk1.8.0_151">> /etc/profile
sudo echo "export JRE_HOME=\${JAVA_HOME}/jre">> /etc/profile
sudo echo "export CLASSPATH=.:\${JAVA_HOME}/lib:\${JRE_HOME}/lib">> /etc/profile
sudo echo "export PATH=\${JAVA_HOME}/bin:\$PATH">> /etc/profile
source /etc/profile
echo "finish configure oracle java jdk"


# install software
cd ~/ubuntuSetup/Sofrware

sudo dpkg -i skypeforlinux-64.deb
sudo dpkg -i code_1.17.2-1508162334_amd64.deb
sudo dpkg -i virtualbox-5.2_5.2.0-118431_Ubuntu_xenial_amd64.deb
sudo dpkg -i osx-arc-collection_1.4.3_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

#install genymotion
chmod +x genymotion-2.10.0-linux_x64.bin
sudo ./genymotion-2.10.0-linux_x64.bin

#install android studio
cd ~/Downloads
sudo wget https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/android-studio-ide-162.4069837-linux.zip
tar -xvzf android-studio-ide-162.4069837-linux.zip
sudo mv android-studio/ /SW/android-studio
cd /SW/android-studio/bin
./studio.sh 

#install intellij
tar -xvzf ideaIU-2017.2.5.tar.gz
sudo mv idea-IU-172.4343.14 /SW/idea-IU-172.4343.14
cd /SW//SW/idea-IU-172.4343.14/bin
./idea.sh 




