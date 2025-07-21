local au = vim.api.nvim_create_autocmd

au("TextYankPost", { callback = function() vim.highlight.on_yank() end })
-- tidied 125
-- tidied 160
-- tidied 200
-- tidied 292
