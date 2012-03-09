require 'spec_helper'

describe "invitees/index" do
  before(:each) do
    assign(:invitees, [
      stub_model(Invitee,
        :first_name => "First Name",
        :last_name => "Last Name",
        :response => false
      ),
      stub_model(Invitee,
        :first_name => "First Name",
        :last_name => "Last Name",
        :response => false
      )
    ])
  end

  it "renders a list of invitees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
