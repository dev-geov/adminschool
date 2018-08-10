class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|
      t.string :name 
      t.date :birth 
      t.string :sex
      t.timestamps
    end
  end
end
