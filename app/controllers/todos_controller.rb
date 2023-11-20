class TodosController < ApplicationController
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

  # 削除するapi
  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    head :no_content
  end

  private

  def todo_params
    params.require(:todo).permit(:text)
  end
end
