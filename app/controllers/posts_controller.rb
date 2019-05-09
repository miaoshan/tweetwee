class PostsController < ApplicationController

  def index
    @posts =Post.all
  end

    def show
      @post = Post.find(params[:id])

      @comments = Comment.where(post_id: @post.id)
    end

    def new
      @post = Post.new
      @users= User.all
    end

    def edit
      @post = Post.find(params[:id])
    end

    def create

      @post = Post.create(post_params)
      #if @post.valid?
        @post.save
        redirect_to post_path(@post)
      #else
        #redirect_to new_post_path
    #  end
    end


    def update
      @post = Post.find_by_id(params[:id])
      @post.update(post_params)
      redirect_to post_path(@post)
    end


     def destroy
       @post = Post.find_by_id(params[:id])
        @post.destroy
        redirect_to posts_path
     end


private

   def post_params
      params.require(:post).permit(:user_id, :title, :text)
   end

end
