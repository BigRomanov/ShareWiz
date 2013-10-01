module Api
  module V1
    class LocationsController < ApplicationController
      before_filter :authenticate_user!
  
      respond_to :json

      def index
        respond_with locations
      end
  
      def show
        respond_with location
      end

      def create
        location.save
        respond_with location
      end

      def update
        location.update_attributes(params[:location])
        respond_with location
      end

      def destroy
        location.destroy
        respond_with location
      end

      private


      def location
        # If the action is new or create...
        if @location = params[:action] =~ /new|create/
          Location.new(params[:location])
        else
          Location.find(params[:id])
        end
      end

      def locations
        @locations = Location.find_by_user_id(current_user.id)
      end
    end
  end
end