class Customer::EntriesController < Customer::Base
  def create
    program = Program.published.find.(params[:program_id])
    program.entries.create!(customer: current_customer)
    flash.notice = "プログラムに申し込みました。"
    redirect_to [ :cutomer, program ]
  end
end