class WelcomeController < ApplicationController
  def index
      @projects = Project.all
      @todo = Todo.new
  end
  def new

  end
  def update
    end
    private
        def todo_params
            params.require(:edit_todo_).permit(:isChecked)
        end
end
