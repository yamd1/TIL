### systemctl.timer
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

LaravelのCronシステムを利用するために利用した  
> [!NOTE]
> Amazon Linux2023 ではcronが利用できない

`{hoge}.timer``{hoge}.service`という2つのファイルを作成する。(この2つのファイルは同名である必要があり、拡張子のみ異なる)  
こちらもsupervisorと同様、ImageBuilderで設定ファイルを作成し、`systemctl enable {hoge}.timer`まで実行、`systemctl start {hoge}.timer`はappspec.ymlで実行するようにした。  


https://gamingpc.one/dev/systemd-timer-cheat/
