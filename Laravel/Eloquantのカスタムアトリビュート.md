### Eloquantのカスタムアトリビュート
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

カスタムアトリビュートを定義する際、以下の方にしていたが、$attrは連想配列になっていて、DBの値がキャストされずStringかintで保持されている  
そのためrequested_at(Carbonを期待)からcopy()を呼ぼうとして失敗していた  
```php
// これはNG
return Attribute::make(
  get: fn (_, $attr) => $attr[requested_at]->copy()->...
)

// これでうまくいく
return Attribute::make(
  get: fn () => $this->requested_at->copy()->...
)
```
