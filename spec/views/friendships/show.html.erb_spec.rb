require 'rails_helper'

RSpec.describe "friendships/show", :type => :view do
  before(:each) do
    @friendship = assign(:friendship, Friendship.create!(
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
