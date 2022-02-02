Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'welcome/index'

  # Определяем эндпоинты в форме маршрутов
  scope '/api' do
    scope '/v1' do
      scope '/projects' do
        get '/' => 'api_projects#index'
        post '/' => 'api_projects#create'
        scope '/:name' do
          get '/' => 'api_projects#show'
          put '/' => 'api_projects#update'
          scope '/todos' do
            get '/' => 'api_todos#index'
            post '/' => 'api_todos#create'
            scope '/:todo_name' do
              get '/' => 'api_todos#show'
              put '/' => 'api_todos#update'
            end
          end
        end
      end
    end
  end

end
