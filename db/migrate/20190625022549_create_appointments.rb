class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.references :physician, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
