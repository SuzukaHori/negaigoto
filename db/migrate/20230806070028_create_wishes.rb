class CreateWishes < ActiveRecord::Migration[7.0]
  def change
    create_table :wishes do |t|
      t.text :context, null: false
      t.string :writer

      t.timestamps
    end
  end
end
