class CreateDinerTypes < ActiveRecord::Migration
  def change
    create_table :diner_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
