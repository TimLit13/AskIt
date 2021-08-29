Rails.application.routes.draw do
  resources :questions, only: %i[index new create edit update]

  root 'pages#index'
end
