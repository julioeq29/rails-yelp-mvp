Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   # A visitor can add a new review to a restaurant
  resources :restaurants, only: [ :index, :new, :show, :create ] do
    # No need for :new, as i dont need a new page to create a review
    resources :reviews, only: [ :create ]
  end

end
