puts 'hello'
puts "私のプロセスIDは#{Process.pid}です"
puts "私の親プロセスIDは#{Process.ppid}です"

puts "自分：PID(#{Process.pid}) PPID(#{Process.ppid})"

pid = fork do
	puts "子ども: PID(#{Process.pid}) PPID(#{Process.ppid})"
end