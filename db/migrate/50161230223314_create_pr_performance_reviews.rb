class CreatePrPerformanceReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :pr_performance_reviews do |t|
      t.text :assigned_to_reviewer
      t.references :employee, foreign_key: true
      t.date :review_date
      t.text :strengths
      t.text :opportunities
      t.text :development_growth
      t.text :hr_comment
      t.text :employee_comment
      t.text :sigpad_employee
      t.text :sigpad_supervisor
      t.text :sigpad_hr
      t.string :supervisor_approval
      t.string :hr_manager_approval
      t.string :dept_manager_approval
      t.date :scheduling_date
      t.integer :sort_order
      t.integer :active_status

      t.timestamps
    end
  end
end
