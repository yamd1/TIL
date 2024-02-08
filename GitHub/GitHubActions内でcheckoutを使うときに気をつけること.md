### GitHubActions内でcheckoutを使うときに気をつけること
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

`default: 1`だと、Commitが一つにまとまって取得するようになっていて、コミットの日付などが取得できない
https://github.com/actions/checkout/blob/b4ffde65f46336ab88eb53be808477a3936bae11/README.md?plain=1#L89-L91

```yml
uses: actions/checkout@v4
with:
  fetch-depth: 0
```
