vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backup = false -- creates a backup file
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 0 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again

vim.opt.listchars = { nbsp = "¬", extends = "»", precedes = "«", trail = "•" }

vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window

vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)

vim.opt.timeout = true
vim.opt.timeoutlen = 500 -- time to wait for a mapped sequence to complete (in milliseconds)

-- enable persistent undo
vim.opt.undofile = true

vim.opt.updatetime = 300 -- faster completion (4000ms default)
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true

-- Use wide tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.textwidth = 80

vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true
vim.opt.numberwidth = 4 -- minimal number of columns to use for the line number {default 4}

vim.opt.scrolloff = 0
vim.opt.sidescrolloff = 0
vim.opt.wrap = false
vim.opt.fillchars.eob = " " -- show empty lines at the end of a buffer as ` ` {default `~`}

vim.opt.cursorline = true -- highlight the current line
vim.opt.laststatus = 3 -- only the last window will always have a status line
vim.opt.showcmd = false -- hide (partial) command in the last line of the screen (for performance)

vim.opt.ruler = false -- hide the line and column number of the cursor position 
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.shortmess:append "c" -- hide all the completion messages, e.g. "-- XXX completion (YYY)", "match 1 of 2", "The only match", "Pattern not found"
vim.opt.whichwrap:append "<,>,[,],h,l" -- keys allowed to move to the previous/next line when the beginning/end of line is reached
vim.opt.iskeyword:append "-" -- treats words with `-` as single words
vim.opt.formatoptions:remove { "c", "r", "o" } -- This is a sequence of letters which describes how automatic formatting is to be done
vim.opt.linebreak = false

vim.g.tex_flavor = "tex"

-- Jump to last edit position on opening file
-- https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand

