require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash[:summer][:fourth_of_july][1]
  #return the second element [0,1] in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, items|
    items << supply
    puts items
  end 
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, items|
    items << supply 
    puts items
  end
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash # remember to return the updated hash
end

def all_winter_holiday_supplies(holiday_hash)
  array = holiday_hash[:winter].collect do |holiday, supply|
  supply
  end
  array.flatten 
  # return an array of all of the supplies that are used in the winter season
end

# No syntax error above this line

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|  
    puts "  #{holiday.to_s.split("_").collect{|x| x.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end
  end
  # iterate through holiday_hash and print items such that your readout resembles (for each season):
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
end

# No syntax error below this line

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, holidays|
    holidays.collect do |holiday, items|
      if items.include?("BBQ")
        holiday
      end
    end   
  end.flatten.compact   
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end
