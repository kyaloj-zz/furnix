class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def change
    remove_column :users, :email_address, :datatype
    remove_column :users, :password_digest, :datatype
  end
end
