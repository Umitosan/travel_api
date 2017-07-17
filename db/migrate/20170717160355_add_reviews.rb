class AddReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :content, :string
      t.column :author, :string
      t.column :destination_id, :integer

      t.timestamps
    end
  end
end
