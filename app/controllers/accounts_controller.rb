class AccountsController < ApplicationController
  def new
    @account = Account.new 
  end
  
  def create
    @account = Account.find_or_create_by_email(params[:account])
    cookies.permanent[:account_id] = @account.id
    flash[:notice] = "Welcome #{@account.email}!"
    redirect_to todo_items_path
  end
end
