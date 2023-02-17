def string_methods
  x = "experimentation"

  puts x + x

  puts x.capitalize

  puts x.downcase

  puts x.chop

  puts x.next

  puts x.reverse

  puts x.sum

  puts "AB".sum

  puts "abOMinAtioN".swapcase

  puts x.swapcase

  puts x.upcase
end

def regex
  puts "Hallelujah".sub("lujah", " Berry 😍")

  puts "Hallelujah".gsub("l", "gg")

  puts "Omen".sub(/^../, "Sem")

  puts "Omen".sub(/..$/, "alicha")

  # puts "This is a test".scan(/../) { |char| puts char }

  "This is a test".scan(/\w\w/) { |char| puts char }

  "The car costs $1000 and the cat costs $10".scan(/\w+/) { |digit| puts digit }
end

# regex

def character_classes
  puts "This is another test".scan(/[g-x]+/)
end

# character_classes

def match
  puts "String has vowels" if "This is a test" =~ /[aeiou]/
  puts "___" * 10

  x = "This is a test".match(/(\w+) (\w+)/)

  puts "\n#{x[0]}"
  puts x[1]
  puts x[2]

  pp x
end

def arrays
  a = [1, 2, 3, 4, 5]

  a[0] = "Fish" * 10

  puts a

  b = []

  b << [1, 2, 3, 4, 5]

  b << { a: "Hi" }

  pp b

  sentence = "Another. Sentence. Is. Being. Typed. Here".split(/\./)
  sentence = "Another. Sentence. Is. Being. Typed. Here".split(/\./)

  pp sentence
  pp sentence.inspect

  arr = %w[This is a weird array]

  p arr

  p arr.empty?

  p arr.include?("This")

  p arr.include?("ok?")

  p arr.first

  p arr.last

  puts arr.first(2).join(" ➡️➡️➡️ ")

  puts arr.last(2).join(" ➡️➡️➡️ ")
end

def hashes
  dictionary = {
    name: "John",
    age: 22,
    hair: "brown",
    birth_date: "22nd January 2008",
  }

  dictionary.each do |key, value|
    puts "The key #{key.upcase} holds the value #{value.to_s.upcase}."
  end

  puts "________________________________"
  p dictionary.keys

  puts "________________________________"
  p dictionary.values

  puts "________________________________"
  dictionary.delete(:birth_date)
  p dictionary

  puts "________________________________"
  dictionary.delete_if { |key, value| value != 19 }
  puts "This is now the hash: #{dictionary}"
end

# hashes

def nested_hashes
  people = {
    fred: {
      name: "Fred Eller",
      age: 63,
      gender: "Male",
      favorite_painters: ["Monet", "John", "Da Vinci"],
    },
    janet: {
      name: "Janet Spencer",
      age: 49,
      gender: "Female",
    },
  }

  puts people[:fred][:age]
  puts people[:janet][:gender]
  puts people[:fred][:favorite_painters]
  puts people[:fred][:favorite_painters].size
  p people[:fred][:favorite_painters].reverse.join(" ")
end

def ternary
  age = 10

  puts age < 10 ? "You are not allowed here" : "Welcome to the Black Company."
end

def cases
  fruit = "orange"
  color =
    case fruit
    when "orange"
      "Orange"
    when "apple"
      "Green"
    else
      "unknown"
    end
end

p cases

x = [1, 2, 3]
x.each { puts _1 }

def masaa
  p Time.now
  p Time.now - 10
  p Time.now + 34_234
=begin 
  class Integer
    def seconds
      self
    end
    def minutes
      self * 60
    end
    def hours
      self * 3600
    end
    def days
      self * 24 * 3600
    end
  end
  
  puts Time.now
  puts Time.now + 10.minutes
  puts Time.now + 12.hours
  puts Time.now + 7.days

=end
end

# masaa
def ranges
  p ("A".."Z").to_a
  p ("M".."X").to_a
  p (1..10).to_a

  x = ("M".."X").to_a
  x[3..5] = (1..7).to_a
  p x
end


