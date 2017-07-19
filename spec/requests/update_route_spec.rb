require 'rails_helper'

describe "post a review route", :type => :request do
  let!(:reviews) { FactoryGirl.create_list(:review, 5)}

  # before { get '/reviews'}

  it 'tests the put route' do
    thisReview = Review.all.first
    put "/reviews/#{thisReview.id}", params: { :author => 'test_author', :content => 'test_content' }
    expect(Review.find(thisReview.id).content).to eq ('test_content')
  end

end
