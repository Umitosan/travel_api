class ReviewsController < ApplicationController
  before_action :authenticate_request!

  def index
    @reviews = Review.all
    name = params[:name]
    @reviews = Review.search(name)
    json_response(@reviews)
  end

  def show
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    @review = Review.create!(review_params)
    json_response(@review, :created)
  end

  def update
    @review = Review.find(params[:id])
    @review.update!(review_params)
    if @review.update!(review_params)
      render status: 200, json: { review: @review,
                                  message: "Your review has successfully been updated."
       }
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy!
    if @review.destroy!
      render status: 200, json: { message: "Your review has successfully been deleted!"
       }
    end
  end

  private

  def review_params
    params.permit(:author, :content)
  end

end
