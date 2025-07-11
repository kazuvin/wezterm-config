local wezterm = require("wezterm")

local M = {}

function M.setup()
	local keys = {
		-- 検索機能
		{
			key = "f",
			mods = "CMD",
			action = wezterm.action.Search({ CaseInSensitiveString = "" }),
		},
		-- フルスクリーントグル（CMD+Shift+F に変更）
		{
			key = "f",
			mods = "CMD|SHIFT",
			action = wezterm.action.ToggleFullScreen,
		},
		-- タブ管理
		{
			key = "t",
			mods = "CMD",
			action = wezterm.action.SpawnTab("CurrentPaneDomain"),
		},
		{
			key = "w",
			mods = "CMD",
			action = wezterm.action.CloseCurrentTab({ confirm = true }),
		},
		-- 設定リロード
		{
			key = "r",
			mods = "CMD|SHIFT",
			action = wezterm.action.ReloadConfiguration,
		},
		-- 検索モード内でのナビゲーション
		{
			key = "n",
			mods = "CMD",
			action = wezterm.action.CopyMode("NextMatch"),
		},
		{
			key = "p",
			mods = "CMD",
			action = wezterm.action.CopyMode("PriorMatch"),
		},
	}
	return keys
end

return M

