class TasksController < ApplicationController
  

def index
  @tasks = Task.all
end

def new
  @tasks = Task.all
end

end