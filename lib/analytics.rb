module Analytics
  def self.event(event, value, event_time = nil)
    Analytic.create(event: event, value: value, event_time: event_time || Time.now)
  end
end
