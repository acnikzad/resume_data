class AddingPasswords < ActiveRecord::Migration[6.0]
  def change

    add_column :students, :password, :string
    add_column :students, :password_confirmation, :string
  end
end
