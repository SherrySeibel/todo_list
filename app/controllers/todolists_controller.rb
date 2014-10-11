class TodolistsController < ApplicationController
  before_filter :authenticate

  def index
    @todolists = Todolist.where(email: session[:current_email])
  end

  def new
    @todolist = Todolist.new
  end

  def create
    Todolist.create(todolist_params.merge(email: session[:current_email]))
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
