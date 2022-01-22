:syntax on
:set number
:set relativenumber
:set splitright
:set splitbelow
:set background=dark
:set tabstop=2       " The width of a TAB is set to 4. still \t 
:set shiftwidth=2    " Indents will have a width of 4
:set softtabstop=2   " Sets the number of columns for a TAB
:set expandtab       " Expand TABs to spaces
:set autoindent
:inoremap ( ()<Esc>hli
:inoremap { {}<Esc>hli
:inoremap [ []<Esc>hli
:inoremap < <><Esc>hli
:inoremap ' ''<Esc>hli
:inoremap " ""<Esc>hli
:inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
:inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
:inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
:inoremap <expr> > strpart(getline('.'), col('.')-1, 1) == ">" ? "\<Right>" : ">"
":inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "'" ? "\<Right>" : "'"
:inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\""
:inoremap {<CR> {<CR>}<Esc>ko<tab>
:inoremap [<CR> [<CR>]<Esc>ko<tab>
:inoremap (<CR> (<CR>)<Esc>ko<tab>
:inoremap <<CR> <<CR>><Esc>ko<tab>
