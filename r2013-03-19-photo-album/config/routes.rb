R20130319PhotoAlbum::Application.routes.draw do

root :to => 'home#index'

resources :albums do
  member do
    get :filter
  end
end

resources :photos, :only => [:new, :create]


end
