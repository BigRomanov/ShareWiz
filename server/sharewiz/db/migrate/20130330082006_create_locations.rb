class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :context_id
      t.string :url

      t.timestamps
    end
  end
end
