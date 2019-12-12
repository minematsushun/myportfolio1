class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'system@example.com',
      to: 'o62.minematsu.shunya@gmail.com',
      subject: 'お問合せ通知'
    )
  end
end
