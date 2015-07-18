require "./spec_helper"

describe Evental do
  it "should enqueue callbacks" do
    emitter = Evental::Emitter.new
    
    # 1
    emitter.on(:test) do
      "a"
    end
    
    # 2
    emitter.on(:test) do
      "b"
    end
    
    emitter.callbacks.size.should eq 1
    emitter.callbacks["test"].size.should eq 2
  end
  
  it "should call callbacks" do
    control = false
    emitter = Evental::Emitter.new
    
    emitter.on(:test2) do
      control = true
    end
    
    emitter.emit(:test2)
    control.should be_true
  end
end
