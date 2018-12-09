Rails.application.routes.draw do
  get 'about/description'
  get 'about/goals'
  get 'about/membership'
  get 'future_engineers/info'
  get 'future_engineers/life'
  get 'future_engineers/paths'
  get 'standards_resources/conduct'
  get 'standards_resources/standards'
  get 'standards_resources/scoring'
  get 'standards_resources/demographics'
  get 'standards_resources/podcasts'
  get 'professional_development/exams'
  get 'professional_development/books'
  get 'professional_development/future'

  devise_for :users, :controllers => { registrations: 'users/registrations' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_scope :user do
    authenticated do
      #root "dashboard#show"
      root "homepage#show"
    end

    unauthenticated do
      root "homepage#show"
    end
  end
end
