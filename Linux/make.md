### make
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

makeもGNUのコアユーティルではないけど「ビルドエッセンシャル(debian系)」に`make, gcc, autotools`などが入っている  
configureコマンドが用意されていて、それを叩くと、そのマシンに最適化したmakefileを生成してくれるツール  
configureはシェルスクリプトで、シェルスクリプトを生成するための、autotoolsってのがある  
