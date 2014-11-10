class ProjectsController < ApplicationController

	def index
		@project = Project.new
		@projects = Project.all
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to @project
		end

	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		if @project.update(project_params)
			redirect_to @project
		else
			redirect_to :back
		end
	end

	def destroy

	end

private

	def project_params
		params.require(:project).permit(:title, :description, :misc_html)
	end

end