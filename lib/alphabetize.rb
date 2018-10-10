def esperanto_sorter
  # code here
  const ESPERANTO_ALPHABET = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alpha_hash = {}
  ESPERANTO_ALPHABET.chars.each do |c|
    alpha_hash[c] = ESPERANTO_ALPHABET.chars.index(c)
  end
  ['c','g','h','j','s','u'].each do |c|
    alpha_hash["#{c}\u0302"] = alpha_hash[c] + 1
  end
end

def alphabetize(array)
  es = esperanto_sorter
  array.sort_by { |w| w.chars.map { |c| es[c] } }
end