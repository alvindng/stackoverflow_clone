require 'rails_helper'




describe 'the response feature' do

  before(:example) do
    @question =  FactoryGirl.create(:question)
    visit new_session_path
    fill_in "Email", with: @question.user.email
    fill_in "Password", with: "foo"
    click_on "Sign In"
  end

  it 'should allow a user to make a new response' do
    visit question_path(@question)
    click_on "Answer This Question"
    fill_in "Content", with: 'Of trees, of course'
    click_on "Create Answer"
    expect(page).to have_content("Of trees, of course")
  end

end
