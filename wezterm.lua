local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local keymaps = require 'config.keymaps'
local appearance = require 'config.appearance'

-- 見た目設定を適用
appearance.setup(config)

-- 設定の自動リロード
config.automatically_reload_config = true

-- ショートカット設定
config.keys = keymaps.setup()

return config