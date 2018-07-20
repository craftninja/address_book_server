require "#{Rails.root}/app/serializers/officer_serializer.rb"

class OfficersController < ApplicationController
  def index
    serialized_officers = Officer.all.map { |officer|  officer_serializer(officer)}
    render json: {officers: serialized_officers}
  end
end
