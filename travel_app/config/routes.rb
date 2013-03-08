TravelApp::Application.routes.draw do
root :to => 'home#index'

resources :users, :itineraries, :destinations

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

end
