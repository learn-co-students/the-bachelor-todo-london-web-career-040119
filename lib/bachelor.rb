def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    contestant.each do |k, v|
      if v == "Winner"
        name = contestant["name"]
        return name.split(' ').first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  
  data.each do |season, contestant|
    contestant.each do |information|
     information.each do |key, value|
       if value == occupation
         return information["name"]
       end
     end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  # code here
home = 0
  data.each do |season, contestant|
    contestant.each do |information|
      information.each do |key, value|
        if value == hometown
          home += 1
        end
      end
    end
  end
home
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant|
    contestant.each do |information|
      information.each do |key, value|
        if value == hometown
          return information["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  count = 0 
  age = 0
  data[season].each do |information|
    information.each do |key, value|
      if key == "age"
        count += 1 
        age += value.to_f
      end
    end
  end
  average = (age/count).round 
  
end
