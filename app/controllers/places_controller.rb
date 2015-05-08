class PlacesController < ApplicationController
  def index
    @places = Local.all
  end

  def new
    @local = Local.new
    @path_to_save = create_local_path
  end

  def edit
    @local = Local.find(params[:id])
    @path_to_save = update_local_path(params[:id])
  end

  def show
    @local = Local.find(params[:id])
  end

  def create
    @local = Local.new(params[:local])

    if @local.save
      redirect_to places_path
    else
      @path_to_save = create_local_path
      render :new
    end
  end

  def update
    @local = Local.find(params[:id])

    if @local.update_attributes(params[:local])
      redirect_to places_path
    else
      @path_to_save = update_local_path(params[:id])
      render :edit
    end
  end

  def destroy
    local = Local.find(params[:id])
    local.destroy
  rescue
  ensure
    redirect_to places_path
  end

end
