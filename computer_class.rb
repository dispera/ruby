#!/usr/bin/env ruby

class Computer
    @@users = {}    
    
    def initialize(username,password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end
    
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "The file #{filename} was created at #{time}"
    end
    
    def self.get_users
        @@users
    end
end

my_computer = Computer.new("Diego", 741741)
