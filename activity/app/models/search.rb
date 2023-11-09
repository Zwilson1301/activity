class Search
  def initialize(query, options = {})
    @query = query 
    @manufacturer_id = options[:manufacturer_id]
    @catigory_id = options[:catigoryy_id]
  end

  def results
    devices = Devices.where("title like '%#{@query}%'")
    if @manufacturer_id.present?
      devices = devices.where(manufacturer_id: @manufacturer_id)
    end
    if @catigory_id.present?
      devices = devices.where(catigory_id: @catigory_id)
    end
    devices
  end


end 
