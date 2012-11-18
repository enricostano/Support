# spec/features/user_sign_up_spec.rb
require 'spec_helper'

feature "user sign up" do
  scenario "sign up with valid data" do
    visit '/users/sign_up'
    
    fill_in "Name", with: "Rebel Rebel"
    fill_in "Email", with: "rebel@rebel.reb"
    fill_in "Password", with: "SoSecret"
    fill_in "Password confirmation", with: "SoSecret"
    click_button "Sign up"

    expect(page).to have_text("User was successfully created.")
  end
end
