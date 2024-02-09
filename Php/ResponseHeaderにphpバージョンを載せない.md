### ResponseHeaderにphpバージョンを載せない
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

何も設定していないと、レスポンスヘッダーに`X-Powerd-By: PHP/8.0.30`のような情報が載ってしまう  
セキュリティ的に好ましくないのでこのヘッダーを消すのが望ましい  

```php.ini
expose_php = Off
```

すでにphp.iniが生成されている場合、特定の場所に .iniを配置するとオーバーライドできる  
まず、以下コマンドを実行し、iniファイルの場所と、追加されたiniファイル・その配置先を検索する  
```bash
php -i | grep ini
```

この様に追加iniファイルの場所が出力されるので、その配下に `hoge.ini`を配置する  
`Scan this dir for additional .ini files => /usr/local/etc/php/conf.d`
 | tr " ' 
