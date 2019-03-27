def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, name|
      name.each do |hash|
          if hash["occupation"] == occupation
              return hash["name"]
          end
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0 
    data.each do |season, name|
        name.each do |hash|
            if hash["hometown"] == hometown
                count += 1
            end
        end
    end
 count
end

def get_occupation(data, hometown)
  data.each do |season, name|
      name.each do |hash|
          if hash["hometown"] == hometown
              return hash["occupation"]
          end
      end
  end
end

def get_average_age_for_season(data, season)
    age = []
    data.each do |season_no, name|
        if season_no ==  season
            name.each do |hash|
                age << hash["age"].to_f
            end
        end
    end
    num = age.sum / age.length
    num.round
end
