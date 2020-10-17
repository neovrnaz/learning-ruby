# frozen_string_literal: true

var1 = proc { |n| "Hello #{n}" }
var1.call('Guy')

def hello_world(&proc)
  5.times { proc.call }
end

hello_world { puts 'hello' }
