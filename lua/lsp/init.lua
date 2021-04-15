-- Keymappings
vim.cmd('nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>')
vim.cmd('nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>')
vim.cmd('nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>')
vim.cmd('nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>')
vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.cmd('nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>')
-- TODO: Find better keybinds, because these keep messing me up :(
-- vim.cmd('nnoremap <silent> <C-]> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
-- vim.cmd('nnoremap <silent> <C-[> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
vim.cmd('nnoremap <silent> ca <cmd>lua vim.lsp.buf.code_action()<CR>')
