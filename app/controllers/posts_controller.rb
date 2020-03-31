class PostsController < ApplicationController
before_action :authenticate_user!

before_action :set_post, only: [:show, :edit, :update]

    def index
        @posts = Post.all
        @user = current_user
    end
    
    def show
        @post = Post.find(params[:id])
    end

    def new
       @post = Post.new 
    end

    def edit
    end

    def create
        @post = Post.new(post_params.merge(user_id: current_user.id))
        respond_to do |format|
            if @post.save
                format.html { redirect_to @post, notice: 'Forum Topic was succesfully created.'}
                format.json { render :show, status: :created, location: @post}
            else
                format.html { render :new}
                format.json { render json: @post.errors, status: :unprocessable_entity}
            end
        end
    end

    def update
        respond_to do |format|
            if @post.update(post_params)
                format.html { redirect_to @post, notice: 'Forum Topic was succesfully updated.'}
                format.json { render :show, status: :ok, location: @post}
            else
                format.html { render :edit}
                format.json { render json: @post.errors, status: :unprocessable_entity }
            end
        end
    end

    

    private

        def set_post
            @post = Post.find(params[:id])
        end

        def post_params
            params.require(:post).permit(:title, :introduction)
        end



end
