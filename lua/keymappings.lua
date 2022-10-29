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
	r = { "<cmd>Trouble lsp_references<cr>", "References" },
	f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
	d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
	q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
	l = { "<cmd>Trouble loclist<cr>", "LocationList" },
	w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
}

-- HOP
-- ====================
lvim.builtin.which_key.mappings["j"] = { "<cmd>HopChar2<cr>", "Jump chars" }
lvim.builtin.which_key.mappings["J"] = { "<cmd>HopWord<cr>", "Jump word" }
