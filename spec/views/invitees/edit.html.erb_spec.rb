require 'spec_helper'

describe "invitees/edit" do
  before(:each) do
    @invitee = assign(:invitee, stub_model(Invitee,
      :first_name => "MyString",
      :last_name => "MyString",
      :response => false
    ))
  end

  it "renders the edit invitee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invitees_path(@invitee), :method => "post" do
      assert_select "input#invitee_first_name", :name => "invitee[first_name]"
      assert_select "input#invitee_last_name", :name => "invitee[last_name]"
      assert_select "input#invitee_response", :name => "invitee[response]"
    end
  end
end
