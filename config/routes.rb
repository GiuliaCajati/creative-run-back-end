Rails.application.routes.draw do
  resources :markers
  #render_polyline
  get "/render_polylines", to: "markers#render_polylines"
  #get "/render_polyline/:coordinates", to: "markers#render_polyline"
  resources :drawings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
