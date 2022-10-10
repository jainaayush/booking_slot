class Api::V1::BookingsController < ApplicationController
	before_action :set_user


	def create
		@booking = @user.bookings.new(booking_params)
		if @booking.save
			render json: @booking
		else
			render json: @booking.errors
		end
	end

	private
    def set_user
    	@boo = User.find(params[:user_id])
    end

    def booking_params
    	params.permit(:start, :end)
    end
end
