class TransactionSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :payer, :points, :timestamp
end
