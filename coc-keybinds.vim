" =======================================
" COC (Conquer of Completion) configuration
" =======================================

" --- Completion navigation ---
" If the popup menu is visible → move to the next item with Tab
" Otherwise → trigger completion refresh
inoremap <silent><expr> <Tab> 
      \ coc#pum#visible() ? coc#pum#next(1) : coc#refresh()

" If the popup menu is visible → move to the previous item with Shift+Tab
" Otherwise → behave like normal backspace
inoremap <silent><expr> <S-Tab> 
      \ coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" If the popup menu is visible → confirm the current completion item with Space
" Otherwise → insert a normal space
inoremap <silent><expr> <Space> 
      \ coc#pum#visible() ? coc#pum#confirm() : "\<Space>"

" Optional: Press Enter to confirm completion if popup is visible
inoremap <silent><expr> <CR> 
      \ coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" --- LSP actions (powered by coc.nvim) ---
" Go to definition
nmap <silent> gd <Plug>(coc-definition)

" Show all references/usages
nmap <silent> gr <Plug>(coc-references)

" Show symbol information / hover documentation
nmap <silent> K :call CocActionAsync('doHover')<CR>

" Rename symbol (variable/function/class)
nmap <leader>rn <Plug>(coc-rename)

" Format current buffer using the language server
nmap <leader>f <Plug>(coc-format)

" =======================================
" End of COC configuration
" =======================================
