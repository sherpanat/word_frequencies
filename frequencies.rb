def frequencies(string)
  hash_of_frequencies = {}
  # Passer la string en array de mots
  words = transform(string)
  # On itère sur le tableau : mot par mot,
  words.each do |word|
    # on met une condition : si la clé existe, on incrémente la valeur du mot de 1
    if hash_of_frequencies.key?(word)
      hash_of_frequencies[word] += 1
      # Sinon, on crée une pair clé => valeur = 1
    else
      hash_of_frequencies[word] = 1
    end
  end
  return filter(hash_of_frequencies)
end

def transform(string)
  string.split.map do |word|
    word.downcase.gsub(/[?.,;]/, '')
  end
end

def filter(hash_of_frequencies)
  hash_of_frequencies.each do |word, frequence|
    if USELESS_WORDS.include?(word) || word.length < 4
      hash_of_frequencies.delete(word)
    end
  end
  hash_of_frequencies
end

USELESS_WORDS = ["have", "with", "this"]

def read_file(path_file)
  File.open(path_file).read.strip
end
