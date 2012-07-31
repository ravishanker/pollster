class Poll < ActiveRecord::Base
  attr_accessible :body, :title, :edit_link, :poll_link

  before_create :set_edit_link, :set_poll_link
  
  def set_edit_link
    self.edit_link = SecureRandom.urlsafe_base64
  end

  def set_poll_link
  	self.poll_link = SecureRandom.urlsafe_base64 #self.title.gsub('/[\s]/', '_')
  end

end
