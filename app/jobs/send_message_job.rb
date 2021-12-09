class SendMessageJob < ApplicationJob
  queue_as :default

  def perform(message)
    html = "<p>#{message.sender.name}: #{message.text}</p>"
    chat_id = [message.sender_id, message.recipient_id].sort.join("")
    ActionCable.server.broadcast("message_channel_#{conversation_id}", html: html)
  end
end