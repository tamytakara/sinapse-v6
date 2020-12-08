class CreateAdmissionExams < ActiveRecord::Migration[6.0]
  def change
    create_table :admission_exams do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
