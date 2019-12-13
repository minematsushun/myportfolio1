class InquiryMailer < ApplicationMailer
  def send_mail(inquiry) #自分用
    @inquiry = inquiry
    mail(
      to: ENV['MAIL'],
      subject: 'お問合せ通知'
    )
  end
end
