class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :medications
end
