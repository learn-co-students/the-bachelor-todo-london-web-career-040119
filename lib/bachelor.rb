require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |element|
    if element ["status"]== "Winner"
    return element["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,season_data|
    season_data.each do |element|
      if element["occupation"]== occupation
      return element["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, season_data|
    season_data.each do |element|
      if element["hometown"] == hometown
        counter+=1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, season_data|
    season_data.each do |element|
      if element["hometown"] == hometown
        return element["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter=0
  total_age=0
    data[season].each do |element|
      total_age+= element["age"].to_i
        counter+=1
    end
   average=total_age.to_f/counter.to_f
   average.round
 end
