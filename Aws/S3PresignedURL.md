### S3PresignedURL
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->
AWS認証をすることができないユーザーにS3に画像をアップロード、もしくはCDNまで必要ないが、S3データをダウンロードさせたい場合は`PresignedURL`が有効  
S3に対して発行可能なPresignedURLは`GetOpbject` `PutObject` の2種類。  
これはそれぞれCommandを作成してURLを生成するので、GetとPutで共通のURLではない点に注意 
