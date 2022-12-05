
require 'workflow'
require 'rspec'
describe Workflow, '#data_file' do
    context 'for a new datafile' do
        it 'reads in the file' do
            expect(subject.execute).to eq 99
        end
    end
end