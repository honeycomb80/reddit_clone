class LinkpostsController < ApplicationController
  before_action :set_linkpost, only: [:show, :edit, :update, :destroy]

  # GET /linkposts
  # GET /linkposts.json
  def index
    @linkposts = Linkpost.all
  end

  # GET /linkposts/1
  # GET /linkposts/1.json
  def show
  end

  # GET /linkposts/new
  def new
    @linkpost = Linkpost.new
  end

  # GET /linkposts/1/edit
  def edit
  end

  # POST /linkposts
  # POST /linkposts.json
  def create
    @linkpost = Linkpost.new(linkpost_params)

    respond_to do |format|
      if @linkpost.save
        format.html { redirect_to @linkpost, notice: 'Linkpost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @linkpost }
      else
        format.html { render action: 'new' }
        format.json { render json: @linkpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linkposts/1
  # PATCH/PUT /linkposts/1.json
  def update
    respond_to do |format|
      if @linkpost.update(linkpost_params)
        format.html { redirect_to @linkpost, notice: 'Linkpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @linkpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linkposts/1
  # DELETE /linkposts/1.json
  def destroy
    @linkpost.destroy
    respond_to do |format|
      format.html { redirect_to linkposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linkpost
      @linkpost = Linkpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def linkpost_params
      params.require(:linkpost).permit(:title, :user_id)
    end
end
