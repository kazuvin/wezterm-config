local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local keymaps = require 'config.keymaps'

-- 色テーマをモダンに設定
config.color_scheme = 'Catppuccin Mocha'

-- フォント設定
config.font = wezterm.font('JetBrains Mono', { weight = 'Medium' })
config.font_size = 10.0

-- ウィンドウ設定
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.window_background_gradient = {
  colors = { '#1a1b26', '#24283b', '#1a1b26' },
  orientation = 'Vertical',
}
config.window_padding = {
  left = 20,
  right = 20,
  top = 20,
  bottom = 20,
}

-- タブバー設定
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 25
config.colors = {
  tab_bar = {
    background = 'rgba(26, 27, 38, 0.8)',
    active_tab = {
      bg_color = 'rgba(116, 199, 236, 0.3)',
      fg_color = '#c0caf5',
      intensity = 'Bold',
    },
    inactive_tab = {
      bg_color = 'rgba(54, 58, 79, 0.5)',
      fg_color = '#9d7cd8',
    },
    inactive_tab_hover = {
      bg_color = 'rgba(116, 199, 236, 0.1)',
      fg_color = '#c0caf5',
    },
  },
}

-- その他の設定
config.enable_scroll_bar = false
config.audible_bell = "Disabled"
config.default_cursor_style = 'BlinkingBlock'

-- 設定の自動リロード
config.automatically_reload_config = true

-- ショートカット設定
config.keys = keymaps.setup()

return config