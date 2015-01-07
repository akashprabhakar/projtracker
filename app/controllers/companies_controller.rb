class CompaniesController < ApplicationController
	def index
		@companies = Company.all
	end

	def show
	 @company = Company.find(params[:id]) 
	 
	end

	def new
		@company = Company.new
	end

	def create
		@company = Company.new(params[:company].permit(:name))
		@company.save
			flash[:notice] = 'Company Created'
			redirect_to @company
	end
	
end
