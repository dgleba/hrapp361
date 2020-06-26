class CreateAtEmployeeNote2s < ActiveRecord::Migration[5.0]
  def change
    create_table :at_employee_note2s do |t|
      t.string :name_if_not
      t.references :employee, foreign_key: true
      t.string :issue
      t.string :date_if_not_today
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
