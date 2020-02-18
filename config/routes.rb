Rails.application.routes.draw do
	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
		get 'contacts/new', to: 'contacts#new', as: 'new_contact'
		post 'contacts', to: 'contacts#create'
		get 'contacts/:id', to: 'contacts#show', as: 'contact'
		get 'hotels/:id', to: 'hotels#show', as: 'hotel'
		get 'prefectures/:id', to: 'prefectures#show', as: 'prefecture'
		root 'hotels#index'

		resources :hotels do
			resources :reviews
		end
end
