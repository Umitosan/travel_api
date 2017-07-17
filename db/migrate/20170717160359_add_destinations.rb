class AddDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.column :city, :string
      t.column :country, :string

      t.timestamps
    end
  end
end
