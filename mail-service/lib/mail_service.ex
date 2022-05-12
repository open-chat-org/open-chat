defmodule MailService do
  def send_welcome_email do
    MailService.Email.welcome_email()
    |> MailService.Mailer.deliver_now!()
  end
end
