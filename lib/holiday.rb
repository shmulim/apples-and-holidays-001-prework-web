def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, val|
    if key == :christmas || key == :new_years
      val << supply
    end
  end
end
 
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
    puts "#{key.capitalize}:"
    value.each do |k, v|
      k = k.to_s.split("_").map { |x| x.capitalize}.join(" ")
      v = v.join(", ")
      puts "  #{k}: #{v}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  arr = []
  holiday_hash.each do |key, value|
    value.each do |k, v|
      arr << k if v.include? "BBQ"
    end
  end
  arr
end