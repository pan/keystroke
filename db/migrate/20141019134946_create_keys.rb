class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.boolean :ctrl, default: false
      t.boolean :alt, default: false
      t.boolean :shift, default: false
      t.integer :code
      t.string :meaning

      t.timestamps
    end
  end
end
