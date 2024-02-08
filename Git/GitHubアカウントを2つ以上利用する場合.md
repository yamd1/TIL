### GitHubアカウントを2つ以上利用する場合
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->
- git-credential-manager を利用する
- cloneしてきたリポジトリの `.git/config` の remote アドレスを以下のように編集する(こうしないと毎回どちらのユーザーなのか聞かれる)
  - `https://{username}@github.com/{username}/{ripository_name}`
