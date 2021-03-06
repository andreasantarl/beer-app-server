Rails.application.routes.draw do
  resources :tried_beers, except: [:new, :edit]
  resources :beers, except: [:new, :edit]
  resources :profiles, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  get '/all-beers' => 'beers#allbeers'
end
