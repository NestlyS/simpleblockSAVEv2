class WelcomeController < ApplicationController
  def index
      @projects = Project.all
  end
  def new

  end
  def update
    end
end
