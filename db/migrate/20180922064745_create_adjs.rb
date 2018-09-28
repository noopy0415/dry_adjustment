class CreateAdjs < ActiveRecord::Migration[5.2]
  def change
    create_table :adjs do |t|
      t.integer :task_id
      t.integer :trader_id
      t.integer :container
      t.boolean :container_shipment
      t.integer :bag
      t.boolean :bag_shipment
      t.float :half
      t.boolean :half_shipment
      t.text :adj_note

      t.timestamps
    end
  end
end
