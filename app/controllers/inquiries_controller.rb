class InquiriesController < ApplicationController
  def index
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      binding.pry
      InquiryMailer.send_mail(@inquiry).deliver_now
      flash[:success] = 'お問合せを受け付けました'
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:email, :message, :name)
  end
end
