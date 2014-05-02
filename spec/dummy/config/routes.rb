Rails.application.routes.draw do
  page :about
  pages :team, :contact
  page :press_kit, :transform => lambda { |r| r.dasherize }
  pages :record_deal, :user_agreement, :transform => lambda { |r| r.dasherize }
  pages '123', as: { '123' => 'one_two_three' }

  namespace :work do
    pages :client
  end

  namespace :jobs do
    pages :new_hire
  end
end
