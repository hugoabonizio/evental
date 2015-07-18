module Evental
  class Emitter
    getter callbacks
    
    def initialize
      @callbacks = {} of String => Array(->)
    end
    
    def on(event, &block)
      begin
        @callbacks[event.to_s] << block
      rescue
        @callbacks[event.to_s] = [block]
      end
    end
    
    def emit(event)
      @callbacks[event.to_s].each do |callback|
        callback.call
      end
    end
  end
end
