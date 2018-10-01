class WorldCup
  attr_reader       :year,
                    :teams

  def initialize(year, teams)
    @year       = year
    @teams      = teams
  end

  def find_all_players

    # require 'pry';binding.pry
  end

  def active_players_by_position(position)
    new_array = @teams.find_all do |team|
      team.players.first.position == position
    end
    new_array.first.players
  end
end
