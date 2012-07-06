ClixoUs::Application.routes.draw do

  resources :links
  get "addlink" => "links#new", :as => "addlink"
  get "links" => "links#index", :as => "links"

end
