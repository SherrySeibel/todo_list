class TodolistsController < ApplicationController
  def index
    @todolists = Todolist.all
  end

  def new
    @todolist = Todolist.new
  end

  def create
    Todolist.create(todolist_params)
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
