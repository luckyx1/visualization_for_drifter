Leaflet::Application.routes.draw do
  resources :locations

  # You can have the root of your site routed with "root"
  root 'locations#drifter'
  delete 'purge' => 'locations#purge'
  post 'data' => 'locations#create'
  get 'simulation' =>"locations#simulation", :as => "simulation"

  #url redirects
  get "drifter" => 'locations#drifter', :as => "drifter"
  get "menu" => 'locations#menu', :as => "menu"
  get "history" => "locations#history", :as => "history"
  get "live" => "locations#live", :as => "live"
  get "point" => "locations#point"

end
