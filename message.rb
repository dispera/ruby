#!/usr/bin/env ruby

class Message
    @@messages_sent = 0

    def initialize(from,to)
        @from = from
        @to = to
        @messages_sent += 1
    end
end

my_message = Message.new(1,1)
