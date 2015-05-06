class FunctionsController < ApplicationController
	def index
		@functions = Function.all
	end

	def new
		@function = Function.new
		@path_to_save = create_function_path
	end

	def edit
		@function = Function.find(params[:id])
		@path_to_save = update_function_path(params[:id])
	end

	def show
		@function = Function.find(params[:id])
	end

	def create
		@function = Function.new(params[:function])

		if @function.save
			redirect_to_functions_path
		else
			@path_to_save = create_function_path
			render :new
		end
	end

	def update
		@function = Function.find(params[:id])

		if @function.update_attributes(params[:function])
			redirect_to_functions_path
		else
			@path_to_save = update_function_path(params[:id])
			render :edit
		end
	end


	def destroy
		function = Function.find(params[:id])
		function.destroy
	rescue
	ensure
		redirect_to_functions_path
	end

end
