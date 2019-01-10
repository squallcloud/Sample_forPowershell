# https://win.just4fun.biz/?PowerShell/%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E5%86%85%E3%81%AE%E6%96%87%E5%AD%97%E5%88%97%E3%82%92%E7%BD%AE%E6%8F%9B%E3%81%99%E3%82%8B%E6%96%B9%E6%B3%95%E3%83%BBreplace%2C%20creplace

$foo = ".\sample.txt"
# $hoge = Get-Content -Encoding UTF8 $foo | foreach {$_ -replace "hoge", "foo"}

# $hoge | Out-File -Encoding UTF8 $foo

(Get-Content $foo | % {$_ -replace "hoge", "foo"}) | Out-File -Encoding default $foo