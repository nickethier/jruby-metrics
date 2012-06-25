require 'java'
require 'ext/slf4j-api'
require 'ext/metrics-core'

module Metrics
  import com.yammer.metrics.Metrics
  import com.yammer.metrics.core.MetricName
  
  module TimeUnit
    import java.util.concurrent.TimeUnit

    DAYS = TimeUnit::DAYS
    HOURS = TimeUnit::HOURS
    MICROSECONDS = TimeUnit::MICROSECONDS
    MILLISECONDS = TimeUnit::MILLISECONDS
    MINUTES = TimeUnit::MINUTES
    NANOSECONDS = TimeUnit::NANOSECONDS
    SECONDS = TimeUnit::SECONDS
  end

  def self.newCounter(opts)
     Metrics.newCounter(get_name(opts))
  end

  def self.newGauge(opts)
    raise "Not Yet Implemented"
  end

  def self.newHistogram(opts)
    Metrics.newHistogram(get_name(opts))
  end

  def self.newMeter(opts)
    Metrics.newMeter(get_name(opts), opts[:type], opts[:unit])
  end

  def self.newTimer(opts)
    Metrics.newTimer(get_name(opts), opts[:durationUnit], opts[:rateUnit])
  end

  def self.shutdown()
    Metrics.shutdown()
  end
  private
  def self.get_name(opts)
    MetricName.new(opts[:group], opts[:type], opts[:name], opts[:scope])
  end
end

