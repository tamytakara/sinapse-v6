class CreateJoinTableMateriaQuestion < ActiveRecord::Migration[6.0]
  def change
    create_join_table :materias, :questions
  end
end
