class PraisesController < ApplicationController
  before_action :set_praise, only: [:show, :edit, :update, :destroy]

  # GET /praises
  # GET /praises.json
  def index
    @praises = Praise.all
  end

  # GET /praises/1
  # GET /praises/1.json
  def show
  end

  # GET /praises/new
  def new
    @praise = Praise.new
  end

  # GET /praises/1/edit
  def edit
  end

  # POST /praises
  # POST /praises.json
  def create
    @praise = Praise.new(praise_params)

    respond_to do |format|
      if @praise.save
        format.html { redirect_to :back, notice: 'Praise was successfully created.' }
        format.json { render action: 'show', status: :created, location: @praise }
      else
        format.html { render action: 'new' }
        format.json { render json: @praise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /praises/1
  # PATCH/PUT /praises/1.json
  def update
    respond_to do |format|
      if @praise.update(praise_params)
        format.html { redirect_to @praise, notice: 'Praise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @praise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /praises/1
  # DELETE /praises/1.json
  def destroy
    @praise.destroy
    respond_to do |format|
      format.html { redirect_to praises_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_praise
      @praise = Praise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def praise_params
      params.require(:praise).permit(:praise_report_id, :praise_report_type,:name, :text, :image, :video_url, :user_id)
    end
end
