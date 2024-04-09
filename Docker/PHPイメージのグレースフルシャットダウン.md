### Docker Image (phpイメージのグレースフルシャットダウン)

https://github.com/docker-library/php/blob/f140206f63dfbbd3a423d962ca40727ade295b6b/8.1/bullseye/fpm/Dockerfile#L277

STOPSIGNAL ... dockerのコマンドのひとつ (RUNとかと一緒)
STOPSIGNAL SIGTERM (15) がデフォルトの挙動
STOPSIGNAL SIGQUIT (3) にオーバーライドしている

php-fpmの設定で`SIGQUIT`でグレースフルシャットダウンする
