class Num_of_words
  def initialize (sentence)
    @sentence = sentence
  end
  def words_array
    sentence = @sentence
    array_of_words = Array.new
    array_of_words = sentence.split(" ")
    return array_of_words
  end
  def sort_by_num
    words_array.inject(Hash.new(0)){|hash,x| hash[x] += 1; hash}
  end
end

mystring = Num_of_words.new("abcd ab bc ab abc abcd")
puts mystring.sort_by_num