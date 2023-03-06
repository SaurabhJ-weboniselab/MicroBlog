# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def show
    @post = set_post
  end

  def new
    @post = Post.new
  end

  def edit
    @post = set_post
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity

    end
  end

  def destroy
    @post = set_post
    @post.destroy

    redirect_to root_path, status: :see_other
  end

  def update
    @post = set_post

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

  private

  def set_post
    @post = Post.friendly.find(params[:id])
  end
end
