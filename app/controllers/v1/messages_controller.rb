class V1::MessagesController < ApplicationController
  def index
    @messages = Message.all
    @random = Message.find(rand(@messages.length) + 1)
    render json: {
      message: @random.content
    }.to_json
  end
end
