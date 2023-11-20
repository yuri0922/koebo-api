class TodosController < ApplicationController
  before_action :set_todo, only: %i[show update destroy]
  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      render json: @todo, status: :created
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  def index
    @todos = Todo.all
    render json: @todos
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:text)
  end
end
