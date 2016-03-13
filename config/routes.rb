Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :plays, only: :show

  namespace "admin" do
    resources :plays, :actors
  end

end
