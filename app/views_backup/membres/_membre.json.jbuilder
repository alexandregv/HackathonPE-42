json.extract! membre, :id, :mail, :nom, :prenom, :age, :type, :created_at, :updated_at
json.url membre_url(membre, format: :json)
