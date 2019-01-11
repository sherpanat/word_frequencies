require_relative "../frequencies"

describe '#frequencies' do
  it 'should return an empty hash when an empty string is passed' do
    hash_of_frequencies = frequencies('')
    expect(hash_of_frequencies).to eq({})
  end

  it 'should return a hash of frequencies when a string is passed' do
    hash_of_frequencies = frequencies('salut hello salut')

    # {
    #   'salut' => 2,
    #   'toi' => 1
    # }
    expect(hash_of_frequencies['salut']).to eq(2)
    expect(hash_of_frequencies['hello']).to eq(1)
  end

  it 'should return a hash of frequencies wherever string capitalization or punctuation' do
    hash_of_frequencies = frequencies('Salut hello salut.')
    expect(hash_of_frequencies['salut']).to eq(2)
    expect(hash_of_frequencies['hello']).to eq(1)
  end
end
