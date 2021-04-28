class PictureBlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  # skip_before_action :login_required, only: [:new, :create]
  def index
    @picture_blogs = PictureBlog.all
  end

  def new
    @picture_blog = PictureBlog.new
  end

  def create
    @picture_blog = current_user.picture_blogs.build(picture_blog_params)
    if params[:back]
      render :new
    else
      if @picture_blog.save
        redirect_to picture_blogs_path, notice: "Created a blog!"
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @picture_blog.update(picture_blog_params)
      redirect_to picture_blogs_path, notice: "Edited a blog!"
    else
      render :edit
    end
  end

  def destroy
    @picture_blog.destroy
    redirect_to picture_blogs_path, notice:"Delated a blog!"
  end

  def confirm
    @picture_blog = current_user.picture_blogs.build(picture_blog_params)
    render :new if @picture_blog.invalid?
  end

  private
  def picture_blog_params
    params.require(:picture_blog).permit(:title, :content, :user_id, :image, :image_cache)
  end

  def set_blog
    @picture_blog = PictureBlog.find(params[:id])
  end
end
