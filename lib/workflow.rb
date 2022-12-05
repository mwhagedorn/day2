require 'data_reader'
require 'summarizer'

class Workflow
    def execute
        dr = DataReader.new
        summer = Summarizer.new(dr.execute)
        summer.identify_biggest_load
    end
end