class CreateGradelists < ActiveRecord::Migration
  def change
    create_table :gradelists do |t|
      t.string :name
      t.string :id
      t.integer :scr

      t.timestamps
    end
  end
end
