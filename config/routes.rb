ClixoUs::Application.routes.draw do

  resources :links
  get "links" => "links#index", :as => "links"
  get "addlink" => "links#new", :as => "addlink"

end
