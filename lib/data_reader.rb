#!/usr/bin/env ruby
require 'pry'


class DataReader
  
    attr_accessor :data
    
    def initialize
        @data = []    
    end

    def data_file
        data_file_loc = "../data.txt"
        File.expand_path(data_file_loc,File.dirname(__FILE__))
    end

    def get_data
        @data ||= []
        File.foreach(data_file) do |line|
            @data = process_line(line,@data)
        end
        @data
    end

    def process_line(line, databuffer)
        line = line.strip
        if databuffer.empty? && line.empty?
            return databuffer.append([])
        end
        if databuffer.empty?
            databuffer = databuffer.append([])
        end
        if line.empty?
            return databuffer.append([])
        end

        databuffer[-1].append(line.to_i)
        databuffer
    end

    def execute
        get_data
    end


end
