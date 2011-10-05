Stylr::Engine.routes.draw do

  match '/layouts' => redirect{ |params, request| File.join(request.fullpath, 'layout1') }
  match '/layouts/layout1' => 'layouts#layout1'

  match '/docs' => 'docs#index'

  root :to => redirect{ |params, request| File.join(request.fullpath, 'docs') }

end
