require 'pry'

def get_first_name_of_season_winner(data, season)

  winner_first_name = ""

  data[season].each do |season, data|
    if season["status"] == "Winner"
       winner_first_name = (season["name"]).split(" ")[0]
    end
  end

  winner_first_name

end

def get_contestant_name(data, occupation)

  contestant_name = ""

  data.each do |season, contestants|
    contestants.each do |contestant, data|
      if contestant["occupation"] == occupation
        contestant_name = contestant["name"]
      end
    end
  end

  contestant_name

end

def count_contestants_by_hometown(data, hometown)

  hometown_count = 0

  data.each do |season, contestants|
    contestants.each do |contestant, data|
      if contestant["hometown"] == hometown
        hometown_count = hometown_count + 1
      end
    end
  end

  hometown_count

end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
