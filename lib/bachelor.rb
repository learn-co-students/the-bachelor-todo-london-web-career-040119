thebachelor = { 
  "season 30" => [
    {
      "name" =>      "Beth Smalls",
      "age" =>       "26",
      "hometown" =>  "Great Falls, Virginia",
      "occupation" => "Nanny/Freelance Journalist",
      "status" =>    "Winner"
    },
    {
      "name" =>       "Becca Tilley",
      "age" =>        "27",
      "hometown" =>   "Shreveport, Louisiana",
      "occupation" => "Chiropractic Assistant",
      "status" =>     "Eliminated Week 8"
    }
  ],
  "season 29" => [
    {
      "name" =>      "Ashley Yeats",
      "age" =>       "24",
      "hometown" =>  "Denver, Colorado",
      "occupation" => "Dental Assitant",
      "status" =>    "Winner"
    },
    {
      "name" =>       "Sam Grover",
      "age" =>        "29",
      "hometown" =>   "New York, New York",
      "occupation" => "Entertainer",
      "status" =>     "Eliminated Week 6"
    }
  ]
}

def get_first_name_of_season_winner(data, season)
  data[season].detect { |contestant| contestant["status"] == "Winner" }["name"].split.first
end

get_first_name_of_season_winner(thebachelor, "season 29")

def get_contestant_name(data, occupation)
  data.values.flatten.detect { |contestant| contestant["occupation"] == occupation }
end

get_contestant_name(thebachelor, "Chiropractic Assistant")

def count_contestant_by_hometown(data, town)
  data.values.flatten.select { |contestant| contestant["hometown"] == town }.count
end

count_contestant_by_hometown(thebachelor, "New York, New York")

def get_occupation(data, hometown)
  data.values.flatten.detect { |contestant| contestant["hometown"] == hometown }["occupation"]
end

get_occupation(thebachelor, "New York, New York")

def average_age_for(data, season)
  contestants = data[season]
  #                                        vvvvvvv
  contestants.sum { |contestant| contestant["age"].to_f } / contestants.count
end

average_age_for(thebachelor, "season 30")