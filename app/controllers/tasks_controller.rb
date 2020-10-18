class TasksController < ApplicationController
  # before_action :move_to_index, exepct: [:index]

def index
 @task = Task.includes(:user).order("created_at DESC")
end


def new
  @task = Task.new
end

def create
  Task.create(task_params)
#   if @task.save
# redirect_to root_path
# end
end

private

def task_params
 params.require(:task).permit(:text, :title, :date_time).merge(user_id: current_user.id)
end

# def move_to_index
#   unless user_signed_in?
#     redirect_to action: :index
#   end
# end
end