Rails.application.routes.draw do

  root to: 'home#index'

  get 'home/resume' => 'home#resume'

  resource :gdangers do
      resources :posts
  end

  resources :categories do
    resources :posts
  end

  resources :tags do
    resources :posts,  only: [:index, :show]
  end



end
