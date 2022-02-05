module API
  module V1
    class Users < Grape::API
      include API::V1::Defaults
      resource :users do
        desc "Return all users" # /api/v1/users/:id
        get "" do
          User.all
        end
        desc "Return a user"  # /api/v1/users/:id
        params do
          requires :id, type: String, desc: "ID of the user"
        end
        get ":id" do
          User.where(id: permitted_params[:id]).first!  # Вернуть пользователя с запрошенным id если он есть
        end
      end
    end
  end
end