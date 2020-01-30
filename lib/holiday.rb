require 'pry'

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
  holiday_supplies.each do |key, data|
  if key == :summer
    return data[:fourth_of_july][1]
  end
end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, item|
    item << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, item|
    item << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  return holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  new_arr = []
  holiday_hash[:winter].each do |holiday, item|
    new_arr << item
  end
  return new_arr.flatten
end

def all_supplies_in_holidays(holiday_hash)
  
  holiday_hash.each do |key, value|
    puts "#{key.to_s.capitalize}:"
    value.each do |festival, item|
      new_arr = festival.to_s.split("_")
      new_arr.each_with_index do |element, index|
        new_arr[index] = element.capitalize
      end
      str = ""
      item.each do |x|
       if x == item.last 
         str += x 
       else
         str += "#{x}, "
       end
      end
      puts "  #{new_arr.join(" ")}: #{str}"
      
    end
    
      
    
  end
end

def all_holidays_with_bbq(holiday_hash)
  new_arr = []
  holiday_hash.each do |season, festival|
    festival.each do |festival, item|
      if item.include?("BBQ")
        new_arr.push(festival)
      end
    end
  end
  return new_arr.flatten
end







