-- Enable relative line numbers
local opt = vim.opt
opt.nu = true
opt.rnu = true

-- Set tabs to 2 spaces
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true

-- Enable auto indenting and set it to spaces
opt.smartindent = true
opt.shiftwidth = 4

-- Enable smart indenting (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
opt.breakindent = true

-- Enable incremental searching
opt.incsearch = true
opt.hlsearch = true

-- Disable text wrap
opt.wrap = true

-- Better splitting
opt.splitbelow = true
opt.splitright = true

-- Enable mouse mode
opt.mouse = "a"

-- Enable ignorecase + smartcase for better searching
opt.ignorecase = true
opt.smartcase = true

-- Set completeopt to have a better completion experience
opt.completeopt = { "menuone", "noselect" }

-- Enable persistent undo history
-- opt.undofile = true

-- Enable the sign column to prevent the screen from jumping
opt.signcolumn = "yes"

-- Enable access to System Clipboard
-- opt.clipboard = "unnamed,unnamedplus"

-- Enable cursor line highlight
opt.cursorline = true

-- Always keep 8 lines above/below cursor unless at start/end of file
opt.scrolloff = 8

-- Place a column line
opt.colorcolumn = "80"

-- Enable 24-bit color
opt.termguicolors = true

-- Do not save swap file
vim.noswapfile = true

vim.o.showcmd = true

-- Enable spellchecking
vim.o.spell = true

-- Enable display of specialKey chars
vim.o.list = true

opt.listchars = {
  tab = '▓░',
  -- tab = '│·',
  -- tab = '⇤–⇥',
  extends = '»',
  precedes = '«',
  trail = '.',
  nbsp = '×', -- '⣿'
  -- eol = '¬',
  -- space = '␣'
}

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>[]hl")
opt.iskeyword:append("-")


