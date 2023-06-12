class TasksController < ApplicationController
    def new
        @task = Task.new
    end
      # GET /tasks or /tasks.json
    def index
        @tasks = Task.all
    end

    # GET /taskss/1 or /tasks/1.json
    def show
    end

    def set_status
    end

      # POST /tasks or /tasks.json
    def create
        @tasks = FamilyMember.new(tasks)

        respond_to do |format|
          if @task.save
            format.html { redirect_to task_url(@task), notice: "Task was successfully created." }
            format.json { render :show, status: :created, location: @task }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @family_member.errors, status: :unprocessable_entity }
          end
        end
      end
    private

    # Only allow a list of trusted parameters through.
    def task_params
    params.require(:task).permit(:name, :family_member_id)
    end
end
