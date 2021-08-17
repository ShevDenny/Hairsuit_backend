class AddDescriptionToSalon < ActiveRecord::Migration[6.1]
  def change
    add_column :salons, :description, :string
  end
end
