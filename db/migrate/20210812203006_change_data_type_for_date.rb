class ChangeDataTypeForDate < ActiveRecord::Migration[6.1]
  def change
    change_column :appointments, :date, 'date USING "date"::date'
    change_column :appointments, :start_time, 'time USING "start_time"::time without time zone'
    change_column :appointments, :end_time, 'time USING "end_time"::time without time zone'
  end
end
