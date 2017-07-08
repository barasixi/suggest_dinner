Rails.application.routes.draw do
  root 'top#index'

  get '/lottery/meet', to: 'lottery#meet'
  get '/lottery/fish', to: 'lottery#fish'
  get '/lottery/vegetable', to: 'lottery#vegetable'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
