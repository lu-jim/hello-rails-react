class Api::V1::MessagesController < ApplicationController
  validates :content, presence: true

  def index; end
end
