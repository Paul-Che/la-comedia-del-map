Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :plays, only: :show
  resources :tickets, only: [:new, :create]

  namespace "admin" do
    resources :plays, :actors, :tickets
  end

end
