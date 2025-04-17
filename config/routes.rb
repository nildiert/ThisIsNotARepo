Rails.application.routes.draw do
  # Rutas para tenant con subdominio
  constraints subdomain: /.+/ do
    root "home#index", as: :tenant_root
  end

  scope "/:locale" do
  resources :books
end

  # Rutas generales (por si se accede sin subdominio)
  root "home#index"

  get "home", to: "home#index"
  get "about", to: "about#index"
  resources :companies

  get "up", to: "rails/health#show", as: :rails_health_check

  get "service-worker", to: "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest", to: "rails/pwa#manifest", as: :pwa_manifest
end
