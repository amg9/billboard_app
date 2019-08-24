Rails.application.routes.draw do
  root "boards#index"
  
  resources :boards do
    resources :tunes
  end

  resources :artists do
    resources :tunes
  end
end
