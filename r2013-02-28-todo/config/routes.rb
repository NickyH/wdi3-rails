yR20130228Todo::Application.routes.draw do

root :to => 'home#index'

resources :users
resources :priorities, :only => [:index, :create, :update] do
  member do
    post :up
    post :down
  end
end

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

resources :tasks, :only => [:index, :create, :update, :delete] do
  member do
  post: up
  post:down
end
end

end
