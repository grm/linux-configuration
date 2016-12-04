
if [ $TERM != "screen" ]
	exec screen -dRRS main
end

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish


set -g theme_nerd_fonts yes

set -g theme_title_display_process yes
set -g theme_title_display_path yes

function vpnnet 
	title vpnnet 
	sudo openvpn /home/grm/VPN/jklein/jklein@ymagis.com.ovpn
end
 
function vpncom 
	title vpncom 
	sudo openvpn /home/grm/VPN/jeremie.klein/jeremie.klein.ovpn
end
