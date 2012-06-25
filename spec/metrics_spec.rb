require 'jruby-metrics'

describe Metrics do
  context "before use" do
    it "has no count" do
      counter = Metrics.newCounter("test", "before_use", "no_count")
      counter.count.should eq(0)
    end
  end

  context "during use" do 
    it "should show correct count" do
      counter = Metrics.newCounter("test", "during_use", "count")
      inc = 5
      dec = 3
      inc.times { counter.inc }
      dec.times { counter.dec }
      counter.count.should eq(inc-dec)
    end
  end
end
