require 'prime'

module Raindrops

  def self.convert(number)
    results = ""
    Prime.prime_division(number).each do |prime_group|
      prime_group.each do |prime|
        case prime
        when 3
          results << 'Pling'
        when 5
          results << 'Plang'
        when 7
          results << 'Plong'
        end
      end
    end
    if results.empty?
      results = number.to_s
    end
    results
  end
end
