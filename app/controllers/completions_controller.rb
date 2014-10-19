class CompletionsController < ApplicationController
  def create
    todo.touch :completed_at
    redirect_to todolists_path
  end

  private

  def todo
    current_user.todolists.find(params[:todolist_id])
  end
end
