class Summarizer
    attr_accessor :data
    def initialize(raw_data)
        @data = raw_data
    end

    def execute
        solution = []

        data.each do |d|
            solution.append(d.sum)
        end
        solution
    end

    def max(raw_data)
        raw_data.each_with_index.max[0]
    end

    def identify_biggest_load
        max(self.execute)
    end
end