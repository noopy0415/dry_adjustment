class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :req_user_name
      t.string :req_valiety
      t.text :task_note
      t.boolean :task_act
      t.timestamps
    end
  end
end
