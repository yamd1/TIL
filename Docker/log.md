### Logs (コンテナ・php-fpm)

1. docker logsはコンテナ内のPID=1のSTDIO/STDERRを出力する
2. コンテナ内のphp-fpmはPID=1[^1]として起動している
3. laravelはphp-fpmの子プロセスとして起動しているので、STDIOに出力してもdocker logsで出力されない
4. php-fpmの設定(e.g. /etc/php/ini/docker.ini)[^2]でワーカープロセスのエラーをglobal.error_logにリダイレクトさせる
5. global.error_logは`/proc/self/fd/2`[^3]は`システムのSTDIO`へのシンボリックリンクなので、これを設定するとそのプロセスが書き込める
6. `chatch_workers_output = yes`に設定すると、子プロセスとして起動しているlaravelが親プロセスのphp-fpmのglobal.error_logに出力される

^1: docker-entrypoint.dist.shに"php-fpm"が引数としてわたる
```Dockerfile
ENTRYPOINT ["/my-docker-entrypoint.sh"]
CMD ["php-fpm"]
```
execによって親プロセスが入れ替わる
```sh
# my-docker-entrypoint.sh

exec docker-php-entrypoint "$@"
```

^2:
```ini
[global]
; /proc/self/fd/2 は /dev/pts/0 へのシンボリックリンク (i.e. docker logs が監視している擬似端末に向けて出力)
; SEE: https://qiita.com/uturned0/items/2404aa8233cbf2b276f8

;省略

error_log = /proc/self/fd/2
; ワーカープロセスのエラーログは global.error_log にリダイレクトにさせる
catch_workers_output = yes

; 子ワーカーがなんか言ってるぞって表示してほしくない
; ワーカープロセスのエラーログを global.error_log へリダイレクトする際 "child {PID} said into stderr: " というプレフィックスを付与しない
; SEE: https://qiita.com/takamichi/items/cbb1a9edb44c0b7f5594
decorate_workers_output = no

```
^3:
https://qiita.com/uturned0/items/2404aa8233cbf2b276f8
