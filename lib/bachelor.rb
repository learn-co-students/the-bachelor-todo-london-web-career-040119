data = {
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}

for item in data.keys
  i = 0
  while i <= data.keys.length
    if data[item][i][:occupation] == "Entertainer"
      return data[item][i][:name]
    end
    i = i+1
  end
end

def get_first_name_of_season_winner(data, season)
  for i in data[:season][i][:status]
    if data[:season][i][:status] == "Winner"
      return [:season][i][:name].split.first
    end
  end
  # code here
end

def get_contestant_name(data, occupation)
  for item in data.keys
    i = 0
    while i <= data.keys.length
      if data[item][i][:occupation] == occupation
        return data[item][i][:name]
      end
      i = i+1
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  counter = 0


  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
