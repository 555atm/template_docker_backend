#!/bin/bash

#エラーが発生した場合にスクリプトの実行を即座に終了
set -e


#既存のサーバープロセスIDファイルを強制的に削除
##前回、正常に終了しなかった場合に残っている可能性のあるプロセスIDファイルを確実に削除するため。
rm -f /api/tmp/pids/server.pid


#Dockerfileで指定されたCMD命令やdocker runコマンドで渡された引数を実行する
##この行により、コンテナのメインプロセスが適切に起動されます
exec "$@"