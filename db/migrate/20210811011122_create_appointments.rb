class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :start_time
      t.string :end_time
      t.string :description
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :salon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
