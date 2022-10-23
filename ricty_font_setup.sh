sudo apt install -y fontforge
mkdir ~/.fonts

wget http://levien.com/type/myfonts/Inconsolata.otf
cp Inconsolata.otf ~/.fonts

wget https://ja.osdn.net/projects/mix-mplus-ipa/downloads/72511/migu-1m-20200307.zip
unzip migu-1m-20200307.zip
cp migu-1m-20200307/*.ttf ~/.fonts

git clone https://github.com/metalefty/Ricty.git
cd Ricty
sh ricty_generator.sh auto

cp *.ttf ~/.fonts
fc-cache -fv

cd ..
rm -fr Ricty
rm -fr migu-*
rm -f Inconsolata.otf
