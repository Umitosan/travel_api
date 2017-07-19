module Api::V1

    class DestinationsController < ApplicationController
      before_action :authenticate_request!

      def index
        @destinations = Destination.page(params[:page]).as_json(include:[:reviews], root: true)
        name = params[:name]
        # @destinations = Destination.search(name)
        json_response(@destinations)
      end

      def show
        @destination = Destination.find(params[:id]).as_json(include:[:reviews], root: true)
        json_response(@destination)
      end

      def create
        @destination = Destination.create!(destination_params)
        json_response(@destination, :created)
      end

      def update
        @destination = Destination.find(params[:id])
        @destination.update!(destination_params)
        if @destination.update!(destination_params)
          render status: 200, json: { review: @destination,
                                      message: "Your destination has successfully been updated."
           }
        end
      end

      def destroy
        @destination = Destination.find(params[:id])
        @destination.destroy!
        if @destination.destroy!
          render status: 200, json: { message: "Your destination has successfully been deleted!"
           }
        end
      end

      private

      def destination_params
        params.permit(:country, :city)
      end

    end

end
