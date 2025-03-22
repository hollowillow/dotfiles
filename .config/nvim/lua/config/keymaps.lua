vim.keymap.set('i', 'ii', '<Esc>', { desc = 'Exit visual mode by typing ii' })

-- option toggles
function ToggleColorColumn()
  if vim.wo.colorcolumn == "80" then
    vim.wo.colorcolumn = ""  -- Disable colorcolumn
  else
    vim.wo.colorcolumn = "80"  -- Enable colorcolumn at column 80
  end
end
vim.keymap.set('n', '<leader>oc', '<cmd>lua ToggleColorColumn()<cr>', { desc = 'Toggle colorcolumn' })
vim.keymap.set('n', '<leader>on', '<cmd>set relativenumber!<cr>', { desc = 'Toggle relative numbers' })
