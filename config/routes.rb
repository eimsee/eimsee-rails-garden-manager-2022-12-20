Rails.application.routes.draw do
  root to: "gardens#index"

  resources :gardens do
    resources :plants, only: [:create, :new, :destroy, :index, :show]
  end
  resources :plants, only: [:destroy, :create, :new]
end
