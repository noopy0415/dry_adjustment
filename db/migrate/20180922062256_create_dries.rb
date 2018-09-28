class CreateDries < ActiveRecord::Migration[5.2]
  def change
    create_table :dries do |t|
      t.integer :task_id
      t.integer :drier_id
      t.float :init_moist
      t.float :dry_condition1
      t.float :dry_condition2
      t.float :dry_condition3
      t.float :dry_condition4
      t.float :dry_condition5
      t.float :dry_condition6
      t.text :dry_note

      t.timestamps
    end
  end
end
