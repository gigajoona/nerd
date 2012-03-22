class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
    add_index :users, :email, unique: true #FORMAT: tablename - columnname -requirement
  end
end
