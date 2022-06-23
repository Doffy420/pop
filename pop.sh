  sudo apt update
  sudo apt upgrade
  sudo apt install build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev
  cd ~/Downloads
  git clone https://github.com/VaughnValle/blue-sky
  git clone https://github.com/baskerville/bspwm.git
  cd bspwm
  make
  sudo make install
  mkdir ~/.config/bspwm
  cp examples/bspwmrc ~/.config/bspwm
  chmod +x ~/.config/bspwm/bspwmrc
  cd ..
    git clone https://github.com/baskerville/sxhkd.git
  cd sxhkd
  make
  sudo make install
  mkdir ~/.config/sxhkd
  cp ../bspwm/examples/sxhkdrc ~/.config/sxhkd
  cd ..
  sudo apt install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev
  git clone --recursive https://github.com/polybar/polybar

  cd polybar
  mkdir build
  cd build
  cmake ..
  make -j$(nproc)
  sudo make install
  sudo apt install meson libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev
  git clone https://github.com/ibhagwan/picom.git
  cd picom
  git submodule update --init --recursive
  meson --buildtype=release . build
  ninja -C build
  sudo ninja -C build install
  cd ..
  sudo apt install bison flex libstartup-notification0-dev check autotools-dev libpango1.0-dev librsvg2-bin librsvg2-dev libcairo2-dev libglib2.0-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev
  cd ~/Downloads
  wget https://github.com/davatorium/rofi/releases/download/1.5.4/rofi-1.5.4.tar.gz
  wget https://github.com/libcheck/check/releases/download/0.15.1/check-0.15.1.tar.gz
  cd check-0.15.1
  ./configure
  make
  make check
  sudo make install
  cd ..
  cd rofi
  mkdir build && cd build
  ../configure
  make
  sudo make install
  curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
  echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
  sudo apt update && sudo apt install spotify-client
 curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
 sudo chmod a+wr /usr/share/spotify
 sudo chmod a+wr /usr/share/spotify/Apps -R
 spicetify
 spicetify backup apply enable-devtool
 spicetify update
 cd ~/Downloads
 git clone https://github.com/morpheusthewhite/spicetify-themes.git
 cd spicetify-themes
 cp -r * ~/spicetify-cli/Themes
 cd ~/spicetify-cli/Themes/Dribbblish/
 cp dribbblish.js ../../Extensions
 spicetify config extensions dribbblish.js
 spicetify config current_theme Dribbblish color_scheme nord-dark
 spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
 spicetify apply
 sudo apt install alacritty
 cd ~/Downloads
 git clone https://github.com/VaughnValle/blue-sky.git
 mkdir ~/.config/alacritty
 cp blue-sky/alacritty/alacritty.yml ~/.config/alacritty/
 sudo apt install feh
 echo 'feh --bg-fill $HOME/Downloads/blue-sky/wallpapers/blue3.png' >> ~/.config/bspwm/bspwmrc
 mkdir ~/.config/polybar
 cd ~/Downloads/blue-sky/polybar
 cp * -r ~/.config/polybar
 echo '~/.config/polybar/./launch.sh' >> ~/.config/bspwm/bspwmrc
 cd fonts
 sudo cp * /usr/share/fonts/truetype/
 sudo apt install zsh
 sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)
 git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
 mkdir -p ~/.vim/colors
 cd ~/Downloads
 cp blue-sky/nord.vim ~/.vim/colors
 git clone https://github.com/vim-airline/vim-airline.git
 cd vim-airline
 cp * -r ~/.vim
 cd ~/Downloads
 git clone https://github.com/vim-airline/vim-airline-themes.git
 cd vim-airline-themes
 cp * -r ~/.vim
 echo 'colorscheme nord' >> ~/.vimrc
 echo let g:airline_theme=\'base16\' >> ~/.vimrc
 mkdir -p ~/.config/rofi/themes
 cp ~/Downloads/blue-sky/nord.rasi ~/.config/rofi/themes
 rofi-theme-selector #preview the "nord theme" with Enter and apply it with Alt+a
 
 # modify keybindings
 vim ~/.config/sxhkd/sxhkdrc
 # replace dmenu with rofi -show drun
 sudo apt install slim libpam0g-dev libxrandr-dev libfreetype6-dev libimlib2-dev libxft-dev
 sudo dpkg-reconfigure gdm3 #select slim
 sudo vim /usr/include/X11/Xft/Xft.h
 sudo make
 sudo make install
 cd ..
 cd ~/Downloads/blue-sky
 sudo cp slim.conf /etc && sudo cp slimlock.conf /etc
 sudo cp default /usr/share/slim/themes


