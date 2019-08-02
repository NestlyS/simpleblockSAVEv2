Rails.application.routes.draw do
    
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :projects do
        resources :todos
    end
    post 'create' => 'todos#create'
    root 'welcome#index'
end
