class MessagesController < ApplicationController
  def index
  end
  
  def create
    Message.create(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id, message_id: params[:message_id])
  end
end
