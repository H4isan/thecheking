json.extract! client, :id, :name, :address, :number_phones, :born_date, :email, :picture, :huella, :zipcode, :city, :state, :country, :type_cliente, :banned, :created_at, :updated_at
json.url client_url(client, format: :json)
