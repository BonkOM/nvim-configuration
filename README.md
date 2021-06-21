# Nvim configuration
mi propia configuración de neovim

### Requerimentos

**Neovim**
Arch
`sudo pacman -S neovim`
Debian
`sudo apt install neovim`
REHL
`sudo dnf install neovim`

**Vim-Plug**
Unix Neovim
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

**Python3**
Arch
`sudo pacman -S python`
Debian
`sudo apt install python`
REHL
`sudo dnf install python`

**Java Open/JDK**
Arch
`sudo pacman -S jdk-openjdk`
Debian
`sudo apt install jdk-openjdk`
REHL
`sudo dnf install jdk-openjdk`

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
