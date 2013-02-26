R20130218Tunr::Application.routes.draw do
 root :to => 'home#index'

 resources :users, :except => [:edit] do
  collection do
    get 'edit'
  end
 end

  resources :users do
    member do
      get 'edit'
    end
  end

 resources :songs do
    member do
      get 'purchase'
    end
  end

  resources :songs do
    member do
      post 'bought'
    end
  end

 resources :songs do
    member do
      get 'refund'
    end
  end

  resources :songs do
    member do
      post 'refunded'
    end
  end

  resources :albums do
    member do
      get 'purchase'
    end
  end

 resources :genres, :albums, :artists, :songs, :playlists

 get '/login' => 'session#new'
 post '/login' => 'session#create'
 delete '/login' => 'session#destroy'


end
