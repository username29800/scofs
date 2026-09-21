#!/bin/sh
#user experience configuration utility - nonroot version
#src="$(cd $cdw_sve_eux_utils_path && pwd)"
dest="$(cd "$1" && pwd)"
mkdir $dest/eux-utils
mkdir $dest/sve-eux-build
mkdir $dest/occasion-backups
cd $dest/sve-eux-build
#echo 'adduse.r/psw.d/
#adduse.r/psw.d/' | passwd $user
#echo vncpasswd - enter a new vnc password
#echo "adusr.wd
#adusr.wd
#n" | vncpasswd
cd $dest
mkdir Downloads Documents Pictures Music Videos Projects
mkdir -p .config/tigervnc
cp -a .zshrc.1 $dest/occasion-backups/.zshrc.1
echo 'export GTK_IM_MODULE=ibus' > .zshrc.1
echo 'export QT_IM_MODULE=ibus' >> .zshrc.1
echo 'export XMODIFIERS=@im=ibus' >> .zshrc.1
echo '# uncomment this line for pulseaudio/pipewire forwarding' >> .zshrc.1
echo '#export PULSE_SERVER=localhost' >> .zshrc.1
echo 'export PATH=$PATH:'"$dest/eux-utils" >> .zshrc.1
echo '# for wayland sessions with ibus (ibus wayland)' >> .zshrc.1
echo '#unset GTK_IM_MODULE' >> .zshrc.1
echo '#unset QT_IM_MODULE' >> .zshrc.1
echo '' >> .zshrc.1
echo 'alias nvim="nvim -u ~/.vimrc"' >> .zshrc.1
echo '' >> .zshrc.1
echo 'export LC_ALL="en_US.utf8"' >> .zshrc.1
echo 'export LANG="en_US.utf8"' >> .zshrc.1
echo '' >> .zshrc.1
cp -a $dest/.profile $dest/occasion-backups/.profile
#echo 'export GTK_IM_MODULE=ibus' > .profile
#echo 'export QT_IM_MODULE=ibus' >> .profile
#echo 'export XMODIFIERS=@im=ibus' >> .profile
#echo 'export PULSE_SERVER=localhost' >> .profile
#echo 'export PATH=$PATH:'"$(cd $dest/utils && pwd):$(cd $dest/init && pwd)" >> .profile
cp -a .config/tigervnc/xstartup $dest/occasion-backups/xstartup
cp .zshrc.1 .config/tigervnc/xstartup
cat .zshrc.1 >> .profile
echo 'xrandr --output VNC-0 --mode 1360x768' >> .config/tigervnc/xstartup
echo 'openbox' >> .config/tigervnc/xstartup
cp -a xstartup $dest/occasion-backups/xstartup-home
cp -a .xinitrc $dest/occasion-backups/.xinitrc
ln -sf .config/tigervnc/xstartup
ln -sf .config/tigervnc/xstartup .xinitrc
echo '#!/bin/sh' > $dest/eux-utils/safefox
echo 'export MOZ_FAKE_NO_SANDBOX=1' >> $dest/eux-utils/safefox
echo 'firefox $1' >> $dest/eux-utils/safefox
chmod 755 $dest/eux-utils/safefox
echo '#!/bin/sh' > $dest/eux-utils/showw
echo 'rofi -show window &' >> $dest/eux-utils/showw
chmod 755 $dest/eux-utils/showw
echo '#!/bin/sh' > $dest/eux-utils/sdclock
echo 'xclock -digital -update 10 &' >> $dest/eux-utils/sdclock
chmod 755 $dest/eux-utils/sdclock
chmod 744 .config/tigervnc/xstartup
mkdir .vnc
cp -a .vnc/xstartup $dest/occasion-backups/xstartup-vnc
cp -a .config/tigervnc/xstartup .vnc/xstartup
#mkdir /usr/share/xsessions
#echo '[Desktop Entry]' > /usr/share/xsessions/custom.desktop
#echo 'Name=Custom' >> /usr/share/xsessions/custom.desktop
#echo 'Exec=/home/'"$user"'/xstartup' >> /usr/share/xsessions/custom.desktop
#echo 'Type=application' >> /usr/share/xsessions/custom.desktop
#cp $src/utils/swsh $dest/swsh
echo "LD_PRELOAD=/system/lib64/libskcodec.so pulseaudio --load='module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1'" > $dest/eux-utils/sndsrv
sed -i 1i"#\!/bin/sh" $dest/eux-utils/sndsrv
chmod 755 $dest/eux-utils/sndsrv
cd $dest/sve-eux-build
#git clone https://github.com/naver/d2codingfont
#git clone https://github.com/ohmyzsh/ohmyzsh
#mkdir $dest/.fonts
#unzip d2codingfont/D2Coding-Ver1.3.2*.zip
#cp D2Coding/*.ttf $dest/.fonts
#fc-cache
cp -a $dest/.vimrc $dest/occasion-backups/.vimrc
echo "set nocp number autoindent smartindent tabstop=2 shiftwidth=2 expandtab wildmenu" > $dest/.vimrc
echo "set cursorline ruler laststatus=2 showmode showcmd" >> $dest/.vimrc
echo "set noundofile swapfile hlsearch" >> $dest/.vimrc
echo "set numberwidth=5 showmatch nowrap nolist nolinebreak" >> $dest/.vimrc
echo "set backspace=start,indent,eol fileformats=unix,dos fileencodings=utf-8 hidden bufhidden=hide updatetime=1000 conceallevel=0 nomodeline" >> $dest/.vimrc
echo 'set mouse=a' >> $dest/.vimrc
echo 'syn on' >> $dest/.vimrc
echo '' >> $dest/.vimrc


#chown -R $user $dest/eux-utils
#chmod -R 755 $dest/sve-eux-build/ohmyzsh
#sed -ir 's,^.*zsh -l$,#&,' $dest/sve-eux-build/ohmyzsh/tools/install.sh
#sh $dest/sve-eux-build/ohmyzsh/tools/install.sh
cp -a $dest/.zshrc $dest/occasion-backups/.zshrc
cat $dest/.zshrc.1 >> $dest/.zshrc
#sed -ir "$(cat $dest/.zshrc | grep -n ^ZSH_THEME | head -n1 | cut -d: -f-1)"'s,=.*\?$,="agnoster",' $dest/.zshrc

pp="Occasion UX:"
echo ""
echo "$pp Congratulations. Occasion UX is now installed for user '${whoami}'."
echo "$pp Occasion UX provides:"
echo "$pp 1. Custom .xinitrc; Tailored for VNC sessions, openbox by default"
echo "$pp 2. Custom .vimrc; Minimalist Basics for writing code"
echo "$pp 3. Env-Var setup; Default immodule set to ibus"
echo "$pp 4. Path extension; Occasion utilities under sve/build/ are included in PATH"
echo "$pp 5. Workarounds; safefox (firefox without sandbox), sdclock (digital xclock), and sndsrv (pulseaudio server for container host)"
echo ""
echo "$pp Check out .profile and .zshrc for details"
echo "$pp NOTE: Previous configs are stored in occasion-backups under $dest"
echo "$pp TIP: If immodule envvar does not work, try:"
echo "$pp      ~$ cat .zshrc.1 >> .bashrc"
echo "$pp      (or your shell config)"
echo ""
echo "$pp Good Luck, Have Fun! :D"
