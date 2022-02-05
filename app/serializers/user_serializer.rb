class UserSerializer < ActiveModel::Serializer
  # attributes :id, :email, :first_name, :last_name
  attributes :id, :login
end