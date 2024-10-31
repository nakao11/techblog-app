Rails.application.routes.draw do
  devise_for :users
  root 'home#top'

  resources :posts, only:[:new, :create, :show]

  get "up" => "rails/health#show", as: :rails_health_check
  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
