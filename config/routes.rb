Rails.application.routes.draw do
  # resources :customers, only: %i[index]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "customers#index"
  # get "/customers", to: "customers#index", as: "customers" # companies_path
  # get "/customers/alphabetized", to: "customers#alphabetized", as: "acustomers" # companies_path
  # get "/companies/:id", to: "companies#show", as: "company" # company_path
  resources :customers do
    collection do
      get "alphabetized"
      get "missing_email"
    end
  end
end
