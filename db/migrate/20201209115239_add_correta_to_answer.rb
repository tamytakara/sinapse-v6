class AddCorretaToAnswer < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :correta, :boolean
  end
end
