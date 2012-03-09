require 'spec_helper'

describe "invitees/new" do
  before(:each) do
    assign(:invitee, stub_model(Invitee,
      :first_name => "MyString",
      :last_name => "MyString",
      :response => false
    ).as_new_record)
  end

  it "renders new invitee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invitees_path, :method => "post" do
      assert_select "input#invitee_first_name", :name => "invitee[first_name]"
      assert_select "input#invitee_last_name", :name => "invitee[last_name]"
      assert_select "input#invitee_response", :name => "invitee[response]"
    end
  end
end
