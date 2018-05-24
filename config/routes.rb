Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "home#index"

  devise_for :users, :controllers => { :registrations => "user/registrations", :sessions => "user/sessions", :passwords => "user/passwords" }
end
