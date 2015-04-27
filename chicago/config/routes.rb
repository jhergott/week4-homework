Rails.application.routes.draw do

  root 'places#index'

  get '/places/new' => 'places#new'
  # get '/places/submit_new' => 'places#submitted'
  post '/places' => 'places#create'  

  get '/places' => 'places#index'
  get '/places/:id' => 'places#show', :as => 'place'

  get '/places/:id/edit' => 'places#edit'
  # get '/places/:id/submit_edit' => 'places#update'
  patch '/places/:id' => 'places#update'  

  # get '/places/:id/delete' => 'places#delete'
  delete '/places/:id' => 'places#destroy'  

  get '/reviews/:place_id/submit_new'  => 'reviews#create'

end