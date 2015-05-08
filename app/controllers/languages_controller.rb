class LanguagesController < ApplicationController

	def index
		@languages = Language.all
		
	end

	def new
		@language = Language.new
		@path_to_save = create_language_path
	end

	def show
		@language = Language.find(params[:id])
	end

	def edit
		@language = Language.find(params[:id])
		@path_to_save = update_language_path(params[:id])

	end
	
	def create
		@language = Language.new(params[:language])
		if @language.save
			redirect_to languages_path
		else
			@path_to_save = create_language_path
			render :new
			
		end
	end
	def update
		@language = Language.find(params[:id])
		if @language.update_attributes(params[:language])
			redirect_to languages_path
		else
			@path_to_save = update_language_path(params[:id])
			render :edit
			
		end
		
	end
	def destroy
		language = Language.find(params[:id])
		language.destroy
	rescue
	ensure
		redirect_to languages_path
	end


end
