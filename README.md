# 標準入出力先を変更する
```ruby
puts "標準入力のファイルディスクリプタ: #{STDIN.fileno}"
puts "標準出力のファイルディスクリプタ#{STDOUT.fileno}"
file = File.open('a.txt', 'w')
puts "a.txt ファイルへの入出力のファイルディスクリプタ: #{file.fileno}"

STDOUT.reopen(file)
puts '標準入力先が変わっているはず'
```
- `reopen` で入出力先を変更することができる

### Unixのリダイレクション
- wcコマンドへの標準入力をa.txtにするには以下のようにする
```bash
wc -l < a.txt
```

- psコマンドの標準出力先をb.txtにするには以下
```bash
ps > b.txt
```

- 標準入出力先を同時に指定する
```bash
wc -l < a.txt > b.txt
```