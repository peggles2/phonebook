class AddPhoneToContact < ActiveRecord::Migration
  def self.up 
    add_column :contacts, :phone_number, :integer
  end

  def self.down
    remove_column :contacts, :phone_number
  end
end
