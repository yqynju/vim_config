" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-scripts/a.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'sickill/vim-monokai'
Plug 'kien/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'majutsushi/tagbar'
Plug 'skywind3000/gutentags_plus'
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/TagHighlight'
Plug 'tpope/vim-commentary'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-unimpaired'
Plug 'SirVer/ultisnips'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'easymotion/vim-easymotion'
call plug#end()

let mapleader=","
map <Leader>ee :e C:\Users\XXXXX\_vimrc<CR>
map <Leader>ed :e C:\Users\XXXXX\.vim\plugged\.ycm_extra_conf.py<CR>
nnoremap F5 :source $MYVIMRC<CR>
syntax enable
filetype plugin on
filetype plugin indent on
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    "have Vim load indentation rules and plugins according to the detected filetype
    filetype plugin indent on
endif
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black



" session
let g:session_autosave="no"
let g:fencview_autodetect=0
language messages zh_CN.utf-8
syntax on
syntax enable
filetype on
filetype plugin on
colorscheme solarized "monokai "solarized
filetype indent on
autocmd FileType make set noexpandtab
map j gj
map k gk
hi linenr ctermfg=darkblue
autocmd BufReadPost * normal! g`"


set ambiwidth=double
set autochdir
set autoindent
set autoread
set background=dark
set backspace=2
set cindent
set clipboard+=unnamed " shared clipboard with win
set colorcolumn=81
set completeopt=longest,menu
set completeopt=menu,menuone
"开启光亮光标行
set cursorline
hi CursorLine   cterm=none ctermbg=none ctermfg=none "guifg=#5fff87  "#FF6A6A
"开启高亮光标列
set cursorcolumn
hi CursorColumn cterm=none ctermbg=none ctermfg=none "guifg=#5fff87  "#FF6A6A
set encoding=utf-8
set expandtab
set fdm=indent
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,chinese,cp936,ucs-bom
set foldcolumn=2
set foldcolumn=2 " ?????۵?À¸????
set foldlevel=100 " ????vimʱ??Ҫ?Զ??۵?????
set foldlevelstart=99
set foldmethod=indent
set gcr=a:block-blinkon0
set guifont=Consolas:h18
set guioptions-=l
set guioptions-=L
set guioptions-=m
set guioptions-=r
set guioptions-=R
set guioptions-=R
set guioptions-=T
set helplang=cn
set hidden
set history=1000
set hlsearch
set ignorecase
set ignorecase smartcase
set incsearch
set laststatus=2
set magic
set modeline
set mouse=a
set nobackup
set nocompatible
set nocp
set nolist
set noswapfile
set noundofile
set nowb
set nowrap
set nowrapscan
set number
set ruler
set scrolloff=10
set scrolloff=4
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smartcase
set smartindent
set smarttab
set softtabstop=4
set tabstop=4
"set tags=./tags;,tags
set t_Co=256
set timeoutlen=1000 ttimeoutlen=0
set whichwrap=b,s,<,>,[,]
set wildmenu
set wrap


nmap w= :resize +15<CR>
nmap w- :resize -15<CR>
nmap w, :vertical resize -50<CR>
nmap w. :vertical resize +50<CR>


if has("autocmd")
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
\| exe "normal g'\"" | endif
endif

" easymotion 
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}` 
nmap s <Plug>(easymotion-overwin-f)
" or `s{char}{char}{label}`
"nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" A.vim
noremap <Leader>ss :A<cr>

" NERDTree
silent! map <F2> :NERDTreeFind<CR>
let g:NERDTreeWinSize=20
let NERDTreeIgnore = ['\.pyc$', '\.o$']

" airline
let g:airline#extensions#tabline#enabled = 1

" gutentags_plus and vim-gutentags
let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_project_root = ['.git', '.svn', '.hg', '.project', '.root',]
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_plus_switch = 1
let g:gutentags_auto_add_gtags_cscope = 0
let s:vim_tags = expand('~/.cache/tags')
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']



" leaderF
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_RootMarkers = ['.git', '.svn', '.hg']
let g:Lf_DefaultExternalTool='rg'
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
noremap <Leader>ff :LeaderfFunction!<cr>
noremap <Leader>fb :LeaderfBuffer<cr>
noremap <Leader>ft :LeaderfTag<cr>
noremap <Leader>fm :LeaderfMru<cr>
noremap <Leader>fl :LeaderfLine<cr>
" find a symbol
noremap <Leader>fs :<C-U><C-R>=printf("Leaderf! rg -e ")<cr>
noremap <Leader>fww :<C-U><C-R>=printf("Leaderf! rg -w -e ")<cr>
noremap <Leader>fw :<C-U><C-R>=printf("Leaderf! rg -w -e %s ", expand("<cword>"))<cr><cr>
" search word under cursor, the pattern is treated as regex, and enter normal mode directly
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<cr><cr>
" search word under cursor, the pattern is treated as regex, append the result to previous search results.
noremap <C-G> :<C-U><C-R>=printf("Leaderf! rg --append -e %s ", expand("<cword>"))<cr><cr>
" search word under cursor literally only in current buffer
noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg -F --current-buffer -e %s ", expand("<cword>"))<cr><cr>
" search word under cursor literally in all listed buffers
"noremap <C-D> :<C-U><C-R>=printf("Leaderf! rg -F --all-buffers -e %s ", expand("<cword>"))<cr><cr>
" search visually selected text literally, don't quit LeaderF after accepting an entry
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F --stayOpen -e %s ", leaderf#Rg#visual())<cr><cr>
" recall last search. If the result window is closed, reopen it.
noremap go :<C-U>Leaderf! rg --recall<cr>
" search word under cursor in *.h and *.cpp files.
noremap <Leader>a :<C-U><C-R>=printf("Leaderf! rg -e %s -g *.h -g *.cpp", expand("<cword>"))<cr><cr>
" the same as above
noremap <Leader>a :<C-U><C-R>=printf("Leaderf! rg -e %s -g *.{h,cpp}", expand("<cword>"))<cr><cr>
" search word under cursor in cpp and java files.
noremap <Leader>b :<C-U><C-R>=printf("Leaderf! rg -e %s -t cpp -t java", expand("<cword>"))<cr><cr>
" search word under cursor in cpp files, exclude the *.hpp files
noremap <Leader>c :<C-U><C-R>=printf("Leaderf! rg -e %s -t cpp -g !*.hpp", expand("<cword>"))<cr><cr>


" YCM
"let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_key_invoke_completion = '<c-y>'
set completeopt=menu,menuone
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_clangd_binary_path = exepath("clangd")
noremap <c-y> <NOP>
let g:ycm_semantic_triggers = {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }
			
nnoremap <leader>go :YcmCompleter GoTo<CR>
nnoremap <Leader>gc :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <Leader>gi :YcmCompleter GoToInclude<CR>
nnoremap <Leader>gp :YcmCompleter GoToImprecise<CR>
nnoremap <Leader>fi  :YcmCompleter FixIt<CR>

"source insight
nnoremap <silent> <F12> :!start "C:\Program Files (x86)\Source Insight 4.0\sourceinsight4.exe" -i +<C-R>=expand(line("."))<CR> %<CR>

"full screen
noremap <f11> <esc>:call libcallnr('gvim_fullscreen.dll', 'ToggleFullscreen', 0)<cr>
noremap <f10> <esc>:call libcallnr('gvim_fullscreen.dll', 'ToggleTransparency', "255,0")<cr>

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
