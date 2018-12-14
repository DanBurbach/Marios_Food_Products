Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products_tb, :reviews_tb do
    resources :products, :reviews
  end
  get '/' => 'layouts#home_page'
end
