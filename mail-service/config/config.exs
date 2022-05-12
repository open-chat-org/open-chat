import Config

config :mail_service, MailService.Mailer,
	adapter: Bamboo.SesAdapter
