require 'spec_helper'

describe "response_codes/new" do
  before(:each) do
    assign(:response_code, stub_model(ResponseCode,
      :code => 1,
      :invitation => nil
    ).as_new_record)
  end

  it "renders new response_code form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => response_codes_path, :method => "post" do
      assert_select "input#response_code_code", :name => "response_code[code]"
      assert_select "input#response_code_invitation", :name => "response_code[invitation]"
    end
  end
end
