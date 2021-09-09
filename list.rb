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
input = gets.chomp.split(' ')

if input[0] == "add"
add = input[1]
if $a.append(add)
puts "[+] add #{add} in list" 

else 
puts "[-] Can't add #{add} in list"
end

elsif input[0] == "rm"
rm = input[1]
if $a.delete rm
puts "[+] remove #{rm} in list" 
$a.delete(rm)
else 
puts "[-] Can't remove #{rm} in list"
end 
elsif input[0] == "sort"
begin
$a.sort
puts '[+] Sorted '
rescue 
puts '[-] Can\'t sort '
end
elsif input[0] == "exit"
exit
elsif input[0] == "show"
puts $a
elsif input[0] == "save"
save_file
puts "[+] saved "
elsif input[0] == "load"
load_file
puts "[+] loaded"
else
puts "[-] Error "
end
end