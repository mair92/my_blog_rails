def sign_up
    visit new_user_registration_path
    fill_in :user_email, with: 'user123@example.com'
    fill_in :user_username, with: 'user123'
    fill_in :user_password, with: 'user1234'
    fill_in :user_password_confirmation, with: 'user1234'
    click_button 'commit'
end