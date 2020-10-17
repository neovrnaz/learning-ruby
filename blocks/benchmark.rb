require 'date'
class Benchmark
  def run(description, &block)
    start_time = DateTime.now.strftime('%Q').to_i
    block.call
    end_time = DateTime.now.strftime('%Q').to_i
    elapsed = end_time - start_time
    puts " Elapsed time: #{elapsed} milliseconds"
    puts "\n"
    puts "#{description} results"
  end

  benchmark = Benchmark.new
  benchmark.run 'Sleep a random amount of time' do
    5.times do
      print('.')
      sleep(rand(0.1..1.0))
    end
  end
end
