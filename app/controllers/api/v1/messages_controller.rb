class Api::V1::MessagesController < ActionController::Base

  def index
    @channel = Channel.where(name: params[:channel_id])
    @messages = Message.where(channel: @channel)
    render json: @messages
  end

  def create
    @message = Message.create(post_params)
    render json: @message
  end

private

  def message_params
    params.require(:post).permit(:content, :user_id, :channel_id)
  end
end
