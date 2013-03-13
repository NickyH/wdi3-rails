R20130312Flirt::Application.routes.draw do

root :to => 'home#index'
resources :subscribers, :only => [:new, :create]
resources :users, :only => [:new, :create]

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
end
