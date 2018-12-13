require 'rails_helper'

describe 'as a visitor' do
  describe 'visits registration page' do
  it 'can register to be a new user' do
     visit users_path
     click_link "Signup"

     expect(current_path).to eq(new_user_path)

     username = "PrincessWanda"
     email = "pwanda22@aol.com"
     password = "Ilovesquirrels"

     fill_in :user_name, with: username
     fill_in :user_email, with: email
     fill_in :User_password, with: password

     click_button  "Create User"

     expect(page).to have_content("Welcome, #{username}!")
   end
  end
end
