class MeetupController < ApplicationController
  def index
    @events = Meetup.new.events
    render json: @events
  rescue StandardError => e
    render json: {errors: e.message }, status: :unprocessable_entity
  end
end
