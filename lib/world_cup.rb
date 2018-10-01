class WorldCup
  attr_reader       :year,
                    :teams

  def initialize(year, teams)
    @year       = year
    @teams      = teams
  end

  def active_teams
    @teams.find_all do |team|
      team.eliminated == false
    end
  end

  def find_all_players
    players = active_teams.map do |team|
      team.players
    end
    players.flatten
  end

  def active_players_by_position(position)
    find_all_players.find_all do |player|
      player.position == position
    end
  end
end
