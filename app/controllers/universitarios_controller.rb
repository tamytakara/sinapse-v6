class UniversitariosController < ApplicationController
  before_action :set_universitario, only: [:show, :edit, :update, :destroy]

  # GET /universitarios
  # GET /universitarios.json
  def index
    @universitarios = Universitario.all
  end

  # GET /universitarios/1
  # GET /universitarios/1.json
  def show
  end

  # GET /universitarios/new
  def new
    @universitario = Universitario.new
  end

  # GET /universitarios/1/edit
  def edit
  end

  # POST /universitarios
  # POST /universitarios.json
  def create
    @universitario = Universitario.new(universitario_params)
    @universitario.password = params[:password_hash]

    respond_to do |format|
      if @universitario.save
        format.html { redirect_to @universitario, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @universitario }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /universitarios/1
  # PATCH/PUT /universitarios/1.json
  def update
    respond_to do |format|
      @universitario.update(universitario_params)
      @universitario.password = params[:password_hash]
      if @universitario.save
        format.html { redirect_to @universitario, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @universitario }
      else
        format.html { render :edit }
        format.json { render json: @universitario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /universitarios/1
  # DELETE /universitarios/1.json
  def destroy
    @universitario.destroy
    respond_to do |format|
      format.html { redirect_to universitarios_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_universitario
      @universitario = Universitario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def universitario_params
      params.require(:universitario).permit(:username, :email, :picture, :password_hash)
    end
end
