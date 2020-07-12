class Staff::ProgramsController < Staff::Base
  def index
    @programs = Program.listing.page(params[:page])
  end

  def show
    @program = Program.listing.find(params[:id])
  end

  def new
    @program = Program.new
  end

  def edit
    @program = Program.find(params[:id])
    @program.init_virtual_attributes
  end

  def create
    @program = Program.new
    @program.assign_attributes(program_params)
    @program.registrant = current_staff_member
    if @program.save
      flash.notice = "プログラムを登録しました。"
      redirect_to action: "index"
    else
      flash.now.alert = "入力に誤りがあります。"
      render action: "new"
    end
  end

  def update
    @program = Program.find(params[:id])
    @program.assign_attributes(program_params)
    if @program.save
      flash.notice = "プログラムを更新しました。"
      redirect_to action: "index"
    else
      flash.now.alert = "入力に誤りがあります。"
      render action: "edit"
    end
  end

  
end
