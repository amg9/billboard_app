Rails.application.routes.draw do
  root "boards#index"
  
  resources :boards

  resources :artists do
    resources :songs
  end
end
