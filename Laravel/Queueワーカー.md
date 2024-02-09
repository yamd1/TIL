### Queueワーカー
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->
Queueにあるタスクを処理する役割。  
Laravelの場合は`php artisan queue:worker` でデーモン起動する。  
本稼働しているAppサーバの負荷を下げる目的が大きいので、別サーバに分離する。  
