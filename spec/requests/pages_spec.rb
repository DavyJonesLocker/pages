require 'spec_helper'

feature 'Pages' do
  scenario 'loads the page' do
    visit'/about'
    page.should have_content 'This works!'
  end
end
