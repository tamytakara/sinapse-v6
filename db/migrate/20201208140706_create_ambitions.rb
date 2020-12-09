class CreateAmbitions < ActiveRecord::Migration[6.0]
  def change
    create_table :ambitions do |t|
      t.string :data
      t.references :course
      t.references :vestibulando
      t.references :admission_exam

      t.timestamps
    end
  end
end
