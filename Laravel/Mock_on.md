### Mock::onを用いたモック対象の引数検査

モック対象の引数検査には `with()`と `with()の引数に渡すMock::on`が利用できる


```php
$mocked = $this->mock(SomeAction::class)
    ->shouldRecieve('perform')
    ->with(
        \Mock::on(function ($given) {
            $this->assertModelExists($given);
            return true;
        })
    )
    ->andReturn()
    ->getMock();

$service = resolve(SomeService::class, [$mocked]);
```
