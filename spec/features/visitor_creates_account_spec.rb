require "rails_helper"

feature  "Account creation" do
  scenario "allows guest to create account" do 
    visit new_user_registration_path
    fill_in :user_email, with: 'user123@example.com'
    fill_in :user_username, with: 'user123'
    fill_in :user_password, with: 'user1234'
    fill_in :user_password_confirmation, with: 'user1234'
    click_button 'commit'
    expect(page).to have_content I18n.t 'devise.registrations.signed_up'
  end  
end