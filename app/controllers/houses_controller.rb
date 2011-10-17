class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
    @flats = @house.flats
  end

  def new
    @house = House.new
  end

  def edit
    @house = House.find(params[:id])
  end

  def create
    @house = House.new(params[:house])

    if @house.save
      redirect_to @house, notice: 'House was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @house = House.find(params[:id])

    if @house.update_attributes(params[:house])
      redirect_to @house, notice: 'House was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy

    redirect_to houses_url
  end
end
