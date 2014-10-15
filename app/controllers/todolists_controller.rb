class TodolistsController < ApplicationController
  before_filter :authenticate

  def index
    @todolists = current_user.todolists
  end

  def new
    @todolist = Todolist.new
  end

  def create
    current_user.todolists.create(todolist_params)
    redirect_to todolists_path
  end

  private

  def todolist_params
    params.require(:todolist).
      permit(
        :title,
    )
  end
end
