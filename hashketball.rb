require "pry"
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
          slam_dunks: 1,
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
          slam_dunks: 7,
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
          slam_dunks: 15,
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
          slam_dunks: 5,
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
          slam_dunks: 1,
        },
      ],
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
          slam_dunks: 2,
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
          slam_dunks: 10,
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
          slam_dunks: 5,
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
          slam_dunks: 0,
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
          slam_dunks: 12,
        },
      ],
    },
  }
end

# Write code here

def num_points_scored(name)
  get_player_hash(name)[:points]
end

def shoe_size(name)
  get_player_hash(name)[:shoe]
end

def team_colors(team_name)
  get_team_hash(team_name)[:colors]
end

def team_names
  team_names = []
  game_hash.each do |key, value|
    team_names.push(value[:team_name])
  end
  team_names
end

def player_numbers(team_name)
  get_team_hash(team_name)[:players].map do |player|
    player[:number]
  end
end

def player_stats(name)
  get_player_hash(name)
end

def big_shoe_rebounds
  largestShoe = 0
  name = ""
  game_hash.each do |key, value|
    value[:players].each do |player|
      if player[:shoe] > largestShoe
        name = player[:player_name]
        largestShoe = player[:shoe]
      end
    end
  end
  get_player_hash(name)[:rebounds]
end

def most_points_scored(name)
end

#Helper methods
def get_player_hash(name)
  player_hash = {}

  game_hash.each do |key, value|
    if player_hash == {}
      value[:players].find do |player|
        if player[:player_name] == name
          player_hash = player
        end
      end
    end
  end
  player_hash
end

def get_team_hash(team_name)
  team_hash = {}
  game_hash.each do |key, value|
    if value[:team_name] == team_name
      team_hash = value
    end
  end
  team_hash
end
