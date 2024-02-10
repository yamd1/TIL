### nginxバージョンをResponseHeaderに含めないようにする
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->
```conf
http {
  server_tokens off;
}
```
