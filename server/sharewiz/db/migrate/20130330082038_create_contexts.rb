class CreateContexts < ActiveRecord::Migration
  def change
    create_table :contexts do |t|
      t.integer :user_id
      t.string  :name

      t.timestamps
    end
  end
end
