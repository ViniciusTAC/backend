class SubTasksController < ApplicationController
  before_action :set_sub_task, only: %i[ show update destroy ]

  # GET /sub_tasks
  def index
    if params && params[:task_id].present?
      @sub_tasks = SubTask.where(task_id: params[:task_id])
    else
      @sub_tasks = SubTask.all
    end
    render json: @sub_tasks
  end

  # GET /sub_tasks/1
  def show
    render json: @sub_task
  end

  # preciso fazer get na tabela sub_tasks onde o parametro que irei passar sera task_id 

  def by_task_id
    task_id = params[:task_id]
  
    # Verifica se o parâmetro task_id está presente e é um número
    if task_id.present? && task_id.to_i.to_s == task_id
      sub_tasks = SubTask.where(task_id: task_id.to_i)
      render json: sub_tasks
    else
      render json: { error: 'Parâmetro task_id inválido' }, status: :unprocessable_entity
    end
  end

  # POST /sub_tasks
  def create
    @sub_task = SubTask.new(sub_task_params)

    if @sub_task.save
      render json: @sub_task, status: :created, location: @sub_task
    else
      render json: @sub_task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sub_tasks/1
  def update
    if @sub_task.update(sub_task_params)
      render json: @sub_task
    else
      render json: @sub_task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sub_tasks/1
  def destroy
    @sub_task.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_task
      @sub_task = SubTask.find(params[:id])
    end

    def sub_task_params
      params.require(:sub_task).permit(:description, :finished, :task_id)
    end

    # Only allow a list of trusted parameters through.
    def sub_task_params
      params.require(:sub_task).permit(:description, :finished, :task_id)
    end
end
