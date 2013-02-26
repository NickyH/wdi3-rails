R20130212ViewHelpers::Application.routes.draw do

get '/home' => 'home#home'
get '/numbers' => 'home#numbers'
get '/text2' => 'home#text', as: => 'text'
get '/assets' => 'home#assets'
get '/url' => 'home#url'

root :to => 'home#home'

end
