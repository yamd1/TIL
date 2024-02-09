### supervisor
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

Laravelの`QueueWorker`をdeamonize化するために利用した  
以下Laravelのドキュメントで紹介されている方法に沿って、ImageBuilderで設定ファイルを生成  
ImageBuilderでは`systemctl enable supervisor`までを実行し、startはappapec.yml内でシェルスクリプトを実行するようにした  

https://readouble.com/laravel/10.x/ja/queues.html#supervisor-configuration
