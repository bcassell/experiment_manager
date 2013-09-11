class CiExperimentsController < ApplicationController
  expose(:default_order){ "game" }
  expose(:ci_experiments){ CiExperiment.order("#{sort_column} #{sort_direction}").page(params[:page]) }
  before_action :set_ci_experiment, only: [:show, :edit, :update, :destroy]

  # GET /ci_experiments/1
  # GET /ci_experiments/1.json
  def show
  end

  # GET /ci_experiments/new
  def new
    @ci_experiment = CiExperiment.new
  end

  # GET /ci_experiments/1/edit
  def edit
  end

  # POST /ci_experiments
  # POST /ci_experiments.json
  def create
    @ci_experiment = CiExperiment.new(ci_experiment_params)

    respond_to do |format|
      if @ci_experiment.save
        format.html { redirect_to @ci_experiment, notice: 'Ci experiment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ci_experiment }
      else
        format.html { render action: 'new' }
        format.json { render json: @ci_experiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ci_experiments/1
  # PATCH/PUT /ci_experiments/1.json
  def update
    respond_to do |format|
      if @ci_experiment.update(ci_experiment_params)
        format.html { redirect_to @ci_experiment, notice: 'Ci experiment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ci_experiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ci_experiments/1
  # DELETE /ci_experiments/1.json
  def destroy
    @ci_experiment.destroy
    respond_to do |format|
      format.html { redirect_to ci_experiments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ci_experiment
      @ci_experiment = CiExperiment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ci_experiment_params
      params.require(:ci_experiment).permit(:game, :alpha, :delta, :step_size, :aggregate_level, :wait_length, :max_step, :data)
    end
end
