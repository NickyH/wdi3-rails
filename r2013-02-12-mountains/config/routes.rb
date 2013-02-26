R20130212Mountains::Application.routes.draw do

root :to => 'mountains#index'

get '/mountains' => 'mountains#index'
get '/mountains/new' => 'mountains#new'
post '/mountains/create' => 'mountains#create'
get '/mountains/:id' => 'mountains#show', :as => 'mountain'

post 'mountains/:id/delete' => 'mountains#destroy', :as => 'mountain_delete'


end
