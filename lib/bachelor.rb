require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
      if contestant["status"] == "Winner"
        return contestant["name"].split(" ").first
      end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season|
    season[1].each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
    data.each do |season|
      season[1].each do |contestant|
        if contestant["hometown"] == hometown
          counter += 1
        end
      end
    end
  counter
end

def get_occupation(data, hometown)
  data.each do |season|
    season[1].each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  contestants_ages = []
    data[season].each do |contestant|
      contestants_ages << (contestant["age"]).to_i
    end
  (contestants_ages.sum / contestants_ages.length.to_f).round(0)
end
