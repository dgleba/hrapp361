json.extract! employee_issue_note, :id, :issue, :employee_id, :name_if_not, :date_of_issue, :comment, :user_id, :created_at, :updated_at
json.url employee_issue_note_url(employee_issue_note, format: :json)
