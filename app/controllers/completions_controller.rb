class CompletionsController < ApplicationController
  def create
    todolist.complete!
    redirect_to todolists_path
  end

  def destroy
    todolist.mark_incomplete!
    redirect_to todolists_path
  end

  private

  def todolist
    current_user.todolists.find(params[:todolist_id])
  end
end
