#Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

def substring(phrase, dictionary)
    phrase_words = phrase.downcase.split
    used_words = Hash.new(0)
  
    phrase_words.each do |phrase_word|
      dictionary.each do |ref_word|
        used_words[ref_word] += 1 if phrase_word.include?(ref_word)
      end
    end
    print used_words
  end

  phrase = "Howdy partner, sit down! How's it going?"
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substring(phrase, dictionary)