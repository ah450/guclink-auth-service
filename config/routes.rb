Rails.application.routes.draw do
  namespace :api do
    resources :users, param: :email, only: [] do
      member do
        get :resend_verify, action: :resend_verify
        get :reset_password, action: :reset_password
      end
    end
    resources :users, except: [:new] do
      member do
        put :confirm_reset, action: :confirm_reset
        put :verify, action: :verify
      end
    end
    resources :tokens, only: [:create]
    resources :configurations, only: [:index]
  end
end
