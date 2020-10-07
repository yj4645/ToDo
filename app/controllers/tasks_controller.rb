class TasksController < ApplicationController
  

def index
<<<<<<< Updated upstream

  @tasks = Task.all
end


def new
  @tasks = Task.all
end


=======
  @tasks = Task.new
end
>>>>>>> Stashed changes
end