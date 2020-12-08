class CreateJoinTableMateriaUniversitario < ActiveRecord::Migration[6.0]
  def change
    create_join_table :materias, :universitarios
  end
end
