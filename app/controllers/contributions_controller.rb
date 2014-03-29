class ContributionsController < ApplicationController

	def new
		@contribution = Contribution.new
	end

	def create
		@contribution = Contribution.create(params[:contribution])
		# @contribution.user_id = params[:contribution][:user_id]
		# @contribution.amount = params[:contribution][:amount]
		# @contribution.contribution_date = params[:contribution][:contribution_date]
		# @contribution.save
	end

end
