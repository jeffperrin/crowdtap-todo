class AccountsController < ApplicationController
  def new
    @account = Account.new 
  end
  
  def create
    @account = Account.new(params[:account])
    @account.save!
    flash[:notice] = "Account created!"
    render :new
  end
end
