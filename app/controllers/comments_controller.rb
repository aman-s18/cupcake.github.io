class CommentsController < ApplicationController
  def create
    @cake = Cake.find(params[:cake_id])
    @comment = @cake.comments.create(comment_params)
    redirect_to cake_path(@cake)
end
 
  def destroy
    @cake = Cake.find(params[:cake_id])
    @comment = @cake.comments.find(params[:id])
    @comment.destroy
    redirect_to cake_path(@cake)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end