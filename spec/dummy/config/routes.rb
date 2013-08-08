Rails.application.routes.draw do
  page :about
  pages :team, :contact
  page :press_kit, :transform => lambda { |r| r.dasherize }
  pages :record_deal, :user_agreement, :transform => lambda { |r| r.dasherize }
end
