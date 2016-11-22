class TindersessionsController < ApplicationController
  before_action :set_tindersession, only: [:show, :edit, :update, :destroy]

  # GET /tindersessions
  # GET /tindersessions.json
  def index
    @tindersessions = Tindersession.all
  end

  # GET /tindersessions/1
  # GET /tindersessions/1.json
  def show
  end

  # GET /tindersessions/new
  def new
    @tindersession = Tindersession.new
  end

  # GET /tindersessions/1/edit
  def edit
  end

  # POST /tindersessions
  # POST /tindersessions.json
  def create
    @tindersession = Tindersession.new(tindersession_params)

    respond_to do |format|
      if @tindersession.save
        format.html { redirect_to @tindersession, notice: 'Tindersession was successfully created.' }
        format.json { render :show, status: :created, location: @tindersession }
      else
        format.html { render :new }
        format.json { render json: @tindersession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tindersessions/1
  # PATCH/PUT /tindersessions/1.json
  def update
    respond_to do |format|
      if @tindersession.update(tindersession_params)
        format.html { redirect_to @tindersession, notice: 'Tindersession was successfully updated.' }
        format.json { render :show, status: :ok, location: @tindersession }
      else
        format.html { render :edit }
        format.json { render json: @tindersession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tindersessions/1
  # DELETE /tindersessions/1.json
  def destroy
    @tindersession.destroy
    respond_to do |format|
      format.html { redirect_to tindersessions_url, notice: 'Tindersession was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tindersession
      @tindersession = Tindersession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tindersession_params
      params.require(:tindersession).permit(:uid, :datetime, :number_of_likes_within_session, :number_of_dislikes_within_session, :number_of_hotdogs_within_session, :max_set_of_dogs)
    end
end
