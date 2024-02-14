### jq
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

jqは別ファイルとして定義して、jqコマンドに`-f`オプションで渡すことができる  
複雑だったり、大きいjqプログラムは別ファイルに分けることでシェルスクリプト内の可読性が向上する  

[sample.sh](./Samples/jq/sample.sh)
```sh
PARSED_JSON="$(jq -f sample.jq foods.json)"
<< SAMPLE
[
  {
    "type": "fruits",
    "name": "apple",
    "price": 120
  },
  {
    "type": "meats",
    "name": "pork/Sangen-ton",
    "price": 200
  },
  {
    "type": "meats",
    "name": "beaf/Kuroge-wagyu",
    "price": 500
  },
  {
    "type": "vagetables",
    "name": "beans",
    "price": 100
  }
]
SAMPLE
```

[sample.jq](./Samples/jq/sample.jq)
```jq
# sample.jq

[
  to_entries[]
    | .key as $key
    | .value[]?
    | {
        "type": $key,
        "name": (
          if $key == "meats" then
            .name + "/" + .brands
          else
            .name
          end
        ),
        "price": .price
      }
]
```

[foods.json](./Samples/jq/foods/json)
```json
{
  "fruits": [
    {
      "name": "apple",
      "price": 120
    }
  ],
  "meats": [
    {
      "name": "pork",
      "brands": "Sangen-ton",
      "price": 200
    },
    {
      "name": "beaf",
      "brands": "Kuroge-wagyu",
      "price": 500
    }
  ],
  "vagetables": [
    {
      "name": "beans",
      "price": 100
    }
  ]
}
```
