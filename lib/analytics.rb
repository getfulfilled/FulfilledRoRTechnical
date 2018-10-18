module Analytics
  def self.event(data)
    Analytic.create(event: data[0], value: data[1], event_time: data[2] || Time.now)
  end
end
