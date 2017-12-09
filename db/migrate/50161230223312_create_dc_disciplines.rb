class CreateDcDisciplines < ActiveRecord::Migration[5.0]
  def change
    create_table :dc_disciplines do |t|
      t.references :StfEmployee, foreign_key: true
      t.date :DateDiscipline
      t.string :DisciplineBy
      t.references :DcLevel, foreign_key: true
      t.references :DcStream, foreign_key: true
      t.text :InfractionDescription
      t.text :DcAction
      t.text :DcComment
      t.text :output
      t.integer :sort_order
      t.integer :active_status

      t.timestamps
    end
  end
end
