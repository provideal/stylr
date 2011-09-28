Dummy::Application.routes.draw do

  mount Stylr::Engine => '/stylr', :as => 'stylr'

  root :to => redirect('/stylr')

end
