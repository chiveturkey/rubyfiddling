#!/usr/bin/ruby

puts 'Values piped in to STDIN:'
puts

puts ARGF.read

puts
puts 'Attempt to interactively read input from keyboard on STDIN.  This will fail:'
puts

print 'Input: '
input = gets
puts 'The Input is:'
puts input

puts
puts 'Create a new file descriptor, and tie $stdin to it:'
puts

fd = IO.sysopen("/dev/tty", "r")
a = IO.new(fd,"r")
$stdin = a

puts "The new file descriptor is: #{fd}"

puts
puts 'Then attempt to interactively read input from keyboard on STDIN.  This will succeed:'
puts

print 'Input: '
input = gets
puts 'The Input is:'
puts input
