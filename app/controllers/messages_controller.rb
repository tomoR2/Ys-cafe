class MessagesController < ApplicationController
  def index
  end
  
  def create
    @message = Message.create(message_params)
    if @message.save
      redirect_to messages_path
    end
  end
  

  private
  def message_params
    params.require(:message).permit(:text)
  end
end

# .merge(user_id: current_user.id, message_id: params[:message_id])