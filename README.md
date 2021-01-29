# Dafu's Vim config

>  This is my simple ubuntu environment config file, but will be enhanced later.



Here is

- My vimrc file 

    - basic vim setting
- vim plugins for Python
  
  - [gruvbox](https://github.com/morhetz/gruvbox) -- color scheme
  - [vim-airline](https://github.com/vim-airline/vim-airline) -- vim status line enhance
  - [indentLine](https://github.com/Yggdroot/indentLine) -- display thin vertical lines at each indentation level
    - colorscheme:  "grubbox"
  - [jedi-vim](https://github.com/davidhalter/jedi-vim)  - Python auto-completion
  
- tmux config

    > reference: [Tmux使用手册](http://louiszhai.github.io/2017/09/30/tmux/)

    - common tmux setting
    - color scheme: [tmux-themepack](https://github.com/jimeh/tmux-themepack#tmux-themepack)



# Installation Manual

- 终端主题: 执行`terminal/install_custom_terminal_theme.sh`
- zsh主题: 执行`zsh/install_zeta_zsh_theme.sh`



# Problems when using 

1. `gruvbox`  doesn't work caused by 256-colors isn't supported

   > reference: [[Gnome-terminal vim gruvbox closed](https://askubuntu.com/questions/500821/gnome-terminal-vim-gruvbox)]

   - add `se t_Co=256` to vimrc and restart vim