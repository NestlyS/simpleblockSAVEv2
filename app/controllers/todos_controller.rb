class TodosController < ApplicationController
  def index
      @projects = Project.all
      @projectsCollect = Project.all.collect
  end
    def create
      @project = Project.find(params.dig(:todo, :project_id))
      @todo = @project.todos.new(todo_params)
      @todo.save
      redirect_to root_path
  end
    private
        def todo_params
            params.require(:todo).permit(:text, false, :project_id)
        end
end
