class Customer::MessagesController < Customer::Base
  def new
    @message = CustomerMessage.new
  end

  #POST
  def confirm
    @message = CustomerMessage.new(customer_message_params)
    @message.customer = current_customer
    if @message.valid?
      render action: "confirm"
    else
      flash.now.alert = "入力に誤りがあります。"
      render action: "new"
    end
  end

  private def costomer_message_params
    params.require(:customer_message).permit(:subject, :body)
  end
end
