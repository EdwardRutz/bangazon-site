Rails.application.routes.draw do
  get 'products/add_product'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'

end
