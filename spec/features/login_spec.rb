require 'rails_helper'

RSpec.feature "Logins", type: :feature do
  describe 'login' do
    it 'should log in user with username' do
      user = User.create(
        email: 'user@example.com',
        password: 'password',
        username: 'test',
        first_name: 'example',
        last_name: 'any',
        profile_title: 'Senior RoR developer',
        confirmed_at: DateTime.now
      )

      visit root_path

      fill_in 'user_login', with: user.username
      fill_in 'user_password', with: user.password

      click_button 'Log in'
      expect(page).to have_text('Dev Community')
      expect(page).to have_link('My Profile')
      expect(page).to have_link('My Network')
      expect(page).to have_link('Sign Out')
      expect(page).to have_text('Search profesionals across the world!')
      expect(page).to have_text(user.name)
      expect(page).to have_text(user.profile_title)
    end

    it 'should log in user with email' do
      user = User.create(
        email: 'user@example.com',
        password: 'password',
        username: 'test',
        first_name: 'example',
        last_name: 'any',
        profile_title: 'Senior RoR developer',
        confirmed_at: DateTime.now
      )

      visit root_path

      fill_in 'user_login', with: user.email
      fill_in 'user_password', with: user.password

      click_button 'Log in'
      expect(page).to have_text('Dev Community')
      expect(page).to have_link('My Profile')
      expect(page).to have_link('My Network')
      expect(page).to have_link('Sign Out')
      expect(page).to have_text('Search profesionals across the world!')
      expect(page).to have_text(user.name)
      expect(page).to have_text(user.profile_title)
    end
  end
end
