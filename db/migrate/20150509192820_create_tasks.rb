class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :tittle
      t.text :content
      t.integer :duration
      t.date :stard
      t.date :endd
      t.integer :user_id
      t.boolean :finished

      t.timestamps
    end
  end
end
