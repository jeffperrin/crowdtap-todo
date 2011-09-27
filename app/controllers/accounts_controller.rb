class AccountsController < ApplicationController
  def new
    @account = Account.new 
  end
  
  def create
    @account = Account.new(params[:account])
    @account.save!
    cookies.permanent[:account_id] = @account.id
    flash[:notice] = "Account created!"
    redirect_to todo_items_path
  end
end
