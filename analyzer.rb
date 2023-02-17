# Ruby gives us a comprehensive set of file manipulation tools via the File class.

=begin
	
rescue => exception
	
end
text = ""
line_count = 0
File.open("oliver.txt").each do |line|
	line_count += 1
	text += line
end

puts "#{line_count} lines."
puts text

=end

lines = File.readlines("./oliver.txt")

# puts lines
puts lines.length
puts lines.size

text = lines.join("")
text_size = text.size
puts text_size

puts text.gsub(/\s/, '').length
