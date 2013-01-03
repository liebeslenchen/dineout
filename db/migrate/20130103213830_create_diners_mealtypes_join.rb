class CreateDinersMealtypesJoin < ActiveRecord::Migration
  def up
  	create_table 'diners_mealtypes', :id => false do |t|
  		t.column 'diner_id', :integer
  		t.column 'mealtype_id', :integer
  	end
  end

  def down
  	drop_table 'diners_mealtypes'
  end
end