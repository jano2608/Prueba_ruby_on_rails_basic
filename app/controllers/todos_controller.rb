class TodosController < ApplicationController
    before_action :set_todo, only:[:show,:edit,:update,:destroy,:completed,]
  def index
    @todos=Todo.all
  end
  def new
    @todo=Todo.new
  end
  def create
    todo= Todo.create(todo_params)
    todo.completed=false
    todo.save
    redirect_to todos_path
  end
  def show;end
  def edit;end
  def update
  @todo.update(todo_params)
  redirect_to todo_path
  end
  def destroy
    @todo.destroy()
      redirect_to todos_path
  end
  def completed
    @todo.completed=true
    @todo.save
    redirect_to todos_path
  end
  def list
    @todos_list=Todo.where(completed:true)
    @todos_list_false=Todo.where(completed:false)
  end

  private
  def todo_params
    params.require(:todo).permit(:description, :completed)
  end
  def set_todo
    @todo=Todo.find(params[:id])
  end
end
