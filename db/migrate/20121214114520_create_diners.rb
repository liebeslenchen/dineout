class CreateDiners < ActiveRecord::Migration
  def change
    create_table :diners do |t|
      t.string :name
      t.string :street
      t.string :number
      t.string :zipcode
      t.string :city
      t.string :url
      t.text :time
      t.string :phone
      t.string :urlmaps

      t.timestamps
    end
  end
end
