require 'data_reader'
require 'rspec'

describe DataReader, '#data_file' do
    context 'for a new datafile' do
        it 'reads in the file' do
            r1 = DataReader.new
            expect(r1.data_file).to eq "/Users/mwhagedorn/develop/adventofcode22/day1/data.txt"
        end

        it "is not empty" do
            r1 = DataReader.new
            expect(r1.data_file.size).to eq 54
        end

        it "exists" do
            r1 = DataReader.new
            expect(File.exists?(r1.data_file)).to be true
        end
    end
end

describe DataReader, "#process_line" do
    context "at start" do
        it "returns array of array" do
            expect(subject.process_line("",[])).to eq [[]]
        end
    end
    context "in middle" do
        it "returns array at end of buffer" do
            it "returns array of array" do
                binding.pry
                expect(subject.process_line("",[["123"]])).to eq [["123"][]]
            end
        end
    end
    context "first number" do
        it "returns arr of arr with num" do
            expect(subject.process_line("123",[])).to eq [[123]]
        end
    end
    context "second elf" do
        it "returns arr with two arrays" do
            expect(subject.process_line("",[[123]])).to eq [[123],[]]
        end
    end

    context "second elf data" do
        it "returns arr with two arrays" do
            expect(subject.process_line("789",[[123],[]])).to eq [[123],[789]]
        end
    end
    context "second elf data point 2" do
        it "returns arr with two arrays" do
            expect(subject.process_line("1000",[[123],[456]])).to eq [[123],[456,1000]]
        end
    end

end