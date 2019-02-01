Rails.application.routes.draw do
  resources :artists, only: [:index, :show, :edit, :new, :create, :destroy, :update] do
    resources :songs, only: [:index, :show]
  end
  resources :songs, only: [:index, :show, :edit, :new, :create, :destroy, :update]
end
