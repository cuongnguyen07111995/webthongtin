class PostsController < ApplicationController
   http_basic_authenticate_with name: "cuong", password: "secret", except: [:index, :show]
	def index
    @users=User.all
	end
	
	def new
    @post=User.new
	end

	def create
		 @post=User.new(post_params)
   	    if @post.save
           render 'posts/show'
   	    else
   	  	    render 'new'
   	  	end
	end

	def show
		@post=User.find(params[:id])
  end

    private
       def post_params
       	   params.require(:user).permit(:email,:password,:username)
       	
       end
end
