R20130307Exersizr::Application.routes.draw do

root :to => 'home#index'

resources :users
resources :exercises, :only => [:index, :new, :create] do
  collection do
    get '/chart/:activity', :action => 'chart'
  end
end

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

end
