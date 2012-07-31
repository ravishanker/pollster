class AddPolllinkToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :poll_link, :string
  end
end
