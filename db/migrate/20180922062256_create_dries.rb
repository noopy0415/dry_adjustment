class CreateDries < ActiveRecord::Migration[5.2]
  def change
    create_table :dries do |t|
      t.integer :task_id
      t.integer :dry_id
      t.float :init_moist
      t.integer :dry_condition1
      t.integer :dry_condition2
      t.integer :dry_condition3
      t.integer :dry_condition4
      t.integer :dry_condition5
      t.integer :dry_condition6
      t.text :dry_note

      t.timestamps
    end
  end
end
