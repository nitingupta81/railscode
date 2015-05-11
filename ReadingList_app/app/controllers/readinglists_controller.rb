class ReadinglistsController < ApplicationController
  before_action :set_readinglist, only: [:show, :edit, :update, :destroy]

  # GET /readinglists
  # GET /readinglists.json
  def index
    @readinglists = Readinglist.all
  end

  # GET /readinglists/1
  # GET /readinglists/1.json
  def show
  end

  # GET /readinglists/new
  def new
    @readinglist = Readinglist.new
  end

  # GET /readinglists/1/edit
  def edit
  end

  # POST /readinglists
  # POST /readinglists.json
  def create
    @readinglist = Readinglist.new(readinglist_params)

    respond_to do |format|
      if @readinglist.save
        format.html { redirect_to @readinglist, notice: 'Readinglist was successfully created.' }
        format.json { render :show, status: :created, location: @readinglist }
      else
        format.html { render :new }
        format.json { render json: @readinglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /readinglists/1
  # PATCH/PUT /readinglists/1.json
  def update
    respond_to do |format|
      if @readinglist.update(readinglist_params)
        format.html { redirect_to @readinglist, notice: 'Readinglist was successfully updated.' }
        format.json { render :show, status: :ok, location: @readinglist }
      else
        format.html { render :edit }
        format.json { render json: @readinglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /readinglists/1
  # DELETE /readinglists/1.json
  def destroy
    @readinglist.destroy
    respond_to do |format|
      format.html { redirect_to readinglists_url, notice: 'Readinglist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_readinglist
      @readinglist = Readinglist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def readinglist_params
      params.require(:readinglist).permit(:booktitle, :author, :year, :published, :read)
    end
end
