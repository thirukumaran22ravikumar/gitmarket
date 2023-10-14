class ResourceNamesController < ApplicationController
  before_action :set_resource_name, only: [:show, :edit, :update, :destroy]

  # GET /resource_names
  # GET /resource_names.json
  def index
    @resource_names = ResourceName.all
  end

  # GET /resource_names/1
  # GET /resource_names/1.json
  def show
  end

  # GET /resource_names/new
  def new
    @resource_name = ResourceName.new
  end

  # GET /resource_names/1/edit
  def edit
  end

  # POST /resource_names
  # POST /resource_names.json
  def create
    @resource_name = ResourceName.new(resource_name_params)

    respond_to do |format|
      if @resource_name.save
        format.html { redirect_to @resource_name, notice: 'Resource name was successfully created.' }
        format.json { render :show, status: :created, location: @resource_name }
      else
        format.html { render :new }
        format.json { render json: @resource_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_names/1
  # PATCH/PUT /resource_names/1.json
  def update
    respond_to do |format|
      if @resource_name.update(resource_name_params)
        format.html { redirect_to @resource_name, notice: 'Resource name was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource_name }
      else
        format.html { render :edit }
        format.json { render json: @resource_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_names/1
  # DELETE /resource_names/1.json
  def destroy
    @resource_name.destroy
    respond_to do |format|
      format.html { redirect_to resource_names_url, notice: 'Resource name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_name
      @resource_name = ResourceName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_name_params
      params.require(:resource_name).permit(:product_name, :product_id)
    end
end
