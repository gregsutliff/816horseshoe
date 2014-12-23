Rails.application.routes.draw do
  root  'pages#about'

  get 'tour'  => 'pages#tour'

  get 'location' => 'pages#location'

  get 'contact' => 'contacts#new'

  resources "contacts", only: [:new, :create]

end


