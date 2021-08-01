IO.pipe do | read_io, write_io|
  fork do
    STDOUT.reopen(write_io) # 標準出力をパイプにつけ返る
    exec 'ps', '-x'
  end

  fork do
    STDIN.reopen(read_io)  #標準出力をパイプにつけ返る
    exec 'wc', '-l'
  end
end
Process.waitall
