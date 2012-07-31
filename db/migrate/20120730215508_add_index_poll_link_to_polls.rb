class AddIndexPollLinkToPolls < ActiveRecord::Migration
  def change
  	add_index :polls, :poll_link
  end
end
