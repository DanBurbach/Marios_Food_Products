class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    if @review.save
      flash[:notice] = "Review successfully added!"
      redirect_to reviews_path(@review)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to reviews_path
    else
      render :edit
    end
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   redirect_to reviews_path
  # end

  private
    def review_params
      params.require(:review).permit(:author, :content_body, :rating, :recommended)
    end

end
