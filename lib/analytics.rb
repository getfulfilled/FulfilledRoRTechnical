module Analytics
  def self.event(data)
    Analytic.create(event: data[0], value: data[1], event_time: data[2] || Time.now)
  end

  def self.events
    source = Queue.new
    datas = (1..50)
    datas.each { |data| source << self.event([[0, 1].sample, data, Time.now]) }

    (1..23).to_a.map do
      Thread.new do
        until source.empty?
          item = source.pop
          sleep 0.5
          puts "Processed: #{item} at #{Time.now}"
        end
      end
    end.map(&:join)
  end
end
