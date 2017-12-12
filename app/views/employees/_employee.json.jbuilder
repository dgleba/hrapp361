json.extract! employee, :id, :name, :clock, :active_status, :sort, :created_at, :updated_at
json.url employee_url(employee, format: :json)
