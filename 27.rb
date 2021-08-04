# ユーザーから、helpオプションを渡されたかを確認する
ARGV.include?('--help')
# -c オプションの値を取得する
ARGV.include?('-c') && ARGV[ARGV.index('-c')+1]
puts ARGV
puts ARGV.index('-c')
