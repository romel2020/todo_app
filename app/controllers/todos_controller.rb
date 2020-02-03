class TodosController < ApplicationController

    def index
        @todos = Todo.all
    end

    def new
        @todos = Todo.new
    end

    def create
        @todo = Todo.new(todo_params)
        @todo.save
        redirect_to root_path
    end

    def show
    
    end

    

    def todo_params
        params.require(:todo).permit(:description, :completed, :picture)
    end
end
