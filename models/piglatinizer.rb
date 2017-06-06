class PigLatinizer

  VOWELS = %w[a e i o u]

  def to_pig_latin sentence
    piglatinize_sentence = []
    sentence.split(' ').each do |word|
      piglatinize_sentence << piglatinize(word)
    end
    piglatinize_sentence.join(' ')
  end

  def piglatinize word
    word.split('').each_with_index do |letter, index|
      if index != 0 && VOWELS.include?(letter.downcase)
        consonants = word.slice!(0..index-1)
        return word + consonants + "ay"
      elsif index == 0 && VOWELS.include?(letter.downcase)
        return word + "way"
      end  
    end
  end

end
