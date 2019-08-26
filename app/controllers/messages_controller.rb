class MessagesController < ApplicationController
  before_action do
   @conversation = Conversation.find(params[:conversation_id])
  end

  def index
  policy_scope(Message)
   @messages = @conversation.messages
    if @messages.length > 8
     @over_ten = true
     @messages = @messages[-8..-1]
    end
    if params[:m]
     @over_ten = false
     @messages = @conversation.messages
    end
   if @messages.last
    if @messages.last.catcher_id != current_catcher.id
      @messages.last.read = true
      @messages.last.save
    end
   end
    @message = @conversation.messages.new
    @reciever = @conversation.sender == current_catcher ? @conversation.reciever : @conversation.sender
  end

  def new
    @message = @conversation.messages.new
    authorize @message

  end

  def create
    @message = @conversation.messages.new(message_params)
        authorize @message
    if @message.save
      ActionCable.server.broadcast "conversation_#{@conversation.id}",
        id: @conversation.id,
        message: @message.to_json,
        catcher_username: @message.catcher.user_name,
        message_time: @message.message_time

    end

  end

  private

  def message_params
    params.require(:message).permit(:content, :catcher_id)
   end

  #  def render_message(message, is_current_catcher)
  #   render( partial: 'message', locals: {message: message, is_current_catcher: is_current_catcher})
  # end

end
