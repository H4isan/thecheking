class CreateIndetifications < ActiveRecord::Migration[5.0]
  def change
    create_table :indetifications do |t|
      t.references :client, foreign_key: true
      t.string :id_number
      t.date :expiration_date
      t.string :id_type
      t.date :expedition_date
      t.date :expedition_country

      t.timestamps
    end
  end
end
