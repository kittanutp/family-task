class TasksController < ApplicationController
    def new
        @task = Task.new
    end
      # GET /tasks or /tasks.json
    def index
        @tasks = Task.all
    end

    def set_status
      @task = Task.find(params[:id])
      @task.status = 1
      respond_to do |format|
        if @task.save
          format.html { redirect_back(fallback_location: tasks_path, notice: "Task was successfully updated.") }
          format.json { render status: :ok, location: @task }
        else
          format.html { render status: :unprocessable_entity }
          format.json { render json: @task.errors, status: :unprocessable_entity }
        end
      end
    end

      # POST /tasks or /tasks.json
    def create
      @task = Task.new(task_params)
      @task.status = 0

      respond_to do |format|
        if @task.save
          format.html { redirect_to tasks_path, notice: "Task was successfully created." }
          format.json { render :show, status: :created, location: @task }
        else
          format.html { redirect_to tasks_path, status: :unprocessable_entity }
          format.json { render json: @task.errors, status: :unprocessable_entity }
        end
      end
    end

    def delete_all
      Task.delete_all
      respond_to do |format|
          format.html { redirect_to tasks_path, notice: "Task was successfully clear." }
          format.json { render status: :ok}
      end
    end

    def set_tasks_to_delay
      today = Date.today
      tasks = Task.where(created_at: today.beginning_of_day..today.end_of_day)
                  .where(status: 0)
                  .update(status: 2)

      render(json: tasks, status: :ok)
    end

    private

    # Only allow a list of trusted parameters through.
    def task_params
    params.require(:task).permit(:task, :family_member_id)
    end
end
