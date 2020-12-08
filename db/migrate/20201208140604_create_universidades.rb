class CreateUniversidades < ActiveRecord::Migration[6.0]
  def change
    create_table :universidades do |t|
      t.string :name

      t.timestamps
    end
  end
end
