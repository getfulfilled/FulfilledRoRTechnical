module Analytics
  def self.event(data)
    Analytic.create(event: data[0], value: data[1], event_time: data[2] || Time.now)
  end

  def self.events(data)
    data.each do |sub_data|
      Analytic.create(event: sub_data[0], value: sub_data[1], event_time: sub_data[2] || Time.now)
    end
  end
end
