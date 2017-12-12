class CreateDcDisciplines < ActiveRecord::Migration[5.0]
  def change
    create_table :dc_disciplines do |t|
      t.string :title
      t.date :date_discipline
      t.references :employee, foreign_key: true
      t.string :discipline_by
      t.references :dc_level, foreign_key: true
      t.references :dc_stream, foreign_key: true
      t.text :infraction_description
      t.text :dc_action
      t.text :dc_comment
      t.text :output
      t.integer :sort_order
      t.integer :active_status

      t.timestamps
    end
  end
end
