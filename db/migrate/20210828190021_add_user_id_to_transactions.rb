class AddUserIdToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :user_id, null: false, foreign_key: true
  end
end
