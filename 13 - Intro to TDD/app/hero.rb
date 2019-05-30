class Hero

    attr_accessor :abilities

    # Accepts an array of abilities
    # Each ability will be represented by a hash with a name and "coolness" rating
    def initialize(abilities)
        self.abilities = abilities
    end

    # Returns the hero's coolest ability
    def coolest_ability
      # Gotta finish writing this...
      abilities.max do |ability_one, ability_two|
        ability_one[:coolness] <=> ability_two[:coolness]
      end
    end

    # Returns a list of ability *names* ordered alphabetically
    def ordered_abilities
       ability_names.sort
    end

    def ability_names
      # Just need names, not the whole hash that contains the name. What enumerable could I use to get just the names together in a new array?
      self.abilities.map do |ability_info|
        ability_info[:name]
      end
    end

    def add_ability(new_ability)
      if new_ability.class == Hash && new_ability[:name] && new_ability[:coolness]
        self.abilities << new_ability
      else
        raise ArgumentError, "please provide a hash with a :name key and a :coolness key"
      end
    end

end
