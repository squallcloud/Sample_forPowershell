# # echo "Hello world!"

# $array = 1..10

# $xml_info = [xml](Get-Content '.\sample.xml')

# # Write-Host($xml_info)

# foreach ($x in $xml_info) {
#     Write-Host "$x"
# }

# # foreach ($i in $array) {
# #     Write-Host($i)
# # }

# 実行中のパス取得/移動
$path = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $path

# ファイル書きこみ
# StreamReaderのコンストラクタに直接 「$path + "\test.txt"」を入力するとエラーになるので分ける
$array = 1..10
foreach ($i in 1..1) {
    $fileName = $path + "\test$i.hoge"
    $file = New-Object System.IO.StreamWriter($fileName, $false, [System.Text.Encoding]::GetEncoding("unicode"))
    foreach ($j in 1..1000) {
        $file.WriteLine("あいうえお")
    }
    $file.WriteLine("かきくけこ")
    $file.WriteLine("さしすせそ")
    # Write-Host("")
    $file.Close()
}

# calc # 電卓起動

# 終了
Write-Host("終了")