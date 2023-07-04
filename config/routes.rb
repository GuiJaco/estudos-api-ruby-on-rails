Rails.application.routes.draw do
  resources :carros
  
  get '/estados', to: 'estados#index'
  get '/cidades', to: 'estados#cidades'
  get '/', to: 'home#index'
end
