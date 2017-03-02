class ReceiptMailer < ApplicationMailer

  def registration_confirmation_email(receipt)
    @receipt = receipt
    mail(to: @receipt.email, :subject => "Your Ticket Receipt")
  end

end
