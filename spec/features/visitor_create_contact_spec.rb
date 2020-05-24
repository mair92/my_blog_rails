require "rails_helper"

feature  "Contact creation" do
  scenario "allows acces to contact page" do 
    visit '/contacts'
    expect(page).to have_content I18n.t 'contacts.contact_us'
  end  

  scenario "allows a guest to create contact " do 
    visit '/contacts'
    fill_in 'contact[email]', with: 'user@example.com'
    fill_in 'contact[message]', with: 'password'
    click_button 'Send message'
    expect(page).to have_content 'well done'
  end
end