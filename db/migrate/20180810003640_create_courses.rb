class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :duration
      t.boolean :active
      t.timestamps
    end
  end
end
