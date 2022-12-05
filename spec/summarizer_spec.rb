require 'summarizer'
require 'rspec'

describe Summarizer, '#execute' do
    context "with data" do
        it "returns correct sum" do
            s = Summarizer.new([[1,1],[2,2]])
            expect(s.execute).to eq [2,4]
        end
    end
end

describe Summarizer, '#max' do
    context "with data" do
        it "returns correct sum" do
            s = Summarizer.new([[1,1],[2,2]])
            expect(s.identify_biggest_load).to eq 2
        end
    end
end
