Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/game' => 'games#get_name'
    get '/guess_number' => 'games#guess_number' #using query parameters
    get '/guess_a_number/:guess' => 'games#guess_a_number' #using segment params
  end
end
