#Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).> 
#bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]

class Array
    def bubble_sort
        n = self.length

        loop do
            swapped = false

            (n-1).times do |i|
                if self[i] > self[i + 1]
                    self[i], self[i + 1] = self[i + 1], self[i]
                    swapped = true
                end
            end

            break if not swapped
        end

        p self

    end
end

arr = [4, 3, 78, 2, 0, 2]
arr.bubble_sort