call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'ryanoasis/vim-devicons'
	Plug 'airblade/vim-gitgutter'
call plug#end()

" COC
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-css',
  \  'coc-eslint',
  \  'coc-prettier'
  \ ]
" End

" Keymaps
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)
" end

set number
set smarttab
set cindent
set updatetime=300
nnoremap <C-s> :w<CR>
nnoremap <C-M> :wq<CR>
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

