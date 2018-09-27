require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/team'
require './lib/world_cup'

class WorldCupTest < Minitest::Test
  def test_it_exists
    france = Team.new("France")
    croatia = Team.new("Croatia")
    world_cup = WorldCup.new(2018, [france, croatia])
    assert_instance_of WorldCup, world_cup
  end

  def test_it_has_attributes
    france = Team.new("France")
    croatia = Team.new("Croatia")
    world_cup = WorldCup.new(2018, [france, croatia])

    assert_equal 2018, world_cup.year
    assert_equal [france, croatia], world_cup.teams
  end

  def test_
    france = Team.new("France")
    croatia = Team.new("Croatia")
    mbappe = Player.new("Kylian Mbappe", :forward)
    griezmann = Player.new("Antoine Griezmann", :forward)
    pogba = Player.new("Paul Pogba", :midfielder)
    modric = Player.new("Luka Modric", :midfielder)
    perisic = Player.new("Ivan Perisic", :forward)
    vida = Player.new("Domagoj Vida", :defender)
    world_cup = WorldCup.new(2018, [france, croatia])

    france.add_player(mbappe)
    france.add_player(griezmann)
    france.add_player(pogba)
    croatia.add_player(modric)
    croatia.add_player(perisic)
    croatia.add_player(vida)

    assert_equal [mbappe, griezmann, perisic], world_cup.active_players_by_position(:forward)
    assert_equal true, croatia.eliminated
    assert_equal [mbappe, griezmann], world_cup.active_players_by_position(:forward)
  end
end