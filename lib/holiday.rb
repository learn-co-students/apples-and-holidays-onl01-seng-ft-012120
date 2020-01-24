require 'pry'
holiday_hash = 
  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |key, value|
    value << supply
  end 

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply 

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
    holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def symbol_to_string(symbol)
  symbol_to_string = symbol.to_s 
  i = 0 
  while i < symbol_to_string.length do 
    if symbol_to_string[i] == '_'
      symbol_to_string[i] = ' '
    end
    i += 1 
  end
  #print symbol_to_string
  symbol_to_string
  #binding.pry 
end
#symbol_to_string(:this_is_a_symbol)

def capitalize_each_word(string)
  string_array = string.split
  new_array = []
  string_array.each do |word| 
    if word == word.upcase
      new_array<< word
    else
      new_array << word.capitalize
    end
  end
  #puts new_array
  new_string = new_array.join(' ')
  #puts new_string
  new_string
end

#capitalize_each_word("this is a sentence")


def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


  string = ''
  holiday_hash.each do |season, season_holidays|
    season1 = season.capitalize 
    string += "#{season1}:\n"
    season_holidays.each do |holiday, supplies_array|
      holiday1 = capitalize_each_word(symbol_to_string(holiday))
      string += "  #{holiday1}: "
      supplies_array.each do |supply| 
          supply = capitalize_each_word(supply)
          if supply == supplies_array[-1] || supplies_array.length ==1 
            #puts "supply is #{supply} supplyrray1 is #{supplies_array[-1]}"
            string += "#{supply}\n"
          else 
            string += "#{supply}, "
          end
        end
      end
    end
    puts string
    string
end

#all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holiday_array = []
  holiday_hash.each do |season, season_holiday_hash|
    season_holiday_hash.each do |holiday, supply_array|
      holiday = holiday
      supply_array.each do |i|
        if i == "BBQ"
          bbq_holiday_array<< holiday
        end
      end
    end
  end
  bbq_holiday_array
end







