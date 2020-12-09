class CreateSimulados < ActiveRecord::Migration[6.0]
  def change
    create_table :simulados do |t|
      t.datetime :end
      t.references :vestibulando
      t.references :prova

      t.timestamps
    end
  end
end
