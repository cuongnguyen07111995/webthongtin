class UsersController < ApplicationController
	def index
    @users=Comment.all
	end
    
    def new
    	@comment=Comment.new
    	
    end
	def create
		@comment=Comment.new(posts_params)
		 if @comment.save
           render '1/users/1'
   	    else
   	  	    render 'new'
   	  	end
	end
	def show
		@comment=Comment.find(params[:id])
	end

	private
	    def posts_params
	    	params.require(:comment).permit(:comment)
	    	
	    end
end
