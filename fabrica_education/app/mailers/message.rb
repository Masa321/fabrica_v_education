class Message < ActionMailer::Base
  default from: "mitsuimasayoshi@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message.hello.subject
  #
  def hello
    @greeting = "Hi"

    mail to: "mitsuimasayoshi@gmail.com",
    subject: 'mail from message'
  end
end
