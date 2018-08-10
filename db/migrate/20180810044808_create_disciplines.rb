class CreateDisciplines < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplines do |t|
      t.string :title
      t.text :description
      t.integer :hours
      t.references :course, foreign_key: true
      t.references :professor, foreign_key: true
      t.timestamps
    end
  end
end
