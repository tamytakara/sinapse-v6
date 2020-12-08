class CreateResolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :resolutions do |t|
      t.text :desc
      t.references :question
      t.references :universitario

      t.timestamps
    end
  end
end
