Rails.application.routes.draw do
  namespace 'api' do
  	namespace 'v1' do
			resources :articles
			resources :customers
			resources :demands
			resources :employees
			resources :calls
			resources :dashboard
			resources :imports
  	end
  end
end
