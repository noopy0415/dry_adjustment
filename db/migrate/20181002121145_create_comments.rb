class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.boolean :end_flag

      t.timestamps
    end
  end
end
