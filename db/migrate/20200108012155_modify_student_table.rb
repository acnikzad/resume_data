class ModifyStudentTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :password, :string
    remove_column :students, :password_confirmation, :string
    add_column :students, :password_digest, :string
  end
end
