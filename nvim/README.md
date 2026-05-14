# Instalacion de Neovim
https://github.com/neovim/neovim/blob/master/INSTALL.md

# Configuracion de NeoVim en linux

### Ubicacion de init.vim
Para configurar NeoVim es necesario un archivo llamado init, el cual suele estar ubicado en esta ruta: `~/.config/nvim/init.vim`

### Instalar [vim-plug](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
Para instalar los pluggins en neovim es necesario instalar la herramienta `vim-plug` de la siguiente manera:

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

el archivo `init.vim` no solo contiene pluggins, tambien tiene una linea dedicada a usar `vim.plug` para instalarlos

### Instalar los pluggins
Dentro de neovim en modo comando

```
:InstallPlugins
```

### Posible error con COC.NVIM
Se debe ir a la dirección `~/.vim/pluggen/coc.nvim/`
ejecutar 

```
npm install
npm run build
```
