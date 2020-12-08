class CreateProvas < ActiveRecord::Migration[6.0]
  def change
    create_table :provas do |t|
      t.string :name
      t.string :desc
      t.references :admission_exam

      t.timestamps
    end
  end
end
