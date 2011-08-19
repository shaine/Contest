class AddDefaultsToUsers < ActiveRecord::Migration
  def self.up
    change_column_default :users, :username, ''
    change_column_default :users, :password, ''
    change_column_default :users, :first_name, ''
    change_column_default :users, :last_name, ''
  end

  def self.down
  end
end
