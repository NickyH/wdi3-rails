R20130312Flirt::Application.routes.draw do

root :to => 'home#index'
resources :subscribers, :only => [:new, :create] do
  collection do
    post :purchase
  end
end


resources :users, :only => [:new, :create]

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
delete '/login' => 'sessions#destroy'
end
