Rails.application.routes.draw do
  root  'pages#about'

  get 'tour'  => 'pages#tour'

  get 'location' => 'pages#location'

  get 'contact' => 'contacts#new'

  resources "contacts", only: [:new, :create]

end


#TODO make it so that the redirect after sending a message is just a flash now message
