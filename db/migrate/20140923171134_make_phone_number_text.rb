class MakePhoneNumberText < ActiveRecord::Migration
  def change
    change_column :contacts, :phone_number, :text
  end
end
