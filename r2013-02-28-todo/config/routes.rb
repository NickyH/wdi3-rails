R20130228Todo::Application.routes.draw do

root :to => 'home#index'

resources :users
resources :priorities, :only => [:index, :create]

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

end
