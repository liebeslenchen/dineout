class AddDinerTypIdToDiners < ActiveRecord::Migration
  def change
  	add_column :diners, :diner_type_id, :integer
  end
end
