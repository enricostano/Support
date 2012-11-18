# spec/features/user_sign_up_spec.rb
require 'spec_helper'

feature "user sign up" do
  scenario "sign up with valid data" do
    visit '/users/sign_up'
    
    fill_in "Name", with: "Rebel Rebel"
    fill_in "Email", with: "rebel@rebel.reb"
    fill_in "user_password", with: "SoSecret"
    fill_in "user_password_confirmation", with: "SoSecret"
    click_button "Sign up"

    expect(page).to have_text("Welcome Rebel Rebel!")
  end
  context "sign up with invalid data" do
    scenario "doesn't fill name" do
      visit '/users/sign_up'
    
      fill_in "Email", with: "rebel@rebel.reb"
      fill_in "user_password", with: "SoSecret"
      fill_in "user_password_confirmation", with: "SoSecret"
      click_button "Sign up"

      expect(page).to have_text("Name can't be blank")
    end
    scenario "doesn't fill email" do
      visit '/users/sign_up'
    
      fill_in "Name", with: "Rebel Rebel"
      fill_in "user_password", with: "SoSecret"
      fill_in "user_password_confirmation", with: "SoSecret"
      click_button "Sign up"

      expect(page).to have_text("Email can't be blank")
    end
  end

end
