def esperanto_sorter
  # code here
  esperanto_alphabet = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alpha_hash = {}
  esperanto_alphabet.chars.each do |c|
    alpha_hash[c] = esperanto_alphabet.chars.index(c)
  end
  ['c','g','h','j','s','u'].each do |c|
    alpha_hash["#{c}\u0302"] = alpha_hash[c] + 1
  end
  alpha_hash
end

def esperanto_combined_diacritics
  {
    "ĉ" => "c\u0302"
    "ĝ" => "g\u0302"
    "ĥ" => "h\u0302"
    "ĵ" => "j\u0302"
    "ŝ" => "s\u0302"
    "ŭ" => "u\u0302"
  }
end

def clean_combined_diacritics(string)
  ecd = esperanto_combined_diacritics
  ecd.each do |c, c_com|
    string.gsub()
end
  

def alphabetize(array)
  es = esperanto_sorter
  array.each { |w| puts w.chars.map { |c| es[c] } }
end

puts "c\u0302au".gsub("c\u0302","ĉ")
# alphabetize(["ĉa", "ĉb", "c\u0302au", "c\u0302bu"])
=begin
puts esperanto_sorter["ĉ"]
puts esperanto_sorter["c\u0302"]
puts alphabetize(["ĉa", "ĉb", "c\u0302au", "c\u0302bu"])
puts ["ĉa", "ĉb", "c\u0302au", "c\u0302bu"]
=end