# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#refers to a file within the current directory
#relative is for when the file is outside the current directory
require_relative 'state_data' 

class VirusPredictor

  def initialize(state_of_origin, population_density, population) #creating default instance variables  of state, pop density, and population
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects 
    predicted_deaths #calling the outputs of the other methods to present the data in a user-friendly way
    speed_of_spread
  end

  private

  def predicted_deaths #basing off the pop density, predicting # of deaths for that area, and printing the result
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end

    number_of_deaths = (@population * multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #using pop density and printing how fast the disease spreads

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end


    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each do |state, pop_data|
  VirusPredictor.new(state, pop_data[:population_density], pop_data[:population]).virus_effects
end




#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
One uses a hash rocket, and the other uses symbols. 

What does require_relative do? How is it different from require?
require_relative links another file within the same directory. require would link a file outside
of the current directory. require would require the path name. Both grant you access to data within
another file.

What are some ways to iterate through a hash?
You can iterate through a hash using a .each, using 2 params, one for key and one for value.
You could also use .each_key or .each_value to iterate through keys/values specifically.

When refactoring virus_effects, what stood out to you about the variables, if anything?
If you're using other methods in the class within a method, see if the other methods are already using 
instance variables, and what they're doing. The point of instance variables is to leverage them 
across different methods in the class, so its important to keep in mind how they're being
using in other methods in the class.

What concept did you most solidify in this challenge?
-iterating through hashes, specifically how to access hash values within a loop.
-how to use driver code
-benefits of using instance variables

=end

