require 'spec_helper'

describe "response_codes/edit" do
  before(:each) do
    @response_code = assign(:response_code, stub_model(ResponseCode,
      :code => 1,
      :invitation => nil
    ))
  end

  it "renders the edit response_code form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => response_codes_path(@response_code), :method => "post" do
      assert_select "input#response_code_code", :name => "response_code[code]"
      assert_select "input#response_code_invitation", :name => "response_code[invitation]"
    end
  end
end
