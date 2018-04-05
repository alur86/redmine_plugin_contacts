# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'contacts', :to => 'contacts#index'
resources :contacts
