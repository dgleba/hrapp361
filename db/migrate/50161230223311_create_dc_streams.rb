class CreateDcStreams < ActiveRecord::Migration[5.0]
  def change
    create_table :dc_streams do |t|
      t.string :name
      t.integer :active_status
      t.integer :sort_order
      t.string :comment

      t.timestamps
    end
  end
end
