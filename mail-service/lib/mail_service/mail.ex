defmodule MailService.Email do
  import Bamboo.Email

  def welcome_email do
    base_email()
    |> to("nguyenhoangnam.dev@gmail.com")
    |> subject("DevOT new post")
    |> text_body("I announce new version of blog.")
  end

  defp base_email do
    new_email()
    |> from("nguyenhoangnam@engineer.com")
  end
end
