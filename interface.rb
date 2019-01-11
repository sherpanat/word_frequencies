require_relative "frequencies"

sentence = read_file('trump.txt')
hash_of_frequencies = frequencies(sentence)

# On itère sur le hash : on renvoie la valeur dans une phrase
array_of_frequencies = hash_of_frequencies.sort_by { |key, value| value }.reverse

array_of_frequencies.first(10).each do |frequence|
    puts "There are #{frequence[1]} '#{frequence[0]}'"
end

# hash_of_frequencies.each do |word, frequence|
#   puts "There are #{frequence} '#{word}'"
# end


# {
#   'salut' => 2,
#   'toi' => 1
# }

# mettre le hash dans l'ordre de la value
# prendre les 10 premiers
