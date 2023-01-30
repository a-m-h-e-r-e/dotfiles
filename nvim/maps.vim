" Remap Esc to jk
:imap jk <Esc>

"---------------------------------------
" Tabs

" Open current directory
nmap te :tabedit
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"---------------------------------------
" Windows

" Split window
" nmap ss :split<Return><C-w>w
" nmap sv :vsplit<Return><C-w>w

nmap <Space>- :split<Return><C-w>w
nmap <Space>\ :vsplit<Return><C-w>w
"
" nmap sv :vsplit<Return><C-w>w
" nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Space>h <C-w>h
nmap <Space>k <C-w>k
nmap <Space>j <C-w>j
nmap <Space>l <C-w>l
" map s<left> <C-w>h
" map s<up> <C-w>k
" map s<down> <C-w>j
" map s<right> <C-w>l
" map sh <C-w>h
" map sk <C-w>k
" map sj <C-w>j
" map sl <C-w>l

" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-
"---------------------------------------

" Copy file name to system clipboard
" Convert slashes to backslashes for Windows.
if has('win32')
  nmap cs :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
  nmap cl :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

  " This will copy the path in 8.3 short format, for DOS and Windows 9x
  nmap c8 :let @*=substitute(expand("%:p:8"), "/", "\\", "g")<CR>
else
  nmap cs :let @+=expand("%")<CR>
  nmap cl :let @+=expand("%:p")<CR>
  nmap co :%y+<CR>
endif

