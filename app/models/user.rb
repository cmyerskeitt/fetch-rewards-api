class User < ApplicationRecord
    has_many :transactions, :dependent => :destroy
    validates :points, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }  


    def update_points(transaction)
       if self.points > transaction.points 
        self.points = self.points + transaction.points 
        self.save
       else 
        return "Your balance is too low!"
       end 
    end 

end

