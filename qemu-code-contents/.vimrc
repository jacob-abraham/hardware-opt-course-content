" set tabs
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab	

" visual select with mouse
set mouse=a	

" syntax highliting
syntax on	
colorscheme slate	

" numbering
set number	
noremap <F2> :set number! relativenumber!<CR>	
noremap <F3> :set relativenumber!<CR>	

" change tabs and open new file
noremap <F7> :tabn<CR>
noremap <F8> :tabp<CR>
noremap <F6> :tabe 


