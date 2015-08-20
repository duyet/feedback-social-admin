class FeedbackcommentsController < ApplicationController
  before_action :set_feedbackcomment, only: [:show, :edit, :update, :destroy]

  # GET /feedbackcomments
  # GET /feedbackcomments.json
  def index
    @feedbackcomments = Feedbackcomment.all
  end

  # GET /feedbackcomments/1
  # GET /feedbackcomments/1.json
  def show
  end

  # GET /feedbackcomments/new
  def new
    @feedbackcomment = Feedbackcomment.new
  end

  # GET /feedbackcomments/1/edit
  def edit
  end

  # POST /feedbackcomments
  # POST /feedbackcomments.json
  def create
    @feedback = Feedback.find(params[:feedback_id])
    @feedbackcomment = @feedback.feedbackcomments.create!(feedbackcomment_params)
    redirect_to @feedback, :notice => "Created"

  end

  # PATCH/PUT /feedbackcomments/1
  # PATCH/PUT /feedbackcomments/1.json
  def update
    respond_to do |format|
      if @feedbackcomment.update(feedbackcomment_params)
        format.html { redirect_to @feedbackcomment, notice: 'Feedbackcomment was successfully updated.' }
        format.json { render :show, status: :ok, location: @feedbackcomment }
      else
        format.html { render :edit }
        format.json { render json: @feedbackcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedbackcomments/1
  # DELETE /feedbackcomments/1.json
  def destroy
    @feedbackcomment.destroy
    respond_to do |format|
      format.html { redirect_to feedbackcomments_url, notice: 'Feedbackcomment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feedbackcomment
      @feedbackcomment = Feedbackcomment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feedbackcomment_params
      params.require(:feedbackcomment).permit(:user, :created, :lastupdate, :content)
    end
end
