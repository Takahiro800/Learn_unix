puts "標準入力のファイルディスクリプタ: #{STDIN.fileno}"
puts "標準出力のファイルディスクリプタ#{STDOUT.fileno}"
file = File.open('a.txt', 'w')
puts "a.txt ファイルへの入出力のファイルディスクリプタ: #{file.fileno}"

STDOUT.reopen(file)
puts '標準出力先が変わっているはず'
