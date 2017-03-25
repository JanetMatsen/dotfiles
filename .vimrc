execute pathogen#infect()

" clear out trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" run the script being edited with U
noremap U :!./%<CR>


syntax on

set cryptmethod=blowfish
"set mouse=a
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

let &t_Co=256
let g:solarized_termcolors = 256

if has('gui_running')
    colorscheme solarized
else
    colorscheme wombat256mod
endif
