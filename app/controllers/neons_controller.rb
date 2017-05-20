class NeonsController < ApplicationController
  before_action :set_neon, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_administrator! # 관리자 로그인 시까지 잠금


  # GET /neons
  # GET /neons.json
  def index
    @neons = Neon.all
  end

  # GET /neons/1
  # GET /neons/1.json
  def show
  end

  # GET /neons/new
  def new
    @neon = Neon.new
  end

  # GET /neons/1/edit
  def edit
  end

  # POST /neons
  # POST /neons.json
  def create
    @neon = Neon.new(neon_params)

    respond_to do |format|
      if @neon.save
        format.html { redirect_to @neon, notice: 'Neon was successfully created.' }
        format.json { render :show, status: :created, location: @neon }
      else
        format.html { render :new }
        format.json { render json: @neon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neons/1
  # PATCH/PUT /neons/1.json
  def update
    respond_to do |format|
      if @neon.update(neon_params)
        format.html { redirect_to @neon, notice: 'Neon was successfully updated.' }
        format.json { render :show, status: :ok, location: @neon }
      else
        format.html { render :edit }
        format.json { render json: @neon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neons/1
  # DELETE /neons/1.json
  def destroy
    @neon.destroy
    respond_to do |format|
      format.html { redirect_to neons_url, notice: 'Neon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neon
      @neon = Neon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def neon_params
      params.require(:neon).permit(:message)
    end
end
