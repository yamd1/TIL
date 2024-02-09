### systemctl
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

サービス起動デーモンソフトウェアの`systemd`を操作するためのコマンド  
nginxやphp-fpmなどをサーバでデーモン起動させるために利用する  

```
systemctl start ${Unit}

systemctl stop ${Unit}

systemctl restart ${Unit}

systemctl status ${Unit}

systemctl list-unit-files --type=service | grep ${Unit}

systemctl enale ${Unit}

systemctl disable ${Unit}

systemctl deamon-reload
```

