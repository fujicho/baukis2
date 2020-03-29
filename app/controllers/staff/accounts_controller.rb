class Staff::AccountsController < ApplicationController
  def show
    @staff_member = current_staff_member
  end
end
