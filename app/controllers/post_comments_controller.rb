class PostCommentsController < InheritedResources::Base

    def post_comment_params
      params.require(:post_comment).permit(:name, :email, :body, :post_id)
    end

    def create 
      @post_comment = PostComment.new(post_comment_params)
      @post_comment.post_id = 8
      respond_to do |format|
        if @post_comment.save
          format.html { redirect_to @post_comment.post, notice: "Post was successfully created."}
          format.json { render :show, status: :created, location: @post_comment }
        else
          #format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @post_comment.errors, status: :unprocessable_entity }
          redirect_to(@post_comment.post)
        end
      end
    end
end
