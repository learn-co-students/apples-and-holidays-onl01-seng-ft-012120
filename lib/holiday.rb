require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash.each do |season, holiday|
  if season == :winter
    holiday.each { |key,value| value << supply}
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each { |key,value| value << supply}
      end
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  results = []
  holiday_hash.each do |season,data|
      if season == :winter
        data.each {|k,v| results << v}
        end
      end
  results.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,data|
        puts "#{season.capitalize}:"
          data.each do |k,v|
          k=k.to_s
          if k.include?("_")
            puts "  #{k.split("_").map(&:capitalize).join(" ")}: #{v.join(", ")}"
          else
            puts "  #{k.capitalize}: #{v.join(", ")}"
          end
        end
      end
    end

def all_holidays_with_bbq(holiday_hash)
result = []
      holiday_hash.each do |season,data|
        data.each do |k,v|
          if v.include?("BBQ")
            result << k
          end
        end
      end
     result
end
