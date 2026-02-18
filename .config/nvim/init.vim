call plug#begin()
Plug 'rebelot/kanagawa.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
call plug#end()

lua << END
require('lualine').setup {
	options = { 
		theme = 'dracula' 
	}
}
END

colorscheme kanagawa
set number
