require_relative "frequencies"

# On va lire notre fichier
sentence = read_file('trump.txt')
# On appelle la méthode frequencies
hash_of_frequencies = frequencies(sentence)

# On trie les mots par leur fréquence d'apparition
array_of_frequencies = hash_of_frequencies.sort_by { |word, frequence| frequence }.reverse

# On itère sur le tableau de tableau : on renvoie la valeur dans une phrase
array_of_frequencies.first(3).each do |frequence|
    puts "There are #{frequence[1]} '#{frequence[0]}'"
end

# puts data with a hash
# hash_of_frequencies.each do |word, frequence|
#   puts "There are #{frequence} '#{word}'"
# end
