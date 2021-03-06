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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
# holiday_hash is identical to the one above
# add the second argument, which is a supply, to BOTH the
# Christmas AND the New Year's arrays
supply = "Balloons"
holiday_hash[:winter][:christmas] << supply
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
winter_stuff = []
holiday_hash[:winter].each do |k,v|
v.each {|x| winter_stuff << x}
end
winter_stuff
end

def all_supplies_in_holidays(holiday_hash)
# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.
holiday_hash.each do |season,holiday|
  season = season.to_s.capitalize!
  puts "#{season}:"
   holiday.each do |hol, supp|
     hol = hol.to_s
     if hol.include?("_")
       arr = []
       arr = hol.split("_")
       arr2 = []
       arr.each {|x| arr2 << x.capitalize}
       hol = arr2.join(" ")
       #hol = "#{hol}: "
     else
     hol = hol.to_s.capitalize!
     #puts "#{hol}: "
     end
     if supp.length > 1
     supplies = supp.join(", ")
     puts "  #{hol}: #{supplies}"
     elsif supp.length == 1
     supplies = supp.join
     puts "  #{hol}: #{supplies}"
     end
end
end


end

def all_holidays_with_bbq(holiday_hash)
# return an array of holiday names (as symbols) where supply lists
# include the string "BBQ"
  bar_b_q = []
  holiday_hash.each do |ssn, hldy|
    hldy.each do |x,y|
      if y.include?("BBQ")
      bar_b_q << x
    end
    end
  end
  bar_b_q

end
