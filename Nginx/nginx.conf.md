### nginx.conf
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->
### サーバ上での設定ファイル配置先
/etc/nginx/

---
### nginx.confの各ディレクティブの意味
https://heartbeats.jp/hbblog/2012/04/nginx05.html

---
### 設定ファイル
```
nginx
    ├ nginx.conf
    ├ conf.d
    └ global
        ├ restrictions.conf
        └ wordpress.conf
```

nginx.confの中で各設定のconfファイルをincludeする

公式サンプル
- https://www.nginx.com/resources/wiki/start/topics/recipes/wordpress/
- https://ja.wordpress.org/support/article/nginx/

TODO: リンクをnginxディレクトリに設定する  
https://github.com/yamd1/my-wordpress  
