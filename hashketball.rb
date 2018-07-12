require "pry"

def game_hash
  alan_anderson_stats = {number:0, shoe:16, points:22, rebounds:12, assists:12, steals:3, blocks:1, slam_dunks:1}
  reggie_evans_stats = {number:30, shoe:14, points:12, rebounds:12, assists:12, steals:12, blocks:12, slam_dunks:7}
  brook_lopez_stats = {number:11, shoe:17, points:17, rebounds:19, assists:10, steals:3, blocks:1, slam_dunks:15}
  mason_plumlee_stats = {number:1, shoe:19, points:26, rebounds:12, assists:6, steals:3, blocks:8, slam_dunks:5}
  jason_terry_stats = {number:31, shoe:15, points:19, rebounds:2, assists:2, steals:4, blocks:11, slam_dunks:1}

  jeff_adrien_stats = {number:4, shoe:18, points:10, rebounds:1, assists:1, steals:2, blocks:7, slam_dunks:2}
  bismak_biyombo_stats = {number:0, shoe:16, points:12, rebounds:4, assists:7, steals:7, blocks:15, slam_dunks:10}
  desagna_diop_stats = {number:2, shoe:14, points:24, rebounds:12, assists:12, steals:4, blocks:5, slam_dunks:5}
  ben_gordon_stats = {number:8, shoe:15, points:33, rebounds:3, assists:2, steals:1, blocks:1, slam_dunks:0}
  brendan_haywood_stats = {number:33, shoe:15, points:6, rebounds:12, assists:12, steals:22, blocks:5, slam_dunks:12}
  game_hash = {:home => {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => {"Alan Anderson" => alan_anderson_stats, "Reggie Evans" => reggie_evans_stats, "Brook Lopez" => brook_lopez_stats, "Mason Plumlee" => mason_plumlee_stats, "Jason Terry" => jason_terry_stats}}, :away => {:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"], :players => {"Jeff Adrien" => jeff_adrien_stats, "Bismak Biyombo" => bismak_biyombo_stats, "DeSagna Diop" => desagna_diop_stats, "Ben Gordon" => ben_gordon_stats, "Brendan Haywood" => brendan_haywood_stats}}}
  return game_hash
end

def num_points_scored(player_name)
 # game_hash[:home][:players]
 # game_hash[:away][:players]
 game_hash.each do |key, team_info|
   if team_info[:players].has_key?(player_name)
     return team_info[:players][player_name][:points]
   end
 end
end

def shoe_size(player_name)
 game_hash.each do |key, team_info|
   if team_info[:players].has_key?(player_name)
     return team_info[:players][player_name][:shoe]
    end
  end
end

def team_colors(team_name)
  game_hash.each do |key, team_info|
    if team_info[:team_name] == team_name
      return team_info[:colors]
    end
  end
end

def team_names
  team_names = []
  game_hash.each do |key, team_info|
    team_names << team_info[:team_name]
  end
  team_names
end

# def player_numbers(player_name)
#   game_hash.each do |key, team_info|
#     if team_info[:players].has_key?(player_name)
#       return team_info[:players][player_name][:number]
#     end
#   end
# end

def player_numbers(team_name)
  team_numbers = []
  game_hash.each do |key, team_info|
    if team_info[:team_name] == team_name
      team_info[:players].each do |names, stats|
       team_numbers << stats[:number]
      end
    end
  end
  team_numbers
end

def player_stats(player_name)
  game_hash.each do |key, team_info|
    #puts team_info[:players].has_key?(player_name)
    #to check where i was, it returned true, fasle
    #for "Reggie Evans"
    if team_info[:players].has_key?(player_name)
      return team_info[:players][player_name]
    end
  end
end

def big_shoe_rebounds # my first thought here is .sort but where do i store the
  # key associated with the largest value once i get it... as i typed this i
  # thought of maybe h.key(value)
  sizes = []
  sorted_sizes = []
  game_hash.each do |key, team_info|
    team_info[:players].each do |names, stats|
      #puts stats[:shoe]
      sizes << stats[:shoe]
      sorted_sizes = sizes.sort
    end
      team_info[:players].each do |names, stats|
        if stats[:shoe] == sorted_sizes[-1]
        # puts "boop"
        # puts "names" # => Mason Plumlee
        # puts stats[:rebounds] # => 12 // but fails the test becuase i'm returning
        # game_hash, instead of what i was specifically asked to return.
        return stats[:rebounds]
      end
    end
  end
end

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    #binding.pry
      #team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        #binding.pry

        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        #data.each do |data_item|
            #binding.pry
      #end
    #end
  end
end

good_practices
