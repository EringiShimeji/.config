local status,lualine = pcall(require, "lualine")
if (not status) then return end

require('lualine').setup {
  options = {
    theme = 'sonokai',
    -- theme = 'tokyodark',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {'location', 'encoding', 'fileformat', 'filetype'},
		lualine_y = {},
    lualine_z = {
			{
				'datetime',
				style = "%H:%M:%S",
			}
		}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
