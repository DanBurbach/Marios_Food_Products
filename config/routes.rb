Rails.application.routes.draw do

  resources :products, :reviews

  get '/' => 'layouts#home_page'
end
