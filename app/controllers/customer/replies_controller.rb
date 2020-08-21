class Customer::RepliesController < Customer::Base
  before_action :prepare_message

  def new
    @reply = CustomerMessage.new
  end

  #POST
  def confirm
    @reply = CustomerMEssage.new(customer_message_params)
    @reply.parent = @message
    if @reply.parent = @message
      render action: "confirm"
    else
      flash.now.alert = "入力に誤りがあります。"
      render action: "new"
    end
  end
end
