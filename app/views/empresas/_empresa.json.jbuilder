json.extract! empresa, :id, :nome, :cnpj, :email, :telefone, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)
