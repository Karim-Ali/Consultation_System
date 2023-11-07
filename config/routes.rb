Rails.application.routes.draw do
 # get 'recommendations/index'
 # post 'recommendations/create'
 # post 'consultation_requests/create'
 
 
  get 'patients/:patient_id/recommendations', to: 'recommendations#index'
  post '/consultation_requests/:request_id/recommendations', to: 'recommendations#create'
  post '/consultation_requests', to: 'consultation_requests#create'
  
  get 'drug_info/search/:drug_desc', to: 'drug_info#search'

 
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
