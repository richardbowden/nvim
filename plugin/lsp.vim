set completeopt=menuone,noselect
" let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" old mappings
nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gD :lua vim.lsp.buf.declaration()<CR>
nnoremap <leader>gr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>gi :lua vim.lsp.buf.implementation()<CR>


nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vD :lua vim.lsp.buf.declaration()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vf :lua vim.lsp.buf.formatting()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.util.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vn :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>vll :lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent> <C-p> :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-n> :lua vim.lsp.diagnostic.goto_next()<CR>
