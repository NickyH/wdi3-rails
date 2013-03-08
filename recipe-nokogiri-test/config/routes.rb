RecipeNokogiriTest::Application.routes.draw do

root :to => 'home#index'

post '/recipe' => 'recipe#show'

end
