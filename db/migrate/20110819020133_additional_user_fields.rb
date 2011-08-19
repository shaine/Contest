class AdditionalUserFields < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.string :gender, :null => false, :default => ''
      t.string :agent
      t.string :high_school
      t.string :manager
      t.string :home_town
    end
  end

  def self.down
    change_table :users do |t|
      t.remove :gender, :agent, :high_school, :manager, :home_town
    end
  end
end
