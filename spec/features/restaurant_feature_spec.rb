require 'rails_helper'

feature 'Restaurant' do

  context "no restaurants have been added" do
    scenario "should display a link to add a restaurant" do
      visit '/restaurants'
      expect(page).to have_link 'Add a Restaurant'
    end
  end


  context "New restaurants have been created" do
    scenario 'display restaurants' do
      create_restaurant#user_id: @user.id to add later on)
      visit '/restaurants'
      expect(page).to have_content('Nandos')
      expect(page).not_to have_content('No restaurants yet')
    end
  end

  context 'viewing restaurants' do
    scenario "lets a user view a restaurant" do
      create_restaurant
      visit '/restaurants'
      click_link 'Show'
      expect(current_path).to eq '/restaurants/1'
    end
  end

  def create_restaurant

    name = "Nandos"
    location = "Shoreditch"
    description = "Yadda Yadda Yadda"
    visit '/restaurants/new'
    fill_in "restaurant[name]", with: name
    fill_in 'restaurant[location]', with: location
    fill_in 'restaurant[description]', with: description
    submit_form
  end

  def submit_form
    find('input[name="commit"]').click
  end

end
