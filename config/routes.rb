Rails.application.routes.draw do
  get '/', to: 'root#show'
  get '/search', to: 'search#index'
  get '/companies', to: 'companies#index'
  post '/companies', to: 'companies#new'
end
