require 'spec_helper'

describe "response_codes/index" do
  before(:each) do
    assign(:response_codes, [
      stub_model(ResponseCode,
        :code => 1,
        :invitation => nil
      ),
      stub_model(ResponseCode,
        :code => 1,
        :invitation => nil
      )
    ])
  end

  it "renders a list of response_codes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
