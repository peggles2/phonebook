class MakeFieldsFromStringToText < ActiveRecord::Migration
  def change
    change_column :contacts, :last_name, :text
    change_column :contacts, :first_name, :text
    change_column :contacts, :address, :text
  end
end
