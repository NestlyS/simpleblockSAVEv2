Rails.application.routes.draw do

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'create' => 'todos#create'
    resources :projects do
        resources :todos
    end

    root 'welcome#index'
end
