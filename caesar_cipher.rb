# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string.

def caesar_cipher(phrase,offset)
    cipher = ""
    lc_alpha = "abcdefghijklmnopqrstuvwxyz"
    uc_alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    phrase.chars.each do |char|
      if lc_alpha.include?(char)
        cipher.concat << lc_alpha.chars[(lc_alpha.index(char).to_i + offset) % 26]
      elsif uc_alpha.include?(char)
        cipher.concat << uc_alpha.chars[(uc_alpha.index(char).to_i + offset) % 26]
      else
        cipher.concat << char
      end
    end
    puts cipher
  end
  
  print "Enter phrase: "
  phrase = gets.chomp
  
  print "Enter offset: "
  offset = gets.chomp.to_i
  
  caesar_cipher(phrase,offset)