### whire_readの時のプロセス
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

標準入力から値を受け取り、`whire read`するときはサブシェルで実行される
```sh
echo $ITEMS | while read ITEM; do
  # なにかの処理
done
```

プロセス置換で値を受け取るときは、`親のシェルのまま`実行される
```sh
while read ITEM; do
  # なにかの処理
done < <(echo $ITEMS)
```

なので、前者の中では、親プロセスで定義された変数を書き換えることができない

