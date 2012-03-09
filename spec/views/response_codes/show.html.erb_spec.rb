require 'spec_helper'

describe "response_codes/show" do
  before(:each) do
    @response_code = assign(:response_code, stub_model(ResponseCode,
      :code => 1,
      :invitation => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
