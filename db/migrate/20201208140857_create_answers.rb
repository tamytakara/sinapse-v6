class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.text :desc
      t.references :question
      t.references :simulado

      t.timestamps
    end
  end
end
