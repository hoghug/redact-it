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

private

	def project_params
		params.require(:project).permit(:title, :description, :misc_html)
	end

end