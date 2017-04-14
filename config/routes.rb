Rails.application.routes.draw do

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Note to self: look, the model below for root is controller#action.
=begin
  The root method arranges for the root path / to be routed to a controller and action of our choice. Defining the root route in this way has a second important effect, which is to create named routes that allow us to refer to routes by a name rather than by the raw URL. In this case, these routes are root_path and root_url, with the only difference being that the latter includes the full URL:
  root_path -> '/'
  root_url  -> 'http://www.example.com/'
=end

  root 'static_pages#home'
  get 'static_pages/home'
=begin
This new pattern routes a GET request for the URL /help to the help action in the Static Pages controller. As with the rule for the root route, this creates two named routes, help_path and help_url
  get '/help', to: 'static_pages#help'
=end

  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/contact', to:'static_pages#contact'
  get '/signup', to: 'users#new'
end
