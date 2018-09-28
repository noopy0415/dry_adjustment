class CreateDriers < ActiveRecord::Migration[5.2]
  def change
    create_table :driers do |t|
      t.string :name
      t.float :scale
      t.text :note

      t.timestamps
    end
  end
end
