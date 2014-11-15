require 'spec_helper'

feature 'Pages' do
  scenario 'loads the About Page' do
    visit '/about'
    page.should have_content 'About Page'
  end

  scenario 'loads the Contact Page then loads the Team Page' do
    visit '/contact'
    page.should have_content 'Contact Page'
    visit '/team'
    page.should have_content 'Team Page'
  end

  scenario 'loads the Press Kit Page' do
    visit '/press-kit'
    page.should have_content 'Press Kit Page'
  end

  scenario 'loads the Record Deal Page, then loads the User Agreement Page' do
    visit '/record-deal'
    page.should have_content 'Record Deal Page'
    visit '/user-agreement'
    page.should have_content 'User Agreement Page'
  end

  scenario 'allows namespacing of pages' do
    visit '/work/client'
    page.should have_content 'Client'
  end

  scenario 'allows plural namespacing of pages' do
    visit '/jobs/new_hire'
    page.should have_content 'New Hire'
  end

  scenario 'can override :as and get new path' do
    visit one_two_three_path
    page.should have_content '123 Page'
  end

  scenario 'can override :as and preserves url' do
    visit '/123'
    page.should have_content '123 Page'
  end
end
