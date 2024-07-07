lvim.leader = "space"

-- ARROWS N
-- ====================
lvim.keys.normal_mode["j"] = "h"
lvim.keys.normal_mode["i"] = "k"
lvim.keys.normal_mode["k"] = "j"

-- ARROWS V
-- ====================
lvim.keys.visual_mode["j"] = "h"
lvim.keys.visual_mode["i"] = "k"
lvim.keys.visual_mode["k"] = "j"

-- INSERT MODE
-- ====================
lvim.keys.normal_mode["o"] = "i"
lvim.keys.normal_mode["O"] = "I"

-- NEW LINE
-- ====================
lvim.keys.normal_mode["u"] = "o<Esc>"
lvim.keys.normal_mode["U"] = "O<Esc>"

-- UNDO / REDO
-- ====================
lvim.keys.normal_mode["m"] = "u"
lvim.keys.normal_mode["M"] = "<c-r>"

-- BETTER INDENTING
-- ====================
lvim.keys.visual_mode["<"] = "<gv"
lvim.keys.visual_mode[">"] = ">gv"

-- MOVE CODE BLOCKS
-- ====================
lvim.keys.visual_mode["<Up>"] = ":move-2<CR>gv=gv"
lvim.keys.visual_mode["<Down>"] = ":move'>+<CR>gv=gv"

-- NAVIGATE BETWEEN PANELS
-- ====================
lvim.keys.normal_mode["<c-i>"] = ":wincmd k<cr>"
lvim.keys.normal_mode["<c-k>"] = ":wincmd j<cr>"
lvim.keys.normal_mode["<c-j>"] = ":wincmd h<cr>"
lvim.keys.normal_mode["<c-l>"] = ":wincmd l<cr>"

-- SPLITS
-- ====================
lvim.builtin.which_key.mappings["S"] = {
	name = "+Split",
	v = { ":vsplit<cr>", "Vertical" },
	h = { ":split<cr>", "Horizontal" },
	o = { ":only<cr>", "Only" },
}

-- TROUBLE
-- ====================
lvim.builtin.which_key.mappings["t"] = {
	name = "+Trouble",
  s = { "<cmd>exe 'Trouble symbols toggle win.position=left focus=true win.size=' . (winwidth(0) * 1/2)<cr>", "Document symbols" },
  l = { "<cmd>exe 'Trouble lsp toggle win.position=left focus=true win.size=' . (winwidth(0) * 1/2)<cr>", "Lsp definitions, references, implementations, type definitions, and declarations" },
}

-- PRECOGNITION
-- ====================

lvim.builtin.which_key.mappings["H"] = {
	function()
    require("precognition").toggle()
	end,

	"Toggle motion [H]ints"
}
-- OIL
-- ====================
vim.api.nvim_create_user_command('OilToggle', function()
   vim.cmd((vim.bo.filetype == 'oil') and 'bd' or 'Oil')
end, { nargs = 0 })

lvim.builtin.which_key.mappings["e"] = { "<cmd>OilToggle<cr>", "Edit parent directory" }
