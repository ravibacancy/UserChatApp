class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :conversation, polymorphic: true


  before_action :mark_as_read

    def mark_as_read
        @unread = current_user.notifications.where(read: false)
        @unread.each do |unread|
            unread.update_attribute(:read, true)
        end
    end
end
