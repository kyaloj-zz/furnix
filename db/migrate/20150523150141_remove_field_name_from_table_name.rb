class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def change
    remove_column :users, :name, :datatype
     
  end
end
