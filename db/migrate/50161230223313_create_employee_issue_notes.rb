class CreateEmployeeIssueNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :employee_issue_notes do |t|
      t.text :issue
      t.references :employee, foreign_key: true
      t.string :name_if_not
      t.date :date_if_not_today
      t.text :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
