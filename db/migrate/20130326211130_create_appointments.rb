class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.time :time
      t.integer :user_id
      t.text :notes

      t.timestamps
    end
  end
end
