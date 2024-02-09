### sed:拡張正規表現
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

デフォルトではBREで  
-E をつけることで拡張正規表現が使える  

```sh
# 基本正規表現
$ echo foobar | sed "s/foo\(.\{1,\}\)/\1/g"
bar

# 拡張正規表現
$ echo foobar | sed -E "s/foo(.+)/\1/g"
bar
``` | tr " ' 
