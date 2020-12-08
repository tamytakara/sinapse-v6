class CreateJoinTableUniversitarioAdmissionExam < ActiveRecord::Migration[6.0]
  def change
    create_join_table :universitarios, :admission_exams
  end
end
