### while read にプロセス置換で入力を渡す方法
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

```
while read line; do
  echo "$line"
done < <(find $(dirname $0) -name "*.sh")

echo -e "\n"

# プロセス置換を使わないパターン
for line in $(dirname $0)/*.sh; do
  echo "$line"
done
```
