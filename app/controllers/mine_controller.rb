class MineController < ApplicationController
  def index
    @inquiry = Inquiry.new
  end
end
