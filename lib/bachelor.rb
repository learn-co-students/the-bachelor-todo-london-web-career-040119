require 'pry'

def all_contestants(data)
  data.values.flatten
end

def get_first_name_of_season_winner(data, season)
  data[season].find { |person| person["status"] == "Winner" }["name"].split[0]
end

def get_contestant_name(data, occupation)
  all_contestants(data).find {|contestant| contestant["occupation"] == occupation}["name"]
end

def count_contestants_by_hometown(data, hometown)
  all_contestants(data).select {|contestant| contestant["hometown"] == hometown}.length
end

def get_occupation(data, hometown)
  all_contestants(data).find { |contestant| contestant["hometown"] == hometown }["occupation"]
end

def get_average_age_for_season(data, season)
  sum = 0
  data[season].each do |contestant|
    sum += contestant["age"].to_i
  end
  (sum.to_f / data[season].length).round(0)
end
