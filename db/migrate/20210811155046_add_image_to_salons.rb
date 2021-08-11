class AddImageToSalons < ActiveRecord::Migration[6.1]
  def change
    add_column :salons, :image, :string
  end
end
