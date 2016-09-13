require 'rails_helper'

describe 'the user feature' do
  it 'should allow user to sign up' do
    visit root_path
    fill_in 'Name', with: "Kojiro Sasaki"
    fill_in 'Email', with: "artofwar.com"
    fill_in 'Password', with: "foo"
    fill_in 'Password confirmation', with: "foo"
    click_on 'Create User'
    expect(page).to have_content("Kojiro Sasaki")
  end

  it 'should list all the users' do
    user = User.create(name: "foo", email: "foo", password: "foo", password_confirmation: "foo")
    visit root_path
    click_on 'All Users'
    expect(page).to have_content("foo")
  end
end
