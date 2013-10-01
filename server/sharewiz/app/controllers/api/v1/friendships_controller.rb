module Api
  module V1
    class LocationsController < ApplicationController
      before_filter :authenticate_user!
  
      respond_to :json

      def index
        respond_with friendships
      end
  
      def show
        respond_with friendship
      end

      def create
        friendship.save
        respond_with friendship
      end

      def update
        friendship.update_attributes(params[:friendship])
        respond_with friendship
      end

      def destroy
        friendship.destroy
        respond_with friendship
      end

      private

      def friendship
        # If the action is new or create...
        if @friendship = params[:action] =~ /new|create/
          Friendship.new(params[:friendship])
        else
          Friendship.find(params[:id])
        end
      end

      def friendships
        @friendships = Friendship.find_by_user_id(current_user.id)
      end
    end
  end
end