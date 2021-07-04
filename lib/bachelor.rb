def get_first_name_of_season_winner(data, season)
  data[season].each do |person| # target data set and its specific season, then iterate over all people
    person.each do |key, value| # look at all key and values of people
      if value == "Winner"
        winner_name = person["name"]
        return winner_name.split(" ").first #return first name
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |people|
      people.each do |key, value|
        if value == occupation
          return people["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |people|
      people.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |people|
      people.each do |key, value|
        if value == hometown
          return people["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
age = 0
count = 0
  data[season].each do |hash|
    hash.each do |key, value|
      if key == "age"
        count += 1
        age += value.to_f
      end
    end
  end
   answer = (age/count).round
return answer
end
