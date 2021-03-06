Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

    resources :cocktails do
      resources :doses, only: [:create, :new, :show]
    end
    resources :doses, only: [:destroy]
    root "cocktails#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
