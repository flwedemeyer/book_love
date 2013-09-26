class AuthorsController < ApplicationController


	include LoveBooks

	def index
		@authors = Author.all
	end

	def show
		@author = Author.find(params[:id])
	end

	def new
		@author = Author.new
	end

	def create
		author = Author.create(params[:author])
		titles = get_titles(params[:author][:name])


		titles.each do |title| 
			author.books << Book.create(title: title)
		end

		redirect_to author_path(author)
	end


	def edit
		@author = Author.find(params[:id])
	end

	def update
		author = Author.find(params[:id])
		author.update_attributes(params[:author])

		redirect_to root_path
	end

	def destroy
		author = Author.find(params[:id])
		author.destroy

		redirect_to root_path
	end



	

end