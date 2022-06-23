local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {silent = true})
end

key_mapper("n", "<A-h>", ":BufferPrevious<CR>")
key_mapper("n", "<A-l>", ":BufferNext<CR>")
