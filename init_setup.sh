# sudo add-apt-repository -y -n ppa:sicklylife/ppa
sudo apt update
sudo apt upgrade -y

# cancel automatic updates 
sudo dpkg-reconfigure --priority=low unattended-upgrades

# tools
sudo apt install -y build-essential libgtk-3-dev
sudo apt install -y git curl vim
sudo apt install -y net-tools
sudo apt install -y ssh

# git
echo "source /usr/share/bash-completion/completions/git" >> ~/.bashrc

# slack(check latest ver)
# sudo snap install slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.2.0-amd64.deb
sudo apt install -y ./slack-desktop-*.deb
rm slack-desktop-4.2.0-amd64.deb

# discord
sudo snap install discord

# onenote
sudo snap install onenote-desktop

# chrome
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update
sudo apt install google-chrome-stable

# for Python(check latest ver)
wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
bash Anaconda3-2022.05-Linux-x86_64.sh
rm -f Anaconda3-2022.05-Linux-x86_64.sh

# vscode
curl -L https://go.microsoft.com/fwlink/?LinkID=760868 -o vscode.deb
sudo apt install ./vscode.deb
rm -f vscode.deb

source ~/.bashrc

