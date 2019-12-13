class InquiriesController < ApplicationController
  def index
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      InquiryMailer.send_mail(@inquiry).deliver_now
      redirect_to root_path, notice: 'お問合せを受け付けました'
    else
      flash.now[:alert] = '必須項目を入力してください。'
      render :index
    end
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:email, :message, :name)
  end
end
