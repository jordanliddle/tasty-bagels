class OrderNotifier < ActionMailer::Base
  default from: "jrdnliddle@gmail.com"


  # def account_sign_up_notification(user)
  #   @user = user
  #   @url = 'http://something.com/login'
  #   mail(to: @user.email, subject: 'Welcome to TastyBagel Bitch!')
  # end


  def received(order)
    @order = order
    mail to: order.email, subject: 'Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped
    @order = order

    mail to: order.email, subject: "Your food is en route!"
  end
end
