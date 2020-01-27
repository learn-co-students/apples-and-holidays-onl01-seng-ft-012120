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
  return holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season,holidays|
    if season == :winter
      count = 0
      while count < holidays.keys.length
        holiday = holidays.keys[count]
        array = holiday_hash[season][holiday] << supply
        count += 1
      end
    end
  end
  return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  return holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |sea,holiday|
    if sea == season
      holiday[holiday_name] = supply_array
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  arrayofsupplies = []
  holiday_hash.each do |season,holidays|
    if season == :winter
      holidays.each do|holiday,listofsupply|
        count = 0
        while count < listofsupply.length
          arrayofsupplies << listofsupply[count]
          count += 1
        end
      end
    end
  end
  return arrayofsupplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season,holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday,supplylist|
      checking = ""
      modified = holiday.to_s.split("_")
      count = 0
      while count < modified.length
        holiday = modified[count].capitalize
        checking += "#{holiday} "
        count += 1
      end
      checking = checking.rstrip
      puts "  #{checking}: #{supplylist.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  arr_holidays = []
  holiday_hash.each do |season,holidays|
    holidays.each do |key,value|
      arr_holidays << key if value.include?("BBQ")
    end
  end
  return arr_holidays
end
