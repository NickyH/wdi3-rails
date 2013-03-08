R20130307Exersizr::Application.routes.draw do

root :to => 'home#index'

resources :users
resources :stocks, :only => [:index, :new, :create, :show] do
  collection do
    get 'quotes/:selected', :action => 'get_quote'
  end
end

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

end
