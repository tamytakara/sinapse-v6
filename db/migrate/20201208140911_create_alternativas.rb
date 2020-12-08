class CreateAlternativas < ActiveRecord::Migration[6.0]
  def change
    create_table :alternativas do |t|
      t.text :desc
      t.references :question

      t.timestamps
    end
  end
end
