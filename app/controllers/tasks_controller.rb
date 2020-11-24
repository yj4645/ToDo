class TasksController < ApplicationController


def index
 @task = Task.includes(:user).order("created_at DESC")
end


def new
  @task = Task.new
end

def create
  Task.create(task_params)
end

# def destroy
#   @task = Task.find(params[:id])
#   @task.destroy
# end

def edit
end

private

def task_params
 params.require(:task).permit(:text, :title, :date_time).merge(user_id: current_user.id)
end


end
