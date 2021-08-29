Rails.application.routes.draw do
  resources :questions, only: %i[index new create edit]

  root 'pages#index'
end
