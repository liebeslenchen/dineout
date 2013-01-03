class CreateMealtypes < ActiveRecord::Migration
  def change
    create_table :mealtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
