require 'spec_helper'

feature 'Pages' do
  scenario 'loads the about page' do
    visit'/about'
    page.should have_content 'About Page'
  end

  scenario 'loads the contact page then loads the team page' do
    visit '/contact'
    page.should have_content 'Contact Page'
    visit '/team'
    page.should have_content 'Team Page'
  end
end
