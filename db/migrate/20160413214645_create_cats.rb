class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :caption

      t.timestamps null: false
    end
  end
end
