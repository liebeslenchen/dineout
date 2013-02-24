class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :user
      t.references :event

      t.timestamps
    end
    add_index :participations, :user_id
    add_index :participations, :event_id
  end
end
