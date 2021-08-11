class CreateSalons < ActiveRecord::Migration[6.1]
  def change
    create_table :salons do |t|
      t.string :name
      t.string :location
      t.string :specialize_in

      t.timestamps
    end
  end
end
