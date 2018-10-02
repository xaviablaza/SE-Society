Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_scope :user do
    authenticated do
      root "dashboard#show"
    end

    authenticated do
      root "homepage#homepage"
    end

    unauthenticated do
      root "devise/sessions#new"
    end
  end
end
