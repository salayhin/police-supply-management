module RequisitionsHelper

  def all_items()
    Item.where("quantity > ?", 0)
  end

  def get_station_name(stationID)
    return Station::STATIONS.select{|s| s[1] if s[0] == stationID}.first[1]
  end
end
