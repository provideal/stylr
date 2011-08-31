Dummy::Application.routes.draw do

  resources :users

  root :to => 'application#index'

end
