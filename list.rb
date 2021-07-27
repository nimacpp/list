$a = [] 

def save_file
fl = File.open('list-rb.txt','w')
for i in $a
fl.puts i
end
fl.close
end
def load_file
File.readlines('list-rb.txt').each do |line|
$a.append(line)
end
end
while true
load_file
print '> '
input = gets.chomp

if input[0..3] == "add "
add = input[4..-1]
if $a.append(add)
puts "[+] add #{add} in list" 
$a.append(add)
else 
puts "[-] Can't add #{add} in list"
end

elsif input[0..2] == "rm "
rm = input[3..-1]
if $a.delete rm
puts "[+] remove #{rm} in list" 
$a.delete(rm)
else 
puts "[-] Can't remove #{rm} in list"
end 
elsif input == "sort"
begin
$a.sort
puts '[+] Sorted '
rescue 
puts '[-] Can\'t sort '
end
elsif input == "exit"
exit
elsif input == "show"
puts $a
elsif input == "save"
save_file
puts "[+] saved "
elsif input == "load"
load_file
puts "[+] loaded"
else
puts "[-] Error "
end
end

