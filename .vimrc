"Commented the auto fold
set foldmethod=indent
set foldlevel=99

"default line numbers
set number

"Pathogen Settings - test
filetype off
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

"Solarized colorscheme
"let g:solarized_termcolors=256
"syntax enable
"set background=dark
"colorscheme solarized

"Syntax Highlighting and Validation - PyFlakes
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

"vim air-line plugin
"smarter tab line
"let g:airline#extensions#tabline#enabled = 1

" Add the virtualenv's site-packages to vim path
 py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

"Django modules code completion
"export DJANGO_SETTINGS_MODULE=project.settings

"pymode folding
"let g:pymode_folding=1
"let g:pymode=1

"highligh search
set hlsearch

"map ii to escape
:imap ii <Esc>

"control s to save
:nmap ss :w<CR>
:imap ss <Esc>:w<CR>a
