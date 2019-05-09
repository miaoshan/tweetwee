class RemoveTextFromChats < ActiveRecord::Migration[5.2]
  def change
    remove_column :chats, :text, :string
  end
end
