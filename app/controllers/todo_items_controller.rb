class TodoItemsController < ApplicationController
  def index
    if authenticated?
      @todo = current_user.todo_items.build
      @todos = current_user.todo_items
    else
      redirect_to new_account_path
    end
  end

  def create
    @todo = current_user.todo_items.build(params[:todo_item])
    if @todo.save
      flash[:notice] = "Todo was created"
      redirect_to todo_items_path
    else
      @todos = current_user.todo_items
      render :index
    end
  end

  private
    def authenticated?
      cookies[:account_id].blank? == false
    end

    def current_user
      Account.find(cookies[:account_id])
    end
end
