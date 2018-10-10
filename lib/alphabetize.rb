def esperanto_sorter
  # code here
  const esperanto_alphabet
  esperanto_alphabet = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alpha_hash = {}
  esperanto_alphabet.chars.each do |c|
    alpha_hash[c] = esperanto_alphabet.chars.index(c)
  end
  ['c','g','h','j','s','u'].each do |c|
    alpha_hash["#{c}\u0302"] = alpha_hash[c] + 1
  end
end

def alphabetize(array)
  es = esperanto_sorter
  array.sort_by { |w| w.chars.map { |c| es[c] } }
end