R20130211StockMovie::Application.routes.draw do

get '/home' => 'home#home'
get '/about' => 'home#about'
get '/faq' => 'home#faq'
get '/stock' => 'home#stock'
get '/movie' => 'home#movie'

get '/stock/:stockresult' => 'home#stockresult'
get '/movie/:movieresult' => 'home#movieresult'

root :to => 'home#home'


end
