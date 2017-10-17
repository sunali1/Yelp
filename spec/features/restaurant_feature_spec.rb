require 'rails_helper'

feature 'Restaurant' do

  context "no restaurants have been added" do
    scenario "should display a link to add a restaurant" do
      visit '/restaurants'
      expect(page).to have_link 'Add Restaurant'
    end
  end
end
