class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :number_phones
      t.date :born_date
      t.string :email
      t.string :picture
      t.string :huella
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :country
      t.integer :type_cliente
      t.integer :banned

      t.timestamps
    end
  end
end
