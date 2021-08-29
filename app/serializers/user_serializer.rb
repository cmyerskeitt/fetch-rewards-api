class UserSerializer < ActiveModel::Serializer
  has_many :transactions
  attributes :id, :points
end
