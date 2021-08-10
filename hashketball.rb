require 'pry'

# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here



def num_points_scored(name_of_player)
  game_hash.each do |location, team_data|
    team_data[:players].each do |attribute|
      if attribute[:player_name]==name_of_player
        return attribute[:points]
      end
    end
  end
end

def shoe_size(name_of_player)
  game_hash.each do |location, team_data|
    team_data[:players].each do |attribute|
      if attribute[:player_name]==name_of_player
        return attribute[:shoe]
      end
    end
  end
end

# def num_points_scored(player)
#   # game_hash.each{|key, value|}
#   # on a hash with each, we can target key,value pairs with ||
#   game_hash.each{|team, teaminfo|
#     # teaminfo.each{|info, data| but we don't need to iterate through teaminfo, just the array of players
#     teaminfo[:players].each{|player_info|
#       if player_info[:player_name] == player
#         return player_info[:points]
#       end
#     }
#   }
# end


def find_team(team)
  team_info = game_hash.find do |location, team_data|
    team_data[:team_name] == team
  end
    team_info[1]
end

def team_colors(team_name)
  team = find_team(team_name)
  team[:colors]
end

def team_names
  team_info = game_hash.map do |location, team_data|
    team_data[:team_name]
  end
end

def player_numbers(name_of_team) #returns an array
  game_hash.each do |team,info|
    if info[:team_name] == name_of_team
      # if the team_name in info is equal to name of team in argument, return players mapped where we get an array of all the numbers of the players in the team
      return info[:players].map do |p|
        p[:number]
      end
    end
  end
end

def player_stats(name_of_player)
  game_hash.each do |location, team_data|
    team_data[:players].each do |attribute|
      if attribute[:player_name] == name_of_player
        return attribute
      end 
    end
  end
end
