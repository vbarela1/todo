class TodolistsController < ApplicationController
  def index
    @todos = Todolist.all
  end

  def show
    @todo = Todolist.find(params[:id])
  end

  def new
    @todo = Todolist.new
  end

  def create
    @todo = Todolist.new(todo_params)
    if @todo.save
      redirect_to todo_show_path(@todo)
    else
      render :new
    end
  end 
  
  def edit
    @todo = Todolist.find(params[:id])
  end

  def update
    @todo = Todolist.find(params[:format])
    if @todo.update(todo_params)
      redirect_to todo_show_path(@todo)
    else
      render :edit
    end 
  end

  def destroy
    @todo = Todolist.find(params[:format])
    @todo.destroy
    redirect_to root_path
  end 
  
private 
    def todo_params
      params.require(:todolist).permit(:title, :description)
    end  
  
end
