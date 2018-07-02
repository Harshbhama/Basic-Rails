Rails.application.routes.draw do




  	get 'plots', to:'plots#index'
  	post 'plots', to:'plots#create'
  	get 'plots/new', to:'plots#new', as: :new_plot
  	get 'plots/:id/edit', to:'plots#edit', as: :edit_plot
  	# get 'plots/:id', to:'plots#show', as: :plot
  	patch 'plots/:id', to:'plots#update'
  	delete 'plots/:id', to:'plots#destroy' ,as: :delete_plot



  	get 'plots/sign_in', to:'plots#sign_in'
  	post 'plots/create_session', to:'plots#create_session'





	get 'users/:id/edit', to: 'users#edit'
	patch 'users/:id', to: 'users#update', as: :user
	get 'users', to:'users#index'
	get 'users/new', to:'users#new'
	post 'users', to:'users#create'
	
	get 'users/sign_in', to: 'users#sign_in'
	post 'users/create_session', to:'users#create_session'
	get 'users/sign_out', to:'users#sign_out'


	get 'examples', to:'examples#index'
	get 'examples/new', to:'examples#new'
	post 'examples',  to:'examples#create'
	get 'examples/:id/edit', to:'examples#edit', as: :example_new
	patch 'examples/:id', to:'examples#update', as: :example
	#get 'examples/:id/delete', to:'examples#delete', as: :example_new1
	delete 'examples/:id' , to: 'examples#delete', as: :destroy_post

	get 'examples/sign_in', to: 'examples#sign_in'
	post 'examples/create_session', to:'examples#create_session' 
	get 'examples/sign_out', to:'examples#sign_out'




  
  get 'posts/new', to: 'posts#new'
  get 'posts', to: 'posts#index'
  post 'posts', to: 'posts#create'

  get 'users/users_list'

	# get <url>, to '<controller_name>#<action_name>'
  	get 'hello_rails', to: 'application#hello_rails'

  	# get 'users_list', to: 'users#users_list'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	root 'posts#index'

end
