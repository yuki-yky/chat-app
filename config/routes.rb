Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  resources :users, only: [:edit, :update]
  # ↑↑上の記述は削除しましょう↑↑
  root to: "messages#index"
end