json.extract! stf_employee, :id, :clocknum, :name, :active_status, :sort, :comment, :created_at, :updated_at
json.url stf_employee_url(stf_employee, format: :json)
