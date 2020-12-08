class CreateVotos < ActiveRecord::Migration[6.0]
  def change
    create_table :votos do |t|
      t.boolean :positivo
      t.references :user
      t.references :resolution

      t.timestamps
    end
  end
end
