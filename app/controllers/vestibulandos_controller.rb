class VestibulandosController < ApplicationController
  before_action :set_vestibulando, only: [:show, :edit, :update, :destroy]

  # GET /vestibulandos
  # GET /vestibulandos.json
  def index
    @vestibulandos = Vestibulando.all
  end

  # GET /vestibulandos/1
  # GET /vestibulandos/1.json
  def show
  end

  # GET /vestibulandos/new
  def new
    @vestibulando = Vestibulando.new
  end

  # GET /vestibulandos/1/edit
  def edit
  end

  # POST /vestibulandos
  # POST /vestibulandos.json
  def create
    @vestibulando = Vestibulando.new(vestibulando_params)
    @vestibulando.password = params[:password_hash]

    respond_to do |format|
      if @vestibulando.save
        format.html { redirect_to @vestibulando, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @vestibulando }
      else
        format.html { render :new }
        format.json { render json: @vestibulando.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vestibulandos/1
  # PATCH/PUT /vestibulandos/1.json
  def update
    respond_to do |format|
      @vestibulando.update(vestibulando_params)
      @vestibulando.password = params[:password_hash]
      if @vestibulando.save
        format.html { redirect_to @vestibulando, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @vestibulando }
      else
        format.html { render :edit }
        format.json { render json: @vestibulando.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vestibulandos/1
  # DELETE /vestibulandos/1.json
  def destroy
    @vestibulando.destroy
    respond_to do |format|
      format.html { redirect_to vestibulandos_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vestibulando
      @vestibulando = Vestibulando.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vestibulando_params
      params.require(:vestibulando).permit(:username, :email, :picture)
    end
end
