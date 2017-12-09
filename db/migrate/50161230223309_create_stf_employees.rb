class CreateStfEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :stf_employees do |t|
      t.string :clocknum
      t.string :name
      t.integer :active_status
      t.integer :sort
      t.string :comment

      t.timestamps
    end
  end
end
