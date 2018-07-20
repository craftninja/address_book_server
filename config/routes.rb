Rails.application.routes.draw do
  get '/', to: 'root#show'
  get '/search', to: 'search#index'
  post '/companies', to: 'companies#new'
end
