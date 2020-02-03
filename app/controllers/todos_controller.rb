class TodosController < ApplicationController

    def index
        @todos = Todo.all
    end

    def show
        @todos = Todo.find(params[:id])
       end

    def new
        @todo = Todo.new
    end


    def create
        @todo = Todo.new(todo_params)
        @todo.save
        redirect_to root_path
    end

    def edit
        @todo = Todo.find(params[:id])
    end

    def update
        @todo = Todo.find(params[:id])
        @todo.update(todo_params)
        @todo.save
        redirect_to root_path
    end

    def destroy
        @todo = Todo.find(params[:id])
        @todo.destroy
        redirect_to root_path
    end

    def complete
        @todo = Todo.find(params[:id])
        @todo.completed = true
        @todo.save
        redirect_to root_path

    end

    def list
     
        @todos = Todo.all
        @todos_open = Todo.where(completed: 'true')
        @todos_close = Todo.where(completed: 'false')
    end

    def set_todos
        @todo = Todo.find(params[:id])


    end

    def todo_params
        params.require(:todo).permit(:description, :completed, :picture)
    end
end
