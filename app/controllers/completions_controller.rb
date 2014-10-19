class CompletionsController < ApplicationController
  def create
    current_user.todolists.find(params[:todolist_id]).touch :completed_at
    redirect_to todolists_path
  end
end
