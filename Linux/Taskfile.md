### Taskfile
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

taskfileでは`cmds`の中に `-`でコマンドを一行ずつ記述すると、途中で失敗した場合、Pipefileと同じように以降の行は実行されない

```yaml
tasks:
  clean:
    cmds:
      - echo "foo"
      - echo "fuga"
```
