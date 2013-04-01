R20130329Ecommerceapp::Application.routes.draw do

  root :to => 'home#index'

  resources :users, :tags

  resources :products do
    collection do
      get 'search'
      get 'filter/:tag_id', :action => :filter, :as => :filter
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
