class AddUserIdToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :users, null: false, foreign_key: true
  end
end
