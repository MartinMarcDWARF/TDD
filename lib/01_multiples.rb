final_number = 0
number = 0

def is_multiple_of_3_or_5? (number)
  if number % 5 != 0 && number % 3 != 0
    return false
  else
    return true
    end
  end

def sum_of_3_or_5_multiples? (final_number)
  final_sum = 0 
  current_number = 0

  
  if final_number.class == String || final_number < 0 || final_number.class == Float
    return "Un entier naturel CONNARD !"
  else
    while current_number < final_number

      if is_multiple_of_3_or_5?(current_number)
        final_sum = final_sum + current_number # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
      else
        # si la réponse est "false"…ben y a pas de else : ce "current_number" n'est pas multiple,
        # donc on passe au suivant en oubliant celui-là. On repart dans la boucle.
      end
      current_number += 1

    end
  end
    return final_sum #on retourne la variable qui contient la somme du tout
end