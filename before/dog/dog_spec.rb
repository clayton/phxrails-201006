require File.join(File.dirname(File.expand_path(__FILE__)),"..", "..", "spec_helper.rb")
require 'dog'

describe "Dog" do
  describe "speak" do
    before(:each) do
      @st_bernard = Dog.new({:size => "Large",  :bark => "WOOF!"})
      @hound      = Dog.new({:size => "Medium", :bark => "Howwoooo!"})
      @yorkie     = Dog.new({:size => "Small",  :bark => "yip!"})
      @guarding   = Dog.new({:size => "Large",  :bark => "WUF!", :guarding => true})
      @trained    = Dog.new({:size => "Medium", :bark => "YapYap", :trained => true})
    end
    
    it "should bark a little if it's small" do
      @yorkie.speak.should == "yip!"
    end
    
    it "should bark some more it's medium sizes" do
      @hound.speak.should == "Howwoooo! Howwoooo!"
    end
    
    it "should bark a lot if it's big" do
      @st_bernard.speak.should == "WOOF! WOOF! WOOF!"
    end
    
    it "should bark like crazy if it's a guard dog" do
      @guarding.speak.should == "WUF! WUF! WUF! WUF! WUF!"
    end
    
    it "should not bark if it's a trained dog" do
      @trained.speak.should == ""
    end
    
  end
end