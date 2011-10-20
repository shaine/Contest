class NewModels < ActiveRecord::Migration
  def self.up
    create_table :friendships do |t|
      t.integer :user_id, :null => false
      t.integer :teammate_id, :null => false

      t.timestamps
    end
    
    create_table :statuses do |t|
      t.integer :user_id, :null => false
      t.text    :content, :null => false
      
      t.timestamps
  end

  def self.down
    drop_table :friendships
  end
end
