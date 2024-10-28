Rails.application.routes.draw do
  get 'users/index' => "users#index"
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  delete "posts/:id/destroy" => "posts#destroy"  # POSTからDELETEに変更
  
  get "/" => "home#top"
  get "about" => "home#about"
end
