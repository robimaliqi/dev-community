require 'rails_helper'

RSpec.feature "UserSettings", type: :feature do
  describe 'User Settings' do
    before :each do
      @user = create(:user)
      sign_in(@user)
      sleep 1
    end

    it "should allow users to edit their personal information" do
      visit "/member/#{@user.id}"
      sleep 2
      expect(page).to have_text(@user.name)
      expect(page).to have_text(@user.address)
      expect(page).to have_text(@user.profile_title)
      expect(page).to have_text('About')
      expect(page).to have_text(@user.about)
      find('.edit-profile button.btn.btn-primary', wait: 10).click
      expect(page).to have_text('Edit your personal details')
      fill_in 'user_first_name', with: 'Marks'
      fill_in 'user_last_name', with: 'Anderson'
      fill_in 'user_city', with: 'Reading'
      fill_in 'user_county', with: 'Berkshire'
      fill_in 'user_country', with: 'United Kingdom'
      fill_in 'user_postcode', with: 'RG40 1DL'
      fill_in 'user_profile_title', with: 'Java developer'
      sleep 2
      click_button 'Save changes'
      expect(page).to have_current_path("/member/#{@user.id}")
      expect(page).to have_text("Marks Anderson", wait: 10)
      expect(page).to have_text("Java developer")
      expect(page).to have_text("Reading, Berkshire, United Kingdom, RG40 1DL")
      sleep 5
    end
  end
end
