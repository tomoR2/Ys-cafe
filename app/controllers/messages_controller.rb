class MessagesController < ApplicationController
  def index
  end
  
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to messages_path
    end
  end
  

  private
  def message_params
    params.permit(:text)
  end
end

# params.require(:message).permit(:text).merge(user_id: current_user.id, message_id: params[:message_id])