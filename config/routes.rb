Rails.application.routes.draw do
  resources :tickets do
    resources :flights
  end
  resources :flights, shallow: true do
    resources :planets, only: [:id, :name]
    resources :tickets
  end
  resources :planets do
    resources :flights
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

