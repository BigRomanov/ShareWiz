class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer :context_id
      t.string  :type
      t.string  :message

      t.timestamps
    end
  end
end
