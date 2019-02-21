# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tickets, only: :create
    end
  end

  resources :tickets, only: %i[index show]

  root 'tickets#index'
end
