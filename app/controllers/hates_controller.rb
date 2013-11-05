class HatesController < ApplicationController
  before_action :set_hate, only: [:show, :edit, :update, :destroy]

  # GET /hates
  # GET /hates.json
  def index
    @hates = Hate.all.page(:page)
  end

  # GET /hates/1
  # GET /hates/1.json
  def show
  end

  # GET /hates/new
  def new
    @hate = Hate.new
  end

  # GET /hates/1/edit
  def edit
  end

  # POST /hates
  # POST /hates.json
  def create
    @hate = Hate.new(hate_params)

    respond_to do |format|
      if @hate.save
        format.html { redirect_to @hate, notice: 'Hate was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hate }
      else
        format.html { render action: 'new' }
        format.json { render json: @hate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hates/1
  # PATCH/PUT /hates/1.json
  def update
    respond_to do |format|
      if @hate.update(hate_params)
        format.html { redirect_to @hate, notice: 'Hate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hates/1
  # DELETE /hates/1.json
  def destroy
    @hate.destroy
    respond_to do |format|
      format.html { redirect_to hates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hate
      @hate = Hate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hate_params
      params[:hate]
    end
end
