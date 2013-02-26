R20130211Basics::Application.routes.draw do
  get '/home' => 'home#homepage'
  get '/about' => 'home#about'
  get '/faq' => 'home#faq'

  get '/dogs' => 'dogs#index'
  get '/dogs/new' => 'dogs#new'
  get '/dogs/faq' => 'dogs#faq'
  get '/dogs/faq2' => 'dogs#faq'

  get 'auto/:color' => 'auto#color'
  get '/auto/:hp/:torque' => 'auto#engine'

  get 'calc/:x/:y/:op' => 'calc#result'

  get '/funny' => 'funny#lol'

  root :to => 'home#homepage'


end