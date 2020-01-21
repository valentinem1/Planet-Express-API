Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :tickets do
    resources :flights
  end

  resources :flights do #, shallow: true do
    resources :planets, only: [:id, :name]
    resources :tickets, only: [:id]
  end

  resources :planets do
    resources :flights
  end

end

