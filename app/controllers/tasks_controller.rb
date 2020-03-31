# frozen_string_literal: true

class TasksController < ApplicationController
    before_action :set_task, only: %i[update destroy]
    before_action :set_tasks, only: [:index]
  
    # GET /tasks
    # GET /tasks.json
    def index
      respond_to do |format|
        format.html do
          @task = Task.new
        end
        format.json do
          render json: { tasks: @tasks }
        end
      end
    end
  
    # GET /tasks/1
    def show; end
  
    # GET /tasks/1/edit
    def edit; end
  
    # POST /tasks
    def create
      @task = Task.new(task_params)
      if @task.save!
        redirect_to action: :index, notice: 'Task was successfully created.'
      else
        redirect_to root_path, alert: @task.errors.full_messages.join(', ')
      end
    end
  
    # PUT/PATCH /tasks/1
    def update
      @task.update(completed: !@task.completed)
      redirect_to tasks_path
    end
  
    # DELETE /tasks/1
    def destroy
      @task.destroy
      redirect_to root_path, notice: 'Task was successfully destroyed.'
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end
  
    def set_tasks
      @task = Task.new
  
      @tasks = Task.all
  
      case params[:status]
      when 'completed'
        @tasks = @tasks.completed
      when 'pending'
        @tasks = @tasks.pending
      end
      @tasks = @tasks.searchbuyer(params[:term])
  
      @tasks  = case params[:due]
      when "past_due"
        @tasks.past_due
      when "due_soon"
        @tasks.due_soon
      when "due_later"
        @tasks.due_later
      when "not_due"
        @tasks.not_due
      else
        @tasks
      end
  
    end
  
  
  
    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:description, :due_date)
    end
  end