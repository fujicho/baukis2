class Staff::EntriesForm
  include ActiveModel::ActiveModel
  
  attr_accessor :program, :approved, :not_approved, :canceled, :not_canceled

  def initialize(program)
    @program = program
  end
end