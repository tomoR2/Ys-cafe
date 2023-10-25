class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to messages_path
    end
  end
  

  private
  def message_params
    params.require(:message).permit(:message_text).merge(user_id: current_user.id)
  end
end

