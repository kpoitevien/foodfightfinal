class HomeController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.first
    @post2 = Post.second
    @post3 = Post.third


  end
end
