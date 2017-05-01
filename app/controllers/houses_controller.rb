class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update, :destroy]
  before_filter :must_login?, only: [:new, :edit, :destroy]
  # GET /houses
  def index
    @houses = House.all
  end

  # GET /houses/1
  def show
  end

  # GET /houses/new
  def new
    @house = current_user.houses.new
  end

  # GET /houses/1/edit
  def edit
  end

  # POST /houses
  def create
    # get region_id from house table
    @region = Region.find(params[:region_id])
    @house = @region.houses.new(house_params)
    @house.user = current_user
    # scaffolded
    @house = current_user.houses.new(house_params)

    if @house.save
      # scaffolded
      redirect_to @house, notice: 'House was successfully created.'
      # redirect_to discover
      # redirect_to
    else
      render :new
    end
  end

  # PATCH/PUT /houses/1
  def update
    if @house.update(house_params)
      redirect_to @house, notice: 'House was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /houses/1
  def destroy
    @region = Region.find(params[:region_id])
    @house = @region.houses.find(params[:id])
    @house.destroy
    redirect_to houses_url, notice: 'House was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def house_params
      params.fetch(:house).permit(:name, :description, :telephone, :street, :rules, :ammenities, :price)
    end
end
