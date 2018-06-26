class UsersController < ApplicationController

	def index

		# @my_variable="somennjn sdcds"
		@a = User.all

	end

	

	def new

		@user = User.new
	end

	def create


		User.create(

					email: params[:user][:email],
					password: params[:user][:password],
					name: params[:user][:name],
					age: params[:user][:age]
					
			)
		redirect_to action: 'index'

	end

	def edit

		@user = User.find(params[:id])


	end

	def update

		@user = User.find(params[:id])	
		@user.update(

					email: params[:user][:email],
					password: params[:user][:password],
					name: params[:user][:name],
					age: params[:user][:age]
			)
		redirect_to action: 'index'


	end
















end
