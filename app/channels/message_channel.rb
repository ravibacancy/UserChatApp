class MessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from "message_channel_#{params[:conversation_id]}" 
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end