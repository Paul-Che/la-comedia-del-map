Rails.application.routes.draw do
  namespace :admin do
  get 'tickets/index'
  end

  get 'tickets/new'

  get 'tickets/create'

  devise_for :users
  root to: 'pages#home'

  resources :plays, only: :show

  namespace "admin" do
    resources :plays, :actors
  end

end
