def sign_up
    visit new_user_registration_path
    fill_in :user_email, with: 'user1234@example.com'
    fill_in :user_username, with: 'userrrrr'
    fill_in :user_password, with: 'user12345'
    fill_in :user_password_confirmation, with: 'user12345'
    click_button 'Sign up'
end

