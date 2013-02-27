require 'spec_helper'

feature 'Pages' do
  scenario 'loads the about page' do
    visit '/about'
    page.should have_content 'About Page'
  end

  scenario 'loads the contact page then loads the team page' do
    visit '/contact'
    page.should have_content 'Contact Page'
    visit '/team'
    page.should have_content 'Team Page'
  end

  scenario 'loads the press kit page' do
    visit '/press-kit'
    page.should have_content 'Press Kit Page'
  end

  scenario 'loads the press kit page' do
    visit '/press-kit'
    page.should have_content 'Press Kit Page'
    visit '/user-agreement'
    page.should have_content 'User Agreement Page'
  end
end
