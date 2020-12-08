class AdmissionExamsController < ApplicationController
  before_action :set_admission_exam, only: [:show, :edit, :update, :destroy]

  # GET /admission_exams
  # GET /admission_exams.json
  def index
    @admission_exams = AdmissionExam.all
  end

  # GET /admission_exams/1
  # GET /admission_exams/1.json
  def show
  end

  # GET /admission_exams/new
  def new
    @admission_exam = AdmissionExam.new
  end

  # GET /admission_exams/1/edit
  def edit
  end

  # POST /admission_exams
  # POST /admission_exams.json
  def create
    @admission_exam = AdmissionExam.new(admission_exam_params)

    respond_to do |format|
      if @admission_exam.save
        format.html { redirect_to @admission_exam, notice: 'Admission exam was successfully created.' }
        format.json { render :show, status: :created, location: @admission_exam }
      else
        format.html { render :new }
        format.json { render json: @admission_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admission_exams/1
  # PATCH/PUT /admission_exams/1.json
  def update
    respond_to do |format|
      if @admission_exam.update(admission_exam_params)
        format.html { redirect_to @admission_exam, notice: 'Admission exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @admission_exam }
      else
        format.html { render :edit }
        format.json { render json: @admission_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admission_exams/1
  # DELETE /admission_exams/1.json
  def destroy
    @admission_exam.destroy
    respond_to do |format|
      format.html { redirect_to admission_exams_url, notice: 'Admission exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admission_exam
      @admission_exam = AdmissionExam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admission_exam_params
      params.require(:admission_exam).permit(:name, :desc)
    end
end
