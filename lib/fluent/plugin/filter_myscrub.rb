require 'fluent/plugin/filter'

module Fluent::Plugin
  class MyScrubFilter < Filter
  
    Fluent::Plugin.register_filter('myscrub', self)
    @@flag = 0
    
    def configure(conf)
      super
    end
    
    def my_scrub(string)
      begin
        string =~ //
        return string
      rescue ArgumentError => e
        raise e unless e.message.index("invalid byte sequence in") == 0
        if string.frozen?
          @@flag = 1
          string = string.dup.scrub!("borg")
        else
          @@flag = 1
          string.scrub!("borg")
        end
        retry
      end
    end
    
    def read_record(record)
      record.each do |k,v|
        if v.instance_of? Hash
          my_scrub(k)
          read_record(v)
        else
          my_scrub(k) 
          my_scrub(v)
        end
      end
    end
    
    def filter(tag, time, record)
      read_record(record)
      if @@flag == 0 then
        record
      else 
        @@flag = 0
        nil
      end
    end
  end
end
