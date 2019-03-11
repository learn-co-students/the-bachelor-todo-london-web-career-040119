thebachelor = { 
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation": "Nanny/Freelance Journalist",
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
      "occupation": "Dental Assitant",
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

def get_first_name_of_season_winner(data, season)

	#this method returns the first name of that seasons winner
	#pass the season of the show, and then it returns only th FIRST NAME of the winner for that season
	#iterate through the inital hash to access the season number
	#then iterate through the array, to access the hash inside
	#acess the "status" to get the output
  data.each do |season, contestant_Data|
    contestant_Data.each do |a|
      a.each do |attribute, value|
        if value == "Winner"
          return a[:name]
        end
      end 
    end
  end
end

get_first_name_of_season_winner(thebachelor, "season 29") #returns the full name of only "Beth Smalls"
			
def get_contestant_name(data, occupation) #this method takes in the data hash and an occupation string and returns the name of the woman who has that occupation

	#iterate through the initial hash to access the seasons
	#iterate through the seasons to access the arrays inside
	#access the occupation element of the array
	#return the person who has the occupation

	data.each do |season, contestant_data|
		contestant_data.each do |a|
			a.each do |attribute, value|
				if attribute == :occupation
					return a[:name]
				end 
			end 
		end 
	end
end

get_contestant_name(thebachelor, "Chiropractic Assistant" ) #returns the full name of only "Beth Smalls"



def count_contestant_by_hometown(data, hometown) #this method should return the number of contestants from the hometown passed
	#include a counter variable
	#iterate through the hash to access the seasons
	#access the array 
	#access the hometown key in the hash
	#keep count

	counter = 0 
	data.each do |season, contestant_data|
		contestant_data.each do |a|
			a.each do |attribute, value|
				if attribute == :hometown
					counter += 1
				end
			end 
		end 
	end 

	return counter
end 

count_contestant_by_hometown(thebachelor, "Denver, Colorado") #returns the number 4, I have no idea why

def get_occupation(data, hometown) #should return the occupation of of the first contestant who hails from the hometown

	data.each do |season, contestant_data|
		contestant_data.each do |a|
			a.each do |attribute, value|
				if attribute == :hometown
					return a[:name]
				end 
			end 
		end 
	end

end 

def average_age_for_season(data, season) #returns the average age of all contestants for that season
end