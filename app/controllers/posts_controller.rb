class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
        @bloggers = Blogger.all
    end

    def create
        @post = Post.new(post_params)
        @post.save
        redirect_to @post
    end

    # def edit
    #     @post = Post.find(params[:id])
    # end

    # def update
    #     @post = Post.find(params[:id])
    #     @post.update(employee_params)
    #       redirect_to @post
    # end

    private

    def post_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end
   

end