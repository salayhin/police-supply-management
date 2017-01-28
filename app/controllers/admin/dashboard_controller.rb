module Admin
  class DashboardController < ApplicationController
    before_filter :authenticate_user!
    layout 'admin'

    def index
      @stations = Station::STATIONS
      @stations.each do |station|
        station << (Requisition.where(:station_id => station[0]).count)
      end
      @items = Item.all.collect{|item| [item.name, item.quantity]}
    end
  end
end