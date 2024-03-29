require 'rails_helper'

RSpec.describe "friendships/edit", :type => :view do
  before(:each) do
    @friendship = assign(:friendship, Friendship.create!(
      :user => nil
    ))
  end

  it "renders the edit friendship form" do
    render

    assert_select "form[action=?][method=?]", friendship_path(@friendship), "post" do

      assert_select "input#friendship_user_id[name=?]", "friendship[user_id]"
    end
  end
end
