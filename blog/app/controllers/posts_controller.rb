class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new 
		@post = Post.new
	end

	def create 
		@post = Post.create(post_params)
		redirect_to @post
	end

	def show
		@post = Post.find_by(id: params[:id])
	end

	def destroy
		@post = Post.find_by(id: params[:id])
		@post.destroy

		redirect_to posts_path
	end

	def edit
		@post = Post.find_by(id: params[:id])
	end

	def update
		@post = Post.find_by(id: params[:id])
		@post.update_attributes(post_params)

		redirect_to @post
	end

	private
	def post_params
		params.require(:post).permit(:title, :author, :content)
	end

  end