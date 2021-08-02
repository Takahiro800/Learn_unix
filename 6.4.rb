# 制限を超えたとき
# オープンできるファイルの最大数を３に設定する
# 標準ストリームでファイいるディスクリプタを３つ使うため、すでに上限に達している状態になる。

Process.setrlimit(:NOFILE, 3)
File.open('/dev/null')

# 出力
# 6.4.rb:6:in `initialize': Too many open files @ rb_sysopen - /dev/null (Errno::EMFILE)
