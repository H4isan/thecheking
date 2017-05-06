class CreateMoney < ActiveRecord::Migration[5.0]
  def change
    create_table :money do |t|
      t.references :client, foreign_key: true
      t.decimal :cash_number
      t.string :enterprise_name
      t.decimal :money
      t.decimal :rate
      t.date :money_date
      t.boolean :redeemed
      t.string :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
