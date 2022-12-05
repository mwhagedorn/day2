require 'day_one'
require 'rspec'

describe DayOne, '#hello' do
    context 'for a new project' do
        it 'greets the world' do
            d1 = DayOne.new
            expect(d1.hello).to eq 'Hello, world'
        end
    end
end