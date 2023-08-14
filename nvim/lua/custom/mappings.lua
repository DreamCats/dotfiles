---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["s"] = {"<cmd> w <CR>", "save file"},
    ["S"] = {"<cmd> wq <CR>", "save file"},
    ["L"] = {"$", "line end"},
    ["H"] = {"^", "line head"},
    ["J"] = {"5j", "5j"},
    ["K"] = {"5k", "5k"},
    ["<leader>sh"] = {"<Cmd>set splitbelow<CR><Cmd>split<CR>", "split horizontal"},
    ["<leader>sv"] = {"<Cmd>set nosplitright<CR><Cmd>vsplit<CR>", "split vertical"},
  },
}

-- more keybinds!

return M  

