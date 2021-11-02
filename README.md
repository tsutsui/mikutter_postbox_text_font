mikutter_postbox_text_font
====

## これは何
mikutterの投稿欄のフォントを変えるプラグインです。
設定の postbox_text_font でフォントを変更できます。
rubyなんもわからんといいながら実質初めて書いた mikutter プラグインなのでかなり適当です。

## 制約
* フォント変更後に設定を反映させるには mikutter の再起動が必要です。
postbox再描画をするようにすればいいのでしょうが……

## インストール
```
mkdir -p ~/.mikutter/plugin/; git clone https://github.com/tsutsui/mikutter_postbox_text_font.git ~/.mikutter/plugin/postbox_text_font