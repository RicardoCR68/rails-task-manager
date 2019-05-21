# frozen_string_literal: true

# Rails generated Controller for my tasks
class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # READ
  def index
    @tasks = Task.all
  end

  def show; end

  # CREATE

  def new
    @task = Task.new(completed: false)
  end

  def create
    new_task = Task.create(task_params)
    new_task.completed = new_task.completed == '1'
    # raise
    redirect_to tasks_path
  end

  def edit; end

  def update
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
