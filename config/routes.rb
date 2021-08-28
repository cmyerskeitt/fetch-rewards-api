Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :transactions
      resources :users
    end 
  end 
end

#fetch(http:localhost:3000/api/v1/transactions)
#fetch(http:localhost:3000/api/v1/users)