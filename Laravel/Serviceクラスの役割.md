### Serviceクラスの役割
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

DBトランザクションを管理するのがServiceの責務。ドメイン側に存在するクラス   
Serviceから特定の共通処理を切り出したものがAction (Actionの中でも何かを保証するための動作をする場合はEnsureという命名をするとわかりやすい)  
ここから更にRepositoryクラスやLogクラスなどに分離してLaravelの知識をServiceから排除することも可能  

なので、HTTPの知識を持つべきではないし、HTTP以外の呼び出しがある可能性もある(artisanコマンドなど)  
つまり、Serviceクラスを配置すべきは `App\Http\` 配下ではなく `App\`に配置するべき  
さらにService内で$requestを使いたくなるが、これはHTTPの知識なのでService内で利用するべきではない。Service内ではDTOを利用するべき  
