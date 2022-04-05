Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        get 'messages/index'
      end
    end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  # Defines the root path route ("/")
  root "static#index"
end
