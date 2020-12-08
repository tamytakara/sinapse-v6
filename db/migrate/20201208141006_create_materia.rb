class CreateMateria < ActiveRecord::Migration[6.0]
  def change
    create_table :materia do |t|
      t.text :desc
      t.string :name

      t.timestamps
    end
  end
end
