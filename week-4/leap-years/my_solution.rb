# Leap Years

# I worked on this challenge [by myself, with: Reuben].


# Your Solution Below

def leap_year?(year)
	if year % 4 == 0 			# WILL RETURN TRUE IF DIVISIBLE BY 4
								# 
    	if year % 100 == 0 		# IF IT IS DIVISIBLE BY 100 WILL RETURN FALSE

        	if year % 400 == 0 	# ONLY IF IT IS DIVISIBLE BY 400 WILL IT RETURN TRUE
        						# SO IF IT IS NOT DIVISIBLE BY 400 IT WILL RETURN FALSE
        						# MAKING THE ARGUMENT OF 100 ABOVE TRUE THEREFORE 4 AND 100 IS TRUE WHILE 400 IS FALSE
            	return true
         	end

      	return false
      	end

    return true

   	else
   		return false 			#EVERYTHING ELSE IS FALSE
	end
end
