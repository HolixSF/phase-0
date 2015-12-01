# Virus Predictor

# I worked on this challenge [with: Joe Plonsker].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#
#
# require_relative 'state_data'
# require_relative will look for a file by the same name in the same directory, whereas require
# looks for the file in its load path.

class VirusPredictor

  #intialize method takes three arguments and sets them to instance variables 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #calls the other methods
  def virus_effects
  #   predicted_deaths(@population_density, @population, @state)
  #   speed_of_spread(@population_density, @state)
    deaths_and_spread(@population_density, @population, @state)
  end
  
  def self.all_state_data
    STATE_DATA.each do |state, population_data| VirusPredictor.new(state, population_data[:population_density], population_data[:population]).virus_effects end
  end


  private
#   #control flow using the previous arguments to print number of deaths per state
#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end
#   #control flow using the previous arguments to print speed of spread 
#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end
  
  def deaths_and_spread(population_density, population, state)
    rate = 0.0
    case @population_density
      when 200..
        number_of_deaths = (@population * 0.4).floor
        rate += 0.5
      when 150..199
        number_of_deaths = (@population * 0.3).floor
        rate += 1
      when 100..149
        number_of_deaths = (@population * 0.2).floor
        rate += 1.5
      when 50..99
        number_of_deaths = (@population * 0.1).floor
        rate += 2
      else
        number_of_deaths = (@population * 0.05).floor
        rate += 2.5
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{rate} months.\n\n"
  end

  
end

#=======================================================================


# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# STATE_DATA.keys.each do |state| 
#   vp_program = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects
# end

VirusPredictor.all_state_data
  
#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

  # In the first part of the hash the keys are strings and in the nested part the keys are symbols.

# What does require_relative do? How is it different from require?

  # Require look for the given file in its load path while require_relative will look for the given file under its relative path.

# What are some ways to iterate through a hash?

  # You can iterate through a hash using its keys or its values or even both. You can use each like we did above.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

  # To me it seemed like the methods are calling the same variables and we ended up creating a single method to refactor the private methods before we found out not to.

# What concept did you most solidify in this challenge?

  # I definitely have more understanding of variables and their scope as well as understanding how to manipulate information inside of a class.
  


