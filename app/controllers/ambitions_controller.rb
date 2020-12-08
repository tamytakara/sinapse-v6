class AmbitionsController < ApplicationController
  before_action :set_ambition, only: [:show, :edit, :update, :destroy]

  # GET /ambitions
  # GET /ambitions.json
  def index
    @ambitions = Ambition.all
  end

  # GET /ambitions/1
  # GET /ambitions/1.json
  def show
  end

  # GET /ambitions/new
  def new
    @ambition = Ambition.new
  end

  # GET /ambitions/1/edit
  def edit
  end

  # POST /ambitions
  # POST /ambitions.json
  def create
    @ambition = Ambition.new(ambition_params)

    respond_to do |format|
      if @ambition.save
        format.html { redirect_to @ambition, notice: 'Ambition was successfully created.' }
        format.json { render :show, status: :created, location: @ambition }
      else
        format.html { render :new }
        format.json { render json: @ambition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ambitions/1
  # PATCH/PUT /ambitions/1.json
  def update
    respond_to do |format|
      if @ambition.update(ambition_params)
        format.html { redirect_to @ambition, notice: 'Ambition was successfully updated.' }
        format.json { render :show, status: :ok, location: @ambition }
      else
        format.html { render :edit }
        format.json { render json: @ambition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ambitions/1
  # DELETE /ambitions/1.json
  def destroy
    @ambition.destroy
    respond_to do |format|
      format.html { redirect_to ambitions_url, notice: 'Ambition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ambition
      @ambition = Ambition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ambition_params
      params.require(:ambition).permit(:data, :admission_exam_id, :vestibulando_id, :course_id)
    end
end
