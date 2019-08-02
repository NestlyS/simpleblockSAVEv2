class WelcomeController < ApplicationController
  def index
      @projects = Project.all
      @todo = Todo.new
  end
  def new
      
  end
  def update
  end
end
