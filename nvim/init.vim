" this will install vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif
    
call plug#begin()
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} 
  Plug 'jiangmiao/auto-pairs
  Plug 'yuezk/vim-js'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty' 
  Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-snippets', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-eslint', 'coc-pairs']
