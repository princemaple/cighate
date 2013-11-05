class HatesController < ApplicationController
  before_action :set_hate

  # GET /hates
  # GET /hates.json
  def index
    @hate = Hate.new
    @notice = params[:notice]
  end

  # POST /hates
  # POST /hates.json
  def create
    @hate = Hate.new(hate_params)
    
    if @hate.save
      notice = 'Successfully submitted.'
    else
      notice = 'Some error occurred during submission'
    end

    @hate = Hate.new
    redirect_to action: 'index', notice: notice
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hate
      @hates = Hate.all.page(params[:page])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hate_params
      params.require(:hate).permit(:name, :content)
    end
end
