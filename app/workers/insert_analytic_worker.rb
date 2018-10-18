class InsertAnalyticWorker
  include Sidekiq::Worker

  def perform(data_analytic)
    return unless data_analytic.present?
    
    Analytics.event(data_analytic[0])
  end
end
