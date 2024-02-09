### Linux-Unixでのコマンドの違い
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

grep, sedは名前が一緒だけど、OSによって別物 (Optionなどが違う)  

#### だいたいのLinux (ただしAlpineとかは入ってないかも)
- (GNU)grep
- (GNU)sed

#### Mac (BSDはMacの先祖のUnixからできている)
- (BSD)grep
- (BSD)sed
`PCREが使えない` `sed -E で拡張正規表現が使える`
