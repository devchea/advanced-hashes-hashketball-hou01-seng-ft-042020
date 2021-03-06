# Write your code here!
def game_hash
  {
    away: { team_name: 'Charlotte Hornets',
      colors: ["Turquoise", "Purple"],
      players: [
        { player_name: 'Jeff Adrien',
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2 },
        { player_name: 'Bismack Biyombo',
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10 },
        { player_name: 'DeSagna Diop',
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5 },
        { player_name: 'Ben Gordon',
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0 },
        { player_name: 'Kemba Walker',
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12 }
            ] },
    home: { team_name: 'Brooklyn Nets',
      colors: ["Black", "White"],
      players: [
        { player_name: 'Alan Anderson',
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1 },
        { player_name: 'Reggie Evans',
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7 },
        { player_name: 'Brook Lopez',
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15 },
        { player_name: 'Mason Plumlee',
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5 },
        { player_name: 'Jason Terry',
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1 }
      ] }
  }
end

require './hashketball.rb'
require 'pry'

def num_points_scored(player_search)
  game_hash.values.each do |team_attribute|
    team_attribute[:players].each do|player_attribute|
      if player_attribute[:player_name] == player_search
        return player_attribute[:points]
      end
    end
  end
end

def shoe_size (player_search)
  game_hash.values.each do |team_attribute|
    team_attribute[:players].each do|player_attribute|
      if player_attribute[:player_name] == player_search
        return player_attribute[:shoe]
      end
    end
  end
end

def team_colors (team_color_search)
  game_hash.values.each do |team_attribute|
    if team_attribute[:team_name] == team_color_search
      return team_attribute[:colors]
    end
  end
end

def team_names
  game_hash.values.map do |team_attribute|
      team_attribute[:team_name]
  end
end

# charlotte_numbers = [0, 2, 4, 8, 33]
# brooklyn_numbers = [0, 1, 11, 30, 31]
def player_numbers (team_name)
  game_hash.values.each do |team_attribute|
    if team_attribute[:team_name] == team_name
      return team_attribute[:players].collect do |player|
        player[:number]
      end
    end
  end
end

def player_stats(player_name)
  game_hash.values.each do |team_info|
    team_info[:players].each do |player|
      if player.has_value?(player_name)
         player.delete(:player_name)
         return player
      end
    end
  end
end

def big_shoe_rebounds
  biggest_size = 0
  most_rebounds = 0
  game_hash.values.each do |team_info|
    team_info[:players].each do |player|
      if player[:shoe] > biggest_size
        biggest_size = player[:shoe]
        most_rebounds = player[:rebounds]
      end
    end
  end
  return most_rebounds
end

def most_points_scored
  most_points = 0
  most_points_name
  game_hash.values.each do |team_info|
    team_info[:players].each do |player|
      if player[:points] > most_points
        most_points = player[:points]
        most_points_name = [:player_name]
      end
    end
  end
  return most_points_name
end
