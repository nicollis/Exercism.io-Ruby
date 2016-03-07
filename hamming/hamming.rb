module Hamming

    def self.compute(a, b)
        if a.length != b.length
            raise ArgumentError
        end
        test_against = a.split('')
        test = b.split('')
        count = 0
        test_against.each_index do |i|
            if test_against[i] != test[i]
                count += 1
            end
        end
        return count
    end
    
end