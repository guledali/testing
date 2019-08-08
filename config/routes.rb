Rails.application.routes.draw do
  resources :submissions
  root to: "submissions#index"
end
