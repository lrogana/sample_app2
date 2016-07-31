require 'test_helper'

class TournamentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @tournament = Tournament.new(tournamentname: "Tournament Example", sport: "Rugby", tournamentaddress: "1196 Opal St",
    zipcode: "67220", state: "Kansas")
  end

  test "should be valid" do
    assert @tournament.valid?
  end
  test "Tournamet name should be present" do
    @tournament.tournamentname = "     "
    assert_not @tournament.valid?
  end

  test "Tournamet sport should be present" do
    @tournament.sport = "     "
    assert_not @tournament.valid?
  end

  test "Tournamet address should be present" do
    @tournament.tournamentaddress = "      "
    assert_not @tournament.valid?
  end

  test "Tournamet zip should be present" do
    @tournament.zipcode = "      "
    assert_not @tournament.valid?
  end


  test "Tournamet state should be present" do
    @tournament.state = "    "
    assert_not @tournament.valid?
  end

  end
