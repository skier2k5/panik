require 'test_helper'

class VotingControllerTest < ActionController::TestCase
  def setup
    super
    @controller = Kutorable::VotingController.new
  end

  test "vote creates animal vote" do
    get :vote, {:apid => 1, :aid => 1, :vote => "cute"}
    assert_equal 1, AnimalVote.count
  end

  test "vote creates aggregate" do
    get :vote, {:apid => 1, :aid => 1, :vote => "cute"}
    assert_equal 1, VotingAggregate.count
  end

  test "vote updates aggregate" do
    get :vote, {:apid => 1, :aid => 1, :vote => "cute"}
    assert_equal 1, VotingAggregate.count
    get :vote, {:apid => 1, :aid => 2, :vote => "cute"}
    assert_equal 1, VotingAggregate.count
    assert_equal 2, VotingAggregate.first.cute_votes
  end

  test "vote only records 1 vote per arrival/piture combo" do
    get :vote, {:apid => 1, :aid => 1, :vote => "cute"}
    assert_equal 1, VotingAggregate.count
    assert_equal 1, VotingAggregate.first.cute_votes
    get :vote, {:apid => 1, :aid => 1, :vote => "cute"}
    assert_equal 1, VotingAggregate.count
    assert_equal 1, VotingAggregate.first.cute_votes
  end

  test "vote only records if all data is there" do
    vote_response = get :vote, {:apid => 1, :vote => "cute"}
    assert_equal 0, VotingAggregate.count
    assert_equal "Blank Vote Data", vote_response.body
  end
end

