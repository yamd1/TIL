### Queue&Redisが活きるシチュエーション
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->
- メール送信などでコネクションを占有したくない時
- 複数台構成時にメンテナンスモードを利用するとき
- 複数台構成時、オートスケールが起きると想定されている場合にログインセッションを持たせる
- 何かのマッチングでHTTPサーバは受付だけを行い、マッチング自体はQueueを用いて別サーバで行う。マッチング結果をDBに格納してそのサーバの役割は終了。クライアントがポーリングで問い合わせしてくるのでDBに格納されたマッチング結果を返却する。  
