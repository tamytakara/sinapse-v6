class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :desc
      t.text :gabarito
      t.string :image
      t.references :prova

      t.timestamps
    end
  end
end
