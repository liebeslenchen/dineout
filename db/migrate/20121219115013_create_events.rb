class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :diner
      t.datetime :dtime

      t.timestamps
    end
    add_index :events, :diner_id
  end
end
