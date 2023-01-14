Rails.application.routes.draw do
  resources :terminals
  resources :places
  get '/', to: 'home#top'
  resources :users
end
