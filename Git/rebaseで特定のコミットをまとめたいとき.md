### rebaseで特定のコミットをまとめたいとき
<!-- {ISSUEタイトル}.md になります -->
<!-- ISSUEラベル名に対応するディレクトリに格納されます -->
<!-- ISSUEタイトルに`###`を足して、descriptionの1行目に自動追記します -->

例えば2つ前のコミットに今のコミットをまとめたいとき

wipを「依存関係を追加」に含めたい！
![276622611-3d1ea407-449e-45d8-a363-97b40807e89b](https://github.com/yamd1/TIL/assets/118052534/f177bdea-4323-44dd-9d10-8c3596a12491)


git rebase -i HEAD~~~~~ を実行
![276622649-0b26e536-9b7a-43c5-85d6-d7f8ae06f72e](https://github.com/yamd1/TIL/assets/118052534/5ba8f756-931b-43ef-8c96-e3c54e709e3c)


行の場所を変更してfixupに変更する。（まとめてコミットメッセージを修正したいときはsquashでもいい)
![276622673-ee13f2f2-bea2-42e1-a522-a46cbf512efb](https://github.com/yamd1/TIL/assets/118052534/6b5e9851-d523-4c99-b69e-40b588435bd0)


修正完了！
![276622703-62f05154-a367-442e-a7dc-39ed8512f6a5](https://github.com/yamd1/TIL/assets/118052534/83a972ef-7dcd-4799-9f14-b15eaf17d2e8)

