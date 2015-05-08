class AbilitiesController < ApplicationController
  def index
    @abilities = Ability.all
  end

  def new
    @ability = Ability.new
    @path_to_save = create_ability_path
  end

  def edit
    @ability = Ability.find(params[:id])
    @path_to_save = update_ability_path(params[:id])
  end

  def show
    @ability = Ability.find(params[:id])
  end

  def create
    @ability = Ability.new(params[:ability])

    if @ability.save
      redirect_to abilities_path
    else
      @path_to_save = create_ability_path
      render :new
    end
  end

  def update
    @ability = Ability.find(params[:id])

    if @ability.update_attributes(params[:ability])
      redirect_to abilities_path
    else
      @path_to_save = update_ability_path(params[:id])
      render :edit
    end
  end

  def destroy
    ability = Ability.find(params[:id])
    ability.destroy
  rescue
  ensure
    redirect_to abilities_path
  end
end
