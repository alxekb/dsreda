class CreateUTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :u_transactions do |t|
      t.references :user, foreign_key: true
      t.integer :sum

      t.timestamps
    end
  end
end
