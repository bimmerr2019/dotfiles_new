" Plugins
call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    Plug 'moll/vim-bbye'
    Plug 'simeji/winresizer'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'simnalamburt/vim-mundo'
"    Plug 'bluz71/vim-nightfly-guicolors'
"    Plug 'ap/vim-css-color' "Displays a preview of colors with CSS
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary' " (gc) keystroke to comment automatically
    " For coc.vim to work, you'll need nodejs and yarn (both available " in official repos).
    " Only bash-language-server is configured with coc.vim. See the file coc-settings.json.
    " To make it work, you need to install bash-language-server: `sudo pacman -S bash-language-server`
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'yaegassy/coc-nginx', {'do': 'yarn install " --frozen-lockfile'}

    " Collection of snippets
    " Plug 'honza/vim-snippets'

    " Compiler and linter
    " Plug 'neomake/neomake'

    " Theme gruvbox
    Plug 'morhetz/gruvbox'
    Plug 'mhinz/vim-startify' " startify for startup cow
    " Status bar
"    Plug 'itchyny/lightline.vim'

    "tmux
    Plug 'wellle/tmux-complete.vim'
    Plug 'tmux-plugins/vim-tmux'
    Plug 'christoomey/vim-tmux-navigator'

    " Man pages in Neovim
    Plug 'jez/vim-superman'
    Plug 'farmergreg/vim-lastplace'
    Plug 'ptzz/lf.vim'
    Plug 'voldikss/vim-floaterm'
call plug#end()

set clipboard^=unnamed,unnamedplus
set splitbelow splitright
set number relativenumber nowrap
set spell spelllang=en_us
set scrolloff=11

" set background=dark

au ColorScheme * hi Normal ctermbg=none guibg=none

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"Remap splits navigation to just CTRL-hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Remap tabs navigation
nnoremap <C-n>  :tabn<cr>
nnoremap <C-t>  :tabnew<cr>
nnoremap <C-x>  :tabc<cr>

"Ctrl-C and Ctrl-V for copy and paste to clipboard:
"vnoremap <C-c> "*y :let @+=@*<CR>
"map <C-v> "+P

" reminder: leader is "\" so \tt gives a new terminal
nnoremap <Leader>tt :vnew term://zsh<CR>
nnoremap <Leader>pv :set nosplitright<bar> :vsp<bar> :Ex<bar> :vertical resize 30<bar> :set splitright<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader><CR> :so ~/dotfiles/nvim/init.vim<CR>
nnoremap <Leader>v :e ~/dotfiles/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" Change 2 split windows from vert to horiz or horiz to vert 
nnoremap <Leader>th <C-w>t<C-w>H 
nnoremap <Leader>tk <C-w>t<C-w>K 

" Removes pipes | that act as seperators on splits 
set fillchars+=vert:\

set noswapfile

" save undo trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

" use 4 spaces instead of tab ()
" copy indent from current line when starting a new line

set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set hidden
set wildmenu
set path +=**

" Show substitution
set inccommand=nosplit

nnoremap <space> <nop>
let mapleader = "\<space>"

nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;new tab

" Config for chrisbra/csv.vim
"augroup filetype_csv
"    autocmd! 
"
"    autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
"    autocmd BufWritePre *.csv :%UnArrangeColumn
"augroup END

" Config for fzf.vim (BONUS :D)
nnoremap <leader>g :Files<cr>
nnoremap <leader>h :History<cr>
nnoremap <leader><space> :Rg<cr>
nnoremap <c-w>h <c-w>s

"###########
"# coc.vim #
"###########

" Coc extensions (need to install yarn or npm, both available in official repo of Arch Linux)
" let g:coc_global_extensions = [
"            \ 'coc-snippets',
"            \]

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
    " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
"            \ pumvisible() ? "\<C-n>" :
"            \ <SID>check_back_space() ? "\<TAB>" :
"            \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
"    let col = col('.') - 1
"    return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

" Use <c-space> to trigger completion.
"if has('nvim')
"    inoremap <silent><expr> <c-space> coc#refresh()
"else
"    inoremap <silent><expr> <c-@> coc#refresh()
"endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"###########
"# Neomake #
"###########

" Needs to install shellcheck and vint: `sudo pacman -S shellcheck vint`

" Neomake signs in the gutter
" let g:neomake_error_sign = {'text': '', 'texthl': 'NeomakeErrorSign'}
" let g:neomake_warning_sign = {
"             \   'text': '',
"             \   'texthl': 'NeomakeWarningSign',
"             \ }
" let g:neomake_message_sign = {
"             \   'text': '',
"             \   'texthl': 'NeomakeWarningSign',
"             \ }
" let g:neomake_info_sign = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}
" 
" " update neomake when save file
" call neomake#configure#automake('w')
" 
" command! -bang -nargs=* -complete=file Make NeomakeProject <args>
" 
" " Enable linters
" let g:neomake_sh_enabled_makers = ['shellcheck']
" let g:neomake_vim_enabled_makers = ['vint']

"###########
"# Gruvbox #
"###########

"autocmd vimenter * ++nested colorscheme gruvbox 


" un-highlight when Ctrl-C is pressed
nnoremap <silent> <c-c> <Cmd>nohlsearch<cr>

" added for mutt and text_flowed
setl tw=72
setl fo=watqc
setl nojs
setl nosmartindent
setl list
"set listchars=trail:*

set termguicolors | "Use the right colors
colorscheme desert
hi NonText guibg=bg

" Diff in Neovim needs a bit of adjustment for readability
highlight DiffAdd  guibg=#B23456
highlight DiffText guibg=#654321

" vim-airline customize
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

nnoremap <F5> :MundoToggle<CR>
