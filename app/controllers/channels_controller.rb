class ChannelsController < ApplicationController
  def show
    puts "#{params[:id]}"
    if params[:id].blank?
      redirect_to channel_path(Channel.first.name)
    else
      @channel = Channel.find_by(name: params[:id])
      @channels = Channel.all
    end
  end
end
