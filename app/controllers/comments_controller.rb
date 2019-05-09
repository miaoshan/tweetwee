class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show
    #@user_comments = Comment.where(post_id: params["post_id"])
    @comment = Comment.find(params[:id])

  end

  def edit
    @comment = Comment.find(params[:id])
  end


  def create
    @comment = Comment.create(comment_params)
    #if @comment.valid?
      @comment.save
    # redirect_to comment_path(@comment)
      redirect_to post_path(@comment.post)
    #else
      #redirect_to new_comment_path
    #end
  end

  def destroy
     @comment.destroy
     redirect_to comments_path
  end


  private

  def comment_params
    params.require(:comment).permit(:name, :test, :user_id, :post_id)
  end


end
