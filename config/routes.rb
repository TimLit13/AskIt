Rails.application.routes.draw do
  resources :questions, only: %i[index new create edit update destroy show]

  root 'pages#index'
end
