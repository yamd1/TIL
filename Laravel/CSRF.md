### CSRF
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

リクエストの都度、CSRFトークンの検証が行われる  
これは、リクエストを送信してきている相手がCSRFトークンを持つものかどうかを検証することで、攻撃者が作成した不正なリクエストを送信させることを防ぐためのもの  
Postmanで検証を行うときには、リクエスト前に、`sanctum/csrf-token`にリクエストを送信、Cookieに`XSRF-TOKEN`がセットされているので、  
`/login`などにリクエスト送信前に、リクエストHeaderに`X-XRSF-TOKEN`として設定する必要がある  
いちいち手動で設定するのが面倒なので、スクリプトを作ってくれた人がいるので流用する  
(上記のセッションの記事の中に詳細が書かれている)  

```
let csrfRequestUrl = http://api.sdrepository.local/sanctum/csrf-cookie;
pm.sendRequest(csrfRequestUrl, function(err, res, {cookies}) {
    let xsrfCookie = cookies.one(XSRF-TOKEN);
    if (xsrfCookie) {
        let xsrfToken = decodeURIComponent(xsrfCookie[value]);
        pm.request.headers.upsert({
            key: X-XSRF-TOKEN,
            value: xsrfToken,
        });
        pm.environment.set(XSRF-TOKEN, xsrfToken);
    }
});
```

