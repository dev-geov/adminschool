class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :fullname
      t.date :birth
      t.string :sex
      t.timestamps
    end
  end
end
