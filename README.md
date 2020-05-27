# template for ogp

## What is?
OGPを大量に配置したい場合を想定して作成しました。  
実行すると、指定した名前のフォルダと共に`index.html`が作成されます。

## Project setup

gettextパッケージ内の`envsubst`コマンドを使用します。  
gettextの導入をお願いします。  
（今後のバージョンアップで本工程の簡略化を想定しています）

## How to use
1. 上記設定完了後、`input.env.sample`を参考に`input.env`を作成してください。
2. `bash make_ogp_file.sh prefix start end` で実行してください。
  - 第1引数 フォルダのプレフィックス
  - 第2引数 フォルダ番号の最初の数
  - 第3引数 フォルダ番号の最後の数  
    以下は`prefix`に`dir`,`start`に`1`、`end`に`10`を指定した場合の出力です。

    ```
    dir1/index.html
    dir2/index.html
    dir3/index.html
    ...
    dir10/index.html
    ```
3. 作成されたフォルダ内に`ogp.png`を配置し、必要な場所に移動してください。

## Caution
1. OGPのファイル名称は`ogp.png`を想定しています。それ以外の場合は`ogp.template`の中身を各自書き換えてください。
2. 本スクリプトの動作確認は macOS Catalina 10.15.2にて行われました。

## License
Copyright (c) 2020 Sonoko Shimizu  
Released under the MIT license  
https://opensource.org/licenses/mit-license.php
