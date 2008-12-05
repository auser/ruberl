$:.unshift(File.dirname(__FILE__) + '/../lib')
require "#{File.dirname(__FILE__)}/spec_helper"
require "ruberl"

describe "Base" do
  before(:each) do
    @klass = Ruberl::Base.new
  end
  %w(host port).each do |meth|
    eval <<-EOE
      it "should have #{meth} set as a getter" do;@klass.respond_to?(:#{meth}).should == true;end
      it "should have #{meth} set as a setter" do;@klass.respond_to?(:#{meth}=).should == true;end
    EOE
  end
  it "should call with_socket when calling messenger_send!" do
    @klass.should_receive(:with_socket).once
    @klass.messenger_send!("wee")
  end
  it "should call with_socket when calling messenger_cast!" do
    @klass.should_receive(:with_socket).once
    @klass.messenger_cast!("wee")
  end
end