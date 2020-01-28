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

def all_holidays_with_bbq(holiday_hash)
  second_array = []
  holiday_hash.each do |season, second_hash|
    second_hash.each do |holiday, array|
      if array.include?("BBQ")
        second_array << holiday
      end
    end
  end
  print second_array
end

all_holidays_with_bbq(holiday_hash)