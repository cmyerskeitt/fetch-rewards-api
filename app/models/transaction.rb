class Transaction < ApplicationRecord
    belongs_to :user 
    validates :payer, :points, presence: true 
    validates :points, numericality: { only_integer: true }  
end
