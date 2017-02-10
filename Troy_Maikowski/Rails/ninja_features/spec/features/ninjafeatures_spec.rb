require 'rails_helper'
describe "Register" do
  it 'prompts for the ninja fields' do
    visit '/'
    expect(page).to have_field("name")
    expect(page).to have_field("description")
  end

  it 'creates a ninja and redirects to the success page' do
    visit '/'
    fill_in "name", with: "Troy"
    fill_in "description", with: "The coolest ninja"
    click_button "Create"
    ninja = Ninja.last
    expect(current_path).to eq("/success")
    expect(page).to have_text("success")
  end
end
