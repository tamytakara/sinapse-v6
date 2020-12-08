class CreateJoinTableUniversidadeAdmissionExam < ActiveRecord::Migration[6.0]
  def change
    create_join_table :universidade, :admission_exams
  end
end
