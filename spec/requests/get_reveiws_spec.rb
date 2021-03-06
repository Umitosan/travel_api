require 'rails_helper'

describe "get all reveiws route", :type => :request do
  let!(:reviews) { FactoryGirl.create_list(:review, 20)}

  before { get '/reviews'}

  it 'returns all quotes' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
