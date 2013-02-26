R20130211Routing::Application.routes.draw do

  get '/home' => 'home#home'
  get '/number' => 'home#number'

  root :to => 'home#home'

end
