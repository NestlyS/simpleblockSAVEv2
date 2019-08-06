class TodosController < ApplicationController
    def create
      @project = Project.find(params.dig(:todo, :project_id))
      @todo = @project.todos.new(todo_params)
      if @todo.save
          redirect_to welcome_index_path
      else
          render 'welcome/index'
      end
  end
    private
        def todo_params
            params.require(:todo).permit(:text, false, :project_id)
        end
end
