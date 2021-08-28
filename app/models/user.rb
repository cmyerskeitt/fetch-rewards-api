class User < ApplicationRecord
    has_many :transactions, :dependent => :destroy
    validates :points, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }  
end

