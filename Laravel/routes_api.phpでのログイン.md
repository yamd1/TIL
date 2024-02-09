### routes_api.phpでのログイン
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

基本的にAPIルートはステートレスになるように作られているので、デフォルトではセッションは利用しないようになっている  
しかし、ログインの実装では、`$request->session()->regenerate()`という処理で、ログインセッションを生成し、ストアに保存するようになっている  
そのため、何も考えずにログインコントローラを実装しても、`Session store not set on request.`という500エラーが発生する  
次のMiddlewareをコメントインすることで、フロントエンドからの認証を想定した挙動を含めることができる  

```Http/Kernel.php
\Laravel\Sanctum\Http\Middleware\EnsureFrontendRequestsAreStateful::class,
```

具体的には`EnsureFrontendRequestsAreStateful`の実装を読むのが早いが、Headerに`Referer``Origin`のどちらかがあり、それがバックエンドのドメインと一致していると、フロントエンドからのリクエストだと認識する  
その結果、`\Illuminate\Session\Middleware\StartSession::class,`がミドルウェアにマージされて、セッションが利用できるようになる  


以下のQiitaの記事が詳しい  
https://qiita.com/ucan-lab/items/3e7045e49658763a9566
