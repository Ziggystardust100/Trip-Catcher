class ConversationsController < ApplicationController
  def index
    @catchers = current_catcher.friends
    @conversations = policy_scope(Conversation)
    end

  def create
    if Conversation.between(params[:sender_id],params[:reciever_id]).present?
      @conversation = Conversation.between(params[:sender_id],
      params[:reciever_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end
    authorize @conversation
     redirect_to conversation_messages_path(@conversation)
  end

  private

  def conversation_params
    params.permit(:sender_id, :reciever_id)
  end
end
