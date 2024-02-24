### 仮引数としての&strに対して&Stringを渡した場合にコンパイラに怒られないのは何故か
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

`&str` `&String` は**型強制**によって暗黙的に型が変換される
https://rs.nkmk.me/rust-str-string-conversion/
