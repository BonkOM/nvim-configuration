# Nvim configuration
mi propia configuración de neovim

### Requerimentos

**Neovim**<br />
Arch<br />
`sudo pacman -S neovim`<br />
Debian<br />
`sudo apt install neovim`<br />
REHL<br />
`sudo dnf install neovim`<br />

**Vim-Plug**<br />
Unix Neovim<br />
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`<br />

**Python3**<br />
Arch<br />
`sudo pacman -S python`<br />
Debian<br />
`sudo apt install python`<br />
REHL<br />
`sudo dnf install python`<br />

**Java Open/JDK**<br />
Arch<br />
`sudo pacman -S jdk-openjdk`<br />
Debian<br />
`sudo apt install openjdk-jdk`<br />
REHL<br />
`sudo dnf install openjdk.x86_64`<br />

**Jedi**<br />
`pip install jedi`<br />

## Instalacion
Mi configuracion esta creada para la edicion de texto común pero tambien para el manejo de codigo python y java script por lo que requerira lo anteriormente mencionado preinstalado.
El proceso de instalacion es el siguiente:
- crear el directorio nvim en .config
`mkdir ~/.config/nvim`
- crear el archivo init.vim
`nvim init.vim`
- cargar el contenido del archivo init.vim
- guardar el archivo y cargarlo en neovim
`:w`
`:so %`
- ignorar el error y correr el comando de instalacion
`:PlugInstall`
- una vez terminado cargar nuevamente neovim
`:so %`

listo, ya puedes usar neovim  de una manera mas comoda.
