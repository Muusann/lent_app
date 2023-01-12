Rails.application.routes.draw do
  get '/', to: 'home#top'
  resources :users
end
