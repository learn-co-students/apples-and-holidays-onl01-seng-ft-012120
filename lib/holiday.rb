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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas][2] = supply
  holiday_hash[:winter][:new_years] << supply
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

holiday_hash = {
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


def all_supplies_in_holidays(holiday_hash)
   holiday_hash.each do |key_season, value_second_hash|
     puts key_season.to_s.capitalize! + ":"
     value_second_hash.each do |holiday, value_array|
       if holiday.to_s.split("_").size > 1
         new_array = holiday.to_s.split("_") 
         third_array = []
         new_array.each do |word|
           third_array << word.capitalize
         end
         puts ("  ") + third_array.join(" ") + ": " + value_array.join(", ")
       else 
         puts ("  ") + holiday.to_s.capitalize! + ": " + value_array.join(", ")
       end
     end
   end
 end

def all_holidays_with_bbq(holiday_hash)
  second_array = []
  holiday_hash.each do |season, second_hash|
    second_hash.each do |holiday, array|
      if array.include?("BBQ")
        second_array << holiday
      end
    end
  end
  second_array
end







