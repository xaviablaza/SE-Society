Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated do
      root "dashboard#show"
    end

    unauthenticated do
      root "devise/sessions#new"
    end
  end
end
