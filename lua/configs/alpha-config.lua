-- alpha-config.lua

local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
  print 'alpha status not ok'
  return
end

local dashboard = require 'alpha.themes.dashboard'
dashboard.section.header.val = {

  [[          ▀████▀▄▄              ▄█ ]],
  [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
  [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
  [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
  [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
  [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
  [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
  [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
  [[   █   █  █      ▄▄           ▄▀   ]],
}

dashboard.section.buttons.val = {
  dashboard.button('f', '󰈞  Find file', ':Telescope find_files <CR>'),
  dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
  dashboard.button('e', '  Explorer', ':Fern . <CR>'),
  dashboard.button('w', '󰈞  VimWiki', ':VimwikiIndex <CR>'),
  dashboard.button('r', '  Recently used files', ':Telescope oldfiles <CR>'),
  dashboard.button('t', '  Find text', ':Telescope live_grep <CR>'),
  dashboard.button('c', '  Configuration', ':e $LOCALAPPDATA/nvim/init.lua <CR>'),
  dashboard.button('q', '󰈆  Quit Neovim', ':qa<CR>'),
}

local function footer()
  return 'Work till your head hurts -E.Musk'
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = 'Type'
dashboard.section.header.opts.hl = 'Include'
dashboard.section.buttons.opts.hl = 'Keyword'

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
