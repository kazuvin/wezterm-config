# WezTerm 設定

モダンなターミナルエミュレータ WezTerm のカスタム設定です。テーマ、キーバインディング、最適化された設定を含みます。

## 機能

- **テーマ**: Catppuccin Mocha カラースキーム
- **フォント**: JetBrains Mono Medium
- **透明度**: 半透明ウィンドウにグラデーション背景
- **カスタムキーバインディング**: 生産性を向上させるショートカット
- **タブ管理**: クリーンなタブバーとカスタムスタイリング
- **自動リロード**: 設定変更時の自動リロード

## インストール

### 前提条件

- [WezTerm](https://wezfurlong.org/wezterm/installation.html) がインストール済み
- Git

### セットアップ手順

1. **リポジトリをクローン**:
   ```bash
   git clone https://github.com/YOUR_USERNAME/wezterm-config.git
   ```

2. **既存の設定をバックアップ**（存在する場合）:
   ```bash
   mv ~/.config/wezterm ~/.config/wezterm.backup
   ```

3. **クローンした設定にシンボリックリンクを作成**:
   ```bash
   ln -s /path/to/cloned/wezterm-config ~/.config/wezterm
   ```

   またはファイルをコピー:
   ```bash
   cp -r wezterm-config ~/.config/wezterm
   ```

4. **必要なフォントをインストール**:
   - [JetBrains Mono](https://www.jetbrains.com/lp/mono/) をダウンロード・インストール
   - またはパッケージマネージャーを使用:
     ```bash
     # macOS (Homebrew)
     brew install --cask font-jetbrains-mono
     
     # Ubuntu/Debian
     sudo apt install fonts-jetbrains-mono
     ```

5. **WezTerm を再起動** して設定を適用

## 設定構造

```
~/.config/wezterm/
├── wezterm.lua          # メイン設定ファイル
├── config/
│   ├── appearance.lua   # 見た目・テーマ設定
│   └── keymaps.lua      # カスタムキーバインディング
└── README.md            # このファイル
```

## キーバインディング

| キー組み合わせ | 動作 |
|-------------|------|
| `Cmd+F` | ターミナル内検索 |
| `Cmd+Shift+F` | フルスクリーン切り替え |
| `Cmd+T` | 新しいタブ |
| `Cmd+W` | タブを閉じる |
| `Cmd+Shift+R` | 設定リロード |
| `Cmd+N` | 次の検索結果 |
| `Cmd+P` | 前の検索結果 |
| `Escape` | 検索/コピーモード終了 |

## カスタマイズ

### テーマの変更

`config/appearance.lua` でカラースキームを変更:
```lua
config.color_scheme = 'Your-Preferred-Theme'
```

### フォント設定

`config/appearance.lua` でフォント設定を変更:
```lua
config.font = wezterm.font('Your-Font-Name', { weight = 'Medium' })
config.font_size = 12.0
```

### ウィンドウの透明度

`config/appearance.lua` で透明度を調整:
```lua
config.window_background_opacity = 0.9  -- 0.0 から 1.0
```

## 新しいキーバインディングの追加

`config/keymaps.lua` に新しいキーバインディングを追加:
```lua
{
  key = 'YourKey',
  mods = 'CMD',
  action = wezterm.action.YourAction,
},
```

## トラブルシューティング

### 設定が読み込まれない

1. WezTerm の設定ファイルの場所を確認:
   ```bash
   wezterm show-config
   ```

2. ファイルの権限を確認:
   ```bash
   ls -la ~/.config/wezterm/
   ```

### フォントの問題

1. フォントのインストールを確認:
   ```bash
   fc-list | grep -i jetbrains
   ```

2. JetBrains Mono が利用できない場合は、設定で代替フォントを使用

### パフォーマンスの問題

- `window_background_opacity` の値を下げる
- `window_background_gradient` をコメントアウトしてグラデーション背景を無効化
- 描画が遅い場合は `font_size` を小さくする

## ライセンス

この設定は個人利用・商用利用問わず自由に使用・改変できます。