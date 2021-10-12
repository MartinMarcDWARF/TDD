# string = "wxyz!"
# chiffrement_key = 2
# def crypt_or_decrypt
#   puts "Souhaites-tu chiffrer ou déchiffrer ?"
#     userchoice = gets.chomp


#     case userchoice
#     when "chiffrer"
#       puts "Tape la phrase"
#       string = gets.chomp
#       puts "La clé ?"
#       chiffrement_key = gets.chomp
#       caesar_cipher(string, chiffrement_key)
#     when "déchiffrer"
#       puts "Tape la phrase"
#       string = gets.chomp
#       puts "La clé ?"
#       chiffrement_key = gets.chomp
#       caesar_cipher_reverse(string, chiffrement_key)    
#     end
#   end




#     if userchoice == "chiffrer"
#     print("Rentre la phrase à chiffrer.\n")
#     usercrypt = gets.chomp
#     print "Quel est la clé ?\n"
#     key = gets.chomp
#     # whatevercodeyouwant_1()
# elsif userchoice == "déchiffrer"
#     print("Rentre la phrase à déchiffrer ainsi que la clé de déchiffrage.\n")
#     userdecrypt = gets.chomp
#     print "Quel est la clé ?\n"
#     dkey = gets.chomp
#     # whatevercodeyouwant_2()
# else
#     print("Tu dois choisir parmi les deux options face de RAIE !\n")
# end
# end





    def caesar_cipher (string, chiffrement_key)

  
  
    if chiffrement_key >= 0 && chiffrement_key <= 26
  

      ascii_split = string.split(//).map!{ |a| a.ord }
  
      ascii_change_with_key = ascii_split.map! do |ascii_number|
  
        
        if ascii_number <= 122 && 97 <= ascii_number
          ascii_number = ascii_number + chiffrement_key
  
        
          if ascii_number > 122
            ascii_number = (ascii_number - 122) + (97 - 1)
          else
            ascii_number = ascii_number
          end
  
        
        elsif ascii_number <= 90 && 65 <= ascii_number
          ascii_number = ascii_number + chiffrement_key
  

          if ascii_number > 90
            ascii_number = (ascii_number - 90) + (65 - 1)
          else
            ascii_number = ascii_number
          end
  
        else

          ascii_number = ascii_number
        end
      end
  
    
      return ascii_change_with_key.map!{ |b| b.chr }.join
  
    else
      return "ce n'est pas un integer le nombre requis est trop bas (Il faut mettre de 0 à 26)!!"
    end
  end
  
  def caesar_cipher_reverse(string, chiffrement_key)
    
    
    if chiffrement_key <= 0 && chiffrement_key >= -26
  

      ascii_split = string.split(//).map!{ |a| a.ord }
  
      ascii_change_with_key = ascii_split.map! do |ascii_number|
  
      
      
        if ascii_number <= 122 && 97 <= ascii_number
          ascii_number = ascii_number + chiffrement_key
          
        if ascii_number == 92
          ascii_number = 118
        end
          if ascii_number > 122
            ascii_number = (ascii_number + 122) - (97 + 1)
          else
            ascii_number = ascii_number
          end
  
        
        elsif ascii_number <= 90 && 65 <= ascii_number
          ascii_number = ascii_number + (chiffrement_key + 26)

          if ascii_number > 90
            ascii_number = (ascii_number - 90) + (65 - 1)
          else
            ascii_number = ascii_number
          end
  
        else

          ascii_number = ascii_number
        end
      end
  
    
      return ascii_change_with_key.map!{ |b| b.chr }.join
  
    else
      return "ce n'est pas un integer le nombre requis est trop haut (Il faut mettre de -1 à -26)!!"
    end
  end


  def perform
    
    crypt_or_decrypt
    
    # caesar_cipher
    # caesar_cipher_reverse
  end

  perform
  
  #  puts caesar_cipher_reverse("Bfqqf Unjwwj ijanjsx rf gnfyhm !", -5 )
      