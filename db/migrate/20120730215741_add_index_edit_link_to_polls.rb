class AddIndexEditLinkToPolls < ActiveRecord::Migration
  def change
  	add_index :polls, :edit_link
  end
end
