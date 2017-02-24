# Pseudocode

# most_common_words('some_file.txt', 3)
# > 'apples': 18 occurrences
# > 'oranges': 13 occurrences
# > 'melons': 9 occurrences

# 1. Solucion Inicial
def most_common_words(filename, number_words)
  archivo1=File.open("./#{filename}", "r") do |file|
    text= file.gets(nil,49773)
    hash1= Hash.new(0)
    iteraciones=0
    reserved_words=['ref','and','by','his','that','with','to','in','an','of','the','is','a','s','was','this','it','from','for','or','p','on','her','are']

    result=text.scan /\w+/
    result=result.map do |word|
       word.downcase!
       word
    end
    result.each do |word|
      if (reserved_words.include?(word))
        result.delete(word)
      end
    end
    result.each do |word|
       iteraciones=result.count(word)
       hash1[word]=iteraciones
    end
    array2=hash1.max_by(number_words) { |word,number_occ| number_occ }
    array2.each do |word, number_occ|
      puts "'#{word}': #{number_occ} occurrences"
    end
  end
end


most_common_words('source.txt', 20)
# 2. Solucion con Refactor





###### DRIVER CODE #########
