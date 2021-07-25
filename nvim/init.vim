let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'java', 'c', 'cpp', 'php', 'sql']
let g:pandoc#syntax#codeblocks#embeds#langs = ["php", "html", "bash=sh", "java", "c", "cpp", "python", "sql"]
let g:markdown_syntax_conceal = 1
let g:markdown_minlines = 100
let g:tex_flavor='latex'

nnoremap <silent> <space> :NERDTreeToggle<CR>

" settings
set mouse=a
let mapleader=";"
set number relativenumber
hi LineNr ctermfg=4
hi CursorLine cterm=NONE ctermbg=1=6
hi CursorLineNr ctermbg=NONE ctermfg=5 cterm=NONE

" python syntax highlighting
let g:python_highlightall = 1

" coc
inoremap <expr> <Tab> pumvisible() ? "<C-n>" : "<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "<C-p>" : "<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "<C-y>" : "<C-g>u<CR>"

" use ctrl + slash to comment
nmap <C-> <leader>c<Space>
vmap <C-_> <leader>c<Space>

" compile and open laTex
autocmd FileType tex noremap <buffer> <F5> :update<bar>!xelatex % && zathura %:r.pdf<CR>

" NERDTreeToggle
let NERDTreeQuitOnOpen=1
let NERDTreeMapActivateNode='<ENTER>'
let NERDTreeMapOpenInTab='l'

source $HOME/.config/nvim/configs/plugins.vim
source $HOME/.config/nvim/configs/basic.vim
source $HOME/.config/nvim/configs/statusline.vim
source $HOME/.config/nvim/configs/appearance.vim
source $HOME/.config/nvim/configs/theme.vim
