require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Proc.call_with_locals" do
  before(:each) do
    z = 3
    @proc = proc do |x, y|
      x + y + z
    end
  end

  it "should error out with no locals hash" do
    lambda { @proc.call_with_locals(1, 2) }.should raise_error()
  end

  it "should perform like #call with no locals" do
    @proc.call_with_locals(1, 2, {}).should == 6
  end

  it "should work even with a local named call" do
    @proc.call_with_locals(1, 2, :call => 3).should == 6
  end

  it "should properly access locals" do
    @proc = proc do |x, y|
      x + y + z
    end
    @proc.call_with_locals(1, 2, :z => 3).should == 6
  end

  it "should shadow variables pulled in from the binding" do
    pending "fix variable shadowing" do
      @proc.call_with_locals(1, 2, :z => 6).should == 9
    end
  end

  it "should allow rewriting the locals" do
    pending "inject real variables" do
      @proc = proc do |x, y|
        z += 1
        x + y + z
      end
      @proc.call_with_locals(1, 2, :z => 3).should == 7
    end
  end
end