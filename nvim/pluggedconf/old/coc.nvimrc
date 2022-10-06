" Coc extensions

set updatetime=300

let g:coc_global_extensions = [
            \ 'coc-css',
            \ 'coc-html',
            \ 'coc-json',
            \ 'coc-yaml',
            \ 'coc-godot',
            \ 'coc-sql',
            \ 'coc-xml',
            \ 'coc-go',
            \ 'coc-db',
            \ 'coc-snippets',
            \ 'coc-lua',
            \ 'coc-phpactor',
            \ 'coc-php-cs-fixer',
            \ 'coc-tsserver',
            \ 'coc-eslint',
            \ 'coc-pyright',
            \ 'coc-metals',
            \ 'coc-sh',
            \ 'coc-pyright',
            \ 'coc-vimtex',
            \]

" \ 'coc-snippets',
" \ 'coc-markmap',


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr><C-j>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <A-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent><leader>] <Plug>(coc-definition)
nmap <silent><leader>gd <Plug>(coc-definition)
nmap <silent><leader>gt <Plug>(coc-type-definition)
nmap <silent><leader>gi <Plug>(coc-implementation)
nmap <silent><leader>gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for rename current word
nmap <leader>crn <Plug>(coc-rename)
nmap <leader>cac  <Plug>(coc-codeaction)

nnoremap <leader>cpr :CocSearch <C-R>=expand("<cword>")<CR><CR>

augroup coc
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')
