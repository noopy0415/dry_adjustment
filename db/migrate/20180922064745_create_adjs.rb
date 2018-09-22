class CreateAdjs < ActiveRecord::Migration[5.2]
  def change
    create_table :adjs do |t|
      t.integer :task_id
      t.integer :container1
      t.integer :container2
      t.float :bag0
      t.integer :bag1
      t.integer :bag2
      t.integer :bag3
      t.integer :bag4
      t.integer :bag5
      t.text :adj_note

      t.timestamps
    end
  end
end
